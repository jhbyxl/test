package service;

import entities.Gly;


import java.util.List;

public interface GlyService {

    public Gly login(Gly gly);

    void insertGly(Gly gly);

    Gly selectGlyByUname(String uname);

    List<Gly> list();

    void delete(int uid);

    Gly getGlyById(int uid);

    void updateGly(Gly gly);
}
