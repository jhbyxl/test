package mapper;

import entities.Gly;

import java.util.List;

public interface GlyMapper {

    public Gly getGly(Gly gly);

     public int insertGly(Gly gly);

    Gly selectGlyByUname(String uname);

    List<Gly> list();

    void delete(int uid);

    Gly getGlyById(int uid);

    void updateGly(Gly gly);
}
