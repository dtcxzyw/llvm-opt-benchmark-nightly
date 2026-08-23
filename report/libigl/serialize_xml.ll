Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/serialize_xml?download=true
inline.NumInlined: 765
inline.NumDeleted: 331
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNSt6localeD1Ev
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare void @_ZN8tinyxml27XMLNode11DeleteChildEPS0_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl9serializeISt6vectorIfSaIfEEEEbRKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS1_IcSB_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !111    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111  ; 4 uses
  %.not5.i.i = icmp eq ptr %i.b, %i.d             ; 2 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = ptrtoaddr ptr %i.b to i64
  %reass.sub.i = sub i64 %i.e, %i.f
  %i.g = and i64 %reass.sub.i, -4
  %i.h = add i64 %i.g, 8
  %.0.lcssa.i.i = select i1 %.not5.i.i, i64 8, i64 %i.h ; 10 uses
  %i.i = icmp slt i64 %.0.lcssa.i.i, 0
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #26
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp ne i64 %.0.lcssa.i.i, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.lcssa.i.i) #28 ; 7 uses
  store i8 0, ptr %i.j, align 1, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = add nsw i64 %.0.lcssa.i.i, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 0, i64 %i.l, i1 false)
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  store i64 %i.p, ptr %i.j, align 1
  br i1 %.not5.i.i, label %_ZN3igl13serialization9serializeIfSaIfEEEvRKSt6vectorIT_T0_ERS3_IcSaIcEERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i9.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.q, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.010.015.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.b, %.lr.ph.i.preheader ] ; 5 uses
  %i.r = load i8, ptr %.sroa.010.015.i, align 1, !tbaa !42
  store i8 %i.r, ptr %.sroa.0.0.copyload.i9.i, align 1, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 1
  %i.u = load i8, ptr %i.s, align 1, !tbaa !42
  store i8 %i.u, ptr %i.t, align 1, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 2
  %i.x = load i8, ptr %i.v, align 1, !tbaa !42
  store i8 %i.x, ptr %i.w, align 1, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 3
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !42
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.d
  br i1 %.not.i, label %_ZN3igl13serialization9serializeIfSaIfEEEvRKSt6vectorIT_T0_ERS3_IcSaIcEERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %.lr.ph.i

_ZN3igl13serialization9serializeIfSaIfEEEvRKSt6vectorIT_T0_ERS3_IcSaIcEERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 17, ptr %i.a, align 8, !tbaa !41
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %bb.d   ; 2 uses

.noexc32:                                         ; preds = %_ZN3igl13serialization9serializeIfSaIfEEEvRKSt6vectorIT_T0_ERS3_IcSaIcEERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit
  store ptr %i.ae, ptr %3, align 8, !tbaa !35
  %i.af = load i64, ptr %i.a, align 8, !tbaa !41  ; 3 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ae, ptr noundef nonnull align 1 dereferenceable(17) @_ZTSSt6vectorIfSaIfEE, i64 17, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !43
  %i.ah = load ptr, ptr %3, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !43
  %i.al = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !84
  %i.ao = load ptr, ptr %2, align 8, !tbaa !82
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = add nuw i64 %.0.lcssa.i.i, 24
  %i.at = add i64 %i.as, %i.ak
  %i.au = add i64 %i.at, %i.al
  %i.av = add i64 %i.au, %i.ar
  invoke void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.av)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %.noexc32
  %i.aw = load ptr, ptr %2, align 8, !tbaa !112   ; 2 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ar ; 2 uses
  %i.az = load i64, ptr %i.aj, align 8, !tbaa !43
  store i64 %i.az, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 7 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !35    ; 8 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64              ; 2 uses
  %i.bd = load i64, ptr %i.aj, align 8, !tbaa !43 ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  %.not14.i34 = icmp samesign eq i64 %i.bd, 0
  br i1 %.not14.i34, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.bd, 4
  br i1 %min.iters.check, label %.lr.ph.i35.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bf = add i64 %i.ax, %i.ap
  %i.bg = add i64 %i.aq, %i.bc
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = add i64 %i.bh, 7
  %diff.check = icmp ult i64 %i.bi, 31
  br i1 %diff.check, label %.lr.ph.i35.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check77 = icmp ult i64 %i.bd, 32
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %i.bd, 28
  %n.vec = and i64 %i.bd, -32                     ; 5 uses
  %i.bk = getelementptr i8, ptr %i.ba, i64 %n.vec ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bb, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ba, i64 %index ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.bb, i64 %index ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep78, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep78, align 1, !tbaa !42
  %wide.load79 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !42
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !42
  store <16 x i8> %wide.load79, ptr %i.bn, align 1, !tbaa !42
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i35.preheader, label %vec.epilog.ph, !prof !116

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec81 = and i64 %i.bd, -4                    ; 4 uses
  %i.bp = getelementptr i8, ptr %i.ba, i64 %n.vec81 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bb, i64 %n.vec81
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 3 uses
  %next.gep83 = getelementptr i8, ptr %i.ba, i64 %index82
  %next.gep84 = getelementptr i8, ptr %i.bb, i64 %index82
  %wide.load85 = load <4 x i8>, ptr %next.gep84, align 1, !tbaa !42
  store <4 x i8> %wide.load85, ptr %next.gep83, align 1, !tbaa !42
  %index.next86 = add nuw i64 %index82, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next86, %n.vec81
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n87 = icmp eq i64 %i.bd, %n.vec81
  br i1 %cmp.n87, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.0.copyload.i9.i36.ph = phi ptr [ %i.ba, %iter.check ], [ %i.ba, %vector.memcheck ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.010.015.i37.ph = phi ptr [ %i.bb, %iter.check ], [ %i.bb, %vector.memcheck ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ] ; 3 uses
  %i.bs = add i64 %i.bd, %i.bc                    ; 2 uses
  %.sroa.010.015.i37.ph126 = ptrtoaddr ptr %.sroa.010.015.i37.ph to i64 ; 2 uses
  %i.bt = sub i64 %i.bs, %.sroa.010.015.i37.ph126
  %xtraiter = and i64 %i.bt, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i35.prol.loopexit, label %.lr.ph.i35.prol

.lr.ph.i35.prol:                                  ; preds = %.lr.ph.i35.preheader, %.lr.ph.i35.prol
  %.sroa.0.0.copyload.i9.i36.prol = phi ptr [ %5, %.lr.ph.i35.prol ], [ %.sroa.0.0.copyload.i9.i36.ph, %.lr.ph.i35.preheader ] ; 2 uses
  %.sroa.010.015.i37.prol = phi ptr [ %i.bu, %.lr.ph.i35.prol ], [ %.sroa.010.015.i37.ph, %.lr.ph.i35.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i35.prol ], [ 0, %.lr.ph.i35.preheader ]
  %4 = load i8, ptr %.sroa.010.015.i37.prol, align 1, !tbaa !42
  store i8 %4, ptr %.sroa.0.0.copyload.i9.i36.prol, align 1, !tbaa !42
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i36.prol, i64 1 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i37.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i35.prol.loopexit, label %.lr.ph.i35.prol, !llvm.loop !118

.lr.ph.i35.prol.loopexit:                         ; preds = %.lr.ph.i35.prol, %.lr.ph.i35.preheader
  %.lcssa125.unr = phi ptr [ poison, %.lr.ph.i35.preheader ], [ %5, %.lr.ph.i35.prol ]
  %.sroa.0.0.copyload.i9.i36.unr = phi ptr [ %.sroa.0.0.copyload.i9.i36.ph, %.lr.ph.i35.preheader ], [ %5, %.lr.ph.i35.prol ]
  %.sroa.010.015.i37.unr = phi ptr [ %.sroa.010.015.i37.ph, %.lr.ph.i35.preheader ], [ %i.bu, %.lr.ph.i35.prol ]
  %i.bv = sub i64 %.sroa.010.015.i37.ph126, %i.bs
  %i.bw = icmp ugt i64 %i.bv, -8
  br i1 %i.bw, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35
  %.sroa.0.0.copyload.i9.i36 = phi ptr [ %6, %.lr.ph.i35 ], [ %.sroa.0.0.copyload.i9.i36.unr, %.lr.ph.i35.prol.loopexit ] ; 9 uses
  %.sroa.010.015.i37 = phi ptr [ %i.ct, %.lr.ph.i35 ], [ %.sroa.010.015.i37.unr, %.lr.ph.i35.prol.loopexit ] ; 9 uses
  %i.bx = load i8, ptr %.sroa.010.015.i37, align 1, !tbaa !42
  store i8 %i.bx, ptr %.sroa.0.0.copyload.i9.i36, align 1, !tbaa !42
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i36, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i37, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !42
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i36, i64 2
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i37, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !42
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !42
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i36, i64 3
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i37, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !42
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !42
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i36, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i37, i64 4
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !42
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !42
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i36, i64 5
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i37, i64 5
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !42
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i36, i64 6
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i37, i64 6
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !42
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !42
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i36, i64 7
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i37, i64 7
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !42
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !42
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i36, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i37, i64 8 ; 2 uses
  %.not.i38.7 = icmp eq ptr %i.ct, %i.be
  br i1 %.not.i38.7, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %.lr.ph.i35, !llvm.loop !119

_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit: ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35, %middle.block, %vec.epilog.middle.block, %bb.b
  %.sroa.051.0 = phi ptr [ %i.ba, %bb.b ], [ %i.bp, %vec.epilog.middle.block ], [ %i.bk, %middle.block ], [ %.lcssa125.unr, %.lr.ph.i35.prol.loopexit ], [ %6, %.lr.ph.i35 ] ; 3 uses
  %.sroa.051.091 = ptrtoaddr ptr %.sroa.051.0 to i64
  %i.cu = load i64, ptr %i.ag, align 8, !tbaa !43
  store i64 %i.cu, ptr %.sroa.051.0, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.051.0, i64 8 ; 7 uses
  %i.cw = load ptr, ptr %3, align 8, !tbaa !35    ; 8 uses
  %i.cx = ptrtoaddr ptr %i.cw to i64              ; 2 uses
  %i.cy = load i64, ptr %i.ag, align 8, !tbaa !43 ; 10 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cy
  %.not14.i40 = icmp samesign eq i64 %i.cy, 0
  br i1 %.not14.i40, label %.loopexit, label %iter.check109

iter.check109:                                    ; preds = %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit
  %min.iters.check93 = icmp ult i64 %i.cy, 4
  br i1 %min.iters.check93, label %.lr.ph.i41.preheader, label %vector.memcheck90

vector.memcheck90:                                ; preds = %iter.check109
  %i.da = sub i64 %.sroa.051.091, %i.cx
  %i.db = add i64 %i.da, 7
  %diff.check92 = icmp ult i64 %i.db, 31
  br i1 %diff.check92, label %.lr.ph.i41.preheader, label %vector.main.loop.iter.check94

vector.main.loop.iter.check94:                    ; preds = %vector.memcheck90
  %min.iters.check95 = icmp ult i64 %i.cy, 32
  br i1 %min.iters.check95, label %vec.epilog.ph113, label %vector.ph96

vector.ph96:                                      ; preds = %vector.main.loop.iter.check94
  %i.dc = and i64 %i.cy, 28
  %n.vec97 = and i64 %i.cy, -32                   ; 5 uses
  %i.dd = getelementptr i8, ptr %i.cv, i64 %n.vec97 ; 2 uses
  %i.de = getelementptr i8, ptr %i.cw, i64 %n.vec97
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next104, %vector.body98 ] ; 3 uses
  %next.gep100 = getelementptr i8, ptr %i.cv, i64 %index99 ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.cw, i64 %index99 ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load102 = load <16 x i8>, ptr %next.gep101, align 1, !tbaa !42
  %wide.load103 = load <16 x i8>, ptr %i.df, align 1, !tbaa !42
  %i.dg = getelementptr i8, ptr %next.gep100, i64 16
  store <16 x i8> %wide.load102, ptr %next.gep100, align 1, !tbaa !42
  store <16 x i8> %wide.load103, ptr %i.dg, align 1, !tbaa !42
  %index.next104 = add nuw i64 %index99, 32       ; 2 uses
  %i.dh = icmp eq i64 %index.next104, %n.vec97
  br i1 %i.dh, label %middle.block105, label %vector.body98, !llvm.loop !120

middle.block105:                                  ; preds = %vector.body98
  %cmp.n106 = icmp eq i64 %i.cy, %n.vec97
  br i1 %cmp.n106, label %.loopexit, label %vec.epilog.iter.check111

vec.epilog.iter.check111:                         ; preds = %middle.block105
  %min.epilog.iters.check112 = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check112, label %.lr.ph.i41.preheader, label %vec.epilog.ph113, !prof !116

vec.epilog.ph113:                                 ; preds = %vector.main.loop.iter.check94, %vec.epilog.iter.check111
  %vec.epilog.resume.val107 = phi i64 [ %n.vec97, %vec.epilog.iter.check111 ], [ 0, %vector.main.loop.iter.check94 ]
  %n.vec114 = and i64 %i.cy, -4                   ; 4 uses
  %i.di = getelementptr i8, ptr %i.cv, i64 %n.vec114 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cw, i64 %n.vec114
  br label %vec.epilog.vector.body115

vec.epilog.vector.body115:                        ; preds = %vec.epilog.vector.body115, %vec.epilog.ph113
  %index116 = phi i64 [ %vec.epilog.resume.val107, %vec.epilog.ph113 ], [ %index.next120, %vec.epilog.vector.body115 ] ; 3 uses
  %next.gep117 = getelementptr i8, ptr %i.cv, i64 %index116
  %next.gep118 = getelementptr i8, ptr %i.cw, i64 %index116
  %wide.load119 = load <4 x i8>, ptr %next.gep118, align 1, !tbaa !42
  store <4 x i8> %wide.load119, ptr %next.gep117, align 1, !tbaa !42
  %index.next120 = add nuw i64 %index116, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next120, %n.vec114
  br i1 %i.dk, label %vec.epilog.middle.block121, label %vec.epilog.vector.body115, !llvm.loop !121

vec.epilog.middle.block121:                       ; preds = %vec.epilog.vector.body115
  %cmp.n122 = icmp eq i64 %i.cy, %n.vec114
  br i1 %cmp.n122, label %.loopexit, label %.lr.ph.i41.preheader

.lr.ph.i41.preheader:                             ; preds = %vector.memcheck90, %iter.check109, %vec.epilog.iter.check111, %vec.epilog.middle.block121
  %.sroa.0.0.copyload.i9.i42.ph = phi ptr [ %i.cv, %iter.check109 ], [ %i.cv, %vector.memcheck90 ], [ %i.dd, %vec.epilog.iter.check111 ], [ %i.di, %vec.epilog.middle.block121 ] ; 2 uses
  %.sroa.010.015.i43.ph = phi ptr [ %i.cw, %iter.check109 ], [ %i.cw, %vector.memcheck90 ], [ %i.de, %vec.epilog.iter.check111 ], [ %i.dj, %vec.epilog.middle.block121 ] ; 3 uses
  %i.dl = add i64 %i.cy, %i.cx                    ; 2 uses
  %.sroa.010.015.i43.ph127 = ptrtoaddr ptr %.sroa.010.015.i43.ph to i64 ; 2 uses
  %i.dm = sub i64 %i.dl, %.sroa.010.015.i43.ph127
  %xtraiter128 = and i64 %i.dm, 7                 ; 2 uses
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph.i41.prol.loopexit, label %.lr.ph.i41.prol

.lr.ph.i41.prol:                                  ; preds = %.lr.ph.i41.preheader, %.lr.ph.i41.prol
  %.sroa.0.0.copyload.i9.i42.prol = phi ptr [ %8, %.lr.ph.i41.prol ], [ %.sroa.0.0.copyload.i9.i42.ph, %.lr.ph.i41.preheader ] ; 2 uses
  %.sroa.010.015.i43.prol = phi ptr [ %i.dn, %.lr.ph.i41.prol ], [ %.sroa.010.015.i43.ph, %.lr.ph.i41.preheader ] ; 2 uses
  %prol.iter130 = phi i64 [ %prol.iter130.next, %.lr.ph.i41.prol ], [ 0, %.lr.ph.i41.preheader ]
  %7 = load i8, ptr %.sroa.010.015.i43.prol, align 1, !tbaa !42
  store i8 %7, ptr %.sroa.0.0.copyload.i9.i42.prol, align 1, !tbaa !42
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i42.prol, i64 1 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i43.prol, i64 1 ; 2 uses
  %prol.iter130.next = add i64 %prol.iter130, 1   ; 2 uses
  %prol.iter130.cmp.not = icmp eq i64 %prol.iter130.next, %xtraiter128
  br i1 %prol.iter130.cmp.not, label %.lr.ph.i41.prol.loopexit, label %.lr.ph.i41.prol, !llvm.loop !122

.lr.ph.i41.prol.loopexit:                         ; preds = %.lr.ph.i41.prol, %.lr.ph.i41.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i41.preheader ], [ %8, %.lr.ph.i41.prol ]
  %.sroa.0.0.copyload.i9.i42.unr = phi ptr [ %.sroa.0.0.copyload.i9.i42.ph, %.lr.ph.i41.preheader ], [ %8, %.lr.ph.i41.prol ]
  %.sroa.010.015.i43.unr = phi ptr [ %.sroa.010.015.i43.ph, %.lr.ph.i41.preheader ], [ %i.dn, %.lr.ph.i41.prol ]
  %i.do = sub i64 %.sroa.010.015.i43.ph127, %i.dl
  %i.dp = icmp ugt i64 %i.do, -8
  br i1 %i.dp, label %.loopexit, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.prol.loopexit, %.lr.ph.i41
  %.sroa.0.0.copyload.i9.i42 = phi ptr [ %9, %.lr.ph.i41 ], [ %.sroa.0.0.copyload.i9.i42.unr, %.lr.ph.i41.prol.loopexit ] ; 9 uses
  %.sroa.010.015.i43 = phi ptr [ %i.em, %.lr.ph.i41 ], [ %.sroa.010.015.i43.unr, %.lr.ph.i41.prol.loopexit ] ; 9 uses
  %i.dq = load i8, ptr %.sroa.010.015.i43, align 1, !tbaa !42
  store i8 %i.dq, ptr %.sroa.0.0.copyload.i9.i42, align 1, !tbaa !42
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i42, i64 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i43, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !42
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !42
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i42, i64 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i43, i64 2
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !42
  store i8 %i.dw, ptr %i.du, align 1, !tbaa !42
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i42, i64 3
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i43, i64 3
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !42
  store i8 %i.dz, ptr %i.dx, align 1, !tbaa !42
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i42, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i43, i64 4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !42
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !42
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i42, i64 5
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i43, i64 5
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !42
  store i8 %i.ef, ptr %i.ed, align 1, !tbaa !42
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i42, i64 6
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i43, i64 6
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !42
  store i8 %i.ei, ptr %i.eg, align 1, !tbaa !42
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i42, i64 7
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i43, i64 7
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !42
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !42
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i42, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i43, i64 8 ; 2 uses
  %.not.i44.7 = icmp eq ptr %i.em, %i.cz
  br i1 %.not.i44.7, label %.loopexit, label %.lr.ph.i41, !llvm.loop !123

.loopexit:                                        ; preds = %.lr.ph.i41.prol.loopexit, %.lr.ph.i41, %middle.block105, %vec.epilog.middle.block121, %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit
  %.sroa.051.1 = phi ptr [ %i.cv, %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit ], [ %i.di, %vec.epilog.middle.block121 ], [ %i.dd, %middle.block105 ], [ %.lcssa.unr, %.lr.ph.i41.prol.loopexit ], [ %9, %.lr.ph.i41 ] ; 2 uses
  store i64 %.0.lcssa.i.i, ptr %.sroa.051.1, align 1
  %i.en = icmp sgt i64 %.0.lcssa.i.i, 1
  br i1 %i.en, label %bb.c, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit, !prof !124

bb.c:                                             ; preds = %.loopexit
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.051.1, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr nonnull align 1 %i.j, i64 %.0.lcssa.i.i, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit: ; preds = %.loopexit, %bb.c
  %i.ep = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.ad
  br i1 %i.eq, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit
  %i.er = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.0.lcssa.i.i) #23
  ret i1 true

bb.d:                                             ; preds = %_ZN3igl13serialization9serializeIfSaIfEEEvRKSt6vectorIT_T0_ERS3_IcSaIcEERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.e:                                             ; preds = %.noexc32
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ad
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.e
  %i.ex = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.d
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.et, %bb.d ], [ %i.eu, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.0.lcssa.i.i) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl3xml17serialization_xml9serializeIfSaIfEEEvRKSt6vectorIT_T0_EPN8tinyxml211XMLDocumentEPNSA_10XMLElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = load ptr, ptr %3, align 8, !tbaa !35     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !40
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.e, ptr %i.a, align 8, !tbaa !41
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28 unwind label %bb.h   ; 2 uses

.noexc28:                                         ; preds = %.noexc.i
  store ptr %i.g, ptr %4, align 8, !tbaa !35
  %i.h = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.h, ptr %i.c, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc28, %bb.c
  %i.i = phi ptr [ %i.g, %.noexc28 ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !42
  store i8 %i.j, ptr %i.i, align 1, !tbaa !42
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.b, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !43
  %i.m = load ptr, ptr %4, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.o = load ptr, ptr %4, align 8, !tbaa !35
  %i.p = invoke noundef ptr @_ZNK8tinyxml27XMLNode17FirstChildElementEPKc(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %i.o)
          to label %.noexc29 unwind label %bb.i   ; 2 uses

.noexc29:                                         ; preds = %bb.f
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %_ZN3igl3xml17serialization_xml10getElementEPN8tinyxml211XMLDocumentEPNS2_10XMLElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %.noexc29
  %i.r = load ptr, ptr %4, align 8, !tbaa !35
  %i.s = invoke noundef ptr @_ZN8tinyxml211XMLDocument10NewElementEPKc(ptr noundef nonnull align 8 dereferenceable(640) %1, ptr noundef %i.r)
          to label %.noexc30 unwind label %bb.i   ; 2 uses

.noexc30:                                         ; preds = %bb.g
  %i.t = invoke noundef ptr @_ZN8tinyxml27XMLNode14InsertEndChildEPS0_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %i.s)
          to label %_ZN3igl3xml17serialization_xml10getElementEPN8tinyxml211XMLDocumentEPNS2_10XMLElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.i ; 0 uses

_ZN3igl3xml17serialization_xml10getElementEPN8tinyxml211XMLDocumentEPNS2_10XMLElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc29, %.noexc30
  %.0.i = phi ptr [ %i.p, %.noexc29 ], [ %i.s, %.noexc30 ] ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !35     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3igl3xml17serialization_xml10getElementEPN8tinyxml211XMLDocumentEPNS2_10XMLElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.w = load i64, ptr %i.c, align 8, !tbaa !42
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3igl3xml17serialization_xml10getElementEPN8tinyxml211XMLDocumentEPNS2_10XMLElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.aa = load ptr, ptr %0, align 8, !tbaa !106
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = trunc i64 %i.ae to i32
  %i.ag = call noundef ptr @_ZN8tinyxml210XMLElement21FindOrCreateAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(104) %.0.i, ptr noundef nonnull @.str.20)
  call void @_ZN8tinyxml212XMLAttribute12SetAttributeEj(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i32 noundef %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.ai = load ptr, ptr %0, align 8, !tbaa !106
  %.not = icmp eq ptr %i.ah, %i.ai
  br i1 %.not, label %._crit_edge, label %._crit_edge.i.i35.lr.ph

._crit_edge.i.i35.lr.ph:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %._crit_edge.i.i35

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.av, ptr %5, align 8, !tbaa !9
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %5, i64 %i.ay
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !9
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bc, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !35 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %._crit_edge
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !42
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #23
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
end_hunk_0
