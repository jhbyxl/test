package service.impl;

import entities.Gly;
import mapper.GlyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.GlyService;

import java.util.List;

@Service
public class GlyServiceImpl implements GlyService {

      @Autowired
      private GlyMapper glyMapper;

    @Override
    public Gly login(Gly gly) {
        return glyMapper.getGly(gly);
    }

    @Override
    public void insertGly(Gly gly) {
        glyMapper.insertGly(gly);
    }

    @Override
    public Gly selectGlyByUname(String uname) {
        return glyMapper.selectGlyByUname(uname);
    }

    @Override
    public List<Gly> list() {
        return glyMapper.list();
    }

    @Override
    public void delete(int uid) {
        glyMapper.delete(uid);
    }

    @Override
    public Gly getGlyById(int uid) {
        return glyMapper.getGlyById(uid);
    }

    @Override
    public void updateGly(Gly gly) {
        glyMapper.updateGly(gly);
    }
}
