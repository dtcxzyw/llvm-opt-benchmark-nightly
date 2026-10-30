Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/csv_reporter?download=true
inline.NumInlined: 476
inline.NumDeleted: 225
begin_hunk_0
@.str.25 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"map::at\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_csv_reporter.cc, ptr null }]
@switch.table._ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE = private unnamed_addr constant [4 x ptr] [ptr @.str.25, ptr @.str.24, ptr @.str.23, ptr @.str.22], align 8

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #19
  br label %_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev.exit:         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN9benchmark11CSVReporter13ReportContextERKNS_17BenchmarkReporter7ContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  tail call void @_ZN9benchmark17BenchmarkReporter17PrintBasicContextEPSoRKNS0_7ContextE(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 true
}

declare void @_ZN9benchmark17BenchmarkReporter17PrintBasicContextEPSoRKNS0_7ContextE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN9benchmark11CSVReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !59, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load ptr, ptr %1, align 8, !tbaa !61     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 3 uses
  %.not93120 = icmp eq ptr %i.g, %i.i             ; 2 uses
  br i1 %i.f, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not93120, label %._crit_edge104.a, label %.lr.ph103.a

.lr.ph103.a:                                      ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.c

._crit_edge104.a:                                 ; preds = %._crit_edge, %bb.b
  %i.n = load ptr, ptr @_ZN9benchmark12_GLOBAL__N_18elementsE, align 8, !tbaa !62 ; 2 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9benchmark12_GLOBAL__N_18elementsE, i64 8), align 8, !tbaa !62
  %.not89105 = icmp eq ptr %i.n, %i.o
  br i1 %.not89105, label %._crit_edge109.a, label %.lr.ph108.a

bb.c:                                             ; preds = %.lr.ph103.a, %._crit_edge
  %.sroa.067.0101 = phi ptr [ %i.g, %.lr.ph103.a ], [ %i.s, %._crit_edge ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.067.0101, i64 520
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.067.0101, i64 504 ; 2 uses
  %.not9298 = icmp eq ptr %i.q, %i.r
  br i1 %.not9298, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.067.0101, i64 592 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.i
  br i1 %.not, label %._crit_edge104.a, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.sroa.063.099 = phi ptr [ %i.cf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.q, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.063.099, i64 32 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.063.099, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !32   ; 7 uses
  %cond = icmp eq i64 %i.v, 16
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.a, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread71

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.a: ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !33   ; 2 uses
  %i.x = load i128, ptr %i.w, align 1
  %i.y = icmp ne i128 %i.x, 133496211455381975773371218989921106274
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread70

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread70: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.a
  %i.ab = load i128, ptr %i.w, align 1
  %i.ac = icmp ne i128 %i.ab, 133496211455381975773371218990054339689
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread71

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread71: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread70
  %.02931.i = load ptr, ptr %i.j, align 8, !tbaa !34 ; 2 uses
  %.not32.i = icmp eq ptr %.02931.i, null
  br i1 %.not32.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread71
  %i.af = load ptr, ptr %i.t, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i
  %.02933.i = phi ptr [ %.02931.i, %.lr.ph.i ], [ %.029.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02933.i, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.v) ; 3 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.02933.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.al = call i32 @memcmp(ptr noundef %i.af, ptr noundef %i.ak, i64 noundef %.sroa.speculated.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.d
  %i.am = sub i64 %i.v, %i.ah
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.am, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.al, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.an = icmp slt i32 %.0.i.i.i.i, 0             ; 2 uses
  %.in.v.i = select i1 %i.an, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02933.i, i64 %.in.v.i
  %.029.i = load ptr, ptr %.in.i, align 8, !tbaa !34 ; 2 uses
  %.not.i39 = icmp eq ptr %.029.i, null
  br i1 %.not.i39, label %._crit_edge.i, label %bb.d, !llvm.loop !52

._crit_edge.i:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  br i1 %i.an, label %._crit_edge.thread.i, label %bb.f

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread71
  %.028.lcssa39.i = phi ptr [ %.02933.i, %._crit_edge.i ], [ %i.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread71 ] ; 4 uses
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.ap = icmp eq ptr %.028.lcssa39.i, %i.ao
  br i1 %i.ap, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i
  %i.aq = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39.i) #21 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32 ; 2 uses
  %.pre131 = call i64 @llvm.umin.i64(i64 %i.v, i64 %.pre)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.sroa.speculated.i.i.i5.i.pre-phi = phi i64 [ %.pre131, %bb.e ], [ %.sroa.speculated.i.i.i.i, %._crit_edge.i ] ; 2 uses
  %i.ar = phi i64 [ %.pre, %bb.e ], [ %i.ah, %._crit_edge.i ]
  %.028.lcssa38.i = phi ptr [ %.028.lcssa39.i, %bb.e ], [ %.02933.i, %._crit_edge.i ]
  %.sroa.014.0.i = phi ptr [ %i.aq, %bb.e ], [ %.02933.i, %._crit_edge.i ]
  %i.as = icmp eq i64 %.sroa.speculated.i.i.i5.i.pre-phi, 0
  br i1 %i.as, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 32
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.aw = call i32 @memcmp(ptr noundef %i.av, ptr noundef %i.au, i64 noundef %.sroa.speculated.i.i.i5.i.pre-phi) #20 ; 2 uses
  %.not.i.i.i7.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i7.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i, %bb.f
  %i.ax = sub i64 %i.ar, %i.v
  %spec.select7.i.i.i.i10.i = call i64 @llvm.smax.i64(i64 %i.ax, i64 -2147483648)
  %.08.i.i.i.i11.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10.i, i64 2147483647)
  %.0.i6.i.i.i12.i = trunc nsw i64 %.08.i.i.i.i11.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i
  %.0.i.i.i8.i = phi i32 [ %i.aw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i ], [ %.0.i6.i.i.i12.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i ]
  %2 = icmp slt i32 %.0.i.i.i8.i, 0
  br i1 %2, label %select.unfold, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

select.unfold:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.028.lcssa39.i, %._crit_edge.thread.i ], [ %.028.lcssa38.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i ] ; 4 uses
  %i.ay = icmp eq ptr %.sroa.4.0.i.ph, %i.k
  br i1 %i.ay, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i, label %bb.g

bb.g:                                             ; preds = %select.unfold
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !32 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.v) ; 2 uses
  %i.bb = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.be = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.bf = call i32 @memcmp(ptr noundef %i.be, ptr noundef %i.bd, i64 noundef %.sroa.speculated.i.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.bg = sub i64 %i.v, %i.ba
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bg, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bh = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %select.unfold
  %i.bi = phi i1 [ %i.bh, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %select.unfold ]
  %i.bj = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 3 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !36
  %i.bm = load ptr, ptr %i.t, align 8, !tbaa !33  ; 2 uses
  %i.bn = load i64, ptr %i.u, align 8, !tbaa !32  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !37
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.j   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !33
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.bq, ptr %i.bl, align 8, !tbaa !38
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i
  %i.br = phi ptr [ %i.bp, %.noexc.i ], [ %i.bl, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i ] ; 2 uses
  switch i64 %i.bn, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.bs = load i8, ptr %i.bm, align 1, !tbaa !38
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !38
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bm, i64 %i.bn, i1 false)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  %i.bv = call ptr @__cxa_begin_catch(ptr %i.bu) #20 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 64) #19
  invoke void @__cxa_rethrow() #23
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.bw

bb.m:                                             ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #24
  unreachable

bb.n:                                             ; preds = %bb.j
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !32
  %i.cb = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i8 0, ptr %i.cc, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #20
  %i.cd = load i64, ptr %i.m, align 8, !tbaa !63
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.m, align 8, !tbaa !63
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread70
  %i.cf = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.063.099) #21 ; 2 uses
  %.not92 = icmp eq ptr %i.cf, %i.r
  br i1 %.not92, label %._crit_edge, label %.lr.ph

._crit_edge109.a:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.q, %._crit_edge104.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !28 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not90110 = icmp eq ptr %i.ch, %i.ci
  br i1 %.not90110, label %._crit_edge114, label %.lr.ph113.a

.lr.ph108.a:                                      ; preds = %._crit_edge104.a, %bb.q
  %.sroa.059.0106 = phi ptr [ %i.cj, %bb.q ], [ %i.n, %._crit_edge104.a ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.059.0106, i64 8 ; 3 uses
  %i.ck = load ptr, ptr %.sroa.059.0106, align 8, !tbaa !64 ; 3 uses
  %.not.i = icmp eq ptr %i.ck, null
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph108.a
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.cm = getelementptr i8, ptr %i.cl, i64 -24
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = getelementptr inbounds i8, ptr %i.c, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !65
  %i.cr = or i32 %i.cq, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.co, i32 noundef %i.cr)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.p:                                             ; preds = %.lr.ph108.a
  %i.cs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ck) #20
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.ck, i64 noundef %i.cs) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.o, %bb.p
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9benchmark12_GLOBAL__N_18elementsE, i64 8), align 8, !tbaa !62
  %.not91 = icmp eq ptr %i.cj, %i.cu
  br i1 %.not91, label %._crit_edge109.a, label %bb.q

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %.pre130 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9benchmark12_GLOBAL__N_18elementsE, i64 8), align 8, !tbaa !62
  %i.cw = icmp eq ptr %i.cj, %.pre130
  br i1 %i.cw, label %._crit_edge109.a, label %.lr.ph108.a, !llvm.loop !53

._crit_edge114:                                   ; preds = %.lr.ph113.a, %._crit_edge109.a
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  store i8 1, ptr %i.d, align 8, !tbaa !59
  br label %.loopexit

.lr.ph113.a:                                      ; preds = %._crit_edge109.a, %.lr.ph113.a
  %.sroa.055.0111 = phi ptr [ %i.cz, %.lr.ph113.a ], [ %i.ch, %._crit_edge109.a ] ; 3 uses
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.12, i64 noundef 2) ; 0 uses
  %i.cz = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.055.0111) #21 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.055.0111, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !33
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.055.0111, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !32
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.db, i64 noundef %i.dd)
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  %.not90 = icmp eq ptr %i.cz, %i.ci
  br i1 %.not90, label %._crit_edge114, label %.lr.ph113.a, !llvm.loop !54

bb.r:                                             ; preds = %bb.a
  br i1 %.not93120, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.r, %._crit_edge119
  %.sroa.050.0121 = phi ptr [ %i.dj, %._crit_edge119 ], [ %i.g, %bb.r ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.050.0121, i64 520
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !28 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.050.0121, i64 504 ; 2 uses
  %.not95115 = icmp eq ptr %i.dh, %i.di
  br i1 %.not95115, label %._crit_edge119, label %.lr.ph118

._crit_edge119:                                   ; preds = %_ZN9benchmark8internallsIA51_cEERNS0_7LogTypeES4_RKT_.exit, %.lr.ph123
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.050.0121, i64 592 ; 2 uses
  %.not93 = icmp eq ptr %i.dj, %i.i
  br i1 %.not93, label %.loopexit, label %.lr.ph123

.lr.ph118:                                        ; preds = %.lr.ph123, %_ZN9benchmark8internallsIA51_cEERNS0_7LogTypeES4_RKT_.exit
  %.sroa.046.0116 = phi ptr [ %i.eg, %_ZN9benchmark8internallsIA51_cEERNS0_7LogTypeES4_RKT_.exit ], [ %i.dh, %.lr.ph123 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.046.0116, i64 32 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.046.0116, i64 40 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !32
  %cond96 = icmp eq i64 %i.dm, 16
  br i1 %cond96, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30: ; preds = %.lr.ph118
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !33 ; 2 uses
  %i.do = load i128, ptr %i.dn, align 1
  %i.dp = icmp ne i128 %i.do, 133496211455381975773371218989921106274
  %i.dq = zext i1 %i.dp to i32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %_ZN9benchmark8internallsIA51_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread79

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread79: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
  %i.ds = load i128, ptr %i.dn, align 1
  %i.dt = icmp ne i128 %i.ds, 133496211455381975773371218990054339689
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %_ZN9benchmark8internallsIA51_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80: ; preds = %.lr.ph118, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread79
  %i.dw = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.s, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !66

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80
  %i.dy = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #20
  %.not.i33 = icmp eq i32 %i.dy, 0
  br i1 %.not.i33, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !68
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #20
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80, %bb.s, %bb.t
  %i.dz = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !68 ; 2 uses
  %.not.i34 = icmp eq ptr %i.dz, null
  br i1 %.not.i34, label %_ZN9benchmark8internallsIA51_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.ea = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull @.str.15, i64 noundef 42) ; 0 uses
  %.pr = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !68 ; 2 uses
  %.not.i35 = icmp eq ptr %.pr, null
  br i1 %.not.i35, label %_ZN9benchmark8internallsIA51_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA16_cEERNS0_7LogTypeES4_RKT_.exit.a

_ZN9benchmark8internallsIA16_cEERNS0_7LogTypeES4_RKT_.exit.a: ; preds = %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit
  %i.eb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr, ptr noundef nonnull @.str.16, i64 noundef 15) ; 0 uses
  %.pr82 = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !68 ; 2 uses
  %.not.i36 = icmp eq ptr %.pr82, null
  br i1 %.not.i36, label %_ZN9benchmark8internallsIA51_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit

_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA16_cEERNS0_7LogTypeES4_RKT_.exit.a
  %i.ec = load ptr, ptr %i.dk, align 8, !tbaa !33
  %i.ed = load i64, ptr %i.dl, align 8, !tbaa !32
  %i.ee = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr82, ptr noundef %i.ec, i64 noundef %i.ed) ; 0 uses
  %.pr84.pr = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !68 ; 2 uses
  %.not.i37 = icmp eq ptr %.pr84.pr, null
  br i1 %.not.i37, label %_ZN9benchmark8internallsIA51_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit
  %i.ef = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr84.pr, ptr noundef nonnull @.str.17, i64 noundef 50) ; 0 uses
  br label %_ZN9benchmark8internallsIA51_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA51_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %_ZN9benchmark8internallsIA16_cEERNS0_7LogTypeES4_RKT_.exit.a, %bb.u, %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread79
  %i.eg = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.046.0116) #21 ; 2 uses
  %.not95 = icmp eq ptr %i.eg, %i.di
  br i1 %.not95, label %._crit_edge119, label %.lr.ph118

.loopexit:                                        ; preds = %._crit_edge119, %bb.r, %._crit_edge114
  %i.eh = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !61 ; 2 uses
  %.not94124 = icmp eq ptr %i.eh, %i.ej
  br i1 %.not94124, label %._crit_edge128, label %.lr.ph127

._crit_edge128:                                   ; preds = %.lr.ph127, %.loopexit
  ret void

.lr.ph127:                                        ; preds = %.loopexit, %.lr.ph127
  %.sroa.042.0125 = phi ptr [ %i.ek, %.lr.ph127 ], [ %i.eh, %.loopexit ] ; 2 uses
  call void @_ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(592) %.sroa.042.0125)
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.042.0125, i64 592 ; 2 uses
  %.not94 = icmp eq ptr %i.ek, %i.ej
  br i1 %.not94, label %._crit_edge128, label %.lr.ph127
}

; Function Attrs: mustprogress uwtable
define void @_ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(592) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(592) %1)
  invoke fastcc void @_ZN9benchmark12_GLOBAL__N_19CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !38
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !38
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !82
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9benchmark12_GLOBAL__N_18elementsE, i64 8), align 8, !tbaa !49
  %i.z = load ptr, ptr @_ZN9benchmark12_GLOBAL__N_18elementsE, align 8, !tbaa !13
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, -3
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.af, ptr %4, align 8, !tbaa !36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ae, i8 noundef signext 44)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.c
  %i.ag = load ptr, ptr %4, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.ag, i64 noundef %i.ai)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80 unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.ak = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.af
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80
  %i.am = load i64, ptr %i.af, align 8, !tbaa !38
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.g, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !83
  %i.au = or i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8, !tbaa !84
  %i.av = load i32, ptr %i.w, align 8, !tbaa !82
  %i.aw = icmp eq i32 %i.av, 2
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext %i.aw)
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 360
  call fastcc void @_ZN9benchmark12_GLOBAL__N_19CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
  %i.ba = load ptr, ptr %5, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !32
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit84 unwind label %bb.h

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit84
  %i.bf = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !38
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.b
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.e
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !38
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.d
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.d ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.bl, %bb.e ]
  %i.br = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !38
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
end_hunk_0
begin_hunk_1_@_ZN9benchmark11CSVReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE:bb.a

.lr.ph.i.i.i188:                                  ; preds = %.lr.ph
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0221.0238, i64 32
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0221.0238, i64 40
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !32 ; 4 uses
  %i.jr = load ptr, ptr %i.jo, align 8            ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i194, %.lr.ph.i.i.i188
  %.012.i.i.i189 = phi ptr [ %i.jn, %.lr.ph.i.i.i188 ], [ %.1.i.i.i199, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i194 ] ; 4 uses
  %.0811.i.i.i190 = phi ptr [ %i.ew, %.lr.ph.i.i.i188 ], [ %.19.i.i.i196, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i194 ]
  %i.js = getelementptr inbounds nuw i8, ptr %.012.i.i.i189, i64 40
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !32 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i191 = call i64 @llvm.umin.i64(i64 %i.jq, i64 %i.jt) ; 2 uses
  %i.ju = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i191, 0
  br i1 %i.ju, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i213, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i192

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i192: ; preds = %bb.ak
  %i.jv = getelementptr inbounds nuw i8, ptr %.012.i.i.i189, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !33
  %i.jx = call i32 @memcmp(ptr noundef %i.jw, ptr noundef %i.jr, i64 noundef %.sroa.speculated.i.i.i.i.i.i191) #20 ; 2 uses
  %.not.i.i.i.i.i.i193 = icmp eq i32 %i.jx, 0
  br i1 %.not.i.i.i.i.i.i193, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i213, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i194

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i213: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i192, %bb.ak
  %i.jy = sub i64 %i.jt, %i.jq
  %spec.select7.i.i.i.i.i.i.i214 = call i64 @llvm.smax.i64(i64 %i.jy, i64 -2147483648)
  %.08.i.i.i.i.i.i.i215 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i214, i64 2147483647)
  %.0.i6.i.i.i.i.i.i216 = trunc nsw i64 %.08.i.i.i.i.i.i.i215 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i194

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i194: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i213, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i192
  %.0.i.i.i.i.i.i195 = phi i32 [ %i.jx, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i192 ], [ %.0.i6.i.i.i.i.i.i216, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i213 ]
  %i.jz = icmp slt i32 %.0.i.i.i.i.i.i195, 0      ; 2 uses
  %.19.i.i.i196 = select i1 %i.jz, ptr %.0811.i.i.i190, ptr %.012.i.i.i189 ; 5 uses
  %.1.in.v.i.i.i197 = select i1 %i.jz, i64 24, i64 16
  %.1.in.i.i.i198 = getelementptr inbounds nuw i8, ptr %.012.i.i.i189, i64 %.1.in.v.i.i.i197
  %.1.i.i.i199 = load ptr, ptr %.1.in.i.i.i198, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i200 = icmp eq ptr %.1.i.i.i199, null
  br i1 %.not.i.i.i200, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i201, label %bb.ak, !llvm.loop !0

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i201: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i194
  %i.ka = icmp eq ptr %.19.i.i.i196, %i.ew
  br i1 %i.ka, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit217.thread, label %bb.al

bb.al:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i201
  %i.kb = getelementptr inbounds nuw i8, ptr %.19.i.i.i196, i64 40
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !32 ; 2 uses
  %.sroa.speculated.i.i.i.i.i202 = call i64 @llvm.umin.i64(i64 %i.kc, i64 %i.jq) ; 2 uses
  %i.kd = icmp eq i64 %.sroa.speculated.i.i.i.i.i202, 0
  br i1 %i.kd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i209, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i203

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i203: ; preds = %bb.al
  %i.ke = getelementptr inbounds nuw i8, ptr %.19.i.i.i196, i64 32
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !33
  %i.kg = call i32 @memcmp(ptr noundef %i.jr, ptr noundef %i.kf, i64 noundef %.sroa.speculated.i.i.i.i.i202) #20 ; 2 uses
  %.not.i.i.i.i.i204 = icmp eq i32 %i.kg, 0
  br i1 %.not.i.i.i.i.i204, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i209, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit217

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i209: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i203, %bb.al
  %i.kh = sub i64 %i.jq, %i.kc
  %spec.select7.i.i.i.i.i.i210 = call i64 @llvm.smax.i64(i64 %i.kh, i64 -2147483648)
  %.08.i.i.i.i.i.i211 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i210, i64 2147483647)
  %.0.i6.i.i.i.i.i212 = trunc nsw i64 %.08.i.i.i.i.i.i211 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit217

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit217: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i203, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i209
  %.0.i.i.i.i.i206 = phi i32 [ %i.kg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i203 ], [ %.0.i6.i.i.i.i.i212, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i209 ]
  %i.ki = icmp slt i32 %.0.i.i.i.i.i206, 0
  br i1 %i.ki, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit217.thread, label %bb.am

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit217.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i201, %.lr.ph, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit217
  %i.kj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  br label %bb.an

bb.am:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit217
  %i.kk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.19.i.i.i196, i64 64
  %i.km = load double, ptr %i.kl, align 8, !tbaa !94
  %i.kn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, double noundef %i.km) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit217.thread
  %i.ko = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0221.0238) #21 ; 2 uses
  %.not236 = icmp eq ptr %i.ko, %i.je
  br i1 %.not236, label %._crit_edge, label %.lr.ph

bb.ao:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %.pn75 = phi { ptr, i32 } [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %i.iv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ]
  resume { ptr, i32 } %.pn75
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN9benchmark12_GLOBAL__N_19CsvEscapeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !32
  store i8 0, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32
  %i.f = add i64 %i.e, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.f)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.h = load i64, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %.not28 = icmp samesign eq i64 %i.h, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 34, ptr %i.a, align 1, !tbaa !38, !noalias !102
  %i.j = load ptr, ptr %2, align 8, !tbaa !33, !noalias !102
  %i.k = load i64, ptr %i.c, align 8, !tbaa !32, !noalias !102 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !36, !alias.scope !103
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.m, align 8, !tbaa !32, !alias.scope !103
  store i8 0, ptr %i.l, align 8, !tbaa !38, !alias.scope !103
  %i.n = add i64 %i.k, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.n)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.o = load i64, ptr %i.m, align 8, !tbaa !32, !alias.scope !103
  %i.p = icmp eq i64 %i.o, 4611686018427387903
  br i1 %i.p, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.r = load i64, ptr %i.m, align 8, !tbaa !32, !alias.scope !103
  %i.s = sub i64 4611686018427387903, %i.r
  %i.t = icmp ult i64 %i.s, %i.k
  br i1 %i.t, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.j, i64 noundef %i.k)
          to label %bb.i unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %._crit_edge
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !33, !alias.scope !103 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.l
  br i1 %i.x, label %.body, label %.body.sink.split

.lr.ph:                                           ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.sroa.025.029 = phi ptr [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %i.g, %bb.b ] ; 2 uses
  %i.y = load i8, ptr %.sroa.025.029, align 1, !tbaa !38 ; 2 uses
  %cond = icmp eq i8 %i.y, 34
  %i.z = load i64, ptr %i.c, align 8, !tbaa !32   ; 5 uses
  br i1 %cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.aa = and i64 %i.z, -2
  %i.ab = icmp eq i64 %i.aa, 4611686018427387902
  br i1 %i.ab, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.20, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a, %bb.f
  %lpad.loopexit.split-lp47 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.g:                                             ; preds = %.lr.ph
  %i.ad = add i64 %i.z, 1                         ; 3 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g
  %i.ag = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %4 = load i64, ptr %i.b, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %5 = phi i64 [ %4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ah = icmp ugt i64 %i.ad, %5
  br i1 %i.ah, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.z, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc13
  %i.ai = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.z
  store i8 %i.y, ptr %i.aj, align 1, !tbaa !38
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !32
  %i.ak = load ptr, ptr %2, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ad
  store i8 0, ptr %i.al, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.025.029, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.an = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !104
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.an, i64 noundef 0, i64 noundef 1, i8 noundef signext 34)
          to label %.noexc14 unwind label %bb.l   ; 6 uses

.noexc14:                                         ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !36, !alias.scope !104
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc14
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !32 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc14
  store ptr %i.aq, ptr %0, align 8, !tbaa !33, !alias.scope !104
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !38
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !38, !alias.scope !104
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !32
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.ay = phi i64 [ %i.au, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !32, !alias.scope !104
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !33
  store i64 0, ptr %i.az, align 8, !tbaa !32
  store i8 0, ptr %i.ar, align 8, !tbaa !38
  %i.bb = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.l
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.k
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !38
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bf = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.b
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !38
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.l:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.l
  br i1 %i.bl, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.l, %bb.d
  %.sink = phi ptr [ %i.w, %bb.d ], [ %i.bk, %bb.l ]
  %.pn.ph = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.bj, %bb.l ]
  %i.bm = load i64, ptr %i.l, align 8, !tbaa !38
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bn) #19
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.l, %bb.d
  %.pn = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.bj, %bb.l ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn10 = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit.split-lp47, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bo = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.b
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %.loopexit.split-lp
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !38
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn10
}

declare void @_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(592)) local_unnamed_addr #0

declare noundef double @_ZNK9benchmark17BenchmarkReporter3Run19GetAdjustedRealTimeEv(ptr noundef nonnull align 8 dereferenceable(592)) local_unnamed_addr #0

declare noundef double @_ZNK9benchmark17BenchmarkReporter3Run18GetAdjustedCPUTimeEv(ptr noundef nonnull align 8 dereferenceable(592)) local_unnamed_addr #0

declare void @_ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !0

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #20 ; 2 uses
  %.not.i.i.i3 = icmp eq i32 %i.u, 0
end_hunk_1
