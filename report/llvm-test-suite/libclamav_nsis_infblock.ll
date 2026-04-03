begin_hunk_0
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 %i.bk) ; 2 uses
  %i.bm = sub nuw i32 %i.bl, %..peel.i
  store i32 %i.bm, ptr %i.ag, align 8, !tbaa !26
  %i.bn = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.bo = zext i32 %..peel.i to i64               ; 3 uses
end_hunk_0
begin_hunk_1
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.cb) ; 2 uses
  %i.cd = sub nuw i32 %i.cc, %..i
  store i32 %i.cd, ptr %i.ag, align 8, !tbaa !26
  %i.ce = zext i32 %..i to i64                    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 %i.aj, i64 %i.ce, i1 false)
end_hunk_1
begin_hunk_2
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i791 = tail call i32 @llvm.umin.i32(i32 %i.ee, i32 %i.ed) ; 2 uses
  %i.ef = sub nuw i32 %i.ee, %..peel.i791
  store i32 %i.ef, ptr %i.ag, align 8, !tbaa !26
  %i.eg = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.eh = zext i32 %..peel.i791 to i64            ; 3 uses
end_hunk_2
begin_hunk_3
  %i.eu = trunc i64 %i.et to i32
  %i.ev = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i796 = tail call i32 @llvm.umin.i32(i32 %i.ev, i32 %i.eu) ; 2 uses
  %i.ew = sub nuw i32 %i.ev, %..i796
  store i32 %i.ew, ptr %i.ag, align 8, !tbaa !26
  %i.ex = zext i32 %..i796 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr nonnull align 1 %i.aj, i64 %i.ex, i1 false)
end_hunk_3
begin_hunk_4
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i799 = tail call i32 @llvm.umin.i32(i32 %i.ge, i32 %i.gd) ; 2 uses
  %i.gf = sub nuw i32 %i.ge, %..peel.i799
  store i32 %i.gf, ptr %i.ag, align 8, !tbaa !26
  %i.gg = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.gh = zext i32 %..peel.i799 to i64            ; 3 uses
end_hunk_4
begin_hunk_5
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i804 = tail call i32 @llvm.umin.i32(i32 %i.gv, i32 %i.gu) ; 2 uses
  %i.gw = sub nuw i32 %i.gv, %..i804
  store i32 %i.gw, ptr %i.ag, align 8, !tbaa !26
  %i.gx = zext i32 %..i804 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gp, ptr nonnull align 1 %i.aj, i64 %i.gx, i1 false)
end_hunk_5
begin_hunk_6
  %i.jb = trunc i64 %i.ja to i32
  %i.jc = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i807 = tail call i32 @llvm.umin.i32(i32 %i.jc, i32 %i.jb) ; 2 uses
  %i.jd = sub nuw i32 %i.jc, %..peel.i807
  store i32 %i.jd, ptr %i.ag, align 8, !tbaa !26
  %i.je = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.jf = zext i32 %..peel.i807 to i64            ; 3 uses
end_hunk_6
begin_hunk_7
  %i.js = trunc i64 %i.jr to i32
  %i.jt = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i812 = tail call i32 @llvm.umin.i32(i32 %i.jt, i32 %i.js) ; 2 uses
  %i.ju = sub nuw i32 %i.jt, %..i812
  store i32 %i.ju, ptr %i.ag, align 8, !tbaa !26
  %i.jv = zext i32 %..i812 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr nonnull align 1 %i.aj, i64 %i.jv, i1 false)
end_hunk_7
begin_hunk_8
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i815 = tail call i32 @llvm.umin.i32(i32 %i.lm, i32 %i.ll) ; 2 uses
  %i.ln = sub nuw i32 %i.lm, %..peel.i815
  store i32 %i.ln, ptr %i.ag, align 8, !tbaa !26
  %i.lo = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.lp = zext i32 %..peel.i815 to i64            ; 3 uses
end_hunk_8
begin_hunk_9
  %i.mc = trunc i64 %i.mb to i32
  %i.md = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i820 = tail call i32 @llvm.umin.i32(i32 %i.md, i32 %i.mc) ; 2 uses
  %i.me = sub nuw i32 %i.md, %..i820
  store i32 %i.me, ptr %i.ag, align 8, !tbaa !26
  %i.mf = zext i32 %..i820 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lx, ptr nonnull align 1 %i.aj, i64 %i.mf, i1 false)
end_hunk_9
begin_hunk_10
  %i.om = trunc i64 %i.ol to i32
  %i.on = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i823 = tail call i32 @llvm.umin.i32(i32 %i.on, i32 %i.om) ; 2 uses
  %i.oo = sub nuw i32 %i.on, %..peel.i823
  store i32 %i.oo, ptr %i.ag, align 8, !tbaa !26
  %i.op = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.oq = zext i32 %..peel.i823 to i64            ; 3 uses
end_hunk_10
begin_hunk_11
  %i.pd = trunc i64 %i.pc to i32
  %i.pe = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i828 = tail call i32 @llvm.umin.i32(i32 %i.pe, i32 %i.pd) ; 2 uses
  %i.pf = sub nuw i32 %i.pe, %..i828
  store i32 %i.pf, ptr %i.ag, align 8, !tbaa !26
  %i.pg = zext i32 %..i828 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oy, ptr nonnull align 1 %i.aj, i64 %i.pg, i1 false)
end_hunk_11
begin_hunk_12
  %i.rg = trunc i64 %i.rf to i32
  %i.rh = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i831 = tail call i32 @llvm.umin.i32(i32 %i.rh, i32 %i.rg) ; 2 uses
  %i.ri = sub nuw i32 %i.rh, %..peel.i831
  store i32 %i.ri, ptr %i.ag, align 8, !tbaa !26
  %i.rj = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.rk = zext i32 %..peel.i831 to i64            ; 3 uses
end_hunk_12
begin_hunk_13
  %i.rx = trunc i64 %i.rw to i32
  %i.ry = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i836 = tail call i32 @llvm.umin.i32(i32 %i.ry, i32 %i.rx) ; 2 uses
  %i.rz = sub nuw i32 %i.ry, %..i836
  store i32 %i.rz, ptr %i.ag, align 8, !tbaa !26
  %i.sa = zext i32 %..i836 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rs, ptr nonnull align 1 %i.aj, i64 %i.sa, i1 false)
end_hunk_13
begin_hunk_14
  %i.tl = trunc i64 %i.tk to i32
  %i.tm = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i839 = tail call i32 @llvm.umin.i32(i32 %i.tm, i32 %i.tl) ; 2 uses
  %i.tn = sub nuw i32 %i.tm, %..peel.i839
  store i32 %i.tn, ptr %i.ag, align 8, !tbaa !26
  %i.to = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.tp = zext i32 %..peel.i839 to i64            ; 3 uses
end_hunk_14
begin_hunk_15
  %i.uc = trunc i64 %i.ub to i32
  %i.ud = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i844 = tail call i32 @llvm.umin.i32(i32 %i.ud, i32 %i.uc) ; 2 uses
  %i.ue = sub nuw i32 %i.ud, %..i844
  store i32 %i.ue, ptr %i.ag, align 8, !tbaa !26
  %i.uf = zext i32 %..i844 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tx, ptr nonnull align 1 %i.aj, i64 %i.uf, i1 false)
end_hunk_15
begin_hunk_16
  %i.wo = trunc i64 %i.wn to i32
  %i.wp = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i847 = tail call i32 @llvm.umin.i32(i32 %i.wp, i32 %i.wo) ; 2 uses
  %i.wq = sub nuw i32 %i.wp, %..peel.i847
  store i32 %i.wq, ptr %i.ag, align 8, !tbaa !26
  %i.wr = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.ws = zext i32 %..peel.i847 to i64            ; 3 uses
end_hunk_16
begin_hunk_17
  %i.xf = trunc i64 %i.xe to i32
  %i.xg = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i852 = tail call i32 @llvm.umin.i32(i32 %i.xg, i32 %i.xf) ; 2 uses
  %i.xh = sub nuw i32 %i.xg, %..i852
  store i32 %i.xh, ptr %i.ag, align 8, !tbaa !26
  %i.xi = zext i32 %..i852 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xa, ptr nonnull align 1 %i.aj, i64 %i.xi, i1 false)
end_hunk_17
begin_hunk_18
  %i.yi = trunc i64 %i.yh to i32
  %i.yj = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i855 = tail call i32 @llvm.umin.i32(i32 %i.yj, i32 %i.yi) ; 2 uses
  %i.yk = sub nuw i32 %i.yj, %..peel.i855
  store i32 %i.yk, ptr %i.ag, align 8, !tbaa !26
  %i.yl = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.ym = zext i32 %..peel.i855 to i64            ; 3 uses
end_hunk_18
begin_hunk_19
  %i.yz = trunc i64 %i.yy to i32
  %i.za = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i860 = tail call i32 @llvm.umin.i32(i32 %i.za, i32 %i.yz) ; 2 uses
  %i.zb = sub nuw i32 %i.za, %..i860
  store i32 %i.zb, ptr %i.ag, align 8, !tbaa !26
  %i.zc = zext i32 %..i860 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yu, ptr nonnull align 1 %i.aj, i64 %i.zc, i1 false)
end_hunk_19
begin_hunk_20
  %i.abj = trunc i64 %i.abi to i32
  %i.abk = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i863 = tail call i32 @llvm.umin.i32(i32 %i.abk, i32 %i.abj) ; 2 uses
  %i.abl = sub nuw i32 %i.abk, %..peel.i863
  store i32 %i.abl, ptr %i.ag, align 8, !tbaa !26
  %i.abm = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.abn = zext i32 %..peel.i863 to i64           ; 3 uses
end_hunk_20
begin_hunk_21
  %i.aca = trunc i64 %i.abz to i32
  %i.acb = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i868 = tail call i32 @llvm.umin.i32(i32 %i.acb, i32 %i.aca) ; 2 uses
  %i.acc = sub nuw i32 %i.acb, %..i868
  store i32 %i.acc, ptr %i.ag, align 8, !tbaa !26
  %i.acd = zext i32 %..i868 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abv, ptr nonnull align 1 %i.aj, i64 %i.acd, i1 false)
end_hunk_21
begin_hunk_22
  %i.ads = trunc i64 %i.adr to i32
  %i.adt = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i871 = tail call i32 @llvm.umin.i32(i32 %i.adt, i32 %i.ads) ; 2 uses
  %i.adu = sub nuw i32 %i.adt, %..peel.i871
  store i32 %i.adu, ptr %i.ag, align 8, !tbaa !26
  %i.adv = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.adw = zext i32 %..peel.i871 to i64           ; 3 uses
end_hunk_22
begin_hunk_23
  %i.aej = trunc i64 %i.aei to i32
  %i.aek = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i876 = tail call i32 @llvm.umin.i32(i32 %i.aek, i32 %i.aej) ; 2 uses
  %i.ael = sub nuw i32 %i.aek, %..i876
  store i32 %i.ael, ptr %i.ag, align 8, !tbaa !26
  %i.aem = zext i32 %..i876 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aee, ptr nonnull align 1 %i.aj, i64 %i.aem, i1 false)
end_hunk_23
begin_hunk_24
  %i.ago = trunc i64 %i.agn to i32
  %i.agp = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i879 = tail call i32 @llvm.umin.i32(i32 %i.agp, i32 %i.ago) ; 2 uses
  %i.agq = sub nuw i32 %i.agp, %..peel.i879
  store i32 %i.agq, ptr %i.ag, align 8, !tbaa !26
  %i.agr = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.ags = zext i32 %..peel.i879 to i64           ; 3 uses
end_hunk_24
begin_hunk_25
  %i.ahf = trunc i64 %i.ahe to i32
  %i.ahg = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i884 = tail call i32 @llvm.umin.i32(i32 %i.ahg, i32 %i.ahf) ; 2 uses
  %i.ahh = sub nuw i32 %i.ahg, %..i884
  store i32 %i.ahh, ptr %i.ag, align 8, !tbaa !26
  %i.ahi = zext i32 %..i884 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aha, ptr nonnull align 1 %i.aj, i64 %i.ahi, i1 false)
end_hunk_25
begin_hunk_26
  %i.ajg = trunc i64 %i.ajf to i32
  %i.ajh = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i887 = tail call i32 @llvm.umin.i32(i32 %i.ajh, i32 %i.ajg) ; 2 uses
  %i.aji = sub nuw i32 %i.ajh, %..peel.i887
  store i32 %i.aji, ptr %i.ag, align 8, !tbaa !26
  %i.ajj = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.ajk = zext i32 %..peel.i887 to i64           ; 3 uses
end_hunk_26
begin_hunk_27
  %i.ajx = trunc i64 %i.ajw to i32
  %i.ajy = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i892 = tail call i32 @llvm.umin.i32(i32 %i.ajy, i32 %i.ajx) ; 2 uses
  %i.ajz = sub nuw i32 %i.ajy, %..i892
  store i32 %i.ajz, ptr %i.ag, align 8, !tbaa !26
  %i.aka = zext i32 %..i892 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajs, ptr nonnull align 1 %i.aj, i64 %i.aka, i1 false)
end_hunk_27
begin_hunk_28
  %i.alb = trunc i64 %i.ala to i32
  %i.alc = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i895 = tail call i32 @llvm.umin.i32(i32 %i.alc, i32 %i.alb) ; 2 uses
  %i.ald = sub nuw i32 %i.alc, %..peel.i895
  store i32 %i.ald, ptr %i.ag, align 8, !tbaa !26
  %i.ale = zext i32 %..peel.i895 to i64           ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aki, ptr align 1 %.lcssa.i888, i64 %i.ale, i1 false)
end_hunk_28
begin_hunk_29
  %i.alr = trunc i64 %i.alq to i32
  %i.als = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i900 = tail call i32 @llvm.umin.i32(i32 %i.als, i32 %i.alr) ; 2 uses
  %i.alt = sub nuw i32 %i.als, %..i900
  store i32 %i.alt, ptr %i.ag, align 8, !tbaa !26
  %i.alu = zext i32 %..i900 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alm, ptr nonnull align 1 %i.aj, i64 %i.alu, i1 false)
end_hunk_29
begin_hunk_30
  %i.amy = trunc i64 %i.amx to i32
  %i.amz = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i903 = tail call i32 @llvm.umin.i32(i32 %i.amz, i32 %i.amy) ; 2 uses
  %i.ana = sub nuw i32 %i.amz, %..peel.i903
  store i32 %i.ana, ptr %i.ag, align 8, !tbaa !26
  %i.anb = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.anc = zext i32 %..peel.i903 to i64           ; 3 uses
end_hunk_30
begin_hunk_31
  %i.anp = trunc i64 %i.ano to i32
  %i.anq = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i908 = tail call i32 @llvm.umin.i32(i32 %i.anq, i32 %i.anp) ; 2 uses
  %i.anr = sub nuw i32 %i.anq, %..i908
  store i32 %i.anr, ptr %i.ag, align 8, !tbaa !26
  %i.ans = zext i32 %..i908 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ank, ptr nonnull align 1 %i.aj, i64 %i.ans, i1 false)
end_hunk_31
begin_hunk_32
  %i.ape = trunc i64 %i.apd to i32
  %i.apf = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..peel.i911 = tail call i32 @llvm.umin.i32(i32 %i.apf, i32 %i.ape) ; 2 uses
  %i.apg = sub nuw i32 %i.apf, %..peel.i911
  store i32 %i.apg, ptr %i.ag, align 8, !tbaa !26
  %i.aph = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.api = zext i32 %..peel.i911 to i64           ; 3 uses
end_hunk_32
begin_hunk_33
  %i.apv = trunc i64 %i.apu to i32
  %i.apw = load i32, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %..i916 = tail call i32 @llvm.umin.i32(i32 %i.apw, i32 %i.apv) ; 2 uses
  %i.apx = sub nuw i32 %i.apw, %..i916
  store i32 %i.apx, ptr %i.ag, align 8, !tbaa !26
  %i.apy = zext i32 %..i916 to i64                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.apq, ptr nonnull align 1 %i.aj, i64 %i.apy, i1 false)
end_hunk_33
begin_hunk_34
  %i.n = trunc i64 %i.m to i32
  %i.o = load i32, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %..peel = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.n) ; 2 uses
  %i.p = sub nuw i32 %i.o, %..peel
  store i32 %i.p, ptr %i.d, align 8, !tbaa !26
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.r = zext i32 %..peel to i64                  ; 3 uses
end_hunk_34
begin_hunk_35
  %i.ag = trunc i64 %i.af to i32
  %i.ah = load i32, ptr %i.d, align 8, !tbaa !26  ; 2 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.ag) ; 2 uses
  %i.ai = sub nuw i32 %i.ah, %.
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !26
  %i.aj = zext i32 %. to i64                      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %i.g, i64 %i.aj, i1 false)
end_hunk_35
