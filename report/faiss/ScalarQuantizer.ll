Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/ScalarQuantizer?download=true
inline.NumInlined: 2990
inline.NumDeleted: 733
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 166
begin_hunk_0_@_ZN5faiss15ScalarQuantizer5trainEmPKf:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ca

bb.v:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load float, ptr %i.al, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !84
  %i.ap = mul i64 %i.ao, %1
  %i.aq = shl nuw nsw i32 1, %i.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5faiss16scalar_quantizer13train_UniformENS_15ScalarQuantizer9RangeStatEfliPKfRSt6vectorIfSaIfEE(i32 noundef %i.ak, float noundef %i.am, i64 noundef %i.ap, i32 noundef %i.aq, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ar)
  br label %bb.bz

.thread:                                          ; preds = %bb.a, %bb.c, %bb.c, %bb.c
  %i.as = phi i32 [ %i.c, %bb.c ], [ %i.c, %bb.c ], [ %i.c, %bb.c ], [ %i.b, %bb.a ]
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.at, ptr %5, align 8, !tbaa !77
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.au, align 8, !tbaa !79
  store i8 0, ptr %i.at, align 8, !tbaa !80
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.22) #21 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ax = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ay)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.az = load ptr, ptr %5, align 8, !tbaa !81
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !79
  %i.bb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.az, i64 noundef %i.ba, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.22) #21 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ax)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y, %bb.x
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y, %bb.w
  %i.bd = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss15ScalarQuantizer5trainEmPKf, ptr noundef nonnull @.str.21, i32 noundef 563)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #23
          to label %bb.cb unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bd) #21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.z ], [ %i.be, %bb.ac ]
  %i.bf = load ptr, ptr %5, align 8, !tbaa !81    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.at
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.ad
  %i.bh = load i64, ptr %i.at, align 8, !tbaa !80
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ca

bb.ae:                                            ; preds = %.thread
  %.not40 = icmp eq ptr %2, null
  br i1 %.not40, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.bj, ptr %6, align 8, !tbaa !77
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !79
  store i8 0, ptr %i.bj, align 8, !tbaa !80
  %i.bl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.23) #21 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.bn = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bo)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bp = load ptr, ptr %6, align 8, !tbaa !81
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !79
  %i.br = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bp, i64 noundef %i.bq, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.23) #21 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bn)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %bb.ah, %bb.ag
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah, %bb.af
  %i.bt = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss15ScalarQuantizer5trainEmPKf, ptr noundef nonnull @.str.21, i32 noundef 564)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #23
          to label %bb.cb unwind label %bb.ai

bb.al:                                            ; preds = %bb.aj
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bt) #21
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn41 = phi { ptr, i32 } [ %i.bs, %bb.ai ], [ %i.bu, %bb.al ]
  %i.bv = load ptr, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bj
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.am
  %i.bx = load i64, ptr %i.bj, align 8, !tbaa !80
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ca

bb.an:                                            ; preds = %bb.ae
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !82
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !83
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !84
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 1, %i.as
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5faiss16scalar_quantizer16train_NonUniformENS_15ScalarQuantizer9RangeStatEfliiPKfRSt6vectorIfSaIfEE(i32 noundef %i.ca, float noundef %i.cc, i64 noundef %1, i32 noundef %i.cf, i32 noundef %i.cg, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ch)
  br label %bb.bz

bb.ao:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !85
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE(i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.ck)
  br label %bb.bz

bb.ap:                                            ; preds = %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !86 ; 2 uses
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !87 ; 5 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = ashr exact i64 %i.cr, 2                 ; 2 uses
  %i.ct = icmp ult i64 %i.cs, 3
  br i1 %i.ct, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cu = sub nuw nsw i64 3, %i.cs
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 noundef %i.cu)
  %.pre.i = load ptr, ptr %i.cl, align 8, !tbaa !88
  br label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit

bb.ar:                                            ; preds = %bb.ap
  %.not97 = icmp eq i64 %i.cr, 12
  br i1 %.not97, label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cn, %i.cv
  br i1 %.not.i.i.i, label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.as
  store ptr %i.cv, ptr %i.cm, align 8, !tbaa !86
  br label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit

_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit: ; preds = %bb.aq, %bb.ar, %bb.as, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i
  %i.cw = phi ptr [ %.pre.i, %bb.aq ], [ %i.co, %bb.ar ], [ %i.co, %bb.as ], [ %i.co, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i ]
  store i64 4561093273984975402, ptr %i.cw, align 4
  %.pre43.i = load ptr, ptr %i.cl, align 8, !tbaa !88
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre43.i, i64 8
  store float 0.000000e+00, ptr %i.cx, align 4, !tbaa !89
  br label %bb.bz

bb.at:                                            ; preds = %bb.c
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !86 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !87 ; 5 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = ashr exact i64 %i.de, 2                 ; 2 uses
  %i.dg = icmp ult i64 %i.df, 7
  br i1 %i.dg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dh = sub nuw nsw i64 7, %i.df
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 noundef %i.dh)
  %.pre.i63 = load ptr, ptr %i.cy, align 8, !tbaa !88
  br label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit64

bb.av:                                            ; preds = %bb.at
  %.not96 = icmp eq i64 %i.de, 28
  br i1 %.not96, label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit64, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 28 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.da, %i.di
  br i1 %.not.i.i.i61, label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit64, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i62

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i62:    ; preds = %bb.aw
  store ptr %i.di, ptr %i.cz, align 8, !tbaa !86
  br label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit64

_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit64: ; preds = %bb.au, %bb.av, %bb.aw, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i62
  %i.dj = phi ptr [ %.pre.i63, %bb.au ], [ %i.db, %bb.av ], [ %i.db, %bb.aw ], [ %i.db, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i62 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dj, ptr noundef nonnull align 16 dereferenceable(16) @_ZN5faiss12_GLOBAL__N_119kLloydMaxCentroids2E, i64 16, i1 false)
  %.pre43.i60 = load ptr, ptr %i.cy, align 8, !tbaa !88
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre43.i60, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dk, ptr noundef nonnull align 4 dereferenceable(12) @_ZN5faiss12_GLOBAL__N_120kLloydMaxBoundaries2E, i64 12, i1 false)
  br label %bb.bz

bb.ax:                                            ; preds = %bb.c
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !86 ; 2 uses
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !87 ; 5 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = ashr exact i64 %i.dr, 2                 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 15
  br i1 %i.dt, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.du = sub nuw nsw i64 15, %i.ds
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 noundef %i.du)
  %.pre.i68 = load ptr, ptr %i.dl, align 8, !tbaa !88
  br label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit69

bb.az:                                            ; preds = %bb.ax
  %.not95 = icmp eq i64 %i.dr, 60
  br i1 %.not95, label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit69, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 60 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.dn, %i.dv
  br i1 %.not.i.i.i66, label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit69, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i67

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i67:    ; preds = %bb.ba
  store ptr %i.dv, ptr %i.dm, align 8, !tbaa !86
  br label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit69

_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit69: ; preds = %bb.ay, %bb.az, %bb.ba, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i67
  %i.dw = phi ptr [ %.pre.i68, %bb.ay ], [ %i.do, %bb.az ], [ %i.do, %bb.ba ], [ %i.do, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i67 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dw, ptr noundef nonnull align 16 dereferenceable(32) @_ZN5faiss12_GLOBAL__N_119kLloydMaxCentroids3E, i64 32, i1 false)
  %.pre43.i65 = load ptr, ptr %i.dl, align 8, !tbaa !88
  %i.dx = getelementptr inbounds nuw i8, ptr %.pre43.i65, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dx, ptr noundef nonnull align 16 dereferenceable(28) @_ZN5faiss12_GLOBAL__N_120kLloydMaxBoundaries3E, i64 28, i1 false)
  br label %bb.bz

bb.bb:                                            ; preds = %bb.c
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !86 ; 2 uses
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !87 ; 5 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed                    ; 2 uses
  %i.ef = ashr exact i64 %i.ee, 2                 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, 31
  br i1 %i.eg, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.eh = sub nuw nsw i64 31, %i.ef
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 noundef %i.eh)
  %.pre.i73 = load ptr, ptr %i.dy, align 8, !tbaa !88
  br label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit74

bb.bd:                                            ; preds = %bb.bb
  %.not94 = icmp eq i64 %i.ee, 124
  br i1 %.not94, label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit74, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 124 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.ea, %i.ei
  br i1 %.not.i.i.i71, label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit74, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i72

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i72:    ; preds = %bb.be
  store ptr %i.ei, ptr %i.dz, align 8, !tbaa !86
  br label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit74

_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit74: ; preds = %bb.bc, %bb.bd, %bb.be, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i72
  %i.ej = phi ptr [ %.pre.i73, %bb.bc ], [ %i.eb, %bb.bd ], [ %i.eb, %bb.be ], [ %i.eb, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i72 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ej, ptr noundef nonnull align 16 dereferenceable(64) @_ZN5faiss12_GLOBAL__N_119kLloydMaxCentroids4E, i64 64, i1 false)
  %.pre43.i70 = load ptr, ptr %i.dy, align 8, !tbaa !88
  %i.ek = getelementptr inbounds nuw i8, ptr %.pre43.i70, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.ek, ptr noundef nonnull align 16 dereferenceable(60) @_ZN5faiss12_GLOBAL__N_120kLloydMaxBoundaries4E, i64 60, i1 false)
  br label %bb.bz

bb.bf:                                            ; preds = %bb.c
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !86 ; 2 uses
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !87 ; 5 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 2 uses
  %i.es = ashr exact i64 %i.er, 2                 ; 2 uses
  %i.et = icmp ult i64 %i.es, 511
  br i1 %i.et, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.eu = sub nuw nsw i64 511, %i.es
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.el, i64 noundef %i.eu)
  %.pre.i78 = load ptr, ptr %i.el, align 8, !tbaa !88
  br label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit79

bb.bh:                                            ; preds = %bb.bf
  %.not93 = icmp eq i64 %i.er, 2044
  br i1 %.not93, label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit79, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 2044 ; 2 uses
  %.not.i.i.i76.a = icmp eq ptr %i.en, %i.ev
  br i1 %.not.i.i.i76.a, label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit79, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i77

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i77:    ; preds = %bb.bi
  store ptr %i.ev, ptr %i.em, align 8, !tbaa !86
  br label %_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit79

_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE.exit79: ; preds = %bb.bg, %bb.bh, %bb.bi, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i77
  %i.ew = phi ptr [ %.pre.i78, %bb.bg ], [ %i.eo, %bb.bh ], [ %i.eo, %bb.bi ], [ %i.eo, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i77 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ew, ptr noundef nonnull align 16 dereferenceable(1024) @_ZN5faiss12_GLOBAL__N_119kLloydMaxCentroids8E, i64 1024, i1 false)
  %.pre43.i75 = load ptr, ptr %i.el, align 8, !tbaa !88
  %i.ex = getelementptr inbounds nuw i8, ptr %.pre43.i75, i64 1024
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1020) %i.ex, ptr noundef nonnull align 16 dereferenceable(1020) @_ZN5faiss12_GLOBAL__N_120kLloydMaxBoundaries8E, i64 1020, i1 false)
  br label %bb.bz

bb.bj:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !85
  %i.fa = add i64 %i.ez, -1
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  tail call fastcc void @_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE(i64 noundef %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.fb)
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fe = load float, ptr %i.fd, align 8          ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ff = load float, ptr %.sroa_idx, align 4     ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !86 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !90 ; 2 uses
  %.not.i = icmp eq ptr %i.fh, %i.fj
  br i1 %.not.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store float %i.fe, ptr %i.fh, align 4, !tbaa !89
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 2 uses
  store ptr %i.fk, ptr %i.fg, align 8, !tbaa !86
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.bl:                                            ; preds = %bb.bj
  %i.fl = load ptr, ptr %i.fb, align 8, !tbaa !87 ; 4 uses
  %i.fm = ptrtoint ptr %i.fh to i64
  %i.fn = ptrtoint ptr %i.fl to i64               ; 2 uses
  %i.fo = sub i64 %i.fm, %i.fn                    ; 5 uses
  %i.fp = icmp eq i64 %i.fo, 9223372036854775804
  br i1 %i.fp, label %bb.bm, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.bm:                                            ; preds = %bb.bl
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #23
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bl
  %i.fq = ashr exact i64 %i.fo, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i, %i.fq ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fq
  %i.ft = tail call i64 @llvm.umin.i64(i64 %i.fr, i64 2305843009213693951)
  %i.fu = select i1 %i.fs, i64 2305843009213693951, i64 %i.ft ; 3 uses
  %.not.i.i.i80.a = icmp ne i64 %i.fu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i80.a)
  %i.fv = shl nuw nsw i64 %i.fu, 2
  %i.fw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #25 ; 4 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.fo ; 2 uses
  store float %i.fe, ptr %i.fx, align 4, !tbaa !89
  %i.fy = icmp sgt i64 %i.fo, 0
  br i1 %i.fy, label %bb.bn, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.bn:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fw, ptr align 4 %i.fl, i64 %i.fo, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.bn, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.ga = load ptr, ptr %i.fi, align 8, !tbaa !90
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = sub i64 %i.gb, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.gc) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.bo, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.fw, ptr %i.fb, align 8, !tbaa !87
  store ptr %i.fz, ptr %i.fg, align 8, !tbaa !86
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fu ; 2 uses
  store ptr %i.gd, ptr %i.fi, align 8, !tbaa !90
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %bb.bk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i
  %i.ge = phi ptr [ %i.fj, %bb.bk ], [ %i.gd, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ] ; 3 uses
  %i.gf = phi ptr [ %i.fk, %bb.bk ], [ %i.fz, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ] ; 3 uses
  %.not.i81 = icmp eq ptr %i.gf, %i.ge
  br i1 %.not.i81, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  store float %i.ff, ptr %i.gf, align 4, !tbaa !89
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  store ptr %i.gg, ptr %i.fg, align 8, !tbaa !86
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit88

bb.bq:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.gh = load ptr, ptr %i.fb, align 8, !tbaa !87 ; 4 uses
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gk = sub i64 %i.gi, %i.gj                    ; 5 uses
  %i.gl = icmp eq i64 %i.gk, 9223372036854775804
  br i1 %i.gl, label %bb.br, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i82

bb.br:                                            ; preds = %bb.bq
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #23
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i82: ; preds = %bb.bq
  %i.gm = ashr exact i64 %i.gk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i83 = tail call i64 @llvm.umax.i64(i64 %i.gm, i64 1)
  %i.gn = add nsw i64 %.sroa.speculated.i.i.i83, %i.gm ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gm
  %i.gp = tail call i64 @llvm.umin.i64(i64 %i.gn, i64 2305843009213693951)
  %i.gq = select i1 %i.go, i64 2305843009213693951, i64 %i.gp ; 3 uses
  %.not.i.i.i84 = icmp ne i64 %i.gq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i84)
  %i.gr = shl nuw nsw i64 %i.gq, 2
  %i.gs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #25 ; 4 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %i.gk ; 2 uses
  store float %i.ff, ptr %i.gt, align 4, !tbaa !89
  %i.gu = icmp sgt i64 %i.gk, 0
  br i1 %i.gu, label %bb.bs, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i85

bb.bs:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i82
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gs, ptr align 4 %i.gh, i64 %i.gk, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i85

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i85: ; preds = %bb.bs, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i82
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 4 ; 2 uses
  %.not.i17.i.i86 = icmp eq ptr %i.gh, null
  br i1 %.not.i17.i.i86, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i87, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i85
  %i.gw = load ptr, ptr %i.fi, align 8, !tbaa !90
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = sub i64 %i.gx, %i.gj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gy) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i87

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i87: ; preds = %bb.bt, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i85
  store ptr %i.gs, ptr %i.fb, align 8, !tbaa !87
  store ptr %i.gv, ptr %i.fg, align 8, !tbaa !86
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gq ; 2 uses
  store ptr %i.gz, ptr %i.fi, align 8, !tbaa !90
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit88

_ZNSt6vectorIfSaIfEE9push_backERKf.exit88:        ; preds = %bb.bp, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i87
  %i.ha = phi ptr [ %i.ge, %bb.bp ], [ %i.gz, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i87 ] ; 2 uses
  %i.hb = phi ptr [ %i.gg, %bb.bp ], [ %i.gv, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i87 ] ; 3 uses
  %i.hc = load i8, ptr %i.fc, align 8, !tbaa !590
  %i.hd = uitofp i8 %i.hc to float                ; 2 uses
  %.not.i.i = icmp eq ptr %i.hb, %i.ha
  br i1 %.not.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit88
  store float %i.hd, ptr %i.hb, align 4, !tbaa !89
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store ptr %i.he, ptr %i.fg, align 8, !tbaa !86
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.bv:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit88
  %i.hf = load ptr, ptr %i.fb, align 8, !tbaa !87 ; 4 uses
  %i.hg = ptrtoint ptr %i.ha to i64
  %i.hh = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hi = sub i64 %i.hg, %i.hh                    ; 5 uses
  %i.hj = icmp eq i64 %i.hi, 9223372036854775804
  br i1 %i.hj, label %bb.bw, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.bw:                                            ; preds = %bb.bv
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #23
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bv
  %i.hk = ashr exact i64 %i.hi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.hk, i64 1)
  %i.hl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hk ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %i.hk
  %i.hn = tail call i64 @llvm.umin.i64(i64 %i.hl, i64 2305843009213693951)
  %i.ho = select i1 %i.hm, i64 2305843009213693951, i64 %i.hn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ho, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.hp = shl nuw nsw i64 %i.ho, 2
  %i.hq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #25 ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 %i.hi ; 2 uses
  store float %i.hd, ptr %i.hr, align 4, !tbaa !89
  %i.hs = icmp sgt i64 %i.hi, 0
  br i1 %i.hs, label %bb.bx, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.bx:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hq, ptr align 4 %i.hf, i64 %i.hi, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bx, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.hu = load ptr, ptr %i.fi, align 8, !tbaa !90
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = sub i64 %i.hv, %i.hh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hw) #24
end_hunk_0
begin_hunk_1_@_ZN5faiss15ScalarQuantizer17set_derived_sizesEv:bb.a
    i32 3, label %bb.f
    i32 13, label %bb.f
    i32 22, label %bb.f
    i32 23, label %bb.g
    i32 6, label %bb.h
    i32 24, label %bb.h
    i32 25, label %bb.i
    i32 4, label %bb.j
    i32 7, label %bb.k
    i32 9, label %.sink.split
    i32 15, label %bb.l
    i32 16, label %.fold.split
    i32 17, label %.fold.split16
    i32 18, label %switch.edge
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !84
  %i.e = add i64 %i.d, 7
  %i.f = lshr i64 %i.e, 3
  br label %.sink.split

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !84
  %i.i = shl i64 %i.h, 1
  %i.j = add i64 %i.i, 6
  %i.k = lshr i64 %i.j, 3
  br label %.sink.split

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !84
  %i.n = mul i64 %i.m, 3
  %i.o = add i64 %i.n, 7
  %i.p = lshr i64 %i.o, 3
  br label %.sink.split

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !84
  br label %.sink.split

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !84
  %i.u = add i64 %i.t, 1
  %i.v = lshr i64 %i.u, 1
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !84
  %i.y = mul i64 %i.x, 5
  %i.z = add i64 %i.y, 7
  %i.aa = lshr i64 %i.z, 3
  br label %.sink.split

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !84
  %i.ad = mul i64 %i.ac, 6
  %i.ae = add i64 %i.ad, 6
  %i.af = lshr i64 %i.ae, 3
  br label %.sink.split

bb.i:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !84
  %i.ai = mul i64 %i.ah, 7
  %i.aj = add i64 %i.ai, 7
  %i.ak = lshr i64 %i.aj, 3
  br label %.sink.split

bb.j:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !84
  %i.an = shl i64 %i.am, 1
  br label %.sink.split

bb.k:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !84
  %i.aq = shl i64 %i.ap, 1
  br label %.sink.split

switch.edge:                                      ; preds = %bb.a
  br label %bb.l

.fold.split:                                      ; preds = %bb.a
  br label %bb.l

.fold.split16:                                    ; preds = %bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.fold.split, %.fold.split16, %switch.edge
  %.ph = phi i64 [ 5, %switch.edge ], [ 4, %.fold.split16 ], [ 3, %.fold.split ], [ 2, %bb.a ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !84
  %i.at = add i64 %i.as, 7
  %i.au = lshr i64 %i.at, 3
  %i.av = mul nuw i64 %i.au, %.ph
  %i.aw = add nuw i64 %i.av, 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sink = phi i64 [ %i.aw, %bb.l ], [ %i.f, %bb.b ], [ %i.aq, %bb.k ], [ %i.an, %bb.j ], [ %i.ak, %bb.i ], [ %i.af, %bb.h ], [ %i.aa, %bb.g ], [ %i.v, %bb.f ], [ %i.r, %bb.e ], [ %i.p, %bb.d ], [ %i.k, %bb.c ], [ 0, %bb.a ]
  %.ph.sink = phi i64 [ %.ph, %bb.l ], [ 1, %bb.b ], [ 16, %bb.k ], [ 16, %bb.j ], [ 7, %bb.i ], [ 6, %bb.h ], [ 5, %bb.g ], [ 4, %bb.f ], [ 8, %bb.e ], [ 3, %bb.d ], [ 2, %bb.c ], [ 0, %bb.a ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.ax, align 8, !tbaa !93
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.ph.sink, ptr %i.ay, align 8, !tbaa !85
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5faiss15ScalarQuantizerC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(160) initializes((0, 36), (40, 73), (80, 160)) %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss15ScalarQuantizerE, i64 16), ptr %0, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.c, align 4, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 0.000000e+00, ptr %i.d, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.e, i8 0, i64 33, i1 false)
  store i64 42, ptr %i.f, align 8, !tbaa !587
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i8 0, i64 72, i1 false)
  ret void
}

declare void @_ZN5faiss16scalar_quantizer13train_UniformENS_15ScalarQuantizer9RangeStatEfliPKfRSt6vectorIfSaIfEE(i32 noundef, float noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN5faiss16scalar_quantizer16train_NonUniformENS_15ScalarQuantizer9RangeStatEfliiPKfRSt6vectorIfSaIfEE(i32 noundef, float noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = add i64 %0, -1
  %or.cond = icmp ult i64 %i.a, 8
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !79
  store i8 0, ptr %i.b, align 8, !tbaa !80
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.24) #21 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %2, align 8, !tbaa !81
  %i.i = load i64, ptr %i.c, align 8, !tbaa !79
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.24) #21 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.f)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.l = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_126populate_lloyd_max_trainedEmRSt6vectorIfSaIfEE, ptr noundef nonnull @.str.21, i32 noundef 429)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #23
          to label %bb.q unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.l) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.m, %bb.h ]
  %i.n = load ptr, ptr %2, align 8, !tbaa !81     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.p = load i64, ptr %i.b, align 8, !tbaa !80
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.j:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw [16 x i8], ptr @_ZN5faiss12_GLOBAL__N_115kLloydMaxTablesE, i64 %0 ; 2 uses
  %i.s = shl nuw nsw i64 1, %0
  %reass.add = shl nuw nsw i64 2, %0
  %i.t = add nsw i64 %reass.add, -1               ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !86   ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !87     ; 5 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2                  ; 3 uses
  %i.ab = icmp ugt i64 %i.t, %i.aa
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = sub nuw nsw i64 %i.t, %i.aa
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ac)
  %.pre = load ptr, ptr %1, align 8, !tbaa !88
  br label %_ZSt4copyIPKfN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp ult i64 %i.t, %i.aa
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIPKfN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.t ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.ae
  br i1 %.not.i.i, label %_ZSt4copyIPKfN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET0_T_SA_S9_.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.m
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !86
  br label %_ZSt4copyIPKfN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKfN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET0_T_SA_S9_.exit: ; preds = %bb.k, %bb.l, %bb.m, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.af = phi ptr [ %.pre, %bb.k ], [ %i.w, %bb.l ], [ %i.w, %bb.m ], [ %i.w, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ]
  %i.ag = load ptr, ptr %i.r, align 16, !tbaa !1377
  %.idx = shl nuw nsw i64 4, %0                   ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.af, ptr noundef nonnull align 4 dereferenceable(1) %i.ag, i64 %.idx, i1 false)
  %.pre43 = load ptr, ptr %1, align 8, !tbaa !88
  %3 = add nsw i64 %.idx, -4                      ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !1378     ; 2 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %.pre43, i64 %i.s ; 2 uses
  %i.ah = icmp samesign ugt i64 %0, 1
  br i1 %i.ah, label %bb.n, label %bb.o, !prof !305

bb.n:                                             ; preds = %_ZSt4copyIPKfN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET0_T_SA_S9_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %6, ptr align 4 %5, i64 %3, i1 false)
  br label %_ZSt4copyIPKfN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET0_T_SA_S9_.exit41

bb.o:                                             ; preds = %_ZSt4copyIPKfN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET0_T_SA_S9_.exit
  %i.ai = icmp eq i64 %3, 4
  br i1 %i.ai, label %bb.p, label %_ZSt4copyIPKfN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET0_T_SA_S9_.exit41

bb.p:                                             ; preds = %bb.o
  %i.aj = load float, ptr %5, align 4, !tbaa !89
  store float %i.aj, ptr %6, align 4, !tbaa !89
  br label %_ZSt4copyIPKfN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET0_T_SA_S9_.exit41

_ZSt4copyIPKfN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEET0_T_SA_S9_.exit41: ; preds = %bb.n, %bb.o, %bb.p
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss15ScalarQuantizer16TurboQuantRefine15init_projectionEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.faiss::RandomGenerator", align 8 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !1381
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a, %.preheader
  %storemerge = phi i64 [ %i.d, %.preheader ], [ 1, %bb.a ] ; 7 uses
  %i.c = icmp ult i64 %storemerge, %1
  %i.d = shl i64 %storemerge, 1
  br i1 %i.c, label %.preheader, label %bb.b, !llvm.loop !1379

bb.b:                                             ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 %storemerge, ptr %i.e, align 8, !tbaa !1382
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86   ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = icmp ugt i64 %storemerge, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nuw i64 %storemerge, %i.m
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.o)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ult i64 %storemerge, %i.m
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %storemerge ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.q, ptr %i.g, align 8, !tbaa !86
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !587
  call void @_ZN5faiss15RandomGeneratorC1El(ptr noundef nonnull align 8 dereferenceable(5000) %2, i64 noundef %i.s)
  %i.t = load i64, ptr %i.e, align 8, !tbaa !1382
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit, %.lr.ph
  %.015 = phi i64 [ %i.z, %.lr.ph ], [ 0, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ] ; 2 uses
  %i.u = call noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000) %2, i32 noundef 2)
  %i.v = icmp eq i32 %i.u, 0
  %i.w = select i1 %i.v, float 1.000000e+00, float -1.000000e+00
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.015
  store float %i.w, ptr %i.y, align 4, !tbaa !89
  %i.z = add nuw i64 %.015, 1                     ; 2 uses
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !1382
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !1380

bb.f:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ad = mul i64 %1, %1                          ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !86 ; 2 uses
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !87 ; 5 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2                 ; 3 uses
  %i.al = icmp ugt i64 %i.ad, %i.ak
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = sub nuw i64 %i.ad, %i.ak
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.am)
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !87
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit13

bb.h:                                             ; preds = %bb.f
  %i.an = icmp ult i64 %i.ad, %i.ak
  br i1 %i.an, label %bb.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit13

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ad ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.af, %i.ao
  br i1 %.not.i.i11, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit13, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i12

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i12:      ; preds = %bb.i
  store ptr %i.ao, ptr %i.ae, align 8, !tbaa !86
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit13

_ZNSt6vectorIfSaIfEE6resizeEm.exit13:             ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i12
  %i.ap = phi ptr [ %.pre, %bb.g ], [ %i.ag, %bb.h ], [ %i.ag, %bb.i ], [ %i.ag, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i12 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !587
  tail call void @_ZN5faiss11float_randnEPfml(ptr noundef %i.ap, i64 noundef %i.ad, i64 noundef %i.ar)
  %i.as = trunc i64 %1 to i32                     ; 2 uses
  %i.at = load ptr, ptr %i.ac, align 8, !tbaa !87
  tail call void @_ZN5faiss9matrix_qrEiiPf(i32 noundef %i.as, i32 noundef %i.as, ptr noundef %i.at)
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit13, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK5faiss15ScalarQuantizer16select_quantizerEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = tail call noundef nonnull ptr @_ZN5faiss16scalar_quantizer19sq_select_quantizerILNS_9SIMDLevelE0EEEPNS_15ScalarQuantizer10SQuantizerENS3_13QuantizerTypeEmRKSt6vectorIfSaIfEE(i32 noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  ret ptr %i.f
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss15ScalarQuantizer13compute_codesEPKfPhm.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !92     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.g, ptr %i.b, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 1, ptr %i.c, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !96
  %i.h = load i32, ptr %0, align 4, !tbaa !96     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !92
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !92
  %i.k = load i64, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %.not16 = icmp sgt i64 %i.k, %i.j
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.017 = phi i64 [ %i.k, %.lr.ph ], [ %i.y, %bb.d ] ; 4 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !95     ; 2 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !88
  %i.p = load i64, ptr %i.l, align 8, !tbaa !84
  %i.q = mul i64 %i.p, %.017
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q
  %i.s = load ptr, ptr %6, align 8, !tbaa !91
  %i.t = load i64, ptr %i.m, align 8, !tbaa !93
  %i.u = mul i64 %i.t, %.017
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.r, ptr noundef %i.v)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = add nsw i64 %.017, 1
  %i.z = load i64, ptr %i.b, align 8, !tbaa !92
  %.not.not = icmp slt i64 %.017, %i.z
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
end_hunk_1
