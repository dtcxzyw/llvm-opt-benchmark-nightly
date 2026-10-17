Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/LWOLoader?download=true
inline.NumInlined: 3061
inline.NumDeleted: 1386
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp11LWOImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #27
          to label %.noexc267 unwind label %.thread485

.noexc267:                                        ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.at
  %.not508 = icmp eq i64 %i.ez, 0
  br i1 %.not508, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.av
  %i.fb = shl nuw nsw i64 %i.ez, 3
  %i.fc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #28
          to label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.thread485 ; 2 uses

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.ez
  %.pre = load ptr, ptr %i.bi, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.av
  %i.fe = phi ptr [ %.pre, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.en, %bb.av ] ; 3 uses
  %.sroa.0373.10 = phi ptr [ %i.fc, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.av ] ; 3 uses
  %.sroa.27.10 = phi ptr [ %i.fd, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.av ] ; 2 uses
  %.sroa.0365.0706 = load ptr, ptr %i.fe, align 8 ; 2 uses
  %.not509707 = icmp eq ptr %.sroa.0365.0706, %i.fe
  br i1 %.not509707, label %._crit_edge714.thread, label %.lr.ph713

.lr.ph713:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.fs = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 144 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 160
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 168 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 184
  %i.fz = getelementptr inbounds nuw i8, ptr %12, i64 192 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 208
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 216 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %12, i64 232
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 240 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 256
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 264 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 280
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 288 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 304
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 312
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 320
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 324
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.hm = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hn = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ho = insertelement <2 x ptr> poison, ptr %i.ft, i64 0
  %i.hp = shufflevector <2 x ptr> %i.ho, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.hq = insertelement <2 x ptr> poison, ptr %i.fv, i64 0
  %i.hr = shufflevector <2 x ptr> %i.hq, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.hs = insertelement <2 x ptr> poison, ptr %i.fx, i64 0
  %i.ht = shufflevector <2 x ptr> %i.hs, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.hu = insertelement <2 x ptr> poison, ptr %i.fz, i64 0
  %i.hv = shufflevector <2 x ptr> %i.hu, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.hw = insertelement <2 x ptr> poison, ptr %i.gb, i64 0
  %i.hx = shufflevector <2 x ptr> %i.hw, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.hy = insertelement <2 x ptr> poison, ptr %i.gd, i64 0
  %i.hz = shufflevector <2 x ptr> %i.hy, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ia = insertelement <2 x ptr> poison, ptr %i.gf, i64 0
  %i.ib = shufflevector <2 x ptr> %i.ia, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ic = insertelement <2 x ptr> poison, ptr %i.gh, i64 0
  %i.id = shufflevector <2 x ptr> %i.ic, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.aw

._crit_edge714:                                   ; preds = %bb.gj
  %i.ie = load i64, ptr %i.em, align 8
  %i.if = icmp eq i64 %i.ie, 0
  %i.ig = icmp eq ptr %.sroa.0373.7, %.sroa.16.4
  %or.cond506 = select i1 %i.if, i1 true, i1 %i.ig
  br i1 %or.cond506, label %._crit_edge714.thread, label %bb.gn

.thread485:                                       ; preds = %bb.au, %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapItP6aiNodeSt4lessItESaISt4pairIKtS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit310

bb.aw:                                            ; preds = %.lr.ph713, %bb.gj
  %.sroa.0365.0712 = phi ptr [ %.sroa.0365.0706, %.lr.ph713 ], [ %.sroa.0365.0, %bb.gj ] ; 15 uses
  %.0188711 = phi i32 [ -1, %.lr.ph713 ], [ %.6194, %bb.gj ] ; 5 uses
  %.sroa.27.0710 = phi ptr [ %.sroa.27.10, %.lr.ph713 ], [ %.sroa.27.7, %bb.gj ] ; 11 uses
  %.sroa.16.0709 = phi ptr [ %.sroa.0373.10, %.lr.ph713 ], [ %.sroa.16.4, %bb.gj ] ; 6 uses
  %.sroa.0373.0708 = phi ptr [ %.sroa.0373.10, %.lr.ph713 ], [ %.sroa.0373.7, %bb.gj ] ; 12 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0365.0712, i64 16 ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0365.0712, i64 356
  %i.ik = load i8, ptr %i.ij, align 4, !range !22, !noundef !23
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.gj, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.im = ptrtoint ptr %.sroa.16.0709 to i64
  %i.in = ptrtoint ptr %.sroa.0373.0708 to i64
  %i.io = sub i64 %i.im, %i.in                    ; 3 uses
  %i.ip = ashr exact i64 %i.io, 3                 ; 2 uses
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0365.0712, i64 272 ; 4 uses
  %i.is = load ptr, ptr %i.ir, align 8            ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0365.0712, i64 280 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8            ; 2 uses
  %i.iv = icmp eq ptr %i.is, %i.iu
  br i1 %i.iv, label %bb.fx, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iw = load ptr, ptr %i.ii, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0365.0712, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = icmp eq ptr %i.iw, %i.iy
  br i1 %i.iz, label %bb.fx, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ja = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = load ptr, ptr %i.ja, align 8
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = sdiv exact i64 %i.jg, 328
  %i.ji = add nsw i64 %i.jh, 1                    ; 4 uses
  %i.jj = icmp ugt i64 %i.ji, 384307168202282325
  br i1 %i.jj, label %bb.ba, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.109) #27
          to label %.noexc270 unwind label %.loopexit.split-lp526

.noexc270:                                        ; preds = %bb.ba
  unreachable

_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.az
  store i64 0, ptr %11, align 8
  %.not.i.i.i.i269 = icmp eq i64 %i.ji, 0
  br i1 %.not.i.i.i.i269, label %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.jk = mul nuw nsw i64 %i.ji, 24               ; 3 uses
  %i.jl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #28
          to label %.noexc271 unwind label %.loopexit525 ; 5 uses

.noexc271:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.jl, ptr %11, align 8
  %i.jm = getelementptr inbounds nuw [24 x i8], ptr %i.jl, i64 %i.ji
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.jl, i8 0, i64 %i.jk, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.jl, i64 %i.jk
  %.pre834 = load ptr, ptr %i.ir, align 8
  %.pre835 = load ptr, ptr %i.it, align 8
  br label %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.noexc271
  %i.jn = phi ptr [ %i.jl, %.noexc271 ], [ null, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %i.jo = phi ptr [ %.pre835, %.noexc271 ], [ %i.iu, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %i.jp = phi ptr [ %.pre834, %.noexc271 ], [ %i.is, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.jm, %.noexc271 ], [ null, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.pre.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc271 ], [ null, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 5 uses
  store ptr %.sink.i, ptr %i.fg, align 8
  store ptr %.pre.i.i, ptr %i.ff, align 8
  %.not510659 = icmp eq ptr %i.jp, %i.jo
  br i1 %.not510659, label %._crit_edge665, label %.lr.ph664

._crit_edge665:                                   ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i
  %.1189.lcssa = phi i32 [ %.0188711, %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.4192, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
  %i.jq = icmp eq i32 %.1189.lcssa, -1
  br i1 %i.jq, label %bb.bq, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

.loopexit525:                                     ; preds = %.lr.ph.preheader.i.i.i.i.i
  %lpad.loopexit527 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

.loopexit.split-lp526:                            ; preds = %bb.ba
  %lpad.loopexit.split-lp528 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

.lr.ph664:                                        ; preds = %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.1189662 = phi i32 [ %.4192, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.0188711, %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i ] ; 5 uses
  %.sroa.0354.0661 = phi ptr [ %i.ml, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.jp, %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i ] ; 3 uses
  %.0470660 = phi i32 [ %i.mm, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ 0, %_ZNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EEC2EmRKS3_.exit.thread.i ] ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0354.0661, i64 24
  %i.js = load i32, ptr %i.jr, align 8
  switch i32 %i.js, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit [
    i32 1178682181, label %bb.bb
    i32 1347699528, label %bb.bb
    i32 1112493637, label %bb.bb
    i32 1398096452, label %bb.bb
  ]

bb.bb:                                            ; preds = %.lr.ph664, %.lr.ph664, %.lr.ph664, %.lr.ph664
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0354.0661, i64 16
  %i.ju = load i32, ptr %i.jt, align 8            ; 2 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %i.jw = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = load ptr, ptr %i.jw, align 8
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = ashr exact i64 %i.kc, 5
  %.not235 = icmp ugt i64 %i.kd, %i.jv
  br i1 %.not235, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ke = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bd unwind label %.loopexit520

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ke, ptr noundef nonnull @.str.15)
          to label %.thread482 unwind label %.loopexit520

.loopexit520:                                     ; preds = %bb.bc, %bb.bd, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit522 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

.loopexit.split-lp521:                            ; preds = %bb.bn
  %lpad.loopexit.split-lp523 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.be:                                            ; preds = %bb.bb
  %i.kf = icmp eq i32 %i.ju, -1
  br i1 %i.kf, label %.thread482, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kg = load ptr, ptr %8, align 8
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.jv
  %i.ki = load i32, ptr %i.kh, align 4            ; 2 uses
  %i.kj = icmp eq i32 %i.ki, -1
  br i1 %i.kj, label %.thread482, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit275

.thread482:                                       ; preds = %bb.bd, %bb.bf, %bb.be
  %i.kk = icmp eq i32 %.1189662, -1
  br i1 %i.kk, label %bb.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit275

bb.bg:                                            ; preds = %.thread482
  %i.kl = load ptr, ptr %i.bl, align 8            ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 4 uses
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = load ptr, ptr %i.kl, align 8
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = sdiv exact i64 %i.kr, 328
  %i.kt = trunc i64 %i.ks to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store ptr %i.fh, ptr %12, align 8
  store i64 0, ptr %i.fi, align 8
  store i8 0, ptr %i.fh, align 8
  store <2 x float> splat (float f0x3F48C88A), ptr %i.fj, align 8
  store float f0x3F48C88A, ptr %i.fk, align 8
  store i8 0, ptr %i.fl, align 4
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 4.000000e-01>, ptr %i.fm, align 8
  store <2 x float> zeroinitializer, ptr %i.fn, align 8
  store float 0.000000e+00, ptr %i.fo, align 8
  store ptr %i.fq, ptr %i.fp, align 8
  store i64 0, ptr %i.fr, align 8
  store i8 0, ptr %i.fq, align 8
  store i32 1380401729, ptr %i.fs, align 8
  store <2 x ptr> %i.hp, ptr %i.ft, align 8
  store i64 0, ptr %i.fu, align 8
  store <2 x ptr> %i.hr, ptr %i.fv, align 8
  store i64 0, ptr %i.fw, align 8
  store <2 x ptr> %i.ht, ptr %i.fx, align 8
  store i64 0, ptr %i.fy, align 8
  store <2 x ptr> %i.hv, ptr %i.fz, align 8
  store i64 0, ptr %i.ga, align 8
  store <2 x ptr> %i.hx, ptr %i.gb, align 8
  store i64 0, ptr %i.gc, align 8
  store <2 x ptr> %i.hz, ptr %i.gd, align 8
  store i64 0, ptr %i.ge, align 8
  store <2 x ptr> %i.ib, ptr %i.gf, align 8
  store i64 0, ptr %i.gg, align 8
  store <2 x ptr> %i.id, ptr %i.gh, align 8
  store i64 0, ptr %i.gi, align 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.gj, align 8
  store i8 0, ptr %i.gk, align 8
  store float 0.000000e+00, ptr %i.gl, align 4
  %i.ku = load ptr, ptr %i.km, align 8            ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8
  %.not.i.i = icmp eq ptr %i.ku, %i.kw
  br i1 %.not.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6Assimp3LWO7SurfaceC2EOS1_(ptr noundef nonnull align 8 dereferenceable(328) %i.ku, ptr noundef nonnull align 8 dereferenceable(328) %12)
          to label %.noexc272 unwind label %bb.bj

.noexc272:                                        ; preds = %bb.bh
  %i.kx = load ptr, ptr %i.km, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 328
  store ptr %i.ky, ptr %i.km, align 8
  br label %_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit

bb.bi:                                            ; preds = %bb.bg
  invoke void @_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.kl, ptr %i.ku, ptr noundef nonnull align 8 dereferenceable(328) %12)
          to label %_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit unwind label %bb.bj

_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit: ; preds = %.noexc272, %bb.bi
  call void @_ZN6Assimp3LWO7SurfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.kz = load ptr, ptr %i.bl, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = load ptr, ptr %i.la, align 8            ; 4 uses
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 -328
  %i.ld = getelementptr inbounds i8, ptr %i.lb, i64 -296
  %i.le = getelementptr inbounds i8, ptr %i.lb, i64 -288
  store float 6.000000e-01, ptr %i.le, align 8
  store <2 x float> splat (float 6.000000e-01), ptr %i.ld, align 8
  %i.lf = getelementptr inbounds i8, ptr %i.lb, i64 -320
  %i.lg = load i64, ptr %i.lf, align 8
  %i.lh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.lc, i64 noundef 0, i64 noundef %i.lg, ptr noundef nonnull @.str.16, i64 noundef 17)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit275 unwind label %bb.bk ; 0 uses

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3LWO7SurfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.fv

bb.bk:                                            ; preds = %_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit275: ; preds = %_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit, %.thread482, %bb.bf
  %.1196 = phi i32 [ %i.ki, %bb.bf ], [ %.1189662, %.thread482 ], [ %i.kt, %_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit ]
  %.3191 = phi i32 [ %.1189662, %bb.bf ], [ %.1189662, %.thread482 ], [ %i.kt, %_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.lk = zext i32 %.1196 to i64
  %i.ll = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %i.lk ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 4 uses
  %i.ln = load ptr, ptr %i.lm, align 8            ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 16 ; 3 uses
  %i.lp = load ptr, ptr %i.lo, align 8
  %.not.i276 = icmp eq ptr %i.ln, %i.lp
  br i1 %.not.i276, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit275
  store i32 %.0470660, ptr %i.ln, align 4
  %i.lq = load ptr, ptr %i.lm, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  store ptr %i.lr, ptr %i.lm, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit275
  %i.ls = load ptr, ptr %i.ll, align 8            ; 4 uses
  %i.lt = ptrtoint ptr %i.ln to i64
  %i.lu = ptrtoint ptr %i.ls to i64               ; 2 uses
  %i.lv = sub i64 %i.lt, %i.lu                    ; 5 uses
  %i.lw = icmp eq i64 %i.lv, 9223372036854775804
  br i1 %i.lw, label %bb.bn, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #27
          to label %.noexc277 unwind label %.loopexit.split-lp521

.noexc277:                                        ; preds = %bb.bn
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bm
  %i.lx = ashr exact i64 %i.lv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.lx, i64 1)
  %i.ly = add nsw i64 %.sroa.speculated.i.i.i, %i.lx ; 2 uses
  %i.lz = icmp ult i64 %i.ly, %i.lx
  %i.ma = call i64 @llvm.umin.i64(i64 %i.ly, i64 2305843009213693951)
  %i.mb = select i1 %i.lz, i64 2305843009213693951, i64 %i.ma ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.mb, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.mc = shl nuw nsw i64 %i.mb, 2
  %i.md = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mc) #28
          to label %.noexc278 unwind label %.loopexit520 ; 4 uses

.noexc278:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 %i.lv ; 2 uses
  store i32 %.0470660, ptr %i.me, align 4
  %i.mf = icmp sgt i64 %i.lv, 0
  br i1 %i.mf, label %bb.bo, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.bo:                                            ; preds = %.noexc278
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.md, ptr align 4 %i.ls, i64 %i.lv, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.bo, %.noexc278
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ls, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.mh = load ptr, ptr %i.lo, align 8
  %i.mi = ptrtoint ptr %i.mh to i64
  %i.mj = sub i64 %i.mi, %i.lu
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.mj) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.bp, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.md, ptr %i.ll, align 8
  store ptr %i.mg, ptr %i.lm, align 8
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.mb
  store ptr %i.mk, ptr %i.lo, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %.lr.ph664, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.bl
  %.4192 = phi i32 [ %.1189662, %.lr.ph664 ], [ %.3191, %bb.bl ], [ %.3191, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0354.0661, i64 32 ; 2 uses
  %i.mm = add i32 %.0470660, 1
  %.not510 = icmp eq ptr %i.ml, %i.jo
  br i1 %.not510, label %._crit_edge665, label %.lr.ph664, !llvm.loop !34

bb.bq:                                            ; preds = %._crit_edge665
  %i.mn = getelementptr inbounds i8, ptr %.pre.i.i, i64 -24 ; 5 uses
  %i.mo = ptrtoint ptr %i.mn to i64
  %i.mp = ptrtoint ptr %i.jn to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = getelementptr inbounds i8, ptr %i.jn, i64 %i.mq ; 5 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24 ; 3 uses
  %i.mt = ptrtoint ptr %.pre.i.i to i64
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = sub i64 %i.mt, %i.mu
  %i.mw = icmp sgt i64 %i.mv, 0
  br i1 %i.mw, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.bq
  %i.mx = load ptr, ptr %i.mr, align 8            ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mr, i64 16 ; 2 uses
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = load <2 x ptr>, ptr %i.ms, align 8
  store <2 x ptr> %i.na, ptr %i.mr, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mr, i64 40
  %i.nc = load ptr, ptr %i.nb, align 8
  store ptr %i.nc, ptr %i.my, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ms, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i, label %bb.br

bb.br:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i
  %i.nd = ptrtoint ptr %i.mz to i64
  %i.ne = ptrtoint ptr %i.mx to i64
  %i.nf = sub i64 %i.nd, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef %i.nf) #26
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %bb.br, %bb.bq
  store ptr %i.mn, ptr %i.ff, align 8
  %i.ng = load ptr, ptr %i.mn, align 8            ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i
  %i.nh = getelementptr inbounds i8, ptr %.pre.i.i, i64 -8
  %i.ni = load ptr, ptr %i.nh, align 8
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = ptrtoint ptr %i.ng to i64
  %i.nl = sub i64 %i.nj, %i.nk
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.nl) #26
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i, %bb.bs, %._crit_edge665
  %i.nm = phi ptr [ %i.mn, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt6vectorIjSaIjEES2_IS4_SaIS4_EEEES8_ET0_T_SA_S9_.exit.i.i ], [ %i.mn, %bb.bs ], [ %.pre.i.i, %._crit_edge665 ]
  %i.nn = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load ptr, ptr %i.no, align 8
  %i.nq = load ptr, ptr %i.nn, align 8            ; 2 uses
  %.not722 = icmp eq ptr %i.np, %i.nq
  br i1 %.not722, label %._crit_edge699, label %.lr.ph698

.lr.ph698:                                        ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0365.0712, i64 176
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0365.0712, i64 40 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0365.0712, i64 48 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0365.0712, i64 136 ; 8 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0365.0712, i64 208
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0365.0712, i64 112 ; 8 uses
  br label %bb.bv

._crit_edge699.loopexit:                          ; preds = %bb.ft
  %.pre841 = load ptr, ptr %11, align 8
  %.pre842 = load ptr, ptr %i.ff, align 8
  br label %._crit_edge699

._crit_edge699:                                   ; preds = %._crit_edge699.loopexit, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.nx = phi ptr [ %i.nm, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.pre842, %._crit_edge699.loopexit ] ; 2 uses
  %.pr.i = phi ptr [ %i.jn, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.pre841, %._crit_edge699.loopexit ] ; 5 uses
  %.sroa.0373.1.lcssa = phi ptr [ %.sroa.0373.0708, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.0373.2, %._crit_edge699.loopexit ] ; 2 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0709, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.16.2, %._crit_edge699.loopexit ] ; 2 uses
  %.sroa.27.1.lcssa = phi ptr [ %.sroa.27.0710, %_ZNSt6vectorIS_IjSaIjEESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.27.2, %._crit_edge699.loopexit ]
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.nx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge699, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.oe, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge699 ] ; 3 uses
  %i.ny = load ptr, ptr %.05.i.i.i, align 8       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ny, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %i.ny to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %i.ny, i64 noundef %i.od) #26
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i:  ; preds = %bb.bt, %.lr.ph.i.i.i
  %i.oe = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i280 = icmp eq ptr %i.oe, %i.nx
  br i1 %.not.i.i.i280, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, %._crit_edge699
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i
  %i.of = load ptr, ptr %i.fg, align 8
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = ptrtoint ptr %.pr.i to i64
  %i.oi = sub i64 %i.og, %i.oh
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.oi) #26
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %.pre843 = ptrtoint ptr %.sroa.16.1.lcssa to i64
  %.pre844 = ptrtoint ptr %.sroa.0373.1.lcssa to i64
  %.pre846 = sub i64 %.pre843, %.pre844
  br label %bb.fx

bb.bv:                                            ; preds = %.lr.ph698, %bb.ft
  %i.oj = phi ptr [ %i.nq, %.lr.ph698 ], [ %i.ajp, %bb.ft ]
  %i.ok = phi ptr [ %i.nn, %.lr.ph698 ], [ %i.ajq, %bb.ft ]
  %i.ol = phi i64 [ 0, %.lr.ph698 ], [ %i.ajs, %bb.ft ] ; 12 uses
  %.0187697 = phi i32 [ 0, %.lr.ph698 ], [ %i.ajr, %bb.ft ] ; 2 uses
  %.sroa.27.1696 = phi ptr [ %.sroa.27.0710, %.lr.ph698 ], [ %.sroa.27.2, %bb.ft ] ; 6 uses
  %.sroa.16.1695 = phi ptr [ %.sroa.16.0709, %.lr.ph698 ], [ %.sroa.16.2, %bb.ft ] ; 4 uses
  %.sroa.0373.1694 = phi ptr [ %.sroa.0373.0708, %.lr.ph698 ], [ %.sroa.0373.2, %bb.ft ] ; 8 uses
  %i.om = load ptr, ptr %11, align 8
  %i.on = getelementptr inbounds nuw [24 x i8], ptr %i.om, i64 %i.ol ; 7 uses
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 8 ; 3 uses
  %i.oq = load ptr, ptr %i.op, align 8
  %i.or = icmp eq ptr %i.oo, %i.oq
  br i1 %i.or, label %bb.ft, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.os = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #28
          to label %bb.bx unwind label %.loopexit519 ; 31 uses

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.os, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 4 ; 20 uses
  store i32 0, ptr %i.ot, align 4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 4 uses
  store i32 0, ptr %i.ou, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 16 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 224
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 1272
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 1312
  store ptr null, ptr %i.oy, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.ov, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.ow, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ox, i8 0, i64 36, i1 false)
  %.not.i281 = icmp eq ptr %.sroa.16.1695, %.sroa.27.1696
  br i1 %.not.i281, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store ptr %i.os, ptr %.sroa.16.1695, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.bz:                                            ; preds = %bb.bx
  %i.oz = ptrtoint ptr %.sroa.27.1696 to i64
  %i.pa = ptrtoint ptr %.sroa.0373.1694 to i64
  %i.pb = sub i64 %i.oz, %i.pa                    ; 6 uses
  %i.pc = icmp eq i64 %i.pb, 9223372036854775800
  br i1 %i.pc, label %bb.ca, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #27
          to label %.noexc285 unwind label %.loopexit.split-lp

.noexc285:                                        ; preds = %bb.ca
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bz
  %i.pd = ashr exact i64 %i.pb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i282 = call i64 @llvm.umax.i64(i64 %i.pd, i64 1)
  %i.pe = add nsw i64 %.sroa.speculated.i.i.i282, %i.pd ; 2 uses
  %i.pf = icmp ult i64 %i.pe, %i.pd
  %i.pg = call i64 @llvm.umin.i64(i64 %i.pe, i64 1152921504606846975)
  %i.ph = select i1 %i.pf, i64 1152921504606846975, i64 %i.pg ; 3 uses
  %.not.i.i.i283 = icmp ne i64 %i.ph, 0
  call void @llvm.assume(i1 %.not.i.i.i283)
  %i.pi = shl nuw nsw i64 %i.ph, 3
  %i.pj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pi) #28
          to label %.noexc286 unwind label %.loopexit519 ; 4 uses

.noexc286:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 %i.pb ; 2 uses
  store ptr %i.os, ptr %i.pk, align 8
  %i.pl = icmp sgt i64 %i.pb, 0
  br i1 %i.pl, label %bb.cb, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.cb:                                            ; preds = %.noexc286
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pj, ptr align 8 %.sroa.0373.1694, i64 %i.pb, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.cb, %.noexc286
  %.not.i17.i.i284 = icmp eq ptr %.sroa.0373.1694, null
  br i1 %.not.i17.i.i284, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0373.1694, i64 noundef %i.pb) #26
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.cc, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.ph
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.by
  %.sroa.0373.11 = phi ptr [ %i.pj, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0373.1694, %bb.by ] ; 4 uses
  %.pn511 = phi ptr [ %i.pk, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.16.1695, %bb.by ]
end_hunk_0
