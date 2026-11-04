Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/topio?download=true
inline.NumInlined: 1510
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
begin_hunk_0_@__clang_call_terminate:bb.a
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef double @_Z9check_molPK10gmx_mtop_tP14WarningHandler(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not66 = icmp eq ptr %i.c, %i.e
  br i1 %.not66, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.b

._crit_edge71:                                    ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret double %.0.lcssa

bb.b:                                             ; preds = %.lr.ph70, %._crit_edge
  %.068 = phi double [ 0.000000e+00, %.lr.ph70 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.058.067 = phi ptr [ %i.c, %.lr.ph70 ], [ %i.be, %._crit_edge ] ; 3 uses
  %i.g = load i32, ptr %.sroa.058.067, align 8, !tbaa !35
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw [2408 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !47
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.058.067, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.165 = phi double [ %.068, %.lr.ph ], [ %i.z, %bb.e ]
  %i.r = load i32, ptr %i.n, align 4, !tbaa !48
  %i.s = sitofp i32 %i.r to float
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw [36 x i8], ptr %i.t, i64 %indvars.iv ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !54
  %i.x = fmul float %i.w, %i.s
  %i.y = fpext float %i.x to double
  %i.z = fadd double %.165, %i.y                  ; 2 uses
  %i.aa = load float, ptr %i.u, align 4, !tbaa !229 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !230 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !231 ; 2 uses
  %i.af = fpext float %i.aa to double
  %i.ag = fcmp ole float %i.aa, 0.000000e+00
  %i.ah = fcmp ole float %i.ac, 0.000000e+00
  %or.cond53.not63 = select i1 %i.ag, i1 true, i1 %i.ah
  %or.cond = icmp ult i32 %i.ae, 2
  %or.cond54 = select i1 %or.cond53.not63, i1 %or.cond, i1 false
  br i1 %or.cond54, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = fcmp une float %i.aa, 0.000000e+00
  %i.aj = fcmp une float %i.ac, 0.000000e+00
  %or.cond3 = select i1 %i.ai, i1 true, i1 %i.aj
  %i.ak = icmp eq i32 %i.ae, 4
  %or.cond5 = select i1 %or.cond3, i1 %i.ak, i1 false
  br i1 %or.cond5, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.str.9.sink = phi ptr [ @.str.8, %bb.c ], [ @.str.9, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.am = load i32, ptr %i.al, align 4, !tbaa !232
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !233
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !234
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !235
  %i.as = sext i32 %i.am to i64
  %i.at = getelementptr inbounds [32 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !237
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !238
  %i.ay = fpext float %i.ac to double
  %i.az = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %.str.9.sink, ptr noundef %i.aq, ptr noundef %i.av, i32 noundef %i.ax, double noundef %i.af, double noundef %i.ay) #28 ; 0 uses
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #28
  call void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 %i.ba, ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load i32, ptr %i.k, align 8, !tbaa !47
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %bb.c, label %._crit_edge, !llvm.loop !228

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %.1.lcssa = phi double [ %.068, %bb.b ], [ %i.z, %bb.e ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.058.067, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.e
  br i1 %.not, label %._crit_edge71, label %bb.b
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_Z18checkRBDihedralSumRK10gmx_mtop_tRK10t_inputrecP14WarningHandler(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !240
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.n = trunc nuw i8 %.sroa.5.2 to i1
  %i.o = icmp sgt i32 %.2, 0
  br i1 %i.o, label %bb.e, label %bb.k

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.0126 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.d ] ; 3 uses
  %.026125 = phi i32 [ 0, %.lr.ph ], [ %.228, %bb.d ] ; 2 uses
  %.sroa.5111.0123 = phi i8 [ 0, %.lr.ph ], [ %.sroa.5111.1, %bb.d ] ; 3 uses
  %.sroa.0110.0122 = phi i32 [ undef, %.lr.ph ], [ %.sroa.0110.1, %bb.d ] ; 3 uses
  %.sroa.5.0121 = phi i8 [ 0, %.lr.ph ], [ %.sroa.5.2, %bb.d ] ; 3 uses
  %.sroa.0108.0120 = phi i32 [ undef, %.lr.ph ], [ %.sroa.0108.2, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !61
  %i.r = icmp eq i32 %i.q, 20
  br i1 %i.r, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %indvars.iv ; 3 uses
  %.068.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.068.i48.ptr = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.t = load <4 x float>, ptr %.068.i48.ptr, align 4, !tbaa !62 ; 4 uses
  %i.u = load <4 x float>, ptr %i.s, align 4, !tbaa !62 ; 4 uses
  %i.v = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 4 %.068.i.ptr.4, <8 x i1> <i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true>, <8 x float> poison), !tbaa !62 ; 2 uses
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %i.t, <2 x i32> <i32 0, i32 4>
  %i.x = fpext <2 x float> %i.w to <2 x double>
  %i.y = fadd <2 x double> %i.x, zeroinitializer
  %i.z = shufflevector <4 x float> %i.u, <4 x float> %i.t, <2 x i32> <i32 1, i32 5>
  %i.aa = fpext <2 x float> %i.z to <2 x double>
  %i.ab = fadd <2 x double> %i.y, %i.aa
  %i.ac = shufflevector <4 x float> %i.u, <4 x float> %i.t, <2 x i32> <i32 2, i32 6>
  %i.ad = fpext <2 x float> %i.ac to <2 x double>
  %i.ae = fadd <2 x double> %i.ab, %i.ad
  %i.af = shufflevector <4 x float> %i.u, <4 x float> %i.t, <2 x i32> <i32 3, i32 7>
  %i.ag = fpext <2 x float> %i.af to <2 x double>
  %i.ah = fadd <2 x double> %i.ae, %i.ag
  %i.ai = shufflevector <8 x float> %i.v, <8 x float> poison, <2 x i32> <i32 0, i32 6>
  %i.aj = fpext <2 x float> %i.ai to <2 x double>
  %i.ak = fadd <2 x double> %i.ah, %i.aj
  %i.al = shufflevector <8 x float> %i.v, <8 x float> poison, <2 x i32> <i32 1, i32 7>
  %i.am = fpext <2 x float> %i.al to <2 x double>
  %i.an = fadd <2 x double> %i.ak, %i.am
  %.fr = freeze <2 x double> %i.an
  %i.ao = fptrunc <2 x double> %.fr to <2 x float> ; 3 uses
  %shift = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.ao, %shift
  %i.ap = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aq = tail call noundef float @llvm.fabs.f32(float %i.ap)
  %i.ar = fcmp ule float %i.aq, f0x3C23D70A       ; 3 uses
  %i.as = trunc nuw i8 %.sroa.5.0121 to i1
  %.not133 = select i1 %i.ar, i1 true, i1 %i.as
  %i.at = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %.sroa.0108.1 = select i1 %.not133, i32 %.sroa.0108.0120, i32 %i.at ; 2 uses
  %.sroa.5.1 = select i1 %i.ar, i8 %.sroa.5.0121, i8 1 ; 2 uses
  %not. = xor i1 %i.ar, true
  %i.au = zext i1 %not. to i32
  %.127 = add nsw i32 %.026125, %i.au             ; 2 uses
  %i.av = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ao)
  %i.aw = fcmp ogt <2 x float> %i.av, splat (float f0x3C23D70A)
  %9 = bitcast <2 x i1> %i.aw to i2
  %or.cond.not = icmp eq i2 %9, 0
  br i1 %or.cond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = add nsw i32 %.0126, 1
  %i.ay = trunc nuw i8 %.sroa.5111.0123 to i1
  %spec.select118 = select i1 %i.ay, i32 %.sroa.0110.0122, i32 %i.at
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.sroa.0108.2 = phi i32 [ %.sroa.0108.1, %bb.c ], [ %.sroa.0108.0120, %bb.b ], [ %.sroa.0108.1, %.lr.ph.i ] ; 2 uses
  %.sroa.5.2 = phi i8 [ %.sroa.5.1, %bb.c ], [ %.sroa.5.0121, %bb.b ], [ %.sroa.5.1, %.lr.ph.i ] ; 2 uses
  %.sroa.0110.1 = phi i32 [ %spec.select118, %bb.c ], [ %.sroa.0110.0122, %bb.b ], [ %.sroa.0110.0122, %.lr.ph.i ] ; 2 uses
  %.sroa.5111.1 = phi i8 [ 1, %bb.c ], [ %.sroa.5111.0123, %bb.b ], [ %.sroa.5111.0123, %.lr.ph.i ] ; 2 uses
  %.228 = phi i32 [ %.127, %bb.c ], [ %.026125, %bb.b ], [ %.127, %.lr.ph.i ] ; 3 uses
  %.2 = phi i32 [ %i.ax, %bb.c ], [ %.0126, %bb.b ], [ %.0126, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !239

bb.e:                                             ; preds = %._crit_edge
  %i.az = trunc nuw i8 %.sroa.5111.1 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  br i1 %i.az, label %_ZNRSt8optionalIiE5valueEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNRSt8optionalIiE5valueEv.exit:                  ; preds = %bb.e
  call fastcc void @_ZL37describeAtomsForRBDihedralOfGivenTypeB5cxx11RK10gmx_mtop_ti(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(768) %0, i32 noundef %.sroa.0110.1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 178, ptr %i.b, align 8, !tbaa !22
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %_ZNRSt8optionalIiE5valueEv.exit
  store ptr %i.bb, ptr %4, align 8, !tbaa !24
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !22  ; 3 uses
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(178) %i.bb, ptr noundef nonnull align 1 dereferenceable(178) @.str.10, i64 178, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  store i8 0, ptr %i.be, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.val44 = load ptr, ptr %4, align 8, !tbaa !24
  %.val45 = load ptr, ptr %3, align 8, !tbaa !24
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.16, i32 noundef range(i32 1, -2147483648) %.2, ptr noundef %.val44, ptr noundef %.val45)
          to label %"_ZZ18checkRBDihedralSumRK10gmx_mtop_tRK10t_inputrecP14WarningHandlerENK3$_0clEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_.exit" unwind label %bb.i

"_ZZ18checkRBDihedralSumRK10gmx_mtop_tRK10t_inputrecP14WarningHandlerENK3$_0clEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_.exit": ; preds = %.noexc
  %i.bf = load ptr, ptr %5, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26
  invoke void @_ZN14WarningHandler7addNoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 %i.bh, ptr %i.bf)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %"_ZZ18checkRBDihedralSumRK10gmx_mtop_tRK10t_inputrecP14WarningHandlerENK3$_0clEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_.exit"
  %i.bi = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !25
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bn = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ba
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = load i64, ptr %i.ba, align 8, !tbaa !25
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.br = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !25
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.k

bb.h:                                             ; preds = %_ZNRSt8optionalIiE5valueEv.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.i:                                             ; preds = %.noexc
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.j:                                             ; preds = %"_ZZ18checkRBDihedralSumRK10gmx_mtop_tRK10t_inputrecP14WarningHandlerENK3$_0clEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_.exit"
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.j
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !25
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.i ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.by, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ce = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ba
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.cg = load i64, ptr %i.ba, align 8, !tbaa !25
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ci = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !25
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.s

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %._crit_edge
  %i.cn = icmp sgt i32 %.228, 0
  br i1 %i.cn, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !153
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br i1 %i.n, label %_ZNRSt8optionalIiE5valueEv.exit67, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZSt27__throw_bad_optional_accessv() #27
  unreachable

_ZNRSt8optionalIiE5valueEv.exit67:                ; preds = %bb.m
  call fastcc void @_ZL37describeAtomsForRBDihedralOfGivenTypeB5cxx11RK10gmx_mtop_ti(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(768) %0, i32 noundef %.sroa.0108.2)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.cq, ptr %7, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 98, ptr %i.a, align 8, !tbaa !22
  %i.cr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc70 unwind label %bb.p   ; 3 uses

.noexc70:                                         ; preds = %_ZNRSt8optionalIiE5valueEv.exit67
  store ptr %i.cr, ptr %7, align 8, !tbaa !24
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !22  ; 3 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(98) %i.cr, ptr noundef nonnull align 1 dereferenceable(98) @.str.11, i64 98, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  store i8 0, ptr %i.cu, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %.val = load ptr, ptr %7, align 8, !tbaa !24
  %.val43 = load ptr, ptr %6, align 8, !tbaa !24
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.16, i32 noundef range(i32 1, -2147483648) %.228, ptr noundef %.val, ptr noundef %.val43)
          to label %"_ZZ18checkRBDihedralSumRK10gmx_mtop_tRK10t_inputrecP14WarningHandlerENK3$_0clEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_.exit73" unwind label %bb.q

end_hunk_0
