Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/readrot?download=true
inline.NumInlined: 447
inline.NumDeleted: 234
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0
@.str.22 = private unnamed_addr constant [11 x i8] c"rot-type%d\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"Use mass-weighting of the rotation group positions\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"rot-massw%d\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Rotation vector, will get normalized\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"rot-vec%d\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"1.0 0.0 0.0\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"rot-vec%d = 0\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [51 x i8] c"%s Group %d (%s) normalized rot. vector: %f %f %f\0A\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"Pivot point for the potentials iso, pm, rm, and rm2 (nm)\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"rot-pivot%d\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"0.0 0.0 0.0\00", align 1
@.str.33 = private unnamed_addr constant [61 x i8] c"Rotation rate (degree/ps) and force constant (kJ/(mol*nm^2))\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"rot-rate%d\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"rot-k%d\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"rot-k%d <= 0\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"Slab distance for flexible axis rotation (nm)\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"rot-slab-dist%d\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"rot-slab-dist%d <= 0\00", align 1
@.str.40 = private unnamed_addr constant [88 x i8] c"Minimum value of Gaussian function for the force to be evaluated (for flex* potentials)\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"rot-min-gauss%d\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"rot-min-gauss%d <= 0\00", align 1
@.str.43 = private unnamed_addr constant [74 x i8] c"Value of additive constant epsilon' (nm^2) for rm2* and flex2* potentials\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"rot-eps%d\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"rot-eps%d <= 0\00", align 1
@.str.46 = private unnamed_addr constant [79 x i8] c"Fitting method to determine angle of rotation group (rmsd, norm, or potential)\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"rot-fit-method%d\00", align 1
@.str.48 = private unnamed_addr constant [93 x i8] c"For fit type 'potential', nr. of angles around the reference for which the pot. is evaluated\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"rot-potfit-nsteps%d\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"rot-potfit-nsteps%d < 1\00", align 1
@.str.51 = private unnamed_addr constant [77 x i8] c"For fit type 'potential', distance in degrees between two consecutive angles\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"rot-potfit-step%d\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.55 = private unnamed_addr constant [47 x i8] c"Invalid enum '%s' for variable %s, using '%s'\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"Next time, use one of:\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"Expected three numbers at input line %s\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"%s group %d has %d reference positions.\0A\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@.str.64 = private unnamed_addr constant [100 x i8] c"%s The file containing the reference positions was not found.\0AExpected the file '%s' for group %d.\0A\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"  Reading them from %s.\0A\00", align 1
@.str.66 = private unnamed_addr constant [92 x i8] c"Number of atoms in file %s (%d) does not match the number of atoms in rotation group (%d)!\0A\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c" Saving them to %s.\0A\00", align 1
@.str.68 = private unnamed_addr constant [63 x i8] c"%s Box size in reference file %s differs from actual box size!\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"Your box is:\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"Box in file:\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"Rotation group %d '%s' has %d atoms\0A\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"rotg->ind\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"Rotation group %d '%s' is empty\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_readrot.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !15
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !15
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.q = load i64, ptr %i.o, align 8, !tbaa !15
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.w = load i64, ptr %i.u, align 8, !tbaa !15
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !14   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5
  %i.ak = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5
  %i.an = load i64, ptr %i.al, align 8, !tbaa !15
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_Z14read_rotparamsB5cxx11PSt6vectorI9t_inpfileSaIS0_EEP5t_rotP14WarningHandler(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef %1, ptr noundef initializes((0, 8)) %2, ptr noundef %3) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = alloca [4096 x i8], align 16             ; 29 uses
  %i.b = alloca [4096 x i8], align 16             ; 21 uses
  %i.c = alloca [3 x double], align 16            ; 13 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.d = alloca [4096 x i8], align 16             ; 6 uses
  %i.e = alloca [4096 x i8], align 16             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  tail call void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.10)
  %i.f = tail call noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EEPKciP14WarningHandler(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef 100, ptr noundef %3)
  store i32 %i.f, ptr %2, align 8, !tbaa !63
  tail call void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.12)
  %i.g = tail call noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EEPKciP14WarningHandler(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef 1000, ptr noundef %3)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !64
  tail call void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.14)
  %i.i = tail call noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EEPKciP14WarningHandler(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef %3) ; 3 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(70) @.str.16, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 95, ptr noundef nonnull @.str.17) #19
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bg

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = zext nneg i32 %i.i to i64                ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18   ; 3 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 104                 ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.m
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = sub nuw nsw i64 %i.m, %i.t
  tail call void @_ZNSt6vectorI8t_rotgrpSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.v)
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.w = icmp ugt i64 %i.t, %i.m
  br i1 %i.w, label %bb.h, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.m ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, %i.x
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %_ZSt8_DestroyI8t_rotgrpEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyI8t_rotgrpEvPT_.exit.i.i.i.i ], [ %i.x, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI8t_rotgrpEvPT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #17
  br label %_ZSt8_DestroyI8t_rotgrpEvPT_.exit.i.i.i.i

_ZSt8_DestroyI8t_rotgrpEvPT_.exit.i.i.i.i:        ; preds = %bb.i, %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIP8t_rotgrpS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !55

_ZSt8_DestroyIP8t_rotgrpS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyI8t_rotgrpEvPT_.exit.i.i.i.i
  store ptr %i.x, ptr %i.n, align 8, !tbaa !18
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZSt8_DestroyIP8t_rotgrpS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.h, %bb.g, %bb.f
  %i.ag = shl nuw nsw i64 %i.m, 5
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #20 ; 5 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !28
  %xtraiter = and i64 %i.m, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.prol ], [ %i.ah, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %i.m, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.ak, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !30
  store i8 0, ptr %i.ak, align 8, !tbaa !15
  %i.am = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !56

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ah, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.an, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.m, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %i.ao = icmp ult i32 %i.i, 8
  br i1 %i.ao, label %.lr.ph, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 25 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.ap, ptr %.08.i.i.i.i.i, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !30
  store i8 0, ptr %i.ap, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.at, align 8, !tbaa !30
  store i8 0, ptr %i.as, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aw, align 8, !tbaa !30
  store i8 0, ptr %i.av, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.az, align 8, !tbaa !30
  store i8 0, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bc, align 8, !tbaa !30
  store i8 0, ptr %i.bb, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 160
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176 ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !29
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  store i64 0, ptr %i.bf, align 8, !tbaa !30
  store i8 0, ptr %i.be, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 200
  store i64 0, ptr %i.bi, align 8, !tbaa !30
  store i8 0, ptr %i.bh, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 240 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 232
  store i64 0, ptr %i.bl, align 8, !tbaa !30
  store i8 0, ptr %i.bk, align 8, !tbaa !15
  %i.bm = add nsw i64 %.057.i.i.i.i.i, -8         ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph, label %.lr.ph.i.i.i.i.i, !llvm.loop !57

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bn, %.lr.ph.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa, ptr %i.bo, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.bf
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bf ] ; 4 uses
  %i.br = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.bs = getelementptr inbounds nuw [104 x i8], ptr %i.br, i64 %indvars.iv ; 17 uses
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.18)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32    ; 20 uses
  %i.bu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bt) #18 ; 0 uses
  invoke void @_Z14setStringEntryPSt6vectorI9t_inpfileSaIS0_EEPKcPcS5_(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.20)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !30
  %i.by = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #18
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef 0, i64 noundef %i.bx, ptr noundef nonnull %i.d, i64 noundef %i.by)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.l
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.21)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ca = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.bt) #18 ; 0 uses
  %i.cb = invoke noundef i32 @_Z7getEnumI25EnforcedRotationGroupTypeET_PSt6vectorI9t_inpfileSaIS3_EEPKcP14WarningHandler(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %3)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %bb.m
  store i32 %i.cb, ptr %i.bs, align 8, !tbaa !65
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.23)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.bt) #18 ; 0 uses
  %i.cd = invoke noundef i32 @_Z7getEnumI7BooleanET_PSt6vectorI9t_inpfileSaIS3_EEPKcP14WarningHandler(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %3)
          to label %bb.p unwind label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ce = icmp ne i32 %i.cd, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.cg = zext i1 %i.ce to i8
  store i8 %i.cg, ptr %i.cf, align 4, !tbaa !66
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.25)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ch = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.bt) #18 ; 0 uses
  invoke void @_Z14setStringEntryPSt6vectorI9t_inpfileSaIS0_EEPKcPcS5_(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.27)
          to label %bb.r unwind label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ci = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bq) #18
  %.not.i = icmp eq i32 %i.ci, 3
  br i1 %.not.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(70) @.str.16, i8 noundef zeroext 2)
          to label %.noexc126 unwind label %.loopexit.split-lp

.noexc126:                                        ; preds = %bb.s
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 69, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.e) #19
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc126
  unreachable

bb.u:                                             ; preds = %.noexc126
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.body

bb.v:                                             ; preds = %bb.r
  %i.ck = load <2 x double>, ptr %i.c, align 16, !tbaa !68 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.ck, %i.ck
  %i.cl = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.cm = extractelement <2 x double> %i.ck, i64 0 ; 2 uses
  %i.cn = call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double %i.cl)
  %i.co = load double, ptr %i.bq, align 16, !tbaa !68 ; 3 uses
  %i.cp = call noundef double @llvm.fmuladd.f64(double %i.co, double %i.co, double %i.cn) ; 2 uses
  %i.cq = fcmp une double %i.cp, 0.000000e+00
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.cp)
  %i.cr = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.cs = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x double> %i.ck, %i.ct
  store <2 x double> %i.cu, ptr %i.c, align 16, !tbaa !68
  %i.cv = fmul double %i.co, %i.cr
  store double %i.cv, ptr %i.bq, align 16, !tbaa !68
  br label %bb.y

.loopexit:                                        ; preds = %bb.j, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.x, %bb.y, %bb.z, %bb.aa, %_ZL11string2dvecPcPd.exit132, %bb.ag, %bb.ah, %bb.aj, %bb.ak, %bb.al, %bb.an, %bb.ao, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bc, %bb.bd, %bb.be, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.s, %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.af, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.cj, %bb.u ], [ %i.ds, %bb.af ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #18
  br label %bb.bg

bb.x:                                             ; preds = %bb.v
  %i.cw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %i.bt) #18 ; 0 uses
  %i.cx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.cx, ptr nonnull %i.b)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !43
  %i.cz = load ptr, ptr @_ZL6RotStrB5cxx11, align 8, !tbaa !14
  %i.da = load i32, ptr %i.bs, align 8, !tbaa !65
  %i.db = invoke noundef ptr @_Z17enumValueToString25EnforcedRotationGroupType(i32 noundef %i.da)
          to label %bb.z unwind label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.dc = load double, ptr %i.c, align 16, !tbaa !68
  %i.dd = load double, ptr %i.bp, align 8, !tbaa !68
  %i.de = load double, ptr %i.bq, align 16, !tbaa !68
  %i.df = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.29, ptr noundef %i.cz, i32 noundef %i.bt, ptr noundef %i.db, double noundef %i.dc, double noundef %i.dd, double noundef %i.de) #21 ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.dh = load <2 x double>, ptr %i.c, align 16, !tbaa !68
  %i.di = fptrunc <2 x double> %i.dh to <2 x float>
  store <2 x float> %i.di, ptr %i.dg, align 8, !tbaa !44
  %i.dj = load double, ptr %i.bq, align 16, !tbaa !68
  %i.dk = fptrunc double %i.dj to float
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  store float %i.dk, ptr %i.dl, align 8, !tbaa !44
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.30)
          to label %bb.aa unwind label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.dm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.bt) #18 ; 0 uses
  invoke void @_Z14setStringEntryPSt6vectorI9t_inpfileSaIS0_EEPKcPcS5_(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.32)
          to label %bb.ab unwind label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.dn = load i32, ptr %i.bs, align 8, !tbaa !65
  switch i32 %i.dn, label %_ZL11string2dvecPcPd.exit132 [
    i32 0, label %bb.ac
    i32 2, label %bb.ac
    i32 4, label %bb.ac
    i32 6, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %i.do = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bq) #18
  %.not.i128 = icmp eq i32 %i.do, 3
  br i1 %.not.i128, label %._ZL11string2dvecPcPd.exit132_crit_edge, label %bb.ad

._ZL11string2dvecPcPd.exit132_crit_edge:          ; preds = %bb.ac
  %i.dp = load <2 x double>, ptr %i.c, align 16, !tbaa !68
  %.pre151 = load double, ptr %i.bq, align 16, !tbaa !68
  %i.dq = fptrunc <2 x double> %i.dp to <2 x float>
  %i.dr = fptrunc double %.pre151 to float
  br label %_ZL11string2dvecPcPd.exit132

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(70) @.str.16, i8 noundef zeroext 2)
          to label %.noexc129 unwind label %.loopexit.split-lp

.noexc129:                                        ; preds = %bb.ad
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 69, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.e) #19
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc129
  unreachable

bb.af:                                            ; preds = %.noexc129
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.body

_ZL11string2dvecPcPd.exit132:                     ; preds = %._ZL11string2dvecPcPd.exit132_crit_edge, %bb.ab
  %i.dt = phi float [ %i.dr, %._ZL11string2dvecPcPd.exit132_crit_edge ], [ 0.000000e+00, %bb.ab ]
  %i.du = phi <2 x float> [ %i.dq, %._ZL11string2dvecPcPd.exit132_crit_edge ], [ zeroinitializer, %bb.ab ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bs, i64 68
  store <2 x float> %i.du, ptr %i.dv, align 4, !tbaa !44
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bs, i64 76
  store float %i.dt, ptr %i.dw, align 4, !tbaa !44
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.33)
          to label %bb.ag unwind label %.loopexit

bb.ag:                                            ; preds = %_ZL11string2dvecPcPd.exit132
  %i.dx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %i.bt) #18 ; 0 uses
  %i.dy = invoke noundef double @_Z9get_erealPSt6vectorI9t_inpfileSaIS0_EEPKcdP14WarningHandler(ptr noundef %1, ptr noundef nonnull %i.a, double noundef 0.000000e+00, ptr noundef %3)
          to label %bb.ah unwind label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.dz = fptrunc double %i.dy to float
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bs, i64 60
  store float %i.dz, ptr %i.ea, align 4, !tbaa !69
  %i.eb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %i.bt) #18 ; 0 uses
  %i.ec = invoke noundef double @_Z9get_erealPSt6vectorI9t_inpfileSaIS0_EEPKcdP14WarningHandler(ptr noundef %1, ptr noundef nonnull %i.a, double noundef 0.000000e+00, ptr noundef %3)
          to label %bb.ai unwind label %.loopexit ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ed = fptrunc double %i.ec to float
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  store float %i.ed, ptr %i.ee, align 8, !tbaa !70
  %i.ef = fcmp ugt double %i.ec, f0x3690000000000000
  br i1 %i.ef, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %i.bt) #18 ; 0 uses
  %i.eh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18
  invoke void @_ZN14WarningHandler7addNoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.eh, ptr nonnull %i.b)
          to label %bb.ak unwind label %.loopexit

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.37)
          to label %bb.al unwind label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.ei = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %i.bt) #18 ; 0 uses
  %i.ej = invoke noundef double @_Z9get_erealPSt6vectorI9t_inpfileSaIS0_EEPKcdP14WarningHandler(ptr noundef %1, ptr noundef nonnull %i.a, double noundef 1.500000e+00, ptr noundef %3)
          to label %bb.am unwind label %.loopexit ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.ek = fptrunc double %i.ej to float
  %i.el = getelementptr inbounds nuw i8, ptr %i.bs, i64 92
  store float %i.ek, ptr %i.el, align 4, !tbaa !71
  %i.em = fcmp ugt double %i.ej, f0x3690000000000000
  br i1 %i.em, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.en = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.bt) #18 ; 0 uses
  %i.eo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.eo, ptr nonnull %i.b)
          to label %bb.ao unwind label %.loopexit

bb.ao:                                            ; preds = %bb.an, %bb.am
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.40)
          to label %bb.ap unwind label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.ep = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.bt) #18 ; 0 uses
  %i.eq = invoke noundef double @_Z9get_erealPSt6vectorI9t_inpfileSaIS0_EEPKcdP14WarningHandler(ptr noundef %1, ptr noundef nonnull %i.a, double noundef 1.000000e-03, ptr noundef %3)
          to label %bb.aq unwind label %.loopexit ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.er = fptrunc double %i.eq to float
  %i.es = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  store float %i.er, ptr %i.es, align 8, !tbaa !72
  %i.et = fcmp ugt double %i.eq, f0x3690000000000000
  br i1 %i.et, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %i.bt) #18 ; 0 uses
  %i.ev = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.ev, ptr nonnull %i.b)
          to label %bb.as unwind label %.loopexit

bb.as:                                            ; preds = %bb.ar, %bb.aq
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.43)
          to label %bb.at unwind label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.ew = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %i.bt) #18 ; 0 uses
  %i.ex = invoke noundef double @_Z9get_erealPSt6vectorI9t_inpfileSaIS0_EEPKcdP14WarningHandler(ptr noundef %1, ptr noundef nonnull %i.a, double noundef 1.000000e-04, ptr noundef %3)
          to label %bb.au unwind label %.loopexit ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.ey = fptrunc double %i.ex to float
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bs, i64 100
  store float %i.ey, ptr %i.ez, align 4, !tbaa !73
  %i.fa = fcmp ugt double %i.ex, f0x3690000000000000
  br i1 %i.fa, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fb = load i32, ptr %i.bs, align 8, !tbaa !65
  switch i32 %i.fb, label %bb.ax [
    i32 6, label %bb.aw
    i32 10, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %i.fc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %i.bt) #18 ; 0 uses
  %i.fd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.fd, ptr nonnull %i.b)
          to label %bb.ax unwind label %.loopexit

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.au
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.46)
          to label %bb.ay unwind label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.fe = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %i.bt) #18 ; 0 uses
  %i.ff = invoke noundef i32 @_Z7getEnumI20RotationGroupFittingET_PSt6vectorI9t_inpfileSaIS3_EEPKcP14WarningHandler(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %3)
          to label %bb.az unwind label %.loopexit

bb.az:                                            ; preds = %bb.ay
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bs, i64 80 ; 2 uses
  store i32 %i.ff, ptr %i.fg, align 8, !tbaa !74
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.48)
          to label %bb.ba unwind label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.fh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.bt) #18 ; 0 uses
  %i.fi = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EEPKciP14WarningHandler(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 21, ptr noundef %3)
          to label %bb.bb unwind label %.loopexit ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bs, i64 84
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !75
  %i.fk = load i32, ptr %i.fg, align 8, !tbaa !74
  %i.fl = icmp eq i32 %i.fk, 2
  %i.fm = icmp slt i32 %i.fi, 1
  %or.cond = and i1 %i.fm, %i.fl
  br i1 %or.cond, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.bt) #18 ; 0 uses
  %i.fo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %i.fo, ptr nonnull %i.b)
          to label %bb.bd unwind label %.loopexit

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %1, ptr noundef nonnull @.str.51)
          to label %bb.be unwind label %.loopexit

bb.be:                                            ; preds = %bb.bd
  %i.fp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.bt) #18 ; 0 uses
  %i.fq = invoke noundef double @_Z9get_erealPSt6vectorI9t_inpfileSaIS0_EEPKcdP14WarningHandler(ptr noundef %1, ptr noundef nonnull %i.a, double noundef 2.500000e-01, ptr noundef %3)
          to label %bb.bf unwind label %.loopexit

bb.bf:                                            ; preds = %bb.be
  %i.fr = fptrunc double %i.fq to float
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  store float %i.fr, ptr %i.fs, align 8, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

bb.bg:                                            ; preds = %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  resume { ptr, i32 } %.pn
}

declare void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EEPKciP14WarningHandler(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(70) %1, i8 noundef zeroext %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(70) %1) #18 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.b, ptr %i.a, align 8, !tbaa !45
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.f, ptr %i.c, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.h, ptr %i.g, align 1, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !30
  %i.k = load ptr, ptr %0, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !15
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !15
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare void @_Z14setStringEntryPSt6vectorI9t_inpfileSaIS0_EEPKcPcS5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_Z7getEnumI25EnforcedRotationGroupTypeET_PSt6vectorI9t_inpfileSaIS3_EEPKcP14WarningHandler(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef ptr @_Z17enumValueToString25EnforcedRotationGroupType(i32 noundef 0) ; 5 uses
  %i.b = tail call noundef i32 @_Z8get_einpPSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -40
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.k = sext i32 %i.b to i64                     ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %i.l, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 13 uses
  %i.p = tail call noundef ptr @_Z17enumValueToString25EnforcedRotationGroupType(i32 noundef 0)
  %i.q = tail call noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %i.p, ptr noundef %i.o)
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef ptr @_Z17enumValueToString25EnforcedRotationGroupType(i32 noundef 1)
  %i.s = tail call noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %i.r, ptr noundef %i.o)
  %.not.1 = icmp eq i32 %i.s, 0
  br i1 %.not.1, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noundef ptr @_Z17enumValueToString25EnforcedRotationGroupType(i32 noundef 2)
  %i.u = tail call noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %i.t, ptr noundef %i.o)
  %.not.2 = icmp eq i32 %i.u, 0
  br i1 %.not.2, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call noundef ptr @_Z17enumValueToString25EnforcedRotationGroupType(i32 noundef 3)
  %i.w = tail call noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %i.v, ptr noundef %i.o)
  %.not.3 = icmp eq i32 %i.w, 0
  br i1 %.not.3, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call noundef ptr @_Z17enumValueToString25EnforcedRotationGroupType(i32 noundef 4)
  %i.y = tail call noundef i32 @_Z18gmx_strcasecmp_minPKcS0_(ptr noundef %i.x, ptr noundef %i.o)
  %.not.4 = icmp eq i32 %i.y, 0
  br i1 %.not.4, label %.thread, label %bb.h

end_hunk_0
