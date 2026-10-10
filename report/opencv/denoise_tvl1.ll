Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/denoise_tvl1?download=true
inline.NumInlined: 187
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv12denoise_TVL1ERKSt6vectorINS_3MatESaIS1_EERS1_di:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv12denoise_TVL1ERKSt6vectorINS_3MatESaIS1_EERS1_di, ptr noundef nonnull @.str.1, i32 noundef 70) #14
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

bb.n:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %14, align 8, !tbaa !14   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %bb.n
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !15
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211, %bb.m
  %.pn207 = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ], [ %i.ah, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.ck

._crit_edge:                                      ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %18, i32 noundef %i.u, i32 noundef %i.w, i32 noundef 38)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %._crit_edge
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #13
  %i.an = load ptr, ptr %18, align 8, !tbaa !85, !noalias !86 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(688) %18, ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef -1)
          to label %bb.p unwind label %.body

.body:                                            ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %18) #13
  br label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.as) #13
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.at) #13
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  %i.av = load ptr, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 0, ptr %i.ax, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !91
  store ptr %16, ptr %i.aw, align 8, !tbaa !92
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef 6, double noundef f0x3F70101010101010, double noundef 0.000000e+00)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !68  ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = sdiv exact i64 %i.bc, 208               ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 44343134792571037
  br i1 %i.be, label %bb.r, label %_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #14
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.q
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.thread.i, label %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  br label %.loopexit298

_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #16
          to label %.noexc214 unwind label %bb.x  ; 5 uses

.noexc214:                                        ; preds = %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.bg, ptr %20, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc
  %i.bj = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !21
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.noexc214
  %.08.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %i.bg, %.noexc214 ] ; 4 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %i.bd, %.noexc214 ]
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #13
  %i.bk = load i32, ptr %.08.i.i.i.i.i, align 8, !tbaa !93
  %i.bl = and i32 %i.bk, -4096
  %i.bm = or disjoint i32 %i.bl, 6
  store i32 %i.bm, ptr %.08.i.i.i.i.i, align 8, !tbaa !93
  %i.bn = add nsw i64 %.057.i.i.i.i.i, -1         ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit298, label %.lr.ph.i.i.i.i.i, !llvm.loop !26

.loopexit298:                                     ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.bp = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.bg, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bq = phi ptr [ %i.bf, %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.bo, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bq, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.bs = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 208
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph327, label %.lr.ph356

.lr.ph327:                                        ; preds = %.loopexit298
  %i.by = getelementptr inbounds nuw i8, ptr %21, i64 432
  %i.bz = getelementptr inbounds nuw i8, ptr %21, i64 224
  %i.ca = getelementptr inbounds nuw i8, ptr %21, i64 16
  br label %bb.s

.lr.ph356:                                        ; preds = %_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit, %.loopexit298
  %i.cb = phi ptr [ %i.bp, %.loopexit298 ], [ %i.eg, %_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit ]
  %i.cc = phi ptr [ %.0.lcssa.i.i.i.i.i, %.loopexit298 ], [ %i.ef, %_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit ]
  %i.cd = icmp sgt i32 %i.u, 0                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 2 uses
  %i.cg = add i32 %i.u, -1                        ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 128 ; 2 uses
  %i.cj = add i32 %i.w, -1                        ; 3 uses
  %i.ck = icmp sgt i32 %i.w, 1                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %26, i64 432
  %i.dc = getelementptr inbounds nuw i8, ptr %26, i64 224
  %i.dd = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.dg = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %30, i64 20
  %i.dn = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %32, i64 16
  %wide.trip.count377 = zext i32 %i.u to i64      ; 2 uses
  %wide.trip.count372 = zext i32 %i.cj to i64     ; 5 uses
  %wide.trip.count405 = zext nneg i32 %i.u to i64
  %wide.trip.count390 = zext i32 %i.w to i64      ; 4 uses
  %wide.trip.count400 = zext nneg i32 %i.w to i64
  %i.ds = shl nuw nsw i64 %wide.trip.count390, 3
  %i.dt = add nsw i64 %wide.trip.count377, -1     ; 4 uses
  %i.du = shl nuw nsw i64 %wide.trip.count390, 4
  %i.dv = shl nuw nsw i64 %wide.trip.count372, 4
  %i.dw = shl nuw nsw i64 %wide.trip.count372, 3  ; 2 uses
  %i.dx = sext i32 %i.cg to i64
  %min.iters.check503 = icmp eq i32 %i.w, 2
  %n.vec505 = and i64 %wide.trip.count372, 4294967294 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec505, %wide.trip.count372
  %min.iters.check = icmp ult i32 %i.w, 6
  %34 = and i64 %wide.trip.count390, 2147483646   ; 2 uses
  %n.vec = add nsw i64 %34, -1
  %i.dy = add nsw i64 %34, -4
  br label %bb.ab

bb.s:                                             ; preds = %.lr.ph327, %_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit
  %i.dz = phi ptr [ %i.bp, %.lr.ph327 ], [ %i.eg, %_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit ]
  %indvars.iv366 = phi i64 [ 0, %.lr.ph327 ], [ %indvars.iv.next367, %_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %21, i32 noundef %i.u, i32 noundef %i.w, i32 noundef 6)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw [208 x i8], ptr %i.dz, i64 %indvars.iv366
  %i.eb = load ptr, ptr %21, align 8, !tbaa !85   ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !88
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef nonnull align 8 dereferenceable(688) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.ea, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit unwind label %bb.z, !inline_history !27

_ZN2cv4Mat_IdEaSERKNS_7MatExprE.exit:             ; preds = %bb.t
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.by) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bz) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ca) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %i.ef = load ptr, ptr %i.br, align 8, !tbaa !20 ; 2 uses
  %i.eg = load ptr, ptr %20, align 8, !tbaa !19   ; 3 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = sdiv exact i64 %i.ej, 208
  %i.el = shl i64 %i.ek, 32
  %i.em = ashr exact i64 %i.el, 32
  %i.en = icmp slt i64 %indvars.iv.next367, %i.em
  br i1 %i.en, label %bb.s, label %.lr.ph356, !llvm.loop !28

bb.u:                                             ; preds = %._crit_edge
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.body, %bb.u
  %.pn184 = phi { ptr, i32 } [ %i.ar, %.body ], [ %i.eo, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br label %bb.cj

bb.w:                                             ; preds = %bb.p
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.ci

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.i, %bb.r
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.y:                                             ; preds = %bb.s
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.t
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %21) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn201 = phi { ptr, i32 } [ %i.es, %bb.z ], [ %i.er, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %.body240

bb.ab:                                            ; preds = %.lr.ph356, %._crit_edge354
  %i.et = phi ptr [ %i.cb, %.lr.ph356 ], [ %i.ib, %._crit_edge354 ] ; 3 uses
  %i.eu = phi ptr [ %i.cc, %.lr.ph356 ], [ %i.ic, %._crit_edge354 ] ; 2 uses
  %.1152355 = phi i32 [ 0, %.lr.ph356 ], [ %i.vb, %._crit_edge354 ] ; 2 uses
  %i.ev = icmp eq i32 %.1152355, 0
  %i.ew = select i1 %i.ev, double 7.250000e+00, double 6.250000e+00 ; 3 uses
  br i1 %i.cd, label %.lr.ph334, label %.preheader295

.lr.ph334:                                        ; preds = %bb.ab
  %i.ex = load ptr, ptr %i.ce, align 8, !tbaa !94 ; 5 uses
  %i.ey = load i64, ptr %i.cf, align 8, !tbaa !22 ; 5 uses
  %i.ez = load ptr, ptr %i.ch, align 8, !tbaa !94 ; 4 uses
  %i.fa = load i64, ptr %i.ci, align 8, !tbaa !22 ; 4 uses
  %scevgep486 = getelementptr i8, ptr %i.ez, i64 %i.dv
  %i.fb = mul i64 %i.dt, %i.fa
  %scevgep487 = getelementptr i8, ptr %scevgep486, i64 %i.fb ; 2 uses
  %scevgep488 = getelementptr i8, ptr %i.ex, i64 %i.dw
  %i.fc = getelementptr i8, ptr %i.ex, i64 %i.dw
  %scevgep490 = getelementptr i8, ptr %i.fc, i64 8
  %i.fd = mul i64 %i.dt, %i.ey
  %scevgep491 = getelementptr i8, ptr %scevgep490, i64 %i.fd
  %stride.check495 = icmp slt i64 %i.fa, 0
  %bound0496 = icmp ult ptr %i.ez, %scevgep491
  %bound1497 = icmp ult ptr %i.ex, %scevgep487
  %found.conflict498 = and i1 %bound0496, %bound1497
  %i.fe = or i64 %i.ey, %i.fa
  %i.ff = icmp slt i64 %i.fe, 0
  %i.fg = or i1 %found.conflict498, %i.ff
  %invariant.op = or i1 %stride.check495, %i.fg
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ew, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fh = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ac

.preheader295:                                    ; preds = %._crit_edge331, %bb.ab
  %i.fj = ptrtoint ptr %i.eu to i64
  %i.fk = ptrtoint ptr %i.et to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 208
  %i.fn = trunc i64 %i.fm to i32                  ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %.lr.ph336, label %.preheader294

bb.ac:                                            ; preds = %.lr.ph334, %._crit_edge331
  %indvars.iv374 = phi i64 [ 0, %.lr.ph334 ], [ %indvars.iv.next375, %._crit_edge331 ] ; 4 uses
  %i.fp = add nuw i64 %indvars.iv374, 1
  %smin = call i64 @llvm.smin.i64(i64 %i.fp, i64 %i.dx)
  %i.fq = mul i64 %i.ey, %smin
  %scevgep489 = getelementptr i8, ptr %scevgep488, i64 %i.fq
  %i.fr = mul i64 %i.ey, %indvars.iv374
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fr ; 5 uses
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 3 uses
  %i.ft = trunc i64 %indvars.iv.next375 to i32
  %.sroa.speculated288 = call i32 @llvm.smin.i32(i32 %i.cg, i32 %i.ft)
  %i.fu = sext i32 %.sroa.speculated288 to i64
  %i.fv = mul i64 %i.ey, %i.fu
  %i.fw = getelementptr i8, ptr %i.ex, i64 %i.fv  ; 4 uses
  %i.fx = mul i64 %i.fa, %indvars.iv374
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fx ; 3 uses
  br i1 %i.ck, label %.lr.ph330.preheader, label %._crit_edge331

.lr.ph330.preheader:                              ; preds = %bb.ac
  br i1 %min.iters.check503, label %.lr.ph330.preheader520, label %vector.memcheck485

vector.memcheck485:                               ; preds = %.lr.ph330.preheader
  %bound0492 = icmp ult ptr %i.ez, %scevgep489
  %bound1493 = icmp ult ptr %i.fw, %scevgep487
  %found.conflict494 = and i1 %bound0492, %bound1493
  %conflict.rdx501.reass = or i1 %found.conflict494, %invariant.op
  br i1 %conflict.rdx501.reass, label %.lr.ph330.preheader520, label %vector.body506

vector.body506:                                   ; preds = %vector.memcheck485, %vector.body506
  %index507 = phi i64 [ %index.next514, %vector.body506 ], [ 0, %vector.memcheck485 ] ; 5 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %index507
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %wide.load508 = load <2 x double>, ptr %i.ga, align 8, !tbaa !71, !alias.scope !95
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %index507
  %wide.load509 = load <2 x double>, ptr %i.gb, align 8, !tbaa !71, !alias.scope !95 ; 2 uses
  %i.gc = fsub <2 x double> %wide.load508, %wide.load509
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %index507 ; 2 uses
  %wide.vec510 = load <4 x double>, ptr %i.gd, align 8, !tbaa !71, !alias.scope !96, !noalias !97 ; 2 uses
  %strided.vec511 = shufflevector <4 x double> %wide.vec510, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec512 = shufflevector <4 x double> %wide.vec510, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %broadcast.splat, <2 x double> %strided.vec511) ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %index507
  %wide.load513 = load <2 x double>, ptr %i.gf, align 8, !tbaa !71, !alias.scope !98
  %i.gg = fsub <2 x double> %wide.load513, %wide.load509
  %i.gh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %broadcast.splat, <2 x double> %strided.vec512) ; 3 uses
  %i.gi = fmul <2 x double> %i.gh, %i.gh
  %i.gj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.ge, <2 x double> %i.gi)
  %i.gk = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gj) ; 2 uses
  %i.gl = fcmp olt <2 x double> %i.gk, splat (double 1.000000e+00)
  %i.gm = select <2 x i1> %i.gl, <2 x double> splat (double 1.000000e+00), <2 x double> %i.gk
  %i.gn = fdiv <2 x double> splat (double 1.000000e+00), %i.gm ; 2 uses
  %i.go = fmul <2 x double> %i.ge, %i.gn
  %i.gp = fmul <2 x double> %i.gh, %i.gn
  %interleaved.vec = shufflevector <2 x double> %i.go, <2 x double> %i.gp, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.gd, align 8, !tbaa !71, !alias.scope !96, !noalias !97
  %index.next514 = add nuw i64 %index507, 2       ; 2 uses
  %i.gq = icmp eq i64 %index.next514, %n.vec505
  br i1 %i.gq, label %middle.block515, label %vector.body506, !llvm.loop !33

middle.block515:                                  ; preds = %vector.body506
  br i1 %cmp.n, label %._crit_edge331, label %.lr.ph330.preheader520

.lr.ph330.preheader520:                           ; preds = %vector.memcheck485, %.lr.ph330.preheader, %middle.block515
  %indvars.iv369.ph = phi i64 [ 0, %vector.memcheck485 ], [ 0, %.lr.ph330.preheader ], [ %n.vec505, %middle.block515 ]
  br label %.lr.ph330

.lr.ph330:                                        ; preds = %.lr.ph330.preheader520, %.lr.ph330
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %.lr.ph330 ], [ %indvars.iv369.ph, %.lr.ph330.preheader520 ] ; 4 uses
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.next370
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !71
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv369
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !71
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %indvars.iv369 ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv369
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !71
  %i.gy = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.gx, i64 1
  %i.ha = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hc = fsub <2 x double> %i.gz, %i.hb
  %i.hd = load <2 x double>, ptr %i.gv, align 8, !tbaa !71
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.fi, <2 x double> %i.hd) ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.he, %i.he
end_hunk_0
begin_hunk_1_@_ZN2cv12denoise_TVL1ERKSt6vectorINS_3MatESaIS1_EERS1_di:bb.a
  store ptr %i.a, ptr %i.di, align 8, !tbaa !92
  store i64 4294967297, ptr %i.dh, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  store i64 0, ptr %i.dk, align 8
  store i32 -2113863674, ptr %29, align 8, !tbaa !91
  store ptr %i.jv, ptr %i.dj, align 8, !tbaa !92
  invoke void @_ZN2cv3minERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %bb.bt unwind label %bb.bz

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #13
  store i32 0, ptr %i.dl, align 8, !tbaa !115
  store i32 0, ptr %i.dm, align 4, !tbaa !116
  store i32 -2130640890, ptr %30, align 8, !tbaa !91
  store ptr %i.jv, ptr %i.dn, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.oq = load double, ptr %i.a, align 8, !tbaa !71
  %i.or = fneg double %i.oq
  store double %i.or, ptr %i.b, align 8, !tbaa !71
  store i32 -1056833530, ptr %31, align 8, !tbaa !91
  store ptr %i.b, ptr %i.dp, align 8, !tbaa !92
  store i64 4294967297, ptr %i.do, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #13
  store i64 0, ptr %i.dr, align 8
  store i32 -2113863674, ptr %32, align 8, !tbaa !91
  store ptr %i.jv, ptr %i.dq, align 8, !tbaa !92
  invoke void @_ZN2cv3maxERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32)
          to label %bb.bu unwind label %bb.ca

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %i.os = load ptr, ptr %i.br, align 8, !tbaa !20 ; 2 uses
  %i.ot = ptrtoint ptr %i.os to i64
  %i.ou = ptrtoint ptr %i.ju to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = sdiv exact i64 %i.ov, 208               ; 2 uses
  %sext = shl i64 %i.ow, 32
  %i.ox = ashr exact i64 %sext, 32
  %i.oy = icmp slt i64 %indvars.iv.next380, %i.ox
  br i1 %i.oy, label %.lr.ph336, label %.preheader294.loopexit, !llvm.loop !54

.loopexit296:                                     ; preds = %.lr.ph336, %_ZN2cv4Mat_IdE5beginEv.exit, %.noexc222, %bb.au, %_ZN2cv4Mat_IdE3endEv.exit, %_ZNK2cv3Mat5beginIhEENS_17MatConstIterator_IT_EEv.exit, %bb.af, %bb.aj, %bb.ak, %bb.an, %bb.ar, %bb.as, %bb.ax, %bb.bb, %bb.bc, %bb.bf, %bb.bj, %bb.bk
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body240

.loopexit.split-lp:                               ; preds = %bb.ag, %bb.ao, %bb.ay, %bb.bg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body240

bb.bv:                                            ; preds = %bb.bq, %bb.bo, %bb.bm
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %.body240

bb.bw:                                            ; preds = %.loopexit
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.br
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %26) #13
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn190 = phi { ptr, i32 } [ %i.pb, %bb.bx ], [ %i.pa, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  br label %.body240

bb.bz:                                            ; preds = %bb.bs
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  br label %.body240

bb.ca:                                            ; preds = %bb.bt
  %i.pd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #13
  br label %.body240

bb.cb:                                            ; preds = %.lr.ph353, %._crit_edge351
  %indvars.iv402 = phi i64 [ 0, %.lr.ph353 ], [ %indvars.iv.next403, %._crit_edge351 ] ; 11 uses
  %i.pe = trunc i64 %indvars.iv402 to i32
  %smax = call i32 @llvm.smax.i32(i32 %i.pe, i32 1)
  %i.pf = zext nneg i32 %smax to i64
  %i.pg = add nsw i64 %i.pf, -1
  %i.ph = mul i64 %i.ig, %i.pg                    ; 2 uses
  %scevgep475 = getelementptr i8, ptr %scevgep474, i64 %i.ph
  %scevgep477 = getelementptr i8, ptr %scevgep476, i64 %i.ph
  %i.pi = mul i64 %i.ie, %indvars.iv402
  %i.pj = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.pi ; 5 uses
  %i.pk = mul i64 %i.ig, %indvars.iv402
  %i.pl = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.pk ; 5 uses
  %i.pm = trunc nuw nsw i64 %indvars.iv402 to i32
  %i.pn = call i32 @llvm.smax.i32(i32 %i.pm, i32 1)
  %.sroa.speculated = add nsw i32 %i.pn, -1
  %i.po = zext nneg i32 %.sroa.speculated to i64
  %i.pp = mul i64 %i.ig, %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.pp ; 5 uses
  br i1 %i.ih, label %.lr.ph342.preheader, label %._crit_edge343

.lr.ph342.preheader:                              ; preds = %bb.cb
  br i1 %i.il, label %.lr.ph342.epil.preheader, label %.lr.ph342

.lr.ph342:                                        ; preds = %.lr.ph342.preheader, %.lr.ph342
  %indvars.iv382 = phi i64 [ %indvars.iv.next383.1, %.lr.ph342 ], [ 0, %.lr.ph342.preheader ] ; 3 uses
  %.0153339 = phi double [ %i.qm, %.lr.ph342 ], [ 0.000000e+00, %.lr.ph342.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph342 ], [ 0, %.lr.ph342.preheader ]
  %i.pr = getelementptr inbounds nuw [208 x i8], ptr %i.ib, i64 %indvars.iv382 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !118
  %i.pu = icmp slt i32 %i.pt, 2
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !94
  %i.px = getelementptr inbounds nuw i8, ptr %i.pr, i64 128
  %i.py = load i64, ptr %i.px, align 8
  %i.pz = mul i64 %i.py, %indvars.iv402
  %.sink.idx.i = select i1 %i.pu, i64 0, i64 %i.pz
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.pw, i64 %.sink.idx.i
  %i.qa = load double, ptr %.sink.i, align 8, !tbaa !71
  %i.qb = fadd double %.0153339, %i.qa
  %i.qc = getelementptr inbounds nuw [208 x i8], ptr %i.ib, i64 %indvars.iv382 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 212
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !118
  %i.qf = icmp slt i32 %i.qe, 2
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qc, i64 232
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !94
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qc, i64 336
  %i.qj = load i64, ptr %i.qi, align 8
  %i.qk = mul i64 %i.qj, %indvars.iv402
  %.sink.idx.i.1 = select i1 %i.qf, i64 0, i64 %i.qk
  %.sink.i.1 = getelementptr inbounds nuw i8, ptr %i.qh, i64 %.sink.idx.i.1
  %i.ql = load double, ptr %.sink.i.1, align 8, !tbaa !71
  %i.qm = fadd double %i.qb, %i.ql                ; 3 uses
  %indvars.iv.next383.1 = add nuw nsw i64 %indvars.iv382, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge343.loopexit.unr-lcssa, label %.lr.ph342, !llvm.loop !55

._crit_edge343.loopexit.unr-lcssa:                ; preds = %.lr.ph342
  br i1 %lcmp.mod.not, label %._crit_edge343, label %.lr.ph342.epil.preheader

.lr.ph342.epil.preheader:                         ; preds = %._crit_edge343.loopexit.unr-lcssa, %.lr.ph342.preheader
  %indvars.iv382.epil.init = phi i64 [ 0, %.lr.ph342.preheader ], [ %indvars.iv.next383.1, %._crit_edge343.loopexit.unr-lcssa ]
  %.0153339.epil.init = phi double [ 0.000000e+00, %.lr.ph342.preheader ], [ %i.qm, %._crit_edge343.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod540)
  %i.qn = getelementptr inbounds nuw [208 x i8], ptr %i.ib, i64 %indvars.iv382.epil.init ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !118
  %i.qq = icmp slt i32 %i.qp, 2
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !94
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 128
  %i.qu = load i64, ptr %i.qt, align 8
  %i.qv = mul i64 %i.qu, %indvars.iv402
  %.sink.idx.i.epil = select i1 %i.qq, i64 0, i64 %i.qv
  %.sink.i.epil = getelementptr inbounds nuw i8, ptr %i.qs, i64 %.sink.idx.i.epil
  %i.qw = load double, ptr %.sink.i.epil, align 8, !tbaa !71
  %i.qx = fadd double %.0153339.epil.init, %i.qw
  br label %._crit_edge343

._crit_edge343:                                   ; preds = %.lr.ph342.epil.preheader, %._crit_edge343.loopexit.unr-lcssa, %bb.cb
  %.0153.lcssa = phi double [ 0.000000e+00, %bb.cb ], [ %i.qm, %._crit_edge343.loopexit.unr-lcssa ], [ %i.qx, %.lr.ph342.epil.preheader ]
  %i.qy = load double, ptr %i.pj, align 8, !tbaa !71 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !102
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !102
  %i.rd = fsub double %i.ra, %i.rc
  %i.re = call double @llvm.fmuladd.f64(double %i.rd, double 2.000000e-02, double %i.qy)
  %i.rf = call double @llvm.fmuladd.f64(double %.0153.lcssa, double -2.000000e-02, double %i.re) ; 2 uses
  %i.rg = fsub double %i.rf, %i.qy
  %i.rh = fadd double %i.rf, %i.rg
  store double %i.rh, ptr %i.pj, align 8, !tbaa !71
  br i1 %i.ck, label %.preheader.lr.ph, label %._crit_edge351

.preheader.lr.ph:                                 ; preds = %._crit_edge343
  br i1 %i.ih, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  br i1 %min.iters.check, label %.preheader.preheader518, label %vector.memcheck

.preheader.preheader518:                          ; preds = %vector.body, %vector.memcheck, %.preheader.preheader
  %indvars.iv387.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader.preheader ], [ %n.vec, %vector.body ]
  br label %.preheader

vector.memcheck:                                  ; preds = %.preheader.preheader
  %bound0 = icmp ult ptr %scevgep, %scevgep477
  %bound1 = icmp ult ptr %scevgep475, %scevgep473
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx.reass = or i1 %found.conflict, %invariant.op565
  br i1 %conflict.rdx.reass, label %.preheader.preheader518, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.ri = or disjoint i64 %index, 1               ; 3 uses
  %i.rj = add i64 %index, 2                       ; 2 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.ri ; 2 uses
  %wide.load = load <2 x double>, ptr %i.rk, align 8, !tbaa !71, !alias.scope !119, !noalias !120 ; 2 uses
  %i.rl = getelementptr inbounds nuw [16 x i8], ptr %i.pl, i64 %i.ri ; 2 uses
  %i.rm = getelementptr inbounds nuw [16 x i8], ptr %i.pl, i64 %i.rj
  %wide.vec = load <4 x double>, ptr %i.rl, align 8, !tbaa !71, !alias.scope !121 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec484 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.rn = getelementptr i8, ptr %i.rl, i64 -16
  %i.ro = getelementptr i8, ptr %i.rm, i64 -16
  %i.rp = load double, ptr %i.rn, align 8, !tbaa !103, !alias.scope !121
  %i.rq = load double, ptr %i.ro, align 8, !tbaa !103, !alias.scope !121
  %i.rr = insertelement <2 x double> poison, double %i.rp, i64 0
  %i.rs = insertelement <2 x double> %i.rr, double %i.rq, i64 1
  %i.rt = fsub <2 x double> %strided.vec, %i.rs
  %i.ru = fadd <2 x double> %i.rt, %strided.vec484
  %i.rv = getelementptr inbounds nuw [16 x i8], ptr %i.pq, i64 %i.ri
  %i.rw = getelementptr inbounds nuw [16 x i8], ptr %i.pq, i64 %i.rj
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.rz = load double, ptr %i.rx, align 8, !tbaa !102, !alias.scope !122
  %i.sa = load double, ptr %i.ry, align 8, !tbaa !102, !alias.scope !122
  %i.sb = insertelement <2 x double> poison, double %i.rz, i64 0
  %i.sc = insertelement <2 x double> %i.sb, double %i.sa, i64 1
  %i.sd = fsub <2 x double> %i.ru, %i.sc
  %i.se = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sd, <2 x double> splat (double 2.000000e-02), <2 x double> %wide.load) ; 2 uses
  %i.sf = fsub <2 x double> %i.se, %wide.load
  %i.sg = fadd <2 x double> %i.se, %i.sf
  store <2 x double> %i.sg, ptr %i.rk, align 8, !tbaa !71, !alias.scope !119, !noalias !120
  %index.next = add nuw i64 %index, 2
  %i.sh = icmp eq i64 %index, %i.dy
  br i1 %i.sh, label %.preheader.preheader518, label %vector.body, !llvm.loop !60

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge348.us
  %indvars.iv397 = phi i64 [ %indvars.iv.next398, %._crit_edge348.us ], [ 1, %.preheader.lr.ph ] ; 7 uses
  br i1 %i.ip, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv392 = phi i64 [ %indvars.iv.next393.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.1154345.us = phi double [ %i.tf, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter546 = phi i64 [ %niter546.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.si = getelementptr inbounds nuw [208 x i8], ptr %i.ib, i64 %indvars.iv392 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !118
  %i.sl = icmp slt i32 %i.sk, 2
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !94
  %i.so = getelementptr inbounds nuw i8, ptr %i.si, i64 128
  %i.sp = load i64, ptr %i.so, align 8
  %i.sq = mul i64 %i.sp, %indvars.iv402
  %.sink.idx.i235.us = select i1 %i.sl, i64 0, i64 %i.sq
  %.sink.i236.us = getelementptr inbounds nuw i8, ptr %i.sn, i64 %.sink.idx.i235.us
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %.sink.i236.us, i64 %indvars.iv397
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !71
  %i.st = fadd double %.1154345.us, %i.ss
  %i.su = getelementptr inbounds nuw [208 x i8], ptr %i.ib, i64 %indvars.iv392 ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 212
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !118
  %i.sx = icmp slt i32 %i.sw, 2
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 232
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !94
  %i.ta = getelementptr inbounds nuw i8, ptr %i.su, i64 336
  %i.tb = load i64, ptr %i.ta, align 8
  %i.tc = mul i64 %i.tb, %indvars.iv402
  %.sink.idx.i235.us.1 = select i1 %i.sx, i64 0, i64 %i.tc
  %.sink.i236.us.1 = getelementptr inbounds nuw i8, ptr %i.sz, i64 %.sink.idx.i235.us.1
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %.sink.i236.us.1, i64 %indvars.iv397
  %i.te = load double, ptr %i.td, align 8, !tbaa !71
  %i.tf = fadd double %i.st, %i.te                ; 3 uses
  %indvars.iv.next393.1 = add nuw nsw i64 %indvars.iv392, 2 ; 2 uses
  %niter546.next.1 = add i64 %niter546, 2         ; 2 uses
  %niter546.ncmp.1 = icmp eq i64 %niter546.next.1, %unroll_iter545
  br i1 %niter546.ncmp.1, label %._crit_edge348.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !61

._crit_edge348.us.unr-lcssa:                      ; preds = %.preheader.us.new
  br i1 %lcmp.mod542.not, label %._crit_edge348.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge348.us.unr-lcssa, %.preheader.us
  %indvars.iv392.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next393.1, %._crit_edge348.us.unr-lcssa ]
  %.1154345.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.tf, %._crit_edge348.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod544)
  %i.tg = getelementptr inbounds nuw [208 x i8], ptr %i.ib, i64 %indvars.iv392.epil.init ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 4
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !118
  %i.tj = icmp slt i32 %i.ti, 2
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tg, i64 24
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !94
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tg, i64 128
  %i.tn = load i64, ptr %i.tm, align 8
  %i.to = mul i64 %i.tn, %indvars.iv402
  %.sink.idx.i235.us.epil = select i1 %i.tj, i64 0, i64 %i.to
  %.sink.i236.us.epil = getelementptr inbounds nuw i8, ptr %i.tl, i64 %.sink.idx.i235.us.epil
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %.sink.i236.us.epil, i64 %indvars.iv397
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !71
  %i.tr = fadd double %.1154345.us.epil.init, %i.tq
  br label %._crit_edge348.us

._crit_edge348.us:                                ; preds = %._crit_edge348.us.unr-lcssa, %.epil.preheader
  %.lcssa533 = phi double [ %i.tf, %._crit_edge348.us.unr-lcssa ], [ %i.tr, %.epil.preheader ]
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv397 ; 2 uses
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !71 ; 2 uses
  %i.tu = getelementptr inbounds nuw [16 x i8], ptr %i.pl, i64 %indvars.iv397 ; 3 uses
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !103
  %i.tw = getelementptr i8, ptr %i.tu, i64 -16
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !103
  %i.ty = fsub double %i.tv, %i.tx
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !102
  %i.ub = fadd double %i.ty, %i.ua
  %i.uc = getelementptr inbounds nuw [16 x i8], ptr %i.pq, i64 %indvars.iv397
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !102
  %i.uf = fsub double %i.ub, %i.ue
  %i.ug = call double @llvm.fmuladd.f64(double %i.uf, double 2.000000e-02, double %i.tt)
  %i.uh = call double @llvm.fmuladd.f64(double %.lcssa533, double -2.000000e-02, double %i.ug) ; 2 uses
  %i.ui = fsub double %i.uh, %i.tt
  %i.uj = fadd double %i.uh, %i.ui
  store double %i.uj, ptr %i.ts, align 8, !tbaa !71
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %exitcond401.not = icmp eq i64 %indvars.iv.next398, %wide.trip.count400
  br i1 %exitcond401.not, label %._crit_edge351, label %.preheader.us, !llvm.loop !62

.preheader:                                       ; preds = %.preheader.preheader518, %.preheader
  %indvars.iv387 = phi i64 [ %indvars.iv.next388, %.preheader ], [ %indvars.iv387.ph, %.preheader.preheader518 ] ; 4 uses
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv387 ; 2 uses
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !71 ; 2 uses
  %i.um = getelementptr inbounds nuw [16 x i8], ptr %i.pl, i64 %indvars.iv387 ; 3 uses
  %i.un = load double, ptr %i.um, align 8, !tbaa !103
  %i.uo = getelementptr i8, ptr %i.um, i64 -16
  %i.up = load double, ptr %i.uo, align 8, !tbaa !103
  %i.uq = fsub double %i.un, %i.up
  %i.ur = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.us = load double, ptr %i.ur, align 8, !tbaa !102
  %i.ut = fadd double %i.uq, %i.us
  %i.uu = getelementptr inbounds nuw [16 x i8], ptr %i.pq, i64 %indvars.iv387
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !102
  %i.ux = fsub double %i.ut, %i.uw
  %i.uy = call double @llvm.fmuladd.f64(double %i.ux, double 2.000000e-02, double %i.ul) ; 2 uses
  %i.uz = fsub double %i.uy, %i.ul
  %i.va = fadd double %i.uy, %i.uz
  store double %i.va, ptr %i.uk, align 8, !tbaa !71
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %exitcond391.not = icmp eq i64 %indvars.iv.next388, %wide.trip.count390
  br i1 %exitcond391.not, label %._crit_edge351, label %.preheader, !llvm.loop !63

._crit_edge351:                                   ; preds = %.preheader, %._crit_edge348.us, %._crit_edge343
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %exitcond406.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count405
  br i1 %exitcond406.not, label %._crit_edge354, label %bb.cb, !llvm.loop !64

._crit_edge354:                                   ; preds = %._crit_edge351, %.preheader294
  %i.vb = add nuw nsw i32 %.1152355, 1            ; 2 uses
  %exitcond407.not = icmp eq i32 %i.vb, %3
  br i1 %exitcond407.not, label %._crit_edge357, label %bb.ab, !llvm.loop !65

._crit_edge357:                                   ; preds = %._crit_edge354
  %i.vc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !78
  %i.ve = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !79
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.vd, i32 noundef %i.vf, i32 noundef 0)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %._crit_edge357
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #13
  %i.vg = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.vh = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i64 0, ptr %i.vh, align 8
  store i32 33619968, ptr %33, align 8, !tbaa !91
  store ptr %1, ptr %i.vg, align 8, !tbaa !92
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(24) %33, i32 noundef 0, double noundef 2.550000e+02, double noundef 0.000000e+00)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  %.not4.i.i.i = icmp eq ptr %i.ib, %i.ic
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cd, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.vi, %.lr.ph.i.i.i ], [ %i.ib, %bb.cd ] ; 2 uses
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #13
  %i.vi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i237 = icmp eq ptr %i.vi, %i.ic
  br i1 %.not.i.i.i237, label %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %20, align 8, !tbaa !19
  br label %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.cd
  %i.vj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ib, %bb.cd ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.vj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit.i
  %i.vk = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !21
  %i.vm = ptrtoint ptr %i.vl to i64
  %i.vn = ptrtoint ptr %i.vj to i64
  %i.vo = sub i64 %i.vm, %i.vn
  call void @_ZdlPvm(ptr noundef nonnull %i.vj, i64 noundef %i.vo) #15
  br label %_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EED2Ev.exit:      ; preds = %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

bb.cf:                                            ; preds = %._crit_edge357
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %.body240

bb.cg:                                            ; preds = %bb.cc
  %i.vq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #13
  br label %.body240

.body240:                                         ; preds = %.loopexit296, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i268, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i246, %bb.bv, %bb.by, %bb.bz, %bb.ca, %bb.cg, %bb.cf, %bb.aa
  %.pn201.pn = phi { ptr, i32 } [ %.pn201, %bb.aa ], [ %i.vp, %bb.cf ], [ %i.vq, %bb.cg ], [ %i.pd, %bb.ca ], [ %i.pc, %bb.bz ], [ %.pn190, %bb.by ], [ %i.oz, %bb.bv ], [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i246 ], [ %i.ma, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i257 ], [ %i.nc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i268 ], [ %lpad.loopexit, %.loopexit296 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #13
  br label %bb.ch

bb.ch:                                            ; preds = %.body240, %bb.x
  %.pn201.pn.pn = phi { ptr, i32 } [ %.pn201.pn, %.body240 ], [ %i.eq, %bb.x ]
end_hunk_1
