Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/samplers?download=true
begin_hunk_0_@_ZN4pbrt14PMJ02BNSamplerC2EiiN4pstd3pmr21polymorphic_allocatorISt4byteEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44: ; preds = %bb.h
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !75, !alias.scope !195
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #28
  br label %common.resume

_ZN4pbrt12StringPrintfIJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.g
  %i.ag = load ptr, ptr %4, align 8, !tbaa !88
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.ag)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.ah = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.z
  br i1 %i.ai, label %_ZN4pbrt5ErrorIJRKiEEEvPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.i
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !75
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #28
  br label %_ZN4pbrt5ErrorIJRKiEEEvPKcDpOT_.exit

bb.j:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.z
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.j
  %i.ao = load i64, ptr %i.z, align 8, !tbaa !75
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume

_ZN4pbrt5ErrorIJRKiEEEvPKcDpOT_.exit:             ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.k

bb.k:                                             ; preds = %_ZN4pbrt5ErrorIJRKiEEEvPKcDpOT_.exit, %bb.f
  %i.aq = sub nuw nsw i32 32, %.lhs.trunc.i.i
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = select i1 %i.g, i32 %1, i32 %i.ar
  %i.at = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.as, i1 true)
  %.lhs.trunc.i = lshr i32 %i.at, 1
  %.zext.i = xor i32 %.lhs.trunc.i, 15
  %i.au = sub nsw i32 8, %.zext.i                 ; 2 uses
  %i.av = shl nuw nsw i32 1, %i.au                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !198
  %i.ax = shl i32 %i.av, %i.au
  %i.ay = mul i32 %i.ax, %1                       ; 5 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 32, i64 noundef 8), !inline_history !199 ; 6 uses
  %i.bd = sext i32 %i.ay to i64                   ; 5 uses
  %i.be = ptrtoint ptr %3 to i64
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !200
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.ay, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  br i1 %.not.i.not.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit, label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt6Point2IfEEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt6Point2IfEEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.k
  %i.bi = shl nsw i64 %i.bd, 3
  %i.bj = load ptr, ptr %3, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.bi, i64 noundef 4), !inline_history !202 ; 2 uses
  %.pr.i.i.i.i = load i64, ptr %i.bh, align 8, !tbaa !203
  %.not13.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt6Point2IfEEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bn = load i64, ptr %i.bg, align 8, !tbaa !208
  %i.bo = shl i64 %i.bn, 3
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !209 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull %.pr.i.i.i, i64 noundef %i.bo, i64 noundef 4), !inline_history !210
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt6Point2IfEEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt6Point2IfEEE15allocate_objectIS4_EEPT_m.exit.i.i.i.i.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i.i.i.i.i
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i.i.i
  %i.bw = load i64, ptr %i.bv, align 4
  store i64 %i.bw, ptr %i.bt, align 4
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.bx = load i64, ptr %i.bh, align 8, !tbaa !203
  %i.by = icmp ugt i64 %i.bx, %indvars.iv.next.i.i.i.i.i
  br i1 %i.by, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !211

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  store i64 %i.bd, ptr %i.bg, align 8, !tbaa !208
  store ptr %i.bm, ptr %i.bf, align 8, !tbaa !207
  %xtraiter = and i64 %i.bd, 7
  %i.bz = icmp ult i32 %i.ay, 8
  br i1 %i.bz, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter = and i64 %i.bd, -8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i.new
  %.012.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %i.cx, %.lr.ph.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  %i.ca = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.012.i.i.i.i
  store i64 0, ptr %i.cb, align 4
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.012.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 0, ptr %i.ce, align 4
  %i.cf = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.012.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 0, ptr %i.ch, align 4
  %i.ci = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.012.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 0, ptr %i.ck, align 4
  %i.cl = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.012.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store i64 0, ptr %i.cn, align 4
  %i.co = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.012.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store i64 0, ptr %i.cq, align 4
  %i.cr = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.012.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store i64 0, ptr %i.ct, align 4
  %i.cu = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.012.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  store i64 0, ptr %i.cw, align 4
  %i.cx = add nuw i64 %.012.i.i.i.i, 8            ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !212

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %i.cy = and i32 %i.ay, 7
  %lcmp.mod.not = icmp eq i32 %i.cy, 0
  br i1 %lcmp.mod.not, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i
  %.012.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %i.cx, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit.loopexit.unr-lcssa ]
  %i.cz = and i32 %i.ay, 7
  %lcmp.mod122 = icmp ne i32 %i.cz, 0
  call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.012.i.i.i.i.epil = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.epil ], [ %.012.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.da = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.012.i.i.i.i.epil
  store i64 0, ptr %i.db, align 4
  %i.dc = add nuw i64 %.012.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit, label %.lr.ph.i.i.i.i.epil, !llvm.loop !213

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.k
  store i64 %i.bd, ptr %i.bh, align 8, !tbaa !203
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bc, ptr %i.dd, align 8, !tbaa !215
  %i.de = load i32, ptr %i.aw, align 8, !tbaa !198 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit
  %i.df = mul nsw i32 %i.de, %i.de
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = shl nuw nsw i64 %i.dg, 2                ; 3 uses
  %i.di = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #30 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.di, i8 0, i64 %i.dh, i1 false), !tbaa !33
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  %i.dl = ptrtoint ptr %i.dj to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit
  %.sroa.17.0 = phi i64 [ 0, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit ], [ %i.dl, %.noexc ] ; 2 uses
  %.sroa.083.0 = phi ptr [ null, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit ], [ %i.di, %.noexc ] ; 7 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectINS_6vectorIN4pbrt6Point2IfEENS1_IS8_EEEEJRiRS3_EEEPT_DpOT0_.exit ], [ %i.dk, %.noexc ] ; 2 uses
  br label %bb.m

.preheader100:                                    ; preds = %bb.w
  %i.dm = ptrtoint ptr %.sroa.083.0 to i64        ; 2 uses
  %.not104 = icmp eq ptr %.0.i.i.i.i.i.i.i, %.sroa.083.0
  br i1 %.not104, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader100
  %i.dn = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.do = sub i64 %i.dn, %i.dm
  %i.dp = ashr exact i64 %i.do, 2
  br label %.lr.ph

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %bb.w
  %indvars.iv = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZN4pbrt14pmj02bnSamplesE, i64 %indvars.iv
  %i.dr = load i32, ptr %i.aw, align 8, !tbaa !198 ; 2 uses
  %i.ds = sitofp i32 %i.dr to float
  %i.dt = load <2 x i32>, ptr %i.dq, align 8, !tbaa !33
  %i.du = uitofp <2 x i32> %i.dt to <2 x double>
  %i.dv = fmul nnan <2 x double> %i.du, splat (double f0x3DF0000000000000)
  %i.dw = fptrunc nnan <2 x double> %i.dv to <2 x float>
  %i.dx = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dy, %i.dw           ; 4 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = fptosi float %i.ea to i32
  %i.ec = extractelement <2 x float> %i.dz, i64 1
  %i.ed = fptosi float %i.ec to i32
  %i.ee = mul nsw i32 %i.dr, %i.ed
  %i.ef = add nsw i32 %i.ee, %i.eb                ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.083.0, i64 %i.eg ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !33 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, %1
  br i1 %i.ej, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  br i1 %i.g, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4pbrt8LogFatalIJRA29_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 194, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(29) @.str.20) #27
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.r:                                             ; preds = %bb.m
  %i.el = mul nsw i32 %i.ef, %1
  %i.em = add nsw i32 %i.el, %i.ei
  %i.en = load ptr, ptr %i.dd, align 8, !tbaa !215
  %i.eo = sext i32 %i.em to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !207
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eo ; 3 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !216
  %i.et = fcmp oeq float %i.es, 0.000000e+00
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ev = load float, ptr %i.eu, align 4
  %i.ew = fcmp oeq float %i.ev, 0.000000e+00
  %i.ex = select i1 %i.et, i1 %i.ew, i1 false
  br i1 %i.ex, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4pbrt8LogFatalIJRA47_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 198, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(47) @.str.21) #27
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.v:                                             ; preds = %bb.r
  %i.ez = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.dz)
  %i.fa = fsub <2 x float> %i.dz, %i.ez
  store <2 x float> %i.fa, ptr %i.er, align 4
  %i.fb = load i32, ptr %i.eh, align 4, !tbaa !33
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.eh, align 4, !tbaa !33
  br label %bb.w

bb.w:                                             ; preds = %bb.n, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65536
  br i1 %exitcond.not, label %.preheader100, label %bb.m, !llvm.loop !218

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aa
  %indvars.iv106 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next107, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.083.0, i64 %indvars.iv106
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !33 ; 2 uses
  store i32 %i.fe, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 %1, ptr %i.b, align 4, !tbaa !33
  %i.ff = icmp eq i32 %i.fe, %1
  br i1 %i.ff, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  invoke void @_ZN4pbrt8LogFatalIJRA11_KcRA16_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 204, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(11) @.str.23, ptr noundef nonnull align 1 dereferenceable(16) @.str.24, ptr noundef nonnull align 1 dereferenceable(11) @.str.23, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(16) @.str.24, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #27
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.thread

bb.aa:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %indvars.iv.next107 = add nuw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, %i.dp
  br i1 %exitcond109.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph, !llvm.loop !219

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.aa, %.preheader100
  %i.fh = sub i64 %.sroa.17.0, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0, i64 noundef %i.fh) #28
  ret void

.thread:                                          ; preds = %bb.q, %bb.z, %bb.u
  %.pn39.pn.pn98 = phi { ptr, i32 } [ %i.ek, %bb.q ], [ %i.ey, %bb.u ], [ %i.fg, %bb.z ]
  %i.fi = ptrtoint ptr %.sroa.083.0 to i64
  %i.fj = sub i64 %.sroa.17.0, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0, i64 noundef %i.fj) #28
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA29_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(29) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !69, !alias.scope !220
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !73, !alias.scope !220
  store i8 0, ptr %i.a, align 8, !tbaa !75, !alias.scope !220
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA29_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(29) %4)
          to label %_ZN4pbrt12StringPrintfIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !88, !alias.scope !220 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !75, !alias.scope !220
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !88
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !88     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !75
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA47_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(47) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a
.body38.sink.split:                               ; preds = %bb.s, %bb.o
  %.sink = phi ptr [ %i.bu, %bb.o ], [ %i.dj, %bb.s ]
  %.pn22.ph = phi { ptr, i32 } [ %i.bt, %bb.o ], [ %i.di, %bb.s ]
  %i.dl = load i64, ptr %i.bl, align 8, !tbaa !75
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dm) #28
  br label %.body38

.body38:                                          ; preds = %.body38.sink.split, %bb.s, %bb.o
  %.pn22 = phi { ptr, i32 } [ %i.bt, %bb.o ], [ %i.di, %bb.s ], [ %.pn22.ph, %.body38.sink.split ] ; 2 uses
  %i.dn = load ptr, ptr %7, align 8, !tbaa !88    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.aq
  br i1 %i.do, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body38, %bb.l
  %.sink111 = phi ptr [ %i.be, %bb.l ], [ %i.dn, %.body38 ]
  %.pn22.pn.ph = phi { ptr, i32 } [ %i.bd, %bb.l ], [ %.pn22, %.body38 ]
  %i.dp = load i64, ptr %i.aq, align 8, !tbaa !75
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %.sink111, i64 noundef %i.dq) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body38, %bb.l
  %.pn22.pn = phi { ptr, i32 } [ %i.bd, %bb.l ], [ %.pn22, %.body38 ], [ %.pn22.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.t

bb.t:                                             ; preds = %.body, %bb.r
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %.body ], [ %i.dh, %bb.r ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn, %bb.t ], [ %i.dg, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ad

bb.v:                                             ; preds = %bb.h
  %i.dr = icmp eq i64 %i.g, 0
  br i1 %i.dr, label %.invoke, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.ds = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %i.dt = load float, ptr %2, align 4, !tbaa !295, !noalias !1443
  %i.du = fpext float %i.dt to double
  %i.dv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.ds, double noundef %i.du) #29, !noalias !1443
  %i.dw = add nsw i32 %i.dv, 1
  %i.dx = sext i32 %i.dw to i64                   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.dy, ptr %8, align 8, !tbaa !69, !alias.scope !1443
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.dz, align 8, !tbaa !73, !alias.scope !1443
  store i8 0, ptr %i.dy, align 8, !tbaa !75, !alias.scope !1443
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.dx, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i59 unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i59: ; preds = %bb.w
  %i.ea = load ptr, ptr %8, align 8, !tbaa !88, !alias.scope !1443
  %i.eb = load float, ptr %2, align 4, !tbaa !295, !noalias !1443
  %i.ec = fpext float %i.eb to double
  %i.ed = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ea, i64 noundef %i.dx, ptr noundef %i.ds, double noundef %i.ec) #29 ; 0 uses
  %i.ee = load i64, ptr %i.dz, align 8, !tbaa !73, !alias.scope !1443
  %i.ef = add i64 %i.ee, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.ef, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIRKfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_.exit unwind label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i59
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #31
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %8, align 8, !tbaa !88, !alias.scope !1443 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.dy
  br i1 %i.ek, label %.body60, label %.body60.sink.split

_ZN4pbrt6detail9formatOneIRKfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i59
  %i.el = load i64, ptr %i.dz, align 8, !tbaa !73 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !73
  %i.eo = sub i64 4611686018427387903, %i.en
  %i.ep = icmp ult i64 %i.eo, %i.el
  br i1 %i.ep, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i62

bb.z:                                             ; preds = %_ZN4pbrt6detail9formatOneIRKfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #27
          to label %.noexc63 unwind label %bb.aa

.noexc63:                                         ; preds = %bb.z
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i62: ; preds = %_ZN4pbrt6detail9formatOneIRKfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS6_.exit
  %i.eq = load ptr, ptr %8, align 8, !tbaa !88
  %i.er = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.eq, i64 noundef %i.el)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit65 unwind label %bb.aa ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i62
  %i.es = load ptr, ptr %8, align 8, !tbaa !88    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.dy
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit65
  %i.eu = load i64, ptr %i.dy, align 8, !tbaa !75
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i62, %bb.z
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %8, align 8, !tbaa !88    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.dy
  br i1 %i.ey, label %.body60, label %.body60.sink.split

.body60.sink.split:                               ; preds = %bb.aa, %bb.y
  %.sink114 = phi ptr [ %i.ej, %bb.y ], [ %i.ex, %bb.aa ]
  %.pn.ph = phi { ptr, i32 } [ %i.ei, %bb.y ], [ %i.ew, %bb.aa ]
  %i.ez = load i64, ptr %i.dy, align 8, !tbaa !75
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %.sink114, i64 noundef %i.fa) #28
  br label %.body60

.body60:                                          ; preds = %.body60.sink.split, %bb.aa, %bb.y
  %.pn = phi { ptr, i32 } [ %i.ei, %bb.y ], [ %i.ew, %bb.aa ], [ %.pn.ph, %.body60.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.ad

.invoke:                                          ; preds = %bb.a, %bb.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80
  %i.fb = phi i32 [ 257, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80 ], [ 266, %bb.v ], [ 229, %bb.a ]
  %i.fc = phi ptr [ @.str.54, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80 ], [ @.str.55, %bb.v ], [ @.str.53, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.52, i32 noundef %i.fb, ptr noundef nonnull %i.fc) #27
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.ab:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !316
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.fd)
          to label %bb.ac unwind label %bb.b

bb.ac:                                            ; preds = %bb.ab
  %i.fe = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ac
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !75
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.ad:                                            ; preds = %.body60, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.b
  %.pn29 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %.pn22.pn.pn.pn, %bb.u ], [ %.pn, %.body60 ]
  %i.fj = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.ad
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !75
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !562  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !305    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !311
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !295
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !295
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !562
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #27
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #30 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !295
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !295
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #28
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !305
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !562
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !311
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !316
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.c, ptr noundef %0)
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 42, i64 noundef 0) #29
  %.not = icmp eq i64 %i.d, -1
  %i.e = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 115, i64 noundef 0) #29
  %.not16 = icmp eq i64 %i.e, -1
  %i.f = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 100, i64 noundef 0) #29
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.not17 = icmp eq i64 %i.f, -1
  br i1 %.not17, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not16, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !73
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.n ; 0 uses

_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.m = load ptr, ptr %3, align 8, !tbaa !88     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !69, !alias.scope !1452
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !73, !alias.scope !1452
  store i8 0, ptr %i.n, align 8, !tbaa !75, !alias.scope !1452
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !324, !noalias !1452 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1452 ; 2 uses
  %i.t = icmp ugt ptr %i.q, %i.s
  %.08.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.s ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !328, !noalias !1452 ; 2 uses
  %i.w = ptrtoint ptr %.08.i.i.i to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.v, i64 noundef %i.y)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %6, align 8, !tbaa !88, !alias.scope !1452 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZN4pbrt6detaillsERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.ae = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.m, ptr noundef %i.ae) #29, !noalias !1453
  %i.ag = add nsw i32 %i.af, 1
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ai, ptr %5, align 8, !tbaa !69, !alias.scope !1453
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !73, !alias.scope !1453
  store i8 0, ptr %i.ai, align 8, !tbaa !75, !alias.scope !1453
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ah, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ak = load ptr, ptr %5, align 8, !tbaa !88, !alias.scope !1453
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ak, i64 noundef %i.ah, ptr noundef %i.m, ptr noundef %i.ae) #29 ; 0 uses
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !73, !alias.scope !1453
  %i.an = add i64 %i.am, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.an, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #31
  unreachable

bb.k:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !88, !alias.scope !1453 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ai
  br i1 %i.as, label %.body26, label %.body26.sink.split

_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.at = load i64, ptr %i.aj, align 8, !tbaa !73 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !73
  %i.aw = sub i64 4611686018427387903, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.at
  br i1 %i.ax, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #27
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  %i.ay = load ptr, ptr %5, align 8, !tbaa !88
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ay, i64 noundef %i.at)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.o ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ba = load ptr, ptr %5, align 8, !tbaa !88    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ai
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bc = load i64, ptr %i.ai, align 8, !tbaa !75
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.be = load ptr, ptr %6, align 8, !tbaa !88    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.n
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.n, align 8, !tbaa !75
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bi = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bi, ptr %4, align 8, !tbaa !18
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %4, i64 %i.bl
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !18
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bn, ptr %i.h, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bo, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !88 ; 2 uses
end_hunk_1
