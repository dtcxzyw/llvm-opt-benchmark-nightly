Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/iffinput?download=true
inline.NumInlined: 3636
inline.NumDeleted: 1091
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN11OpenImageIO4v3_18IffInput7readimgEv:bb.a
          cleanup
  br label %bb.ao

bb.aj:                                            ; preds = %.loopexit868
  %i.fz = sub nuw i64 %.sroa.9814.01038, %i.fv
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0813.01037, i64 %i.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.gb = load i16, ptr %i.e, align 2, !tbaa !63  ; 3 uses
  store i16 %i.gb, ptr %i.h, align 2, !tbaa !63
  %i.gc = load i16, ptr %i.f, align 2, !tbaa !63  ; 2 uses
  %.not4661029 = icmp ugt i16 %i.gb, %i.gc
  br i1 %.not4661029, label %.loopexit, label %.lr.ph1034.preheader

.lr.ph1034.preheader:                             ; preds = %bb.aj
  %.pre1150 = load i16, ptr %i.d, align 2, !tbaa !63
  br label %.lr.ph1034

.lr.ph1034:                                       ; preds = %.lr.ph1034.preheader, %._crit_edge1027
  %i.gd = phi i16 [ %i.hw, %._crit_edge1027 ], [ %i.gc, %.lr.ph1034.preheader ]
  %i.ge = phi i16 [ %i.hy, %._crit_edge1027 ], [ %.pre1150, %.lr.ph1034.preheader ] ; 2 uses
  %.03221031 = phi i64 [ %.1323.lcssa, %._crit_edge1027 ], [ 0, %.lr.ph1034.preheader ] ; 4 uses
  %storemerge4651030 = phi i16 [ %i.hz, %._crit_edge1027 ], [ %i.gb, %.lr.ph1034.preheader ] ; 2 uses
  %i.gf = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.gg = load i32, ptr %i.as, align 4, !tbaa !110
  %i.gh = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.gi = lshr i8 %i.gh, 3
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.gl = zext i8 %i.gk to i64
  %i.gm = mul nuw nsw i64 %i.gj, %i.gl
  %i.gn = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i544 = icmp eq i8 %i.gn, 0
  %i.go = load i8, ptr %i.an, align 1
  %i.gp = lshr i8 %i.go, 3
  %narrow.i.i = select i1 %.not.i.i544, i8 0, i8 %i.gp
  %i.gq = zext nneg i8 %narrow.i.i to i64
  %i.gr = add nuw nsw i64 %i.gm, %i.gq
  %i.gs = zext i16 %storemerge4651030 to i32
  %i.gt = mul i32 %i.gg, %i.gs
  %i.gu = zext i32 %i.gt to i64
  %i.gv = mul nuw nsw i64 %i.gr, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %i.gx = load i16, ptr %i.c, align 2, !tbaa !63  ; 3 uses
  store i16 %i.gx, ptr %i.i, align 2, !tbaa !63
  %.not4681022 = icmp ugt i16 %i.gx, %i.ge
  br i1 %.not4681022, label %._crit_edge1027, label %.lr.ph1026.preheader

.lr.ph1026.preheader:                             ; preds = %.lr.ph1034
  %umax1129 = call i64 @llvm.umax.i64(i64 %.03221031, i64 %i.ev)
  %exitcond1130.not1409.not = icmp ult i64 %.03221031, %i.ev
  br i1 %exitcond1130.not1409.not, label %.lr.ph1412, label %.lr.ph1026.preheader._crit_edge

.lr.ph1026:                                       ; preds = %.lr.ph1412
  %exitcond1130.not = icmp eq i64 %i.hq, %umax1129
  br i1 %exitcond1130.not, label %.lr.ph1026.preheader._crit_edge, label %.lr.ph1412, !llvm.loop !339

.lr.ph1026.preheader._crit_edge:                  ; preds = %.lr.ph1026.preheader, %.lr.ph1026
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJttEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.43, ptr noundef nonnull align 2 dereferenceable(2) %i.i, ptr noundef nonnull align 2 dereferenceable(2) %i.h)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %.lr.ph1026.preheader._crit_edge
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %bb.ao

.lr.ph1412:                                       ; preds = %.lr.ph1026.preheader, %.lr.ph1026
  %storemerge46710231411 = phi i16 [ %i.hu, %.lr.ph1026 ], [ %i.gx, %.lr.ph1026.preheader ]
  %.132310241410 = phi i64 [ %i.hq, %.lr.ph1026 ], [ %.03221031, %.lr.ph1026.preheader ] ; 2 uses
  %i.gz = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.ha = lshr i8 %i.gz, 3
  %i.hb = zext nneg i8 %i.ha to i64
  %i.hc = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.hd = zext i8 %i.hc to i64
  %i.he = mul nuw nsw i64 %i.hb, %i.hd
  %i.hf = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i545 = icmp eq i8 %i.hf, 0
  %i.hg = load i8, ptr %i.an, align 1
  %i.hh = lshr i8 %i.hg, 3
  %narrow.i.i546 = select i1 %.not.i.i545, i8 0, i8 %i.hh
  %i.hi = zext nneg i8 %narrow.i.i546 to i64
  %i.hj = add nuw nsw i64 %i.he, %i.hi
  %i.hk = zext i16 %storemerge46710231411 to i64
  %i.hl = mul nuw nsw i64 %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hl
  %i.hn = load i32, ptr %i.g, align 4, !tbaa !45
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds i8, ptr %i.hm, i64 %i.ho
  %i.hq = add i64 %.132310241410, 1               ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0805.0, i64 %.132310241410
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !55
  store i8 %i.hs, ptr %i.hp, align 1, !tbaa !55
  %i.ht = load i16, ptr %i.i, align 2, !tbaa !63
  %i.hu = add i16 %i.ht, 1                        ; 3 uses
  store i16 %i.hu, ptr %i.i, align 2, !tbaa !63
  %i.hv = load i16, ptr %i.d, align 2, !tbaa !63  ; 2 uses
  %.not468 = icmp ugt i16 %i.hu, %i.hv
  br i1 %.not468, label %._crit_edge1027.loopexit, label %.lr.ph1026, !llvm.loop !339

bb.al:                                            ; preds = %.lr.ph1026.preheader._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %.loopexit

._crit_edge1027.loopexit:                         ; preds = %.lr.ph1412
  %.pre1151 = load i16, ptr %i.h, align 2, !tbaa !63
  %.pre1152 = load i16, ptr %i.f, align 2, !tbaa !63
  br label %._crit_edge1027

._crit_edge1027:                                  ; preds = %._crit_edge1027.loopexit, %.lr.ph1034
  %i.hw = phi i16 [ %i.gd, %.lr.ph1034 ], [ %.pre1152, %._crit_edge1027.loopexit ] ; 2 uses
  %i.hx = phi i16 [ %storemerge4651030, %.lr.ph1034 ], [ %.pre1151, %._crit_edge1027.loopexit ]
  %i.hy = phi i16 [ %i.ge, %.lr.ph1034 ], [ %i.hv, %._crit_edge1027.loopexit ]
  %.1323.lcssa = phi i64 [ %.03221031, %.lr.ph1034 ], [ %i.hq, %._crit_edge1027.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  %i.hz = add i16 %i.hx, 1                        ; 3 uses
  store i16 %i.hz, ptr %i.h, align 2, !tbaa !63
  %.not466 = icmp ugt i16 %i.hz, %i.hw
  br i1 %.not466, label %.loopexit, label %.lr.ph1034, !llvm.loop !340

.loopexit:                                        ; preds = %._crit_edge1027, %bb.aj, %bb.al
  %.not466909 = phi i1 [ false, %bb.al ], [ true, %bb.aj ], [ true, %._crit_edge1027 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %.not.i.i.i547 = icmp eq ptr %.sroa.0805.0, null
  br i1 %.not.i.i.i547, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %.loopexit
  %i.ia = ptrtoint ptr %.sroa.13810.0 to i64
  %i.ib = sub i64 %i.ia, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0805.0, i64 noundef %i.ib) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.loopexit, %bb.am
  br i1 %.not466909, label %bb.an, label %.critedge518

bb.an:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.ic = load i32, ptr %i.g, align 4, !tbaa !45  ; 2 uses
  %storemerge464 = add nsw i32 %i.ic, -1
  store i32 %storemerge464, ptr %i.g, align 4, !tbaa !45
  %i.id = icmp slt i32 %i.ic, 1
  br i1 %i.id, label %.critedge516.loopexit, label %bb.v, !llvm.loop !341

bb.ao:                                            ; preds = %bb.ak, %bb.ai
  %.pn473 = phi { ptr, i32 } [ %i.fy, %bb.ai ], [ %i.gy, %bb.ak ] ; 2 uses
  %.not.i.i.i548 = icmp eq ptr %.sroa.0805.0, null
  br i1 %.not.i.i.i548, label %_ZNSt6vectorIhSaIhEED2Ev.exit549, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ie = ptrtoint ptr %.sroa.13810.0 to i64
  %i.if = sub i64 %i.ie, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0805.0, i64 noundef %i.if) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit549

_ZNSt6vectorIhSaIhEED2Ev.exit549:                 ; preds = %bb.ap, %bb.ao, %bb.ah
  %.pn473.pn = phi { ptr, i32 } [ %i.fx, %bb.ah ], [ %.pn473, %bb.ao ], [ %.pn473, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %bb.ay

.critedge483:                                     ; preds = %bb.ag
  %.not.i.i.i550 = icmp eq ptr %.sroa.0805.0, null
  br i1 %.not.i.i.i550, label %.critedge518, label %bb.aq

bb.aq:                                            ; preds = %.critedge483
  %i.ig = ptrtoint ptr %.sroa.13810.0 to i64
  %i.ih = sub i64 %i.ig, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0805.0, i64 noundef %i.ih) #31
  br label %.critedge518

bb.ar:                                            ; preds = %bb.t
  %i.ii = load i16, ptr %i.f, align 2, !tbaa !63  ; 3 uses
  %i.ij = zext i16 %i.ii to i32
  %i.ik = load i16, ptr %i.e, align 2, !tbaa !63  ; 4 uses
  %i.il = zext i16 %i.ik to i32
  %i.im = add nuw nsw i32 %i.ij, 1
  %i.in = sub nsw i32 %i.im, %i.il
  %i.io = mul i32 %i.in, %i.cy
  %i.ip = zext i32 %i.io to i64
  %i.iq = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.ir = lshr i8 %i.iq, 3
  %i.is = zext nneg i8 %i.ir to i64
  %i.it = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.iu = zext i8 %i.it to i64
  %i.iv = mul nuw nsw i64 %i.is, %i.iu
  %i.iw = mul nuw nsw i64 %i.iv, %i.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  store i16 %i.ik, ptr %i.j, align 2, !tbaa !63
  %.not4561018 = icmp ugt i16 %i.ik, %i.ii
  br i1 %.not4561018, label %switch.early.test, label %.lr.ph1021.preheader

.lr.ph1021.preheader:                             ; preds = %bb.ar
  %.pre1145 = load i16, ptr %i.d, align 2, !tbaa !63 ; 2 uses
  br label %.lr.ph1021

.lr.ph1021:                                       ; preds = %.lr.ph1021.preheader, %.thread819
  %i.ix = phi i16 [ %i.jv, %.thread819 ], [ %i.ii, %.lr.ph1021.preheader ]
  %i.iy = phi i16 [ %i.jx, %.thread819 ], [ %.pre1145, %.lr.ph1021.preheader ] ; 2 uses
  %i.iz = phi i16 [ %i.jy, %.thread819 ], [ %.pre1145, %.lr.ph1021.preheader ] ; 2 uses
  %i.ja = phi i16 [ %i.jz, %.thread819 ], [ %i.ik, %.lr.ph1021.preheader ] ; 2 uses
  %.03211019 = phi i32 [ %i.ka, %.thread819 ], [ 0, %.lr.ph1021.preheader ] ; 2 uses
  %i.jb = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 3 uses
  %i.jc = load i32, ptr %i.as, align 4, !tbaa !110
  %i.jd = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.je = lshr i8 %i.jd, 3
  %i.jf = zext nneg i8 %i.je to i64
  %i.jg = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.jh = zext i8 %i.jg to i64
  %i.ji = mul nuw nsw i64 %i.jf, %i.jh
  %i.jj = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i552 = icmp eq i8 %i.jj, 0
  %i.jk = load i8, ptr %i.an, align 1
  %i.jl = lshr i8 %i.jk, 3
  %narrow.i.i553 = select i1 %.not.i.i552, i8 0, i8 %i.jl
  %i.jm = zext nneg i8 %narrow.i.i553 to i64
  %i.jn = add nuw nsw i64 %i.ji, %i.jm
  %i.jo = zext i16 %i.ja to i32
  %i.jp = mul i32 %i.jc, %i.jo
  %i.jq = zext i32 %i.jp to i64
  %i.jr = mul nuw nsw i64 %i.jn, %i.jq            ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  %i.jt = load i16, ptr %i.c, align 2, !tbaa !63  ; 3 uses
  store i16 %i.jt, ptr %i.k, align 2, !tbaa !63
  %.not4571014 = icmp ugt i16 %i.jt, %i.iz
  br i1 %.not4571014, label %.thread819, label %.lr.ph1017

.lr.ph1017:                                       ; preds = %.lr.ph1021
  %i.ju = mul i32 %.03211019, %i.cy
  %scevgep = getelementptr i8, ptr %i.jb, i64 %i.jr
  %scevgep1414.a = getelementptr i8, ptr %i.jb, i64 %i.jr
  br label %bb.as

.thread819.loopexit:                              ; preds = %._crit_edge1013
  %.pre1148 = load i16, ptr %i.j, align 2, !tbaa !63
  %.pre1149 = load i16, ptr %i.f, align 2, !tbaa !63
  br label %.thread819

.thread819:                                       ; preds = %.thread819.loopexit, %.lr.ph1021
  %i.jv = phi i16 [ %.pre1149, %.thread819.loopexit ], [ %i.ix, %.lr.ph1021 ] ; 2 uses
  %i.jw = phi i16 [ %.pre1148, %.thread819.loopexit ], [ %i.ja, %.lr.ph1021 ]
  %i.jx = phi i16 [ %i.nd, %.thread819.loopexit ], [ %i.iy, %.lr.ph1021 ]
  %i.jy = phi i16 [ %i.nd, %.thread819.loopexit ], [ %i.iz, %.lr.ph1021 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  %i.jz = add i16 %i.jw, 1                        ; 3 uses
  store i16 %i.jz, ptr %i.j, align 2, !tbaa !63
  %i.ka = add nuw nsw i32 %.03211019, 1
  %.not456 = icmp ugt i16 %i.jz, %i.jv
  br i1 %.not456, label %switch.early.test, label %.lr.ph1021, !llvm.loop !342

bb.as:                                            ; preds = %.lr.ph1017, %._crit_edge1013
  %i.kb = phi i16 [ %i.iy, %.lr.ph1017 ], [ %i.nd, %._crit_edge1013 ]
  %indvars.iv1127 = phi i64 [ 0, %.lr.ph1017 ], [ %indvars.iv.next1128, %._crit_edge1013 ] ; 2 uses
  %i.kc = phi i16 [ %i.jt, %.lr.ph1017 ], [ %i.nf, %._crit_edge1013 ] ; 2 uses
  %i.kd = trunc nuw nsw i64 %indvars.iv1127 to i32
  %i.ke = add i32 %i.ju, %i.kd
  %i.kf = zext i32 %i.ke to i64                   ; 2 uses
  %i.kg = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.kh = lshr i8 %i.kg, 3
  %i.ki = zext nneg i8 %i.kh to i64               ; 2 uses
  %i.kj = load i8, ptr %i.ah, align 1, !tbaa !67  ; 4 uses
  %i.kk = zext i8 %i.kj to i64                    ; 20 uses
  %i.kl = mul nuw nsw i64 %i.ki, %i.kk            ; 3 uses
  %i.km = mul nuw nsw i64 %i.kl, %i.kf            ; 2 uses
  %i.kn = add nuw nsw i64 %i.km, %i.kl
  %.not463 = icmp samesign ugt i64 %i.kn, %i.iw
  br i1 %.not463, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJttEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.44, ptr noundef nonnull align 2 dereferenceable(2) %i.k, ptr noundef nonnull align 2 dereferenceable(2) %i.j)
          to label %.thread821 unwind label %bb.au

.thread821:                                       ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  br label %switch.early.test

bb.au:                                            ; preds = %bb.at
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  br label %bb.ay

bb.av:                                            ; preds = %bb.as
  %i.kp = getelementptr i8, ptr %i.ef, i64 %i.km  ; 10 uses
  %.not1045 = icmp eq i8 %i.kj, 0
  br i1 %.not1045, label %._crit_edge1013, label %iter.check

iter.check:                                       ; preds = %bb.av
  %i.kq = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i558 = icmp eq i8 %i.kq, 0
  %i.kr = load i8, ptr %i.an, align 1
  %i.ks = lshr i8 %i.kr, 3
  %narrow.i.i559 = select i1 %.not.i.i558, i8 0, i8 %i.ks
  %i.kt = zext nneg i8 %narrow.i.i559 to i64
  %i.ku = add nuw nsw i64 %i.kl, %i.kt
  %i.kv = zext i16 %i.kc to i64
  %i.kw = mul nuw nsw i64 %i.ku, %i.kv            ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.kw ; 19 uses
  %min.iters.check = icmp ult i8 %i.kj, 8
  br i1 %min.iters.check, label %.lr.ph1012.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep1413 = getelementptr i8, ptr %scevgep, i64 %i.kw
  %i.ky = getelementptr i8, ptr %scevgep1414.a, i64 %i.kw
  %scevgep1415 = getelementptr i8, ptr %i.ky, i64 %i.kk
  %i.kz = mul nuw nsw i64 %i.ki, %i.kf
  %i.la = add nuw nsw i64 %i.kz, 1
  %i.lb = mul nuw nsw i64 %i.la, %i.kk
  %scevgep1416 = getelementptr i8, ptr %i.ef, i64 %i.lb
  %bound0 = icmp ult ptr %scevgep1413, %scevgep1416
  %bound1 = icmp ult ptr %i.kp, %scevgep1415
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph1012.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1417 = icmp ult i8 %i.kj, 32
  br i1 %min.iters.check1417, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lc = and i64 %i.kk, 24
  %n.vec = and i64 %i.kk, 224                     ; 9 uses
  %i.ld = and i64 %i.kk, 31
  %i.le = getelementptr i8, ptr %i.kx, i64 %n.vec
  %i.lf = getelementptr i8, ptr %i.kp, i64 -1
  %i.lg = getelementptr i8, ptr %i.lf, i64 %i.kk  ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 -15
  %i.li = getelementptr inbounds i8, ptr %i.lg, i64 -31
  %wide.load = load <16 x i8>, ptr %i.lh, align 1, !tbaa !55, !alias.scope !370
  %wide.load1418 = load <16 x i8>, ptr %i.li, align 1, !tbaa !55, !alias.scope !370
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1419 = shufflevector <16 x i8> %wide.load1418, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.lj = getelementptr i8, ptr %i.kx, i64 16
  store <16 x i8> %reverse, ptr %i.kx, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1419, ptr %i.lj, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %i.lk = icmp eq i64 %n.vec, 32
  br i1 %i.lk, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %i.kx, i64 32
  %i.ll = getelementptr i8, ptr %i.kp, i64 -33
  %i.lm = getelementptr i8, ptr %i.ll, i64 %i.kk  ; 2 uses
  %i.ln = getelementptr inbounds i8, ptr %i.lm, i64 -15
  %i.lo = getelementptr inbounds i8, ptr %i.lm, i64 -31
  %wide.load.1 = load <16 x i8>, ptr %i.ln, align 1, !tbaa !55, !alias.scope !370
  %wide.load1418.1 = load <16 x i8>, ptr %i.lo, align 1, !tbaa !55, !alias.scope !370
  %reverse.1 = shufflevector <16 x i8> %wide.load.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1419.1 = shufflevector <16 x i8> %wide.load1418.1, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.lp = getelementptr i8, ptr %i.kx, i64 48
  store <16 x i8> %reverse.1, ptr %next.gep.1, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1419.1, ptr %i.lp, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %i.lq = icmp eq i64 %n.vec, 64
  br i1 %i.lq, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %i.kx, i64 64
  %i.lr = getelementptr i8, ptr %i.kp, i64 -65
  %i.ls = getelementptr i8, ptr %i.lr, i64 %i.kk  ; 2 uses
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 -15
  %i.lu = getelementptr inbounds i8, ptr %i.ls, i64 -31
  %wide.load.2 = load <16 x i8>, ptr %i.lt, align 1, !tbaa !55, !alias.scope !370
  %wide.load1418.2 = load <16 x i8>, ptr %i.lu, align 1, !tbaa !55, !alias.scope !370
  %reverse.2 = shufflevector <16 x i8> %wide.load.2, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1419.2 = shufflevector <16 x i8> %wide.load1418.2, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.lv = getelementptr i8, ptr %i.kx, i64 80
  store <16 x i8> %reverse.2, ptr %next.gep.2, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1419.2, ptr %i.lv, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %i.lw = icmp eq i64 %n.vec, 96
  br i1 %i.lw, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %i.kx, i64 96
  %i.lx = getelementptr i8, ptr %i.kp, i64 -97
  %i.ly = getelementptr i8, ptr %i.lx, i64 %i.kk  ; 2 uses
  %i.lz = getelementptr inbounds i8, ptr %i.ly, i64 -15
  %i.ma = getelementptr inbounds i8, ptr %i.ly, i64 -31
  %wide.load.3 = load <16 x i8>, ptr %i.lz, align 1, !tbaa !55, !alias.scope !370
  %wide.load1418.3 = load <16 x i8>, ptr %i.ma, align 1, !tbaa !55, !alias.scope !370
  %reverse.3 = shufflevector <16 x i8> %wide.load.3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1419.3 = shufflevector <16 x i8> %wide.load1418.3, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.mb = getelementptr i8, ptr %i.kx, i64 112
  store <16 x i8> %reverse.3, ptr %next.gep.3, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1419.3, ptr %i.mb, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %i.mc = icmp eq i64 %n.vec, 128
  br i1 %i.mc, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %i.kx, i64 128
  %i.md = getelementptr i8, ptr %i.kp, i64 -129
  %i.me = getelementptr i8, ptr %i.md, i64 %i.kk  ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 -15
  %i.mg = getelementptr inbounds i8, ptr %i.me, i64 -31
  %wide.load.4 = load <16 x i8>, ptr %i.mf, align 1, !tbaa !55, !alias.scope !370
  %wide.load1418.4 = load <16 x i8>, ptr %i.mg, align 1, !tbaa !55, !alias.scope !370
  %reverse.4 = shufflevector <16 x i8> %wide.load.4, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1419.4 = shufflevector <16 x i8> %wide.load1418.4, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.mh = getelementptr i8, ptr %i.kx, i64 144
  store <16 x i8> %reverse.4, ptr %next.gep.4, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1419.4, ptr %i.mh, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %i.mi = icmp eq i64 %n.vec, 160
  br i1 %i.mi, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %i.kx, i64 160
  %i.mj = getelementptr i8, ptr %i.kp, i64 -161
  %i.mk = getelementptr i8, ptr %i.mj, i64 %i.kk  ; 2 uses
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 -15
  %i.mm = getelementptr inbounds i8, ptr %i.mk, i64 -31
  %wide.load.5 = load <16 x i8>, ptr %i.ml, align 1, !tbaa !55, !alias.scope !370
  %wide.load1418.5 = load <16 x i8>, ptr %i.mm, align 1, !tbaa !55, !alias.scope !370
  %reverse.5 = shufflevector <16 x i8> %wide.load.5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1419.5 = shufflevector <16 x i8> %wide.load1418.5, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.mn = getelementptr i8, ptr %i.kx, i64 176
  store <16 x i8> %reverse.5, ptr %next.gep.5, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1419.5, ptr %i.mn, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %i.mo = icmp eq i64 %n.vec, 192
  br i1 %i.mo, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %next.gep.6 = getelementptr i8, ptr %i.kx, i64 192
  %i.mp = getelementptr i8, ptr %i.kp, i64 -193
  %i.mq = getelementptr i8, ptr %i.mp, i64 %i.kk  ; 2 uses
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 -15
  %i.ms = getelementptr inbounds i8, ptr %i.mq, i64 -31
  %wide.load.6 = load <16 x i8>, ptr %i.mr, align 1, !tbaa !55, !alias.scope !370
  %wide.load1418.6 = load <16 x i8>, ptr %i.ms, align 1, !tbaa !55, !alias.scope !370
  %reverse.6 = shufflevector <16 x i8> %wide.load.6, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1419.6 = shufflevector <16 x i8> %wide.load1418.6, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.mt = getelementptr i8, ptr %i.kx, i64 208
  store <16 x i8> %reverse.6, ptr %next.gep.6, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  store <16 x i8> %reverse1419.6, ptr %i.mt, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.kk
  br i1 %cmp.n, label %._crit_edge1013.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.lc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1012.preheader, label %vec.epilog.ph, !prof !137

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1421 = and i64 %i.kk, 248                 ; 3 uses
  %i.mu = and i64 %i.kk, 7
  %i.mv = getelementptr i8, ptr %i.kx, i64 %n.vec1421
  %invariant.gep1719 = getelementptr i8, ptr %i.kp, i64 %i.kk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1422 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1426, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1423 = getelementptr i8, ptr %i.kx, i64 %index1422
  %i.mw = xor i64 %index1422, -1
  %gep1720 = getelementptr i8, ptr %invariant.gep1719, i64 %i.mw
  %i.mx = getelementptr inbounds i8, ptr %gep1720, i64 -7
  %wide.load1424 = load <8 x i8>, ptr %i.mx, align 1, !tbaa !55, !alias.scope !370
  %reverse1425 = shufflevector <8 x i8> %wide.load1424, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse1425, ptr %next.gep1423, align 1, !tbaa !55, !alias.scope !371, !noalias !370
  %index.next1426 = add nuw i64 %index1422, 8     ; 2 uses
  %i.my = icmp eq i64 %index.next1426, %n.vec1421
  br i1 %i.my, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !346

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1427 = icmp eq i64 %n.vec1421, %i.kk
  br i1 %cmp.n1427, label %._crit_edge1013.loopexit, label %.lr.ph1012.preheader

.lr.ph1012.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1124.ph = phi i64 [ %i.kk, %iter.check ], [ %i.kk, %vector.memcheck ], [ %i.ld, %vec.epilog.iter.check ], [ %i.mu, %vec.epilog.middle.block ]
  %.03191009.ph = phi ptr [ %i.kx, %iter.check ], [ %i.kx, %vector.memcheck ], [ %i.le, %vec.epilog.iter.check ], [ %i.mv, %vec.epilog.middle.block ]
  br label %.lr.ph1012

.lr.ph1012:                                       ; preds = %.lr.ph1012.preheader, %.lr.ph1012
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %.lr.ph1012 ], [ %indvars.iv1124.ph, %.lr.ph1012.preheader ] ; 2 uses
  %.03191009 = phi ptr [ %i.nb, %.lr.ph1012 ], [ %.03191009.ph, %.lr.ph1012.preheader ] ; 2 uses
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -1 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.next1125
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !55
  %i.nb = getelementptr inbounds nuw i8, ptr %.03191009, i64 1
  store i8 %i.na, ptr %.03191009, align 1, !tbaa !55
  %i.nc = icmp samesign ugt i64 %indvars.iv1124, 1
  br i1 %i.nc, label %.lr.ph1012, label %._crit_edge1013.loopexit, !llvm.loop !347

._crit_edge1013.loopexit:                         ; preds = %.lr.ph1012, %vec.epilog.middle.block, %middle.block
  %.pre1146 = load i16, ptr %i.k, align 2, !tbaa !63
  %.pre1147 = load i16, ptr %i.d, align 2, !tbaa !63
  br label %._crit_edge1013

._crit_edge1013:                                  ; preds = %._crit_edge1013.loopexit, %bb.av
  %i.nd = phi i16 [ %.pre1147, %._crit_edge1013.loopexit ], [ %i.kb, %bb.av ] ; 4 uses
  %i.ne = phi i16 [ %.pre1146, %._crit_edge1013.loopexit ], [ %i.kc, %bb.av ]
  %i.nf = add i16 %i.ne, 1                        ; 3 uses
  store i16 %i.nf, ptr %i.k, align 2, !tbaa !63
  %indvars.iv.next1128 = add nuw nsw i64 %indvars.iv1127, 1
  %.not457 = icmp ugt i16 %i.nf, %i.nd
  br i1 %.not457, label %.thread819.loopexit, label %bb.as, !llvm.loop !348

switch.early.test:                                ; preds = %.thread819, %bb.ar, %.thread821
  %cond864 = phi i1 [ false, %.thread821 ], [ true, %bb.ar ], [ true, %.thread819 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  %i.ng = load ptr, ptr %1, align 8, !tbaa !58    ; 3 uses
  %.not.i.i.i560 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i560, label %_ZNSt6vectorIhSaIhEED2Ev.exit561, label %bb.aw

bb.aw:                                            ; preds = %switch.early.test
  %i.nh = load ptr, ptr %i.bv, align 8, !tbaa !60
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = ptrtoint ptr %i.ng to i64
  %i.nk = sub i64 %i.ni, %i.nj
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.nk) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit561

end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18IffInput7readimgEv:bb.a
  %i.acr = icmp ult ptr %.2.i679, %i.aby
  %i.acs = icmp ult ptr %.239.i678, %i.abx
  %i.act = select i1 %i.acr, i1 %i.acs, i1 false
  br i1 %i.act, label %.lr.ph.i672, label %.loopexit872

.loopexit872:                                     ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i677, %bb.ed, %bb.ec, %bb.dy, %bb.dx, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit669
  %.3.i671 = phi ptr [ %.sroa.0750.01400, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit669 ], [ %.239.i678, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i677 ], [ %i.acc, %bb.dx ], [ %i.acc, %bb.ed ], [ %i.acc, %bb.ec ], [ %i.acc, %bb.dy ]
  %i.acu = ptrtoint ptr %.3.i671 to i64
  %i.acv = ptrtoint ptr %.sroa.0750.01400 to i64
  %i.acw = sub i64 %i.acu, %i.acv                 ; 3 uses
  %i.acx = icmp ugt i64 %i.acw, %.sroa.8751.01399
  br i1 %i.acx, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %.loopexit872
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.49)
          to label %.critedge510 unwind label %bb.eh

bb.eg:                                            ; preds = %bb.dv
  %i.acy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit697

bb.eh:                                            ; preds = %bb.ef
  %i.acz = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ei:                                            ; preds = %.loopexit872
  %i.ada = sub nuw i64 %.sroa.8751.01399, %i.acw
  %i.adb = getelementptr inbounds nuw i8, ptr %.sroa.0750.01400, i64 %i.acw
  %i.adc = load i16, ptr %i.u, align 2, !tbaa !63 ; 2 uses
  %i.add = load i16, ptr %i.v, align 2, !tbaa !63 ; 2 uses
  %.not418954 = icmp ugt i16 %i.adc, %i.add
  br i1 %.not418954, label %.loopexit871, label %.lr.ph960

.lr.ph960:                                        ; preds = %bb.ei
  %i.ade = zext i16 %i.adc to i32
  %.pre1135 = load i16, ptr %i.t, align 2, !tbaa !63
  br label %bb.ej

bb.ej:                                            ; preds = %.lr.ph960, %._crit_edge952
  %i.adf = phi i16 [ %i.add, %.lr.ph960 ], [ %i.aex, %._crit_edge952 ]
  %i.adg = phi i16 [ %.pre1135, %.lr.ph960 ], [ %i.aey, %._crit_edge952 ] ; 2 uses
  %.0257957 = phi i32 [ %i.ade, %.lr.ph960 ], [ %i.aez, %._crit_edge952 ] ; 3 uses
  %.sroa.0738.0956 = phi ptr [ %.sroa.0744.0, %.lr.ph960 ], [ %.sroa.0738.1.lcssa, %._crit_edge952 ] ; 2 uses
  %.sroa.9740.0955 = phi i64 [ %i.abw, %.lr.ph960 ], [ %.sroa.9740.1.lcssa, %._crit_edge952 ] ; 3 uses
  %i.adh = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.adi = load i32, ptr %i.as, align 4, !tbaa !110
  %i.adj = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.adk = lshr i8 %i.adj, 3
  %i.adl = zext nneg i8 %i.adk to i64
  %i.adm = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.adn = zext i8 %i.adm to i64
  %i.ado = mul nuw nsw i64 %i.adl, %i.adn
  %i.adp = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i686 = icmp eq i8 %i.adp, 0
  %i.adq = load i8, ptr %i.an, align 1
  %i.adr = lshr i8 %i.adq, 3
  %narrow.i.i687 = select i1 %.not.i.i686, i8 0, i8 %i.adr
  %i.ads = zext nneg i8 %narrow.i.i687 to i64
  %i.adt = add nuw nsw i64 %i.ado, %i.ads
  %i.adu = mul i32 %i.adi, %.0257957
  %i.adv = zext i32 %i.adu to i64
  %i.adw = mul nuw nsw i64 %i.adt, %i.adv
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.adw
  %i.ady = load i16, ptr %i.s, align 2, !tbaa !63 ; 2 uses
  %.not419946 = icmp ugt i16 %i.ady, %i.adg
  br i1 %.not419946, label %._crit_edge952, label %.lr.ph951.preheader

.lr.ph951.preheader:                              ; preds = %bb.ej
  %i.adz = icmp eq i64 %.sroa.9740.0955, 0
  br i1 %i.adz, label %.lr.ph951.preheader._crit_edge, label %.lr.ph1397

.lr.ph951:                                        ; preds = %.lr.ph1397
  %i.aea = icmp eq i64 %i.aet, 0
  br i1 %i.aea, label %.lr.ph951.preheader._crit_edge, label %.lr.ph1397, !llvm.loop !360

.lr.ph951.preheader._crit_edge:                   ; preds = %.lr.ph951.preheader, %.lr.ph951
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.50)
          to label %.loopexit871 unwind label %bb.ek

bb.ek:                                            ; preds = %.lr.ph951.preheader._crit_edge
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

.lr.ph1397:                                       ; preds = %.lr.ph951.preheader, %.lr.ph951
  %.sroa.9740.19471396 = phi i64 [ %i.aet, %.lr.ph951 ], [ %.sroa.9740.0955, %.lr.ph951.preheader ]
  %.sroa.0738.19481395 = phi ptr [ %i.aeu, %.lr.ph951 ], [ %.sroa.0738.0956, %.lr.ph951.preheader ] ; 2 uses
  %.02569491394 = phi i16 [ %i.aev, %.lr.ph951 ], [ %i.ady, %.lr.ph951.preheader ] ; 2 uses
  %i.aec = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.aed = lshr i8 %i.aec, 3
  %i.aee = zext nneg i8 %i.aed to i64
  %i.aef = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.aeg = zext i8 %i.aef to i64
  %i.aeh = mul nuw nsw i64 %i.aee, %i.aeg         ; 2 uses
  %i.aei = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i688 = icmp eq i8 %i.aei, 0
  %i.aej = load i8, ptr %i.an, align 1
  %i.aek = lshr i8 %i.aej, 3
  %narrow.i.i689 = select i1 %.not.i.i688, i8 0, i8 %i.aek
  %i.ael = zext nneg i8 %narrow.i.i689 to i64
  %i.aem = add nuw nsw i64 %i.aeh, %i.ael
  %i.aen = zext i16 %.02569491394 to i64
  %i.aeo = mul nuw nsw i64 %i.aem, %i.aen
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adx, i64 %i.aeo
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 %i.aeh
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %indvars.iv.next11161401
  %i.aes = load i8, ptr %.sroa.0738.19481395, align 1, !tbaa !55
  store i8 %i.aes, ptr %i.aer, align 1, !tbaa !55
  %i.aet = add i64 %.sroa.9740.19471396, -1       ; 3 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %.sroa.0738.19481395, i64 1 ; 2 uses
  %i.aev = add i16 %.02569491394, 1               ; 2 uses
  %i.aew = load i16, ptr %i.t, align 2, !tbaa !63 ; 2 uses
  %.not419 = icmp ugt i16 %i.aev, %i.aew
  br i1 %.not419, label %._crit_edge952.loopexit, label %.lr.ph951, !llvm.loop !360

._crit_edge952.loopexit:                          ; preds = %.lr.ph1397
  %.pre1136 = load i16, ptr %i.v, align 2, !tbaa !63
  br label %._crit_edge952

._crit_edge952:                                   ; preds = %._crit_edge952.loopexit, %bb.ej
  %i.aex = phi i16 [ %i.adf, %bb.ej ], [ %.pre1136, %._crit_edge952.loopexit ] ; 2 uses
  %i.aey = phi i16 [ %i.adg, %bb.ej ], [ %i.aew, %._crit_edge952.loopexit ]
  %.sroa.9740.1.lcssa = phi i64 [ %.sroa.9740.0955, %bb.ej ], [ %i.aet, %._crit_edge952.loopexit ]
  %.sroa.0738.1.lcssa = phi ptr [ %.sroa.0738.0956, %bb.ej ], [ %i.aeu, %._crit_edge952.loopexit ]
  %i.aez = add nuw nsw i32 %.0257957, 1
  %i.afa = zext i16 %i.aex to i32
  %.not418.not = icmp samesign ult i32 %.0257957, %i.afa
  br i1 %.not418.not, label %bb.ej, label %.loopexit871, !llvm.loop !361

.loopexit871:                                     ; preds = %._crit_edge952, %bb.ei, %.lr.ph951.preheader._crit_edge
  %.not418876 = phi i1 [ false, %.lr.ph951.preheader._crit_edge ], [ true, %bb.ei ], [ true, %._crit_edge952 ]
  %.not.i.i.i694 = icmp eq ptr %.sroa.0744.0, null
  br i1 %.not.i.i.i694, label %_ZNSt6vectorIhSaIhEED2Ev.exit695, label %bb.el

bb.el:                                            ; preds = %.loopexit871
  %i.afb = ptrtoint ptr %.sroa.13.0 to i64
  %i.afc = sub i64 %i.afb, %i.abv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0744.0, i64 noundef %i.afc) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit695

_ZNSt6vectorIhSaIhEED2Ev.exit695:                 ; preds = %.loopexit871, %bb.el
  br i1 %.not418876, label %bb.dt, label %_ZNSt6vectorIhSaIhEED2Ev.exit699

bb.em:                                            ; preds = %bb.ek, %bb.eh
  %.pn423 = phi { ptr, i32 } [ %i.acz, %bb.eh ], [ %i.aeb, %bb.ek ] ; 2 uses
  %.not.i.i.i696 = icmp eq ptr %.sroa.0744.0, null
  br i1 %.not.i.i.i696, label %_ZNSt6vectorIhSaIhEED2Ev.exit697, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.afd = ptrtoint ptr %.sroa.13.0 to i64
  %i.afe = sub i64 %i.afd, %i.abv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0744.0, i64 noundef %i.afe) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit697

.critedge510:                                     ; preds = %bb.ef
  %.not.i.i.i698 = icmp eq ptr %.sroa.0744.0, null
  br i1 %.not.i.i.i698, label %_ZNSt6vectorIhSaIhEED2Ev.exit699, label %bb.eo

bb.eo:                                            ; preds = %.critedge510
  %i.aff = ptrtoint ptr %.sroa.13.0 to i64
  %i.afg = sub i64 %i.aff, %i.abv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0744.0, i64 noundef %i.afg) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit699

bb.ep:                                            ; preds = %bb.dr
  %i.afh = zext nneg i8 %narrow.i664 to i64
  %i.afi = mul nuw nsw i64 %i.afh, %i.aan
  %i.afj = icmp ult i64 %i.abi, %i.afi
  br i1 %i.afj, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.51)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit699 unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.afk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit697

bb.es:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #30
  %i.afl = load i16, ptr %i.u, align 2, !tbaa !63 ; 3 uses
  store i16 %i.afl, ptr %i.w, align 2, !tbaa !63
  %i.afm = load i16, ptr %i.v, align 2, !tbaa !63 ; 2 uses
  %.not409941 = icmp ugt i16 %i.afl, %i.afm
  br i1 %.not409941, label %._crit_edge945, label %.lr.ph944.preheader

.lr.ph944.preheader:                              ; preds = %bb.es
  %.pre = load i16, ptr %i.t, align 2, !tbaa !63  ; 2 uses
  %scevgep1459 = getelementptr i8, ptr %i.abe, i64 1
  br label %.lr.ph944

.lr.ph944:                                        ; preds = %.lr.ph944.preheader, %.thread853
  %i.afn = phi i16 [ %i.agl, %.thread853 ], [ %i.afm, %.lr.ph944.preheader ]
  %i.afo = phi i16 [ %i.agn, %.thread853 ], [ %.pre, %.lr.ph944.preheader ] ; 2 uses
  %i.afp = phi i16 [ %i.ago, %.thread853 ], [ %.pre, %.lr.ph944.preheader ] ; 2 uses
  %i.afq = phi i16 [ %i.agp, %.thread853 ], [ %i.afl, %.lr.ph944.preheader ] ; 2 uses
  %.0255942 = phi i32 [ %i.agq, %.thread853 ], [ 0, %.lr.ph944.preheader ] ; 2 uses
  %i.afr = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 3 uses
  %i.afs = load i32, ptr %i.as, align 4, !tbaa !110
  %i.aft = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.afu = lshr i8 %i.aft, 3
  %i.afv = zext nneg i8 %i.afu to i64
  %i.afw = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.afx = zext i8 %i.afw to i64
  %i.afy = mul nuw nsw i64 %i.afv, %i.afx
  %i.afz = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i.i702 = icmp eq i8 %i.afz, 0
  %i.aga = load i8, ptr %i.an, align 1
  %i.agb = lshr i8 %i.aga, 3
  %narrow.i.i703 = select i1 %.not.i.i702, i8 0, i8 %i.agb
  %i.agc = zext nneg i8 %narrow.i.i703 to i64
  %i.agd = add nuw nsw i64 %i.afy, %i.agc
  %i.age = zext i16 %i.afq to i32
  %i.agf = mul i32 %i.afs, %i.age
  %i.agg = zext i32 %i.agf to i64
  %i.agh = mul nuw nsw i64 %i.agd, %i.agg         ; 3 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afr, i64 %i.agh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #30
  %i.agj = load i16, ptr %i.s, align 2, !tbaa !63 ; 3 uses
  store i16 %i.agj, ptr %i.x, align 2, !tbaa !63
  %.not410937 = icmp ugt i16 %i.agj, %i.afp
  br i1 %.not410937, label %.thread853, label %.lr.ph940

.lr.ph940:                                        ; preds = %.lr.ph944
  %i.agk = mul i32 %.0255942, %i.zy
  %scevgep1454 = getelementptr i8, ptr %i.afr, i64 %i.agh
  %scevgep1456.a = getelementptr i8, ptr %i.afr, i64 1
  %scevgep1457 = getelementptr i8, ptr %scevgep1456.a, i64 %i.agh
  br label %bb.et

.thread853.loopexit:                              ; preds = %._crit_edge
  %.pre1133 = load i16, ptr %i.w, align 2, !tbaa !63
  %.pre1134 = load i16, ptr %i.v, align 2, !tbaa !63
  br label %.thread853

.thread853:                                       ; preds = %.thread853.loopexit, %.lr.ph944
  %i.agl = phi i16 [ %.pre1134, %.thread853.loopexit ], [ %i.afn, %.lr.ph944 ] ; 2 uses
  %i.agm = phi i16 [ %.pre1133, %.thread853.loopexit ], [ %i.afq, %.lr.ph944 ]
  %i.agn = phi i16 [ %i.ajn, %.thread853.loopexit ], [ %i.afo, %.lr.ph944 ]
  %i.ago = phi i16 [ %i.ajn, %.thread853.loopexit ], [ %i.afp, %.lr.ph944 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  %i.agp = add i16 %i.agm, 1                      ; 3 uses
  store i16 %i.agp, ptr %i.w, align 2, !tbaa !63
  %i.agq = add nuw nsw i32 %.0255942, 1
  %.not409 = icmp ugt i16 %i.agp, %i.agl
  br i1 %.not409, label %._crit_edge945, label %.lr.ph944, !llvm.loop !362

bb.et:                                            ; preds = %.lr.ph940, %._crit_edge
  %i.agr = phi i16 [ %i.afo, %.lr.ph940 ], [ %i.ajn, %._crit_edge ]
  %indvars.iv1113 = phi i64 [ 0, %.lr.ph940 ], [ %indvars.iv.next1114, %._crit_edge ] ; 2 uses
  %i.ags = phi i16 [ %i.agj, %.lr.ph940 ], [ %i.ajp, %._crit_edge ] ; 2 uses
  %i.agt = trunc nuw nsw i64 %indvars.iv1113 to i32
  %i.agu = add i32 %i.agk, %i.agt
  %i.agv = zext i32 %i.agu to i64
  %i.agw = load i8, ptr %i.al, align 8, !tbaa !66
  %.not.i704 = icmp eq i8 %i.agw, 0
  %i.agx = load i8, ptr %i.an, align 1
  %i.agy = lshr i8 %i.agx, 3
  %narrow.i705 = select i1 %.not.i704, i8 0, i8 %i.agy ; 3 uses
  %i.agz = zext nneg i8 %narrow.i705 to i64       ; 3 uses
  %i.aha = mul nuw nsw i64 %i.agz, %i.agv         ; 3 uses
  %i.ahb = add nuw nsw i64 %i.aha, %i.agz
  %.not415 = icmp ugt i64 %i.ahb, %i.abi
  br i1 %.not415, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJttEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.52, ptr noundef nonnull align 2 dereferenceable(2) %i.x, ptr noundef nonnull align 2 dereferenceable(2) %i.w)
          to label %.thread855 unwind label %bb.ev

.thread855:                                       ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit699

bb.ev:                                            ; preds = %bb.eu
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit697

bb.ew:                                            ; preds = %bb.et
  %i.ahd = getelementptr i8, ptr %i.abe, i64 %i.aha ; 13 uses
  %.not1044 = icmp eq i8 %narrow.i705, 0
  br i1 %.not1044, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ew
  %i.ahe = zext nneg i8 %narrow.i705 to i64
  %.0252934 = add nuw nsw i64 %i.ahe, 4294967295
  %i.ahf = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.ahg = lshr i8 %i.ahf, 3
  %i.ahh = zext nneg i8 %i.ahg to i64
  %i.ahi = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.ahj = zext i8 %i.ahi to i64
  %i.ahk = mul nuw nsw i64 %i.ahh, %i.ahj         ; 3 uses
  %i.ahl = add nuw nsw i64 %i.ahk, %i.agz
  %i.ahm = zext i16 %i.ags to i64
  %i.ahn = mul nuw nsw i64 %i.ahl, %i.ahm         ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.ahn
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.ahk ; 6 uses
  %i.ahq = and i64 %.0252934, 4294967295          ; 10 uses
  %i.ahr = add nuw nsw i64 %i.ahq, 1              ; 2 uses
  %min.iters.check1465 = icmp samesign ult i64 %i.ahq, 7
  br i1 %min.iters.check1465, label %.lr.ph.preheader1479, label %vector.memcheck1453

vector.memcheck1453:                              ; preds = %.lr.ph.preheader
  %7 = add nuw nsw i64 %i.ahk, %i.ahn             ; 2 uses
  %scevgep1455 = getelementptr i8, ptr %scevgep1454, i64 %7
  %i.ahs = getelementptr i8, ptr %scevgep1457, i64 %7
  %scevgep1458 = getelementptr i8, ptr %i.ahs, i64 %i.ahq
  %i.aht = getelementptr i8, ptr %scevgep1459, i64 %i.aha
  %scevgep1460 = getelementptr i8, ptr %i.aht, i64 %i.ahq
  %bound01461 = icmp ult ptr %scevgep1455, %scevgep1460
  %bound11462 = icmp ult ptr %i.ahd, %scevgep1458
  %found.conflict1463 = and i1 %bound01461, %bound11462
  br i1 %found.conflict1463, label %.lr.ph.preheader1479, label %vector.ph1466

vector.ph1466:                                    ; preds = %vector.memcheck1453
  %n.vec1467 = and i64 %i.ahr, 8589934584         ; 5 uses
  %i.ahu = sub nsw i64 %i.ahq, %n.vec1467
  %i.ahv = getelementptr i8, ptr %i.ahp, i64 %n.vec1467
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahd, i64 %i.ahq
  %i.ahx = getelementptr inbounds i8, ptr %i.ahw, i64 -7
  %wide.load1471 = load <8 x i8>, ptr %i.ahx, align 1, !tbaa !55, !alias.scope !374
  %reverse1472 = shufflevector <8 x i8> %wide.load1471, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse1472, ptr %i.ahp, align 1, !tbaa !55, !alias.scope !375, !noalias !374
  %i.ahy = icmp eq i64 %n.vec1467, 8
  br i1 %i.ahy, label %middle.block1474, label %vector.body1468.1

vector.body1468.1:                                ; preds = %vector.ph1466
  %next.gep1470.1 = getelementptr i8, ptr %i.ahp, i64 8
  %i.ahz = getelementptr i8, ptr %i.ahd, i64 %i.ahq
  %i.aia = getelementptr i8, ptr %i.ahz, i64 -15
  %wide.load1471.1 = load <8 x i8>, ptr %i.aia, align 1, !tbaa !55, !alias.scope !374
  %reverse1472.1 = shufflevector <8 x i8> %wide.load1471.1, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse1472.1, ptr %next.gep1470.1, align 1, !tbaa !55, !alias.scope !375, !noalias !374
  %i.aib = icmp eq i64 %n.vec1467, 16
  br i1 %i.aib, label %middle.block1474, label %vector.body1468.2

vector.body1468.2:                                ; preds = %vector.body1468.1
  %next.gep1470.2 = getelementptr i8, ptr %i.ahp, i64 16
  %i.aic = getelementptr i8, ptr %i.ahd, i64 %i.ahq
  %i.aid = getelementptr i8, ptr %i.aic, i64 -23
  %wide.load1471.2 = load <8 x i8>, ptr %i.aid, align 1, !tbaa !55, !alias.scope !374
  %reverse1472.2 = shufflevector <8 x i8> %wide.load1471.2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse1472.2, ptr %next.gep1470.2, align 1, !tbaa !55, !alias.scope !375, !noalias !374
  br label %middle.block1474

middle.block1474:                                 ; preds = %vector.body1468.2, %vector.body1468.1, %vector.ph1466
  %cmp.n1475 = icmp eq i64 %i.ahr, %n.vec1467
  br i1 %cmp.n1475, label %._crit_edge.loopexit, label %.lr.ph.preheader1479

.lr.ph.preheader1479:                             ; preds = %vector.memcheck1453, %.lr.ph.preheader, %middle.block1474
  %indvars.iv.ph = phi i64 [ %i.ahq, %vector.memcheck1453 ], [ %i.ahq, %.lr.ph.preheader ], [ %i.ahu, %middle.block1474 ] ; 4 uses
  %.0253935.ph = phi ptr [ %i.ahp, %vector.memcheck1453 ], [ %i.ahp, %.lr.ph.preheader ], [ %i.ahv, %middle.block1474 ] ; 2 uses
  %i.aie = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.aie, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader1479, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader1479 ] ; 2 uses
  %.0253935.prol = phi ptr [ %i.aih, %.lr.ph.prol ], [ %.0253935.ph, %.lr.ph.preheader1479 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader1479 ]
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahd, i64 %indvars.iv.prol
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !55
  %i.aih = getelementptr inbounds nuw i8, ptr %.0253935.prol, i64 1 ; 2 uses
  store i8 %i.aig, ptr %.0253935.prol, align 1, !tbaa !55
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !366

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader1479
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader1479 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0253935.unr = phi ptr [ %.0253935.ph, %.lr.ph.preheader1479 ], [ %i.aih, %.lr.ph.prol ]
  %i.aii = icmp ult i64 %indvars.iv.ph, 7
  br i1 %i.aii, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0253935 = phi ptr [ %i.ajm, %.lr.ph ], [ %.0253935.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.ahd, i64 %indvars.iv
  %i.aik = load i8, ptr %i.aij, align 1, !tbaa !55
  %i.ail = getelementptr inbounds nuw i8, ptr %.0253935, i64 1
  store i8 %i.aik, ptr %.0253935, align 1, !tbaa !55
  %i.aim = getelementptr i8, ptr %i.ahd, i64 %indvars.iv
  %i.ain = getelementptr i8, ptr %i.aim, i64 -1
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !55
  %i.aip = getelementptr inbounds nuw i8, ptr %.0253935, i64 2
  store i8 %i.aio, ptr %i.ail, align 1, !tbaa !55
  %i.aiq = getelementptr i8, ptr %i.ahd, i64 %indvars.iv
  %i.air = getelementptr i8, ptr %i.aiq, i64 -2
  %i.ais = load i8, ptr %i.air, align 1, !tbaa !55
  %i.ait = getelementptr inbounds nuw i8, ptr %.0253935, i64 3
  store i8 %i.ais, ptr %i.aip, align 1, !tbaa !55
  %i.aiu = getelementptr i8, ptr %i.ahd, i64 %indvars.iv
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 -3
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !55
  %i.aix = getelementptr inbounds nuw i8, ptr %.0253935, i64 4
  store i8 %i.aiw, ptr %i.ait, align 1, !tbaa !55
  %i.aiy = getelementptr i8, ptr %i.ahd, i64 %indvars.iv
  %i.aiz = getelementptr i8, ptr %i.aiy, i64 -4
  %i.aja = load i8, ptr %i.aiz, align 1, !tbaa !55
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0253935, i64 5
  store i8 %i.aja, ptr %i.aix, align 1, !tbaa !55
  %i.ajc = getelementptr i8, ptr %i.ahd, i64 %indvars.iv
  %i.ajd = getelementptr i8, ptr %i.ajc, i64 -5
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !55
  %i.ajf = getelementptr inbounds nuw i8, ptr %.0253935, i64 6
  store i8 %i.aje, ptr %i.ajb, align 1, !tbaa !55
  %i.ajg = getelementptr i8, ptr %i.ahd, i64 %indvars.iv
  %i.ajh = getelementptr i8, ptr %i.ajg, i64 -6
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !55
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0253935, i64 7
  store i8 %i.aji, ptr %i.ajf, align 1, !tbaa !55
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, -7 ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ahd, i64 %indvars.iv.next.6
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !55
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0253935, i64 8
  store i8 %i.ajl, ptr %i.ajj, align 1, !tbaa !55
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, -8
  %.not1314.7 = icmp eq i64 %indvars.iv.next.6, 0
  br i1 %.not1314.7, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !367

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block1474
  %.pre1131 = load i16, ptr %i.x, align 2, !tbaa !63
  %.pre1132 = load i16, ptr %i.t, align 2, !tbaa !63
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ew
  %i.ajn = phi i16 [ %.pre1132, %._crit_edge.loopexit ], [ %i.agr, %bb.ew ] ; 4 uses
  %i.ajo = phi i16 [ %.pre1131, %._crit_edge.loopexit ], [ %i.ags, %bb.ew ]
  %i.ajp = add i16 %i.ajo, 1                      ; 3 uses
  store i16 %i.ajp, ptr %i.x, align 2, !tbaa !63
  %indvars.iv.next1114 = add nuw nsw i64 %indvars.iv1113, 1
  %.not410 = icmp ugt i16 %i.ajp, %i.ajn
  br i1 %.not410, label %.thread853.loopexit, label %bb.et, !llvm.loop !368

._crit_edge945:                                   ; preds = %.thread853, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
  br label %.critedge512

.critedge512:                                     ; preds = %bb.dt, %bb.ds, %._crit_edge945
  %i.ajq = add i16 %.0264.ph, 1
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit699

_ZNSt6vectorIhSaIhEED2Ev.exit699:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit695, %bb.eq, %.thread855, %.critedge510, %bb.eo, %bb.dp, %.critedge512
  %.33309 = phi i1 [ true, %.critedge512 ], [ false, %bb.eq ], [ false, %.thread855 ], [ false, %bb.dp ], [ false, %bb.eo ], [ false, %.critedge510 ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit695 ]
  %.1265 = phi i16 [ %i.ajq, %.critedge512 ], [ %.0264.ph, %bb.eq ], [ %.0264.ph, %.thread855 ], [ %.0264.ph, %bb.dp ], [ %.0264.ph, %bb.eo ], [ %.0264.ph, %.critedge510 ], [ %.0264.ph, %_ZNSt6vectorIhSaIhEED2Ev.exit695 ]
  %i.ajr = load ptr, ptr %6, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i718 = icmp eq ptr %i.ajr, null
  br i1 %.not.i.i.i718, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit699
  %i.ajs = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.ajt = ptrtoint ptr %i.ajs to i64
  %i.aju = ptrtoint ptr %i.ajr to i64
  %i.ajv = sub i64 %i.ajt, %i.aju
  call void @_ZdlPvm(ptr noundef nonnull %i.ajr, i64 noundef %i.ajv) #31
  br label %bb.ey

.thread861:                                       ; preds = %.lr.ph.i.i657.preheader, %bb.dl, %bb.dm, %bb.dk, %.lr.ph.i.i639.preheader, %.lr.ph.i.i645.preheader, %.lr.ph.i.i651.preheader
  %.str.40.sink = phi ptr [ @.str.40, %bb.dk ], [ @.str.40, %.lr.ph.i.i651.preheader ], [ @.str.40, %.lr.ph.i.i645.preheader ], [ @.str.40, %.lr.ph.i.i639.preheader ], [ @.str.41, %bb.dm ], [ @.str.41, %bb.dl ], [ @.str.41, %.lr.ph.i.i657.preheader ]
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %.str.40.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit731

bb.ey:                                            ; preds = %bb.ex, %_ZNSt6vectorIhSaIhEED2Ev.exit699
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br i1 %.33309, label %.outer, label %_ZNSt6vectorIhSaIhEED2Ev.exit731, !llvm.loop !359

_ZNSt6vectorIhSaIhEED2Ev.exit697:                 ; preds = %bb.er, %bb.ev, %bb.eg, %bb.em, %bb.en, %bb.dq
  %.pn423.pn.pn = phi { ptr, i32 } [ %i.abd, %bb.dq ], [ %.pn423, %bb.en ], [ %i.acy, %bb.eg ], [ %.pn423, %bb.em ], [ %i.afk, %bb.er ], [ %i.ahc, %bb.ev ]
  %i.ajw = load ptr, ptr %6, align 8, !tbaa !58   ; 3 uses
  %.not.i.i.i720 = icmp eq ptr %i.ajw, null
  br i1 %.not.i.i.i720, label %_ZNSt6vectorIhSaIhEED2Ev.exit721, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit697
  %i.ajx = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.ajy = ptrtoint ptr %i.ajx to i64
  %i.ajz = ptrtoint ptr %i.ajw to i64
  %i.aka = sub i64 %i.ajy, %i.ajz
  call void @_ZdlPvm(ptr noundef nonnull %i.ajw, i64 noundef %i.aka) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit721

_ZNSt6vectorIhSaIhEED2Ev.exit721:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit697, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #30
  br label %bb.fd

bb.fa:                                            ; preds = %bb.dj
  %i.akb = zext i32 %.0.i to i64
  %i.akc = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.akb, i32 noundef 1)
  br i1 %i.akc, label %bb.e, label %_ZNSt6vectorIhSaIhEED2Ev.exit731, !llvm.loop !359

.critedge40:                                      ; preds = %bb.g
  %i.akd = load i8, ptr %i.ad, align 8, !tbaa !65
  %i.ake = lshr i8 %i.akd, 3
  %i.akf = zext nneg i8 %i.ake to i32
  %i.akg = load i8, ptr %i.ah, align 1, !tbaa !67
  %i.akh = zext i8 %i.akg to i32
  %i.aki = mul nuw nsw i32 %i.akf, %i.akh
end_hunk_1
