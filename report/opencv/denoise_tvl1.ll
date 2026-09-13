Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/denoise_tvl1?download=true
inline.NumInlined: 187
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv12denoise_TVL1ERKSt6vectorINS_3MatESaIS1_EERS1_di:bb.a
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
  %i.bn = add i64 %.057.i.i.i.i.i, -1             ; 2 uses
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
  %wide.trip.count390 = zext i32 %i.w to i64      ; 5 uses
  %wide.trip.count400 = zext nneg i32 %i.w to i64
  %i.ds = shl nuw nsw i64 %wide.trip.count390, 3
  %i.dt = add nsw i64 %wide.trip.count377, -1     ; 4 uses
  %i.du = shl nuw nsw i64 %wide.trip.count390, 4
  %i.dv = shl nuw nsw i64 %wide.trip.count372, 4
  %i.dw = shl nuw nsw i64 %wide.trip.count372, 3  ; 2 uses
  %34 = sext i32 %i.cg to i64
  %min.iters.check504 = icmp eq i32 %i.w, 2
  %n.vec506 = and i64 %wide.trip.count372, 4294967294 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec506, %wide.trip.count372
  %i.dx = add nsw i64 %wide.trip.count390, -1     ; 2 uses
  %min.iters.check = icmp ult i32 %i.w, 6
  %.neg = or i64 %i.dx, -2                        ; 2 uses
  %n.vec = add nsw i64 %.neg, %i.dx
  %i.dy = add nsw i64 %.neg, %wide.trip.count390
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
  %sext = shl i64 %i.ek, 32
  %i.el = ashr exact i64 %sext, 32
  %i.em = icmp slt i64 %indvars.iv.next367, %i.el
  br i1 %i.em, label %bb.s, label %.lr.ph356, !llvm.loop !28

bb.u:                                             ; preds = %._crit_edge
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.body, %bb.u
  %.pn184 = phi { ptr, i32 } [ %i.ar, %.body ], [ %i.en, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br label %bb.cj

bb.w:                                             ; preds = %bb.p
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %bb.ci

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EEC2EmRKS3_.exit.i, %bb.r
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.y:                                             ; preds = %bb.s
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.t
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %21) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn201 = phi { ptr, i32 } [ %i.er, %bb.z ], [ %i.eq, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %.body240

bb.ab:                                            ; preds = %.lr.ph356, %._crit_edge354
  %i.es = phi ptr [ %i.cb, %.lr.ph356 ], [ %i.hy, %._crit_edge354 ] ; 3 uses
  %i.et = phi ptr [ %i.cc, %.lr.ph356 ], [ %i.hz, %._crit_edge354 ] ; 2 uses
  %.1152355 = phi i32 [ 0, %.lr.ph356 ], [ %i.uy, %._crit_edge354 ] ; 2 uses
  %i.eu = icmp eq i32 %.1152355, 0
  %i.ev = select i1 %i.eu, double 7.250000e+00, double 6.250000e+00 ; 3 uses
  br i1 %i.cd, label %.lr.ph334, label %.preheader295

.lr.ph334:                                        ; preds = %bb.ab
  %i.ew = load ptr, ptr %i.ce, align 8, !tbaa !94 ; 5 uses
  %i.ex = load i64, ptr %i.cf, align 8, !tbaa !22 ; 5 uses
  %i.ey = load ptr, ptr %i.ch, align 8, !tbaa !94 ; 4 uses
  %i.ez = load i64, ptr %i.ci, align 8, !tbaa !22 ; 4 uses
  %scevgep487 = getelementptr i8, ptr %i.ey, i64 %i.dv
  %i.fa = mul i64 %i.dt, %i.ez
  %scevgep488 = getelementptr i8, ptr %scevgep487, i64 %i.fa ; 2 uses
  %scevgep489 = getelementptr i8, ptr %i.ew, i64 %i.dw
  %i.fb = getelementptr i8, ptr %i.ew, i64 %i.dw
  %scevgep491 = getelementptr i8, ptr %i.fb, i64 8
  %i.fc = mul i64 %i.dt, %i.ex
  %scevgep492 = getelementptr i8, ptr %scevgep491, i64 %i.fc
  %stride.check496 = icmp slt i64 %i.ez, 0
  %bound0497 = icmp ult ptr %i.ey, %scevgep492
  %bound1498 = icmp ult ptr %i.ew, %scevgep488
  %found.conflict499 = and i1 %bound0497, %bound1498
  %i.fd = or i64 %i.ex, %i.ez
  %i.fe = icmp slt i64 %i.fd, 0
  %i.ff = or i1 %found.conflict499, %i.fe
  %invariant.op = or i1 %stride.check496, %i.ff
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ev, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fg = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ac

.preheader295:                                    ; preds = %._crit_edge331, %bb.ab
  %i.fi = ptrtoint ptr %i.et to i64
  %i.fj = ptrtoint ptr %i.es to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = sdiv exact i64 %i.fk, 208
  %i.fm = trunc i64 %i.fl to i32                  ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph336, label %.preheader294

bb.ac:                                            ; preds = %.lr.ph334, %._crit_edge331
  %indvars.iv374 = phi i64 [ 0, %.lr.ph334 ], [ %indvars.iv.next375, %._crit_edge331 ] ; 4 uses
  %35 = add nuw i64 %indvars.iv374, 1
  %smin = call i64 @llvm.smin.i64(i64 %35, i64 %34)
  %i.fo = mul i64 %i.ex, %smin
  %scevgep490 = getelementptr i8, ptr %scevgep489, i64 %i.fo
  %i.fp = mul i64 %i.ex, %indvars.iv374
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fp ; 5 uses
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 3 uses
  %i.fr = trunc i64 %indvars.iv.next375 to i32
  %.sroa.speculated288 = call i32 @llvm.smin.i32(i32 %i.cg, i32 %i.fr)
  %36 = sext i32 %.sroa.speculated288 to i64
  %i.fs = mul i64 %i.ex, %36
  %i.ft = getelementptr i8, ptr %i.ew, i64 %i.fs  ; 4 uses
  %i.fu = mul i64 %i.ez, %indvars.iv374
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fu ; 3 uses
  br i1 %i.ck, label %.lr.ph330.preheader, label %._crit_edge331

.lr.ph330.preheader:                              ; preds = %bb.ac
  br i1 %min.iters.check504, label %.lr.ph330.preheader521, label %vector.memcheck486

vector.memcheck486:                               ; preds = %.lr.ph330.preheader
  %bound0493 = icmp ult ptr %i.ey, %scevgep490
  %bound1494 = icmp ult ptr %i.ft, %scevgep488
  %found.conflict495 = and i1 %bound0493, %bound1494
  %conflict.rdx502.reass = or i1 %found.conflict495, %invariant.op
  br i1 %conflict.rdx502.reass, label %.lr.ph330.preheader521, label %vector.body507

vector.body507:                                   ; preds = %vector.memcheck486, %vector.body507
  %index508 = phi i64 [ %index.next515, %vector.body507 ], [ 0, %vector.memcheck486 ] ; 5 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index508
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %wide.load509 = load <2 x double>, ptr %i.fx, align 8, !tbaa !71, !alias.scope !95
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index508
  %wide.load510 = load <2 x double>, ptr %i.fy, align 8, !tbaa !71, !alias.scope !95 ; 2 uses
  %i.fz = fsub <2 x double> %wide.load509, %wide.load510
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %index508 ; 2 uses
  %wide.vec511 = load <4 x double>, ptr %i.ga, align 8, !tbaa !71, !alias.scope !96, !noalias !97 ; 2 uses
  %strided.vec512 = shufflevector <4 x double> %wide.vec511, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec513 = shufflevector <4 x double> %wide.vec511, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.gb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %broadcast.splat, <2 x double> %strided.vec512) ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %index508
  %wide.load514 = load <2 x double>, ptr %i.gc, align 8, !tbaa !71, !alias.scope !98
  %i.gd = fsub <2 x double> %wide.load514, %wide.load510
  %i.ge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %broadcast.splat, <2 x double> %strided.vec513) ; 3 uses
  %i.gf = fmul <2 x double> %i.ge, %i.ge
  %i.gg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.gb, <2 x double> %i.gf)
  %i.gh = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gg) ; 2 uses
  %i.gi = fcmp olt <2 x double> %i.gh, splat (double 1.000000e+00)
  %i.gj = select <2 x i1> %i.gi, <2 x double> splat (double 1.000000e+00), <2 x double> %i.gh
  %i.gk = fdiv <2 x double> splat (double 1.000000e+00), %i.gj ; 2 uses
  %i.gl = fmul <2 x double> %i.gb, %i.gk
  %i.gm = fmul <2 x double> %i.ge, %i.gk
  %interleaved.vec = shufflevector <2 x double> %i.gl, <2 x double> %i.gm, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.ga, align 8, !tbaa !71, !alias.scope !96, !noalias !97
  %index.next515 = add nuw i64 %index508, 2       ; 2 uses
  %i.gn = icmp eq i64 %index.next515, %n.vec506
  br i1 %i.gn, label %middle.block516, label %vector.body507, !llvm.loop !33

middle.block516:                                  ; preds = %vector.body507
  br i1 %cmp.n, label %._crit_edge331, label %.lr.ph330.preheader521

.lr.ph330.preheader521:                           ; preds = %vector.memcheck486, %.lr.ph330.preheader, %middle.block516
  %indvars.iv369.ph = phi i64 [ 0, %vector.memcheck486 ], [ 0, %.lr.ph330.preheader ], [ %n.vec506, %middle.block516 ]
  br label %.lr.ph330

.lr.ph330:                                        ; preds = %.lr.ph330.preheader521, %.lr.ph330
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %.lr.ph330 ], [ %indvars.iv369.ph, %.lr.ph330.preheader521 ] ; 4 uses
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next370
  %i.gp = load double, ptr %i.go, align 8, !tbaa !71
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv369
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !71
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %indvars.iv369 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv369
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !71
  %i.gv = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %i.gu, i64 1
  %i.gx = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = fsub <2 x double> %i.gw, %i.gy
  %i.ha = load <2 x double>, ptr %i.gs, align 8, !tbaa !71
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.fh, <2 x double> %i.ha) ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.hb, %i.hb
  %i.hc = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.hd = extractelement <2 x double> %i.hb, i64 0 ; 2 uses
  %i.he = call double @llvm.fmuladd.f64(double %i.hd, double %i.hd, double %i.hc)
  %sqrt = call double @llvm.sqrt.f64(double %i.he) ; 2 uses
  %i.hf = fcmp olt double %sqrt, 1.000000e+00
  %.sroa.speculated283 = select i1 %i.hf, double 1.000000e+00, double %sqrt
  %i.hg = fdiv double 1.000000e+00, %.sroa.speculated283
  %i.hh = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = fmul <2 x double> %i.hb, %i.hi
  store <2 x double> %i.hj, ptr %i.gs, align 8, !tbaa !71
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count372
  br i1 %exitcond373.not, label %._crit_edge331, label %.lr.ph330, !llvm.loop !34

._crit_edge331:                                   ; preds = %.lr.ph330, %middle.block516, %bb.ac
  %.0149.lcssa.shrunk = phi i32 [ 0, %bb.ac ], [ %i.cj, %middle.block516 ], [ %i.cj, %.lr.ph330 ]
  %.0149.lcssa = zext i32 %.0149.lcssa.shrunk to i64 ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.0149.lcssa
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !71
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.0149.lcssa
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !71
  %i.ho = fsub double %i.hl, %i.hn
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %.0149.lcssa ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !102
  %i.hs = call double @llvm.fmuladd.f64(double %i.ho, double %i.ev, double %i.hr) ; 2 uses
  %i.ht = call noundef double @llvm.fabs.f64(double %i.hs) ; 2 uses
  %i.hu = fcmp olt double %i.ht, 1.000000e+00
  %.sroa.speculated281 = select i1 %i.hu, double 1.000000e+00, double %i.ht
  %i.hv = fdiv double 1.000000e+00, %.sroa.speculated281
  store double 0.000000e+00, ptr %i.hp, align 8, !tbaa !103
  %i.hw = fmul double %i.hs, %i.hv
  store double %i.hw, ptr %i.hq, align 8, !tbaa !102
  %exitcond378.not = icmp eq i64 %indvars.iv.next375, %wide.trip.count377
  br i1 %exitcond378.not, label %.preheader295, label %bb.ac, !llvm.loop !35

.preheader294.loopexit:                           ; preds = %bb.bu
  %i.hx = trunc i64 %i.ot to i32
  br label %.preheader294

.preheader294:                                    ; preds = %.preheader294.loopexit, %.preheader295
  %i.hy = phi ptr [ %i.es, %.preheader295 ], [ %i.jr, %.preheader294.loopexit ] ; 10 uses
  %i.hz = phi ptr [ %i.et, %.preheader295 ], [ %i.op, %.preheader294.loopexit ] ; 3 uses
  %.lcssa = phi i32 [ %i.fm, %.preheader295 ], [ %i.hx, %.preheader294.loopexit ] ; 4 uses
  br i1 %i.cd, label %.lr.ph353, label %._crit_edge354

.lr.ph353:                                        ; preds = %.preheader294
  %i.ia = load ptr, ptr %i.ce, align 8, !tbaa !94 ; 3 uses
  %i.ib = load i64, ptr %i.cf, align 8, !tbaa !22 ; 4 uses
  %i.ic = load ptr, ptr %i.ch, align 8, !tbaa !94 ; 5 uses
  %i.id = load i64, ptr %i.ci, align 8, !tbaa !22 ; 5 uses
  %i.ie = icmp sgt i32 %.lcssa, 0                 ; 2 uses
  %wide.trip.count385 = zext i32 %.lcssa to i64   ; 5 uses
  %scevgep = getelementptr i8, ptr %i.ia, i64 8   ; 2 uses
  %scevgep473 = getelementptr i8, ptr %i.ia, i64 %i.ds
  %i.if = mul i64 %i.dt, %i.ib
  %scevgep474 = getelementptr i8, ptr %scevgep473, i64 %i.if ; 2 uses
  %scevgep475 = getelementptr i8, ptr %i.ic, i64 24
  %scevgep477 = getelementptr i8, ptr %i.ic, i64 %i.du ; 2 uses
  %i.ig = mul i64 %i.dt, %i.id
  %scevgep479 = getelementptr i8, ptr %scevgep477, i64 %i.ig
  %i.ih = add nsw i64 %wide.trip.count385, -1     ; 2 uses
  %xtraiter = and i64 %wide.trip.count385, 1
  %i.ii = icmp eq i64 %i.ih, 0
  %unroll_iter = and i64 %wide.trip.count385, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod541 = trunc i32 %.lcssa to i1
  %stride.check = icmp slt i64 %i.ib, 0
  %bound0480 = icmp ult ptr %scevgep, %scevgep479
  %bound1481 = icmp ult ptr %i.ic, %scevgep474
  %found.conflict482 = and i1 %bound0480, %bound1481
  %i.ij = or i64 %i.id, %i.ib
  %i.ik = icmp slt i64 %i.ij, 0
  %i.il = or i1 %found.conflict482, %i.ik
  %invariant.op566 = or i1 %stride.check, %i.il
  %xtraiter542 = and i64 %wide.trip.count385, 1
  %i.im = icmp eq i64 %i.ih, 0
  %unroll_iter546 = and i64 %wide.trip.count385, 2147483646
  %lcmp.mod543.not = icmp eq i64 %xtraiter542, 0
  %lcmp.mod545 = trunc i32 %.lcssa to i1
  br label %bb.cb

.lr.ph336:                                        ; preds = %.preheader295, %bb.bu
  %indvars.iv379 = phi i64 [ %indvars.iv.next380, %bb.bu ], [ 0, %.preheader295 ] ; 4 uses
  %i.in = phi ptr [ %i.jr, %bb.bu ], [ %i.es, %.preheader295 ]
  %i.io = getelementptr inbounds nuw [208 x i8], ptr %i.in, i64 %indvars.iv379 ; 4 uses
  %i.ip = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.io)
          to label %.noexc218 unwind label %.loopexit296

.noexc218:                                        ; preds = %.lr.ph336
  br i1 %i.ip, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.noexc218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %22, i8 0, i64 40, i1 false), !alias.scope !104
  br label %_ZN2cv4Mat_IdE5beginEv.exit

bb.ae:                                            ; preds = %.noexc218
  store ptr %i.io, ptr %22, align 8, !tbaa !106
  %i.iq = load i32, ptr %i.io, align 8, !tbaa !93 ; 3 uses
  %i.ir = lshr i32 %i.iq, 5
  %i.is = and i32 %i.ir, 127
  %i.it = add nuw nsw i32 %i.is, 1
  %i.iu = shl i32 %i.iq, 2
  %i.iv = and i32 %i.iu, 124
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = lshr i64 1275511473185297, %i.iw
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = and i32 %i.iy, 15
  %i.ja = mul nuw nsw i32 %i.iz, %i.it
  %i.jb = zext nneg i32 %i.ja to i64
  store i64 %i.jb, ptr %i.cl, align 8, !tbaa !107
  %i.jc = and i32 %i.iq, 16384
  %.not.i = icmp eq i32 %i.jc, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jd = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.io)
          to label %.noexc238 unwind label %.loopexit296

.noexc238:                                        ; preds = %bb.af
  br i1 %i.jd, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %.noexc238
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc239 unwind label %.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_ZN2cv12denoise_TVL1ERKSt6vectorINS_3MatESaIS1_EERS1_di:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn207.pn.pn = phi { ptr, i32 } [ %.pn207.pn, %bb.ck ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn207.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !122
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.d, ptr %i.a, align 8, !tbaa !22
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !14
  %i.g = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.g, ptr %i.b, align 8, !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.i, ptr %i.h, align 1, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !123
  %i.l = load ptr, ptr %0, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #13
  ret void
}

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, double noundef, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare void @_ZN2cv3minERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN2cv3maxERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv4Mat_IdEESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #13
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !19
  br label %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #15
  br label %_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv4Mat_IdEES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare void @_ZN2cv16MatConstIterator4seekEPKib(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2cv16MatConstIterator4seekElb(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !16}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !12, i64 8, !5, i64 16}
!14 = !{!13, !10, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"p1 _ZTSN2cv4Mat_IdEE", !9, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN2cv4Mat_IdEESaIS2_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 0}
!20 = !{!18, !17, i64 8}
!21 = !{!18, !17, i64 16}
!22 = !{!12, !12, i64 0}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!25 = distinct !{!25, !24, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!26 = distinct !{!26, !16}
!27 = distinct !{null}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !16, !99, !100}
!34 = distinct !{!34, !16, !99}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !"_ZN2cv4Mat_IdE5beginEv"}
!37 = distinct !{!37, !36, !"_ZN2cv4Mat_IdE5beginEv: argument 0"}
!38 = distinct !{!38, !"_ZN2cv3Mat5beginIdEENS_12MatIterator_IT_EEv"}
!39 = distinct !{!39, !38, !"_ZN2cv3Mat5beginIdEENS_12MatIterator_IT_EEv: argument 0"}
!40 = distinct !{!40, !"_ZN2cv4Mat_IdE3endEv"}
!41 = distinct !{!41, !40, !"_ZN2cv4Mat_IdE3endEv: argument 0"}
!42 = distinct !{!42, !"_ZN2cv3Mat3endIdEENS_12MatIterator_IT_EEv"}
!43 = distinct !{!43, !42, !"_ZN2cv3Mat3endIdEENS_12MatIterator_IT_EEv: argument 0"}
!44 = distinct !{!44, !"_ZNK2cv3Mat5beginIhEENS_17MatConstIterator_IT_EEv"}
!45 = distinct !{!45, !44, !"_ZNK2cv3Mat5beginIhEENS_17MatConstIterator_IT_EEv: argument 0"}
!46 = distinct !{!46, !"_ZN2cv4Mat_IdE5beginEv"}
!47 = distinct !{!47, !46, !"_ZN2cv4Mat_IdE5beginEv: argument 0"}
!48 = distinct !{!48, !"_ZN2cv3Mat5beginIdEENS_12MatIterator_IT_EEv"}
!49 = distinct !{!49, !48, !"_ZN2cv3Mat5beginIdEENS_12MatIterator_IT_EEv: argument 0"}
!50 = distinct !{!50, !"_ZSt9transformIN2cv12MatIterator_IdEENS0_17MatConstIterator_IhEES2_NS0_20AddFloatToCharScaledEET1_T_S7_T0_S6_T2_"}
!51 = distinct !{!51, !50, !"_ZSt9transformIN2cv12MatIterator_IdEENS0_17MatConstIterator_IhEES2_NS0_20AddFloatToCharScaledEET1_T_S7_T0_S6_T2_: argument 0"}
!52 = distinct !{!52, !16}
!53 = distinct !{null}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !16, !99, !100}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16, !99}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = !{!"p1 _ZTSN2cv3MatE", !9, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!67, !66, i64 8}
!69 = !{!67, !66, i64 0}
!70 = !{!"double", !5, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"p1 _ZTSN2cv12MatAllocatorE", !9, i64 0}
!73 = !{!"p1 _ZTSN2cv8UMatDataE", !9, i64 0}
!74 = !{!"_ZTSN2cv10DataLayoutE", !5, i64 0}
!75 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !74, i64 4, !6, i64 8, !5, i64 12}
!76 = !{!"_ZTSN2cv7MatStepE", !5, i64 0}
!77 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !72, i64 56, !73, i64 64, !75, i64 72, !76, i64 128}
!78 = !{!77, !6, i64 8}
!79 = !{!77, !6, i64 12}
!80 = !{!"p1 _ZTSN2cv5MatOpE", !9, i64 0}
!81 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !5, i64 0}
!82 = !{!"_ZTSN2cv3VecIdLi4EEE", !81, i64 0}
!83 = !{!"_ZTSN2cv7Scalar_IdEE", !82, i64 0}
!84 = !{!"_ZTSN2cv7MatExprE", !80, i64 0, !6, i64 8, !77, i64 16, !77, i64 224, !77, i64 432, !70, i64 640, !70, i64 648, !83, i64 656}
!85 = !{!84, !80, i64 0}
!86 = !{!25}
!87 = !{!"vtable pointer", !4, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!90 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !9, i64 8, !89, i64 16}
!91 = !{!90, !6, i64 0}
!92 = !{!90, !9, i64 8}
!93 = !{!77, !6, i64 0}
!94 = !{!77, !10, i64 24}
!95 = !{!30}
!96 = !{!31}
!97 = !{!32, !30}
!98 = !{!32}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = !{!"_ZTSN2cv6Point_IdEE", !70, i64 0, !70, i64 8}
!102 = !{!101, !70, i64 8}
!103 = !{!101, !70, i64 0}
!104 = !{!39, !37}
!105 = !{!"_ZTSN2cv16MatConstIteratorE", !66, i64 0, !12, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!106 = !{!105, !66, i64 0}
!107 = !{!105, !12, i64 8}
!108 = !{!105, !10, i64 24}
!109 = !{!105, !10, i64 32}
!110 = !{!43, !41}
!111 = !{!105, !10, i64 16}
!112 = !{!45}
!113 = !{!49, !47}
!114 = !{!51}
!115 = !{!89, !6, i64 0}
!116 = !{!89, !6, i64 4}
!117 = !{!77, !6, i64 4}
!118 = !{!57}
!119 = !{!59, !58}
!120 = !{!58}
!121 = !{!59}
!122 = !{!11, !10, i64 0}
!123 = !{!13, !12, i64 8}
end_hunk_1
