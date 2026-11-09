Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/List?download=true
inline.NumInlined: 229
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0
@.str.32 = private unnamed_addr constant [4 x i32] [i32 67, i32 82, i32 67, i32 0], align 4, !guid !45
@.str.33 = private unnamed_addr constant [5 x i32] [i32 65, i32 110, i32 116, i32 105, i32 0], align 4, !guid !46
@.str.34 = private unnamed_addr constant [7 x i32] [i32 77, i32 101, i32 116, i32 104, i32 111, i32 100, i32 0], align 4, !guid !47
@.str.35 = private unnamed_addr constant [8 x i32] [i32 72, i32 111, i32 115, i32 116, i32 32, i32 79, i32 83, i32 0], align 4, !guid !48
@.str.36 = private unnamed_addr constant [12 x i32] [i32 70, i32 105, i32 108, i32 101, i32 32, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 0], align 4, !guid !49
@.str.37 = private unnamed_addr constant [5 x i32] [i32 85, i32 115, i32 101, i32 114, i32 0], align 4, !guid !50
@.str.38 = private unnamed_addr constant [6 x i32] [i32 71, i32 114, i32 111, i32 117, i32 112, i32 0], align 4, !guid !51
@.str.39 = private unnamed_addr constant [6 x i32] [i32 66, i32 108, i32 111, i32 99, i32 107, i32 0], align 4, !guid !52
@.str.40 = private unnamed_addr constant [8 x i32] [i32 67, i32 111, i32 109, i32 109, i32 101, i32 110, i32 116, i32 0], align 4, !guid !53
@.str.41 = private unnamed_addr constant [9 x i32] [i32 80, i32 111, i32 115, i32 105, i32 116, i32 105, i32 111, i32 110, i32 0], align 4, !guid !54
@.str.42 = private unnamed_addr constant [7 x i32] [i32 80, i32 114, i32 101, i32 102, i32 105, i32 120, i32 0], align 4, !guid !55
@.str.43 = private unnamed_addr constant [8 x i32] [i32 70, i32 111, i32 108, i32 100, i32 101, i32 114, i32 115, i32 0], align 4, !guid !56
@.str.44 = private unnamed_addr constant [6 x i32] [i32 70, i32 105, i32 108, i32 101, i32 115, i32 0], align 4, !guid !57
@.str.45 = private unnamed_addr constant [8 x i32] [i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 0], align 4, !guid !58
@.str.46 = private unnamed_addr constant [7 x i32] [i32 86, i32 111, i32 108, i32 117, i32 109, i32 101, i32 0], align 4, !guid !59
@.str.47 = private unnamed_addr constant [12 x i32] [i32 77, i32 117, i32 108, i32 116, i32 105, i32 118, i32 111, i32 108, i32 117, i32 109, i32 101, i32 0], align 4, !guid !60
@.str.48 = private unnamed_addr constant [7 x i32] [i32 79, i32 102, i32 102, i32 115, i32 101, i32 116, i32 0], align 4, !guid !61
@.str.49 = private unnamed_addr constant [6 x i32] [i32 76, i32 105, i32 110, i32 107, i32 115, i32 0], align 4, !guid !62
@.str.50 = private unnamed_addr constant [7 x i32] [i32 66, i32 108, i32 111, i32 99, i32 107, i32 115, i32 0], align 4, !guid !63
@.str.51 = private unnamed_addr constant [8 x i32] [i32 86, i32 111, i32 108, i32 117, i32 109, i32 101, i32 115, i32 0], align 4, !guid !64
@.str.52 = private unnamed_addr constant [7 x i32] [i32 54, i32 52, i32 45, i32 98, i32 105, i32 116, i32 0], align 4, !guid !65
@.str.53 = private unnamed_addr constant [11 x i32] [i32 66, i32 105, i32 103, i32 45, i32 101, i32 110, i32 100, i32 105, i32 97, i32 110, i32 0], align 4, !guid !66
@.str.54 = private unnamed_addr constant [4 x i32] [i32 67, i32 80, i32 85, i32 0], align 4, !guid !67
@.str.55 = private unnamed_addr constant [14 x i32] [i32 80, i32 104, i32 121, i32 115, i32 105, i32 99, i32 97, i32 108, i32 32, i32 83, i32 105, i32 122, i32 101, i32 0], align 4, !guid !68
@.str.56 = private unnamed_addr constant [13 x i32] [i32 72, i32 101, i32 97, i32 100, i32 101, i32 114, i32 115, i32 32, i32 83, i32 105, i32 122, i32 101, i32 0], align 4, !guid !69
@.str.57 = private unnamed_addr constant [9 x i32] [i32 67, i32 104, i32 101, i32 99, i32 107, i32 115, i32 117, i32 109, i32 0], align 4, !guid !70
@.str.58 = private unnamed_addr constant [16 x i32] [i32 67, i32 104, i32 97, i32 114, i32 97, i32 99, i32 116, i32 101, i32 114, i32 105, i32 115, i32 116, i32 105, i32 99, i32 115, i32 0], align 4, !guid !71
@.str.59 = private unnamed_addr constant [16 x i32] [i32 86, i32 105, i32 114, i32 116, i32 117, i32 97, i32 108, i32 32, i32 65, i32 100, i32 100, i32 114, i32 101, i32 115, i32 115, i32 0], align 4, !guid !72
@.str.60 = private unnamed_addr constant [3 x i32] [i32 73, i32 68, i32 0], align 4, !guid !73
@.str.61 = private unnamed_addr constant [11 x i32] [i32 83, i32 104, i32 111, i32 114, i32 116, i32 32, i32 78, i32 97, i32 109, i32 101, i32 0], align 4, !guid !74
@.str.62 = private unnamed_addr constant [20 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 111, i32 114, i32 32, i32 65, i32 112, i32 112, i32 108, i32 105, i32 99, i32 97, i32 116, i32 105, i32 111, i32 110, i32 0], align 4, !guid !75
@.str.63 = private unnamed_addr constant [12 x i32] [i32 83, i32 101, i32 99, i32 116, i32 111, i32 114, i32 32, i32 83, i32 105, i32 122, i32 101, i32 0], align 4, !guid !76
@.str.64 = private unnamed_addr constant [5 x i32] [i32 77, i32 111, i32 100, i32 101, i32 0], align 4, !guid !77
@.str.65 = private unnamed_addr constant [5 x i32] [i32 76, i32 105, i32 110, i32 107, i32 0], align 4, !guid !78
@.str.66 = private unnamed_addr constant [11 x i32] [i32 84, i32 111, i32 116, i32 97, i32 108, i32 32, i32 83, i32 105, i32 122, i32 101, i32 0], align 4, !guid !79
@.str.67 = private unnamed_addr constant [11 x i32] [i32 70, i32 114, i32 101, i32 101, i32 32, i32 83, i32 112, i32 97, i32 99, i32 101, i32 0], align 4, !guid !80
@.str.68 = private unnamed_addr constant [13 x i32] [i32 67, i32 108, i32 117, i32 115, i32 116, i32 101, i32 114, i32 32, i32 83, i32 105, i32 122, i32 101, i32 0], align 4, !guid !81
@.str.69 = private unnamed_addr constant [6 x i32] [i32 76, i32 97, i32 98, i32 101, i32 108, i32 0], align 4, !guid !82
@.str.70 = private unnamed_addr constant [15 x i8] c"incorrect item\00", align 1, !guid !83
@.str.71 = private unnamed_addr constant [30 x i8] c"FileTimeToLocalFileTime error\00", align 1, !guid !84
@.str.72 = private unnamed_addr constant [20 x i8] c"                   \00", align 1, !guid !85
@.str.73 = private unnamed_addr constant [6 x i32] [i32 102, i32 105, i32 108, i32 101, i32 115, i32 0], align 4, !guid !86
@.str.74 = private unnamed_addr constant [8 x i32] [i32 102, i32 111, i32 108, i32 100, i32 101, i32 114, i32 115, i32 0], align 4, !guid !87
@_ZTV13CObjectVectorI10CFieldInfoE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CObjectVectorI10CFieldInfoE, ptr @_ZN13CObjectVectorI10CFieldInfoED2Ev, ptr @_ZN13CObjectVectorI10CFieldInfoED0Ev, ptr @_ZN13CObjectVectorI10CFieldInfoE6DeleteEii] }, comdat, align 8, !guid !88
@_ZTI13CObjectVectorI10CFieldInfoE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CObjectVectorI10CFieldInfoE, ptr @_ZTI13CRecordVectorIPvE }, comdat, align 8, !guid !89
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13CObjectVectorI10CFieldInfoE = linkonce_odr dso_local constant [30 x i8] c"13CObjectVectorI10CFieldInfoE\00", comdat, align 1, !guid !90
@_ZTI13CRecordVectorIPvE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CRecordVectorIPvE, ptr @_ZTI17CBaseRecordVector }, comdat, align 8, !guid !91
@_ZTS13CRecordVectorIPvE = linkonce_odr dso_local constant [20 x i8] c"13CRecordVectorIPvE\00", comdat, align 1, !guid !92
@_ZTI17CBaseRecordVector = external constant ptr
@.str.75 = private unnamed_addr constant [18 x i32] [i32 32, i32 32, i32 32, i32 68, i32 97, i32 116, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 84, i32 105, i32 109, i32 101, i32 0], align 4, !guid !93
@.str.76 = private unnamed_addr constant [5 x i32] [i32 65, i32 116, i32 116, i32 114, i32 0], align 4, !guid !94
@.str.77 = private unnamed_addr constant [11 x i32] [i32 67, i32 111, i32 109, i32 112, i32 114, i32 101, i32 115, i32 115, i32 101, i32 100, i32 0], align 4, !guid !95
@_ZTV13CObjectVectorI4CArcE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CObjectVectorI4CArcE, ptr @_ZN13CObjectVectorI4CArcED2Ev, ptr @_ZN13CObjectVectorI4CArcED0Ev, ptr @_ZN13CObjectVectorI4CArcE6DeleteEii] }, comdat, align 8, !guid !96
@_ZTI13CObjectVectorI4CArcE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CObjectVectorI4CArcE, ptr @_ZTI13CRecordVectorIPvE }, comdat, align 8, !guid !97
@_ZTS13CObjectVectorI4CArcE = linkonce_odr dso_local constant [23 x i8] c"13CObjectVectorI4CArcE\00", comdat, align 1, !guid !98
@_ZTV13CObjectVectorI11CStringBaseIwEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13CObjectVectorI11CStringBaseIwEE, ptr @_ZN13CObjectVectorI11CStringBaseIwEED2Ev, ptr @_ZN13CObjectVectorI11CStringBaseIwEED0Ev, ptr @_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii] }, comdat, align 8, !guid !99
@_ZTI13CObjectVectorI11CStringBaseIwEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13CObjectVectorI11CStringBaseIwEE, ptr @_ZTI13CRecordVectorIPvE }, comdat, align 8, !guid !100
@_ZTS13CObjectVectorI11CStringBaseIwEE = linkonce_odr dso_local constant [34 x i8] c"13CObjectVectorI11CStringBaseIwEE\00", comdat, align 1, !guid !101
@_ZTV20COpenCallbackConsole = external unnamed_addr constant { [9 x ptr] }, align 8, !guid !102
@.str.78 = private unnamed_addr constant [18 x i8] c"Listing archive: \00", align 1, !guid !103

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13CFieldPrinter4InitEPK14CFieldInfoIniti(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !158 {
bb.a:
  %3 = alloca %struct.CFieldInfo, align 8         ; 9 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN10CFieldInfoD2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN10CFieldInfoD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10CFieldInfoD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.f = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #16 ; 11 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = load i32, ptr %i.d, align 4, !tbaa !107
  %i.i = icmp sgt i32 %i.h, 0
  %.pre1.i.i = load i32, ptr %i.c, align 8, !tbaa !108 ; 5 uses
  br i1 %i.i, label %.preheader.i.i.i, label %_ZN10CFieldInfoC2Ev.exit

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.j = icmp sgt i32 %.pre1.i.i, 0
  %.pre.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !109 ; 9 uses
  br i1 %i.j, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.pre.i.i.i26 = ptrtoaddr ptr %.pre.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre1.i.i to i64 ; 5 uses
  %min.iters.check28 = icmp ult i32 %.pre1.i.i, 8
  %i.k = sub i64 %.pre.i.i.i26, %i.g
  %diff.check30 = icmp ugt i64 %i.k, -32
  %or.cond = select i1 %min.iters.check28, i1 true, i1 %diff.check30
  br i1 %or.cond, label %scalar.ph27.preheader, label %vector.ph31

vector.ph31:                                      ; preds = %.lr.ph.i.i.i
  %n.vec32 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph31
  %index34 = phi i64 [ 0, %vector.ph31 ], [ %index.next37, %vector.body33 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index34 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load35 = load <4 x i32>, ptr %i.l, align 4, !tbaa !111
  %wide.load36 = load <4 x i32>, ptr %i.m, align 4, !tbaa !111
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index34 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %wide.load35, ptr %i.n, align 4, !tbaa !111
  store <4 x i32> %wide.load36, ptr %i.o, align 4, !tbaa !111
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.p = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.p, label %middle.block38, label %vector.body33, !llvm.loop !151

middle.block38:                                   ; preds = %vector.body33
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count.i.i.i
  br i1 %cmp.n39, label %._crit_edge.thread.i.i.i, label %scalar.ph27.preheader

scalar.ph27.preheader:                            ; preds = %.lr.ph.i.i.i, %middle.block38
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec32, %middle.block38 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph27.prol.loopexit, label %scalar.ph27.prol

scalar.ph27.prol:                                 ; preds = %scalar.ph27.preheader, %scalar.ph27.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph27.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph27.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph27.prol ], [ 0, %scalar.ph27.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.r = load i32, ptr %i.q, align 4, !tbaa !111
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.prol
  store i32 %i.r, ptr %i.s, align 4, !tbaa !111
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph27.prol.loopexit, label %scalar.ph27.prol, !llvm.loop !152

scalar.ph27.prol.loopexit:                        ; preds = %scalar.ph27.prol, %scalar.ph27.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph27.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph27.prol ]
  %i.t = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge.thread.i.i.i, label %scalar.ph27

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.v = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.v, label %_ZN10CFieldInfoC2Ev.exit, label %._crit_edge.thread.i.i.i

scalar.ph27:                                      ; preds = %scalar.ph27.prol.loopexit, %scalar.ph27
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph27 ], [ %indvars.iv.i.i.i.unr, %scalar.ph27.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !111
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i.i
  store i32 %i.x, ptr %i.y, align 4, !tbaa !111
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !111
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !111
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !111
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i.i.i.1
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !111
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !111
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i.i.i.2
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !111
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.thread.i.i.i, label %scalar.ph27, !llvm.loop !153

._crit_edge.thread.i.i.i:                         ; preds = %scalar.ph27.prol.loopexit, %scalar.ph27, %middle.block38, %._crit_edge.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i) #17
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !108
  br label %_ZN10CFieldInfoC2Ev.exit

_ZN10CFieldInfoC2Ev.exit:                         ; preds = %bb.b, %._crit_edge.i.i.i, %._crit_edge.thread.i.i.i
  %i.ai = phi i32 [ %.pre1.i.i, %bb.b ], [ %.pre1.i.i, %._crit_edge.i.i.i ], [ %.pre.i.i, %._crit_edge.thread.i.i.i ]
  store ptr %i.f, ptr %i.b, align 8, !tbaa !109
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.aj
  store i32 0, ptr %i.ak, align 4, !tbaa !111
  store i32 4, ptr %i.d, align 4, !tbaa !107
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !160
  store i32 %i.am, ptr %3, align 8, !tbaa !118
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !161 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !108
  store i32 0, ptr %i.f, align 4, !tbaa !111
  %wcslen.i.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.ao)
  %i.ap = trunc i64 %wcslen.i.i to i32            ; 3 uses
  %i.aq = add nsw i32 %i.ap, 1                    ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 4
  br i1 %i.ar, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader, label %bb.c

bb.c:                                             ; preds = %_ZN10CFieldInfoC2Ev.exit
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = icmp slt i32 %i.ap, -1
  %i.au = shl nuw nsw i64 %i.as, 2
  %i.av = select i1 %i.at, i64 -1, i64 %i.au
  %i.aw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.av) #16
          to label %.noexc unwind label %bb.h     ; 10 uses

.noexc:                                           ; preds = %bb.c
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = load i32, ptr %i.d, align 4, !tbaa !107
  %i.az = icmp sgt i32 %i.ay, 0
  %.pre4.i = load i32, ptr %i.c, align 8, !tbaa !108 ; 5 uses
  br i1 %i.az, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %.noexc
  %i.ba = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i13 = load ptr, ptr %i.b, align 8, !tbaa !109 ; 9 uses
  br i1 %i.ba, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i1321 = ptrtoaddr ptr %.pre.i.i13 to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre4.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre4.i, 8
  %i.bb = sub i64 %.pre.i.i1321, %i.ax
  %diff.check = icmp ugt i64 %i.bb, -32
  %or.cond41 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond41, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i13, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <4 x i32>, ptr %i.bc, align 4, !tbaa !111
  %wide.load22 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !111
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x i32> %wide.load, ptr %i.be, align 4, !tbaa !111
  store <4 x i32> %wide.load22, ptr %i.bf, align 4, !tbaa !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter42 = and i64 %wide.trip.count.i.i, 3   ; 2 uses
  %lcmp.mod43.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter44 = phi i64 [ %prol.iter44.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i13, i64 %indvars.iv.i.i.prol
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !111
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i.prol
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !111
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter44.next = add i64 %prol.iter44, 1     ; 2 uses
  %prol.iter44.cmp.not = icmp eq i64 %prol.iter44.next, %xtraiter42
  br i1 %prol.iter44.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !155

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.bk = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.bm = icmp eq ptr %.pre.i.i13, null
  br i1 %i.bm, label %bb.d, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i13, i64 %indvars.iv.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !111
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !111
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i13, i64 %indvars.iv.next.i.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !111
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !111
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i13, i64 %indvars.iv.next.i.i.1
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !111
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.1
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !111
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i13, i64 %indvars.iv.next.i.i.2
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !111
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i.i.2
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !111
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !156

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i13) #17
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc
  %i.bz = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre4.i, %._crit_edge.i.i ], [ %.pre4.i, %.noexc ]
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !109
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ca
  store i32 0, ptr %i.cb, align 4, !tbaa !111
  store i32 %i.aq, ptr %i.d, align 4, !tbaa !107
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader: ; preds = %bb.d, %_ZN10CFieldInfoC2Ev.exit
  %.04.i.i.ph = phi ptr [ %i.aw, %bb.d ], [ %i.f, %_ZN10CFieldInfoC2Ev.exit ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ce, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %.04.i.i.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.cc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ao, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.cd = load i32, ptr %.0.i.i, align 4, !tbaa !111 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.cd, ptr %.04.i.i, align 4, !tbaa !111
  %.not.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !0

bb.e:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.ap, ptr %i.c, align 8, !tbaa !108
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.cg = load <4 x i32>, ptr %i.cf, align 8, !tbaa !119
  store <4 x i32> %i.cg, ptr %i.e, align 8, !tbaa !119
  %i.ch = invoke noundef i32 @_ZN13CObjectVectorI10CFieldInfoE3AddERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !109 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN10CFieldInfoD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ci) #17
  br label %_ZN10CFieldInfoD2Ev.exit

_ZN10CFieldInfoD2Ev.exit:                         ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !157

bb.h:                                             ; preds = %bb.c, %bb.e
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !109 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN10CFieldInfoD2Ev.exit14, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #17
  br label %_ZN10CFieldInfoD2Ev.exit14

_ZN10CFieldInfoD2Ev.exit14:                       ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.ck
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN13CObjectVectorI10CFieldInfoE3AddERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !164 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16 ; 7 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !118
  store i32 %i.b, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %i.i = add nsw i32 %i.h, 1                      ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = zext nneg i32 %i.i to i64
end_hunk_0
begin_hunk_1_@_ZL11GetPropNamejPw:.critedge
    i32 33, label %.fold.split91
    i32 34, label %.fold.split92
    i32 35, label %.fold.split93
    i32 36, label %.fold.split94
    i32 37, label %.fold.split95
    i32 38, label %.fold.split96
    i32 39, label %.fold.split97
    i32 41, label %.fold.split98
    i32 42, label %.fold.split99
    i32 43, label %.fold.split100
    i32 44, label %.fold.split101
    i32 45, label %.fold.split102
    i32 46, label %.fold.split103
    i32 47, label %.fold.split104
    i32 48, label %.fold.split105
    i32 49, label %.fold.split106
    i32 50, label %.fold.split107
    i32 51, label %.fold.split108
    i32 52, label %.fold.split109
    i32 53, label %.fold.split110
    i32 54, label %.fold.split111
    i32 55, label %.fold.split112
    i32 4352, label %.fold.split113
    i32 4353, label %.fold.split114
    i32 4354, label %.fold.split115
    i32 4355, label %.fold.split116
  ]

bb.a:                                             ; preds = %.critedge
  %.not13 = icmp eq ptr %2, null
  br i1 %.not13, label %._crit_edge.i.i39, label %._crit_edge.i.i22

.fold.split:                                      ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split64:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split65:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split66:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split67:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split68:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split69:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split70:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split71:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split72:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split73:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split74:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split75:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split76:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split77:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split78:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split79:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split80:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split81:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split82:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split83:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split84:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split85:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split86:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split87:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split88:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split89:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split90:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split91:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split92:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split93:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split94:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split95:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split96:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split97:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split98:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split99:                                    ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split100:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split101:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split102:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split103:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split104:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split105:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split106:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split107:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split108:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split109:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split110:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split111:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split112:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split113:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split114:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split115:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

.fold.split116:                                   ; preds = %.critedge
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.critedge, %.fold.split116, %.fold.split115, %.fold.split114, %.fold.split113, %.fold.split112, %.fold.split111, %.fold.split110, %.fold.split109, %.fold.split108, %.fold.split107, %.fold.split106, %.fold.split105, %.fold.split104, %.fold.split103, %.fold.split102, %.fold.split101, %.fold.split100, %.fold.split99, %.fold.split98, %.fold.split97, %.fold.split96, %.fold.split95, %.fold.split94, %.fold.split93, %.fold.split92, %.fold.split91, %.fold.split90, %.fold.split89, %.fold.split88, %.fold.split87, %.fold.split86, %.fold.split85, %.fold.split84, %.fold.split83, %.fold.split82, %.fold.split81, %.fold.split80, %.fold.split79, %.fold.split78, %.fold.split77, %.fold.split76, %.fold.split75, %.fold.split74, %.fold.split73, %.fold.split72, %.fold.split71, %.fold.split70, %.fold.split69, %.fold.split68, %.fold.split67, %.fold.split66, %.fold.split65, %.fold.split64, %.fold.split
  %.lcssa = phi ptr [ @_ZL13kPropIdToName, %.critedge ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 848), %.fold.split115 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 16), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 32), %.fold.split64 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 48), %.fold.split65 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 64), %.fold.split66 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 80), %.fold.split67 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 96), %.fold.split68 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 112), %.fold.split69 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 128), %.fold.split70 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 144), %.fold.split71 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 160), %.fold.split72 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 176), %.fold.split73 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 192), %.fold.split74 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 208), %.fold.split75 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 224), %.fold.split76 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 240), %.fold.split77 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 256), %.fold.split78 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 272), %.fold.split79 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 288), %.fold.split80 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 304), %.fold.split81 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 320), %.fold.split82 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 336), %.fold.split83 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 352), %.fold.split84 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 368), %.fold.split85 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 384), %.fold.split86 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 400), %.fold.split87 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 416), %.fold.split88 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 432), %.fold.split89 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 448), %.fold.split90 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 464), %.fold.split91 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 480), %.fold.split92 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 496), %.fold.split93 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 512), %.fold.split94 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 528), %.fold.split95 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 544), %.fold.split96 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 560), %.fold.split97 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 576), %.fold.split98 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 592), %.fold.split99 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 608), %.fold.split100 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 624), %.fold.split101 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 640), %.fold.split102 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 656), %.fold.split103 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 672), %.fold.split104 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 688), %.fold.split105 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 704), %.fold.split106 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 720), %.fold.split107 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 736), %.fold.split108 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 752), %.fold.split109 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 768), %.fold.split110 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 784), %.fold.split111 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 800), %.fold.split112 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 816), %.fold.split113 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 832), %.fold.split114 ], [ getelementptr inbounds nuw (i8, ptr @_ZL13kPropIdToName, i64 864), %.fold.split116 ]
  %i.b = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !175  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.c)
  %i.e = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = icmp ne i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = zext nneg i32 %i.f to i64
  %i.j = icmp slt i32 %i.e, -1
  %i.k = shl nuw nsw i64 %i.i, 2
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #16 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !109
  store i32 0, ptr %i.m, align 4, !tbaa !111
  store i32 %i.f, ptr %i.h, align 4, !tbaa !107
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %._crit_edge.i.i, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.m, %._crit_edge.i.i ] ; 2 uses
  %.0.i.i = phi ptr [ %i.n, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.c, %._crit_edge.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.o = load i32, ptr %.0.i.i, align 4, !tbaa !111 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.o, ptr %.04.i.i, align 4, !tbaa !111
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !0

bb.b:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.e, ptr %i.d, align 8, !tbaa !108
  br label %bb.c

._crit_edge.i.i22:                                ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %wcslen.i.i14 = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %2)
  %i.r = trunc i64 %wcslen.i.i14 to i32           ; 3 uses
  %i.s = add nsw i32 %i.r, 1                      ; 3 uses
  %i.t = icmp ne i32 %i.s, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = zext nneg i32 %i.s to i64
  %i.w = icmp slt i32 %i.r, -1
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = select i1 %i.w, i64 -1, i64 %i.x
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #16 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !109
  store i32 0, ptr %i.z, align 4, !tbaa !111
  store i32 %i.s, ptr %i.u, align 4, !tbaa !107
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i16

_ZN11CStringBaseIwE11SetCapacityEi.exit.i16:      ; preds = %._crit_edge.i.i22, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i16
  %.04.i.i17 = phi ptr [ %i.ac, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i16 ], [ %i.z, %._crit_edge.i.i22 ] ; 2 uses
  %.0.i.i18 = phi ptr [ %i.aa, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i16 ], [ %2, %._crit_edge.i.i22 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i18, i64 4
  %i.ab = load i32, ptr %.0.i.i18, align 4, !tbaa !111 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.04.i.i17, i64 4
  store i32 %i.ab, ptr %.04.i.i17, align 4, !tbaa !111
  %.not.i.i19 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i19, label %_ZN11CStringBaseIwEC2EPKw.exit30, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i16, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit30:                 ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i16
  store i32 %i.r, ptr %i.q, align 8, !tbaa !108
  br label %bb.c

._crit_edge.i.i39:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @_Z21ConvertUInt32ToStringjPw(i32 noundef %1, ptr noundef nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %wcslen.i.i31 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.a)
  %i.ae = trunc i64 %wcslen.i.i31 to i32          ; 3 uses
  %i.af = add nsw i32 %i.ae, 1                    ; 3 uses
  %i.ag = icmp ne i32 %i.af, 0
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ai = zext nneg i32 %i.af to i64
  %i.aj = icmp slt i32 %i.ae, -1
  %i.ak = shl nuw nsw i64 %i.ai, 2
  %i.al = select i1 %i.aj, i64 -1, i64 %i.ak
  %i.am = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.al) #16 ; 3 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !109
  store i32 0, ptr %i.am, align 4, !tbaa !111
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !107
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33

_ZN11CStringBaseIwE11SetCapacityEi.exit.i33:      ; preds = %._crit_edge.i.i39, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33
  %.04.i.i34 = phi ptr [ %i.ap, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33 ], [ %i.am, %._crit_edge.i.i39 ] ; 2 uses
  %.0.i.i35 = phi ptr [ %i.an, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33 ], [ %i.a, %._crit_edge.i.i39 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i35, i64 4
  %i.ao = load i32, ptr %.0.i.i35, align 4, !tbaa !111 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.04.i.i34, i64 4
  store i32 %i.ao, ptr %.04.i.i34, align 4, !tbaa !111
  %.not.i.i36 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i36, label %_ZN11CStringBaseIwEC2EPKw.exit47, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit47:                 ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN11CStringBaseIwEC2EPKw.exit47, %_ZN11CStringBaseIwEC2EPKw.exit30
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13CFieldPrinter10PrintTitleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 !guid !177 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !123
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !129  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZL11PrintSpacesi.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.03.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %bb.b ]
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.l = add nuw nsw i32 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.l, %i.i
  br i1 %exitcond.not.i, label %_ZL11PrintSpacesi.exit, label %.lr.ph.i, !llvm.loop !1

_ZL11PrintSpacesi.exit:                           ; preds = %.lr.ph.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !178
  %i.o = load i32, ptr %i.g, align 8, !tbaa !118
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZL11PrintSpacesi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !130
  br label %bb.d

bb.d:                                             ; preds = %_ZL11PrintSpacesi.exit, %bb.c
  %i.s = phi i32 [ %i.r, %bb.c ], [ 0, %_ZL11PrintSpacesi.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !108
  %i.w = sub nsw i32 %i.s, %i.v                   ; 3 uses
  switch i32 %i.n, label %_ZL11PrintSpacesi.exit.i [
    i32 2, label %bb.f
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = sdiv i32 %i.w, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.x, %bb.e ], [ %i.w, %bb.d ] ; 4 uses
  %i.y = icmp sgt i32 %.0.i, 0
  br i1 %i.y, label %.lr.ph.i.i, label %_ZL11PrintSpacesi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.03.i.i = phi i32 [ %i.aa, %.lr.ph.i.i ], [ 0, %bb.f ]
  %i.z = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.aa = add nuw nsw i32 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.aa, %.0.i
  br i1 %exitcond.not.i.i, label %_ZL11PrintSpacesi.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZL11PrintSpacesi.exit.i:                         ; preds = %.lr.ph.i.i, %bb.f, %bb.d
  %.013.i = phi i32 [ 0, %bb.d ], [ %.0.i, %bb.f ], [ %.0.i, %.lr.ph.i.i ]
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !109
  %i.ac = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %i.ab) ; 0 uses
  %i.ad = sub nsw i32 %i.w, %.013.i               ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i8.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit

.lr.ph.i8.i:                                      ; preds = %_ZL11PrintSpacesi.exit.i, %.lr.ph.i8.i
  %.03.i9.i = phi i32 [ %i.ag, %.lr.ph.i8.i ], [ 0, %_ZL11PrintSpacesi.exit.i ]
  %i.af = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.ag = add nuw nsw i32 %.03.i9.i, 1            ; 2 uses
  %exitcond.not.i10.i = icmp eq i32 %i.ag, %i.ad
  br i1 %exitcond.not.i10.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, label %.lr.ph.i8.i, !llvm.loop !1

_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit: ; preds = %.lr.ph.i8.i, %_ZL11PrintSpacesi.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !123
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !176
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13CFieldPrinter15PrintTitleLinesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 !guid !179 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !123
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge12:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph11, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !129  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZL11PrintSpacesi.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.03.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %bb.b ]
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.l = add nuw nsw i32 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.l, %i.i
  br i1 %exitcond.not.i, label %_ZL11PrintSpacesi.exit, label %.lr.ph.i, !llvm.loop !1

_ZL11PrintSpacesi.exit:                           ; preds = %.lr.ph.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !130
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZL11PrintSpacesi.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !123
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge12, !llvm.loop !2

.lr.ph:                                           ; preds = %_ZL11PrintSpacesi.exit, %.lr.ph
  %.08 = phi i32 [ %i.t, %.lr.ph ], [ 0, %_ZL11PrintSpacesi.exit ]
  %i.s = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 45) ; 0 uses
  %i.t = add nuw nsw i32 %.08, 1                  ; 2 uses
  %i.u = load i32, ptr %i.m, align 4, !tbaa !130
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !3
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !186 {
bb.a:
  %4 = alloca %struct._FILETIME, align 4          ; 4 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %5 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 14 uses
  %6 = alloca %class.CStringBase, align 8         ; 13 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca [8 x i8], align 4                 ; 7 uses
  %7 = alloca %class.CStringBase, align 8         ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !123
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb:bb.a
bb.n:                                             ; preds = %_ZL11PrintSpacesi.exit
  %i.br = load ptr, ptr %1, align 8, !tbaa !137   ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !126
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 noundef %2, i32 noundef %i.aa, ptr noundef nonnull %5)
          to label %bb.o unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i32 %i.bv, 0
  br i1 %.not, label %bb.p, label %_ZL11PrintSpacesi.exit102.thread170

bb.p:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.o
  br i1 %3, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !109
  %i.by = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %i.bx)
          to label %bb.r unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull @.str)
          to label %bb.s unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ca = load i32, ptr %i.u, align 8, !tbaa !118 ; 3 uses
  %i.cb = icmp eq i32 %i.ca, 3
  br i1 %i.cb, label %.thread163, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !130 ; 4 uses
  %i.ce = icmp eq i32 %i.ca, 9
  %i.cf = load i16, ptr %5, align 8, !tbaa !133   ; 6 uses
  br i1 %i.ce, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  switch i16 %i.cf, label %.thread162 [
    i16 19, label %bb.v
    i16 0, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.cg = icmp eq i16 %i.cf, 0
  %i.ch = load i32, ptr %i.k, align 8
  %i.ci = select i1 %i.cg, i32 0, i32 %i.ch       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.cj = load ptr, ptr %1, align 8, !tbaa !137
  %i.ck = invoke noundef i32 @_Z19IsArchiveItemFolderP10IInArchivejRb(ptr noundef %i.cj, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.w unwind label %bb.x       ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.not88 = icmp eq i32 %i.ck, 0
  br i1 %.not88, label %bb.y, label %.critedge96

bb.x:                                             ; preds = %bb.v
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.cm = load i8, ptr %i.b, align 1, !tbaa !139, !range !140, !noundef !141
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %i.cp = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cq = and <4 x i32> %i.cp, <i32 16, i32 1, i32 2, i32 4> ; 2 uses
  %i.cr = icmp ne <4 x i32> %i.cq, zeroinitializer
  %i.cs = icmp eq <4 x i32> %i.cq, zeroinitializer
  %i.ct = shufflevector <4 x i1> %i.cr, <4 x i1> %i.cs, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cu = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %i.cn, i64 0
  %i.cv = or <4 x i1> %i.ct, %i.cu
  %i.cw = select <4 x i1> %i.cv, <4 x i8> <i8 68, i8 46, i8 46, i8 46>, <4 x i8> <i8 46, i8 82, i8 72, i8 83>
  store <4 x i8> %i.cw, ptr %i.c, align 4, !tbaa !119
  %i.cx = and i32 %i.ci, 32
  %.not13.i = icmp eq i32 %i.cx, 0
  %i.cy = select i1 %.not13.i, i8 46, i8 65
  store i8 %i.cy, ptr %i.m, align 4, !tbaa !119
  store i8 0, ptr %i.n, align 1, !tbaa !119
  %i.cz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull %i.c)
          to label %bb.z unwind label %bb.aa      ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZL11PrintSpacesi.exit102

bb.aa:                                            ; preds = %bb.y
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn89 = phi { ptr, i32 } [ %i.da, %bb.aa ], [ %i.cl, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZN11CStringBaseIwED2Ev.exit127

bb.ac:                                            ; preds = %bb.t
  %i.db = icmp eq i16 %i.cf, 0
  br i1 %i.db, label %bb.ad, label %bb.af

.thread163:                                       ; preds = %bb.s
  %.pr165 = load i16, ptr %5, align 8, !tbaa !133 ; 2 uses
  %i.dc = icmp eq i16 %.pr165, 0
  br i1 %i.dc, label %.thread175, label %.thread162

bb.ad:                                            ; preds = %bb.ac
  br i1 %3, label %_ZL11PrintSpacesi.exit102.thread, label %bb.ae

.thread175:                                       ; preds = %.thread163
  br i1 %3, label %_ZL11PrintSpacesi.exit102.thread, label %_ZL11PrintSpacesi.exit102.thread170

bb.ae:                                            ; preds = %bb.ad
  %i.dd = icmp sgt i32 %i.cd, 0
  br i1 %i.dd, label %.lr.ph.i98, label %_ZL11PrintSpacesi.exit102.thread170

.lr.ph.i98:                                       ; preds = %bb.ae, %.noexc101
  %.03.i99 = phi i32 [ %i.df, %.noexc101 ], [ 0, %bb.ae ]
  %i.de = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc101 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc101:                                        ; preds = %.lr.ph.i98
  %i.df = add nuw nsw i32 %.03.i99, 1             ; 2 uses
  %exitcond.not.i100 = icmp eq i32 %i.df, %i.cd
  br i1 %exitcond.not.i100, label %_ZL11PrintSpacesi.exit102, label %.lr.ph.i98, !llvm.loop !1

bb.af:                                            ; preds = %bb.ac
  %i.dg = icmp eq i32 %i.ca, 12
  br i1 %i.dg, label %bb.ag, label %.thread162

bb.ag:                                            ; preds = %bb.af
  %.not.i103 = icmp eq i16 %i.cf, 64
  br i1 %.not.i103, label %bb.ah, label %.invoke

.invoke:                                          ; preds = %bb.ag, %.noexc106
  %.str.71.sink = phi ptr [ @.str.71, %.noexc106 ], [ @.str.70, %bb.ag ]
  %i.dh = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr %.str.71.sink, ptr %i.dh, align 16, !tbaa !143
  invoke void @__cxa_throw(ptr nonnull %i.dh, ptr nonnull @_ZTIPKc, ptr null) #19
          to label %.cont unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %.val.i = load i32, ptr %i.k, align 8, !tbaa !187
  %.val5.i = load i32, ptr %i.l, align 4
  %i.di = icmp ne i32 %.val.i, 0
  %i.dj = icmp ne i32 %.val5.i, 0
  %narrow.i.not.i = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %narrow.i.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @.str.72)
          to label %_ZL11PrintSpacesi.exit102 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.dl = invoke i32 @FileTimeToLocalFileTime(ptr noundef nonnull %i.k, ptr noundef nonnull %4)
          to label %.noexc106 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc106:                                        ; preds = %bb.aj
  %.not4.i = icmp eq i32 %i.dl, 0
  br i1 %.not4.i, label %.invoke, label %bb.ak

bb.ak:                                            ; preds = %.noexc106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.dm = invoke noundef zeroext i1 @_Z23ConvertFileTimeToStringRK9_FILETIMEPcbb(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull %i.a, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %.noexc108 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc108:                                        ; preds = %bb.ak
  %..str.72.i = select i1 %i.dm, ptr %i.a, ptr @.str.72
  %i.dn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull %..str.72.i)
          to label %.noexc109 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc109:                                        ; preds = %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZL11PrintSpacesi.exit102

.thread162:                                       ; preds = %.thread163, %bb.u, %bb.af
  %i.do = phi i16 [ %i.cf, %bb.u ], [ %i.cf, %bb.af ], [ %.pr165, %.thread163 ]
  %i.dp = phi i32 [ %i.cd, %bb.u ], [ %i.cd, %bb.af ], [ 0, %.thread163 ] ; 2 uses
  %i.dq = icmp eq i16 %i.do, 8
  br i1 %i.dq, label %bb.al, label %bb.au

bb.al:                                            ; preds = %.thread162
  br i1 %3, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dr = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.ds = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %i.dr)
          to label %_ZL11PrintSpacesi.exit102.thread unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.an:                                            ; preds = %bb.al
  %i.dt = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !145
  %i.dv = load ptr, ptr %i.k, align 8, !tbaa !119 ; 2 uses
  %wcslen.i.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.dv)
  %i.dw = trunc i64 %wcslen.i.i to i32            ; 3 uses
  %i.dx = add nsw i32 %i.dw, 1                    ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dz = zext nneg i32 %i.dx to i64
  %i.ea = icmp slt i32 %i.dw, -1
  %i.eb = shl nuw nsw i64 %i.dz, 2
  %i.ec = select i1 %i.ea, i64 -1, i64 %i.eb
  %i.ed = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ec) #16
          to label %.noexc120 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc120:                                        ; preds = %bb.ao
  store i32 0, ptr %i.ed, align 4, !tbaa !111
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %.noexc120, %bb.an
  %.sroa.0.0 = phi ptr [ null, %bb.an ], [ %i.ed, %.noexc120 ] ; 6 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.eg, %bb.ap ] ; 2 uses
  %.0.i.i = phi ptr [ %i.dv, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ee, %bb.ap ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.ef = load i32, ptr %.0.i.i, align 4, !tbaa !111 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.ef, ptr %.04.i.i, align 4, !tbaa !111
  %.not.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.ap, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.ap
  %i.eh = sub nsw i32 %i.dp, %i.dw                ; 3 uses
  switch i32 %i.du, label %_ZL11PrintSpacesi.exit.i [
    i32 2, label %bb.ar
    i32 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.ei = sdiv i32 %i.eh, 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN11CStringBaseIwEC2EPKw.exit
  %.0.i = phi i32 [ %i.ei, %bb.aq ], [ %i.eh, %_ZN11CStringBaseIwEC2EPKw.exit ] ; 4 uses
  %i.ej = icmp sgt i32 %.0.i, 0
  br i1 %i.ej, label %.lr.ph.i.i121, label %_ZL11PrintSpacesi.exit.i

.lr.ph.i.i121:                                    ; preds = %bb.ar, %.noexc123
  %.03.i.i = phi i32 [ %i.el, %.noexc123 ], [ 0, %bb.ar ]
  %i.ek = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc123:                                        ; preds = %.lr.ph.i.i121
  %i.el = add nuw nsw i32 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i122 = icmp eq i32 %i.el, %.0.i
  br i1 %exitcond.not.i.i122, label %_ZL11PrintSpacesi.exit.i, label %.lr.ph.i.i121, !llvm.loop !1

_ZL11PrintSpacesi.exit.i:                         ; preds = %.noexc123, %bb.ar, %_ZN11CStringBaseIwEC2EPKw.exit
  %.013.i = phi i32 [ 0, %_ZN11CStringBaseIwEC2EPKw.exit ], [ %.0.i, %bb.ar ], [ %.0.i, %.noexc123 ]
  %i.em = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %.sroa.0.0)
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc124:                                        ; preds = %_ZL11PrintSpacesi.exit.i
  %i.en = sub nsw i32 %i.eh, %.013.i              ; 2 uses
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph.i8.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit

.lr.ph.i8.i:                                      ; preds = %.noexc124, %.noexc125
  %.03.i9.i = phi i32 [ %i.eq, %.noexc125 ], [ 0, %.noexc124 ]
  %i.ep = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc125:                                        ; preds = %.lr.ph.i8.i
  %i.eq = add nuw nsw i32 %.03.i9.i, 1            ; 2 uses
  %exitcond.not.i10.i = icmp eq i32 %i.eq, %i.en
  br i1 %exitcond.not.i10.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, label %.lr.ph.i8.i, !llvm.loop !1

_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit: ; preds = %.noexc125, %.noexc124
  %i.er = icmp eq ptr %.sroa.0.0, null
  br i1 %i.er, label %_ZL11PrintSpacesi.exit102, label %bb.as

bb.as:                                            ; preds = %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #17
  br label %_ZL11PrintSpacesi.exit102

.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i98, %bb.am, %_ZL11PrintSpacesi.exit102.thread, %bb.n, %bb.r, %bb.q, %bb.ai, %bb.aj, %bb.ak, %.noexc108, %bb.ao, %.invoke
  %lpad.loopexit.split-lp289 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit127

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i8.i, %.lr.ph.i.i121, %_ZL11PrintSpacesi.exit.i
  %lpad.loopexit.split-lp278 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = icmp eq ptr %.sroa.0.0, null
  br i1 %i.es, label %_ZN11CStringBaseIwED2Ev.exit127, label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #17
  br label %_ZN11CStringBaseIwED2Ev.exit127

bb.au:                                            ; preds = %.thread162
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.et = load i32, ptr %i.u, align 8, !tbaa !118
  invoke void @_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.et, i1 noundef zeroext true)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.eu = load i32, ptr %i.o, align 8, !tbaa !108 ; 4 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.i129, label %_ZN11CStringBaseIwE7ReplaceEww.exit139

.lr.ph.i129:                                      ; preds = %bb.av
  %i.ew = load ptr, ptr %7, align 8, !tbaa !109   ; 5 uses
  %i.ex = ptrtoint ptr %i.ew to i64               ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.lr.ph.i129
  %.021.i = phi i32 [ 0, %.lr.ph.i129 ], [ %i.fo, %bb.ay ]
  %i.ey = zext nneg i32 %.021.i to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ey ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !111 ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 10
  br i1 %i.fb, label %_ZNK11CStringBaseIwE4FindEwi.exit.i, label %.lr.ph.i.i130

.lr.ph.i.i130:                                    ; preds = %bb.aw, %bb.ax
  %i.fc = phi i32 [ %i.ff, %bb.ax ], [ %i.fa, %bb.aw ]
  %.010.i.i = phi ptr [ %i.fe, %bb.ax ], [ %i.ez, %bb.aw ]
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %.lr.ph.i132.preheader, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i130
  %i.fe = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 3 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !111 ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 10
  br i1 %i.fg, label %_ZNK11CStringBaseIwE4FindEwi.exit.i, label %.lr.ph.i.i130, !llvm.loop !184

_ZNK11CStringBaseIwE4FindEwi.exit.i:              ; preds = %bb.ax, %bb.aw
  %.0.lcssa.i.i = phi ptr [ %i.ez, %bb.aw ], [ %i.fe, %bb.ax ]
  %i.fh = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.fi = sub i64 %i.fh, %i.ex
  %i.fj = lshr exact i64 %i.fi, 2                 ; 2 uses
  %i.fk = trunc i64 %i.fj to i32                  ; 2 uses
  %i.fl = icmp slt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph.i132.preheader, label %bb.ay

bb.ay:                                            ; preds = %_ZNK11CStringBaseIwE4FindEwi.exit.i
  %i.fm = and i64 %i.fj, 2147483647
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fm
  store i32 32, ptr %i.fn, align 4, !tbaa !111
  %i.fo = add nuw nsw i32 %i.fk, 1                ; 2 uses
  %i.fp = icmp slt i32 %i.fo, %i.eu
  br i1 %i.fp, label %bb.aw, label %.lr.ph.i132.preheader, !llvm.loop !185

.lr.ph.i132.preheader:                            ; preds = %_ZNK11CStringBaseIwE4FindEwi.exit.i, %bb.ay, %.lr.ph.i.i130
  br label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %.lr.ph.i132.preheader, %bb.ba
  %.021.i133 = phi i32 [ %i.gg, %bb.ba ], [ 0, %.lr.ph.i132.preheader ]
  %i.fq = zext nneg i32 %.021.i133 to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fq ; 3 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !111 ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 13
  br i1 %i.ft, label %_ZNK11CStringBaseIwE4FindEwi.exit.i137, label %.lr.ph.i.i135

.lr.ph.i.i135:                                    ; preds = %.lr.ph.i132, %bb.az
  %i.fu = phi i32 [ %i.fx, %bb.az ], [ %i.fs, %.lr.ph.i132 ]
  %.010.i.i136 = phi ptr [ %i.fw, %bb.az ], [ %i.fr, %.lr.ph.i132 ]
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %_ZN11CStringBaseIwE7ReplaceEww.exit139, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i135
  %i.fw = getelementptr inbounds nuw i8, ptr %.010.i.i136, i64 4 ; 3 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !111 ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 13
  br i1 %i.fy, label %_ZNK11CStringBaseIwE4FindEwi.exit.i137, label %.lr.ph.i.i135, !llvm.loop !184

_ZNK11CStringBaseIwE4FindEwi.exit.i137:           ; preds = %bb.az, %.lr.ph.i132
  %.0.lcssa.i.i138 = phi ptr [ %i.fr, %.lr.ph.i132 ], [ %i.fw, %bb.az ]
  %i.fz = ptrtoint ptr %.0.lcssa.i.i138 to i64
  %i.ga = sub i64 %i.fz, %i.ex
  %i.gb = lshr exact i64 %i.ga, 2                 ; 2 uses
  %i.gc = trunc i64 %i.gb to i32                  ; 2 uses
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %_ZN11CStringBaseIwE7ReplaceEww.exit139, label %bb.ba

bb.ba:                                            ; preds = %_ZNK11CStringBaseIwE4FindEwi.exit.i137
  %i.ge = and i64 %i.gb, 2147483647
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ge
  store i32 32, ptr %i.gf, align 4, !tbaa !111
  %i.gg = add nuw nsw i32 %i.gc, 1                ; 2 uses
  %i.gh = icmp slt i32 %i.gg, %i.eu
  br i1 %i.gh, label %.lr.ph.i132, label %_ZN11CStringBaseIwE7ReplaceEww.exit139, !llvm.loop !185

_ZN11CStringBaseIwE7ReplaceEww.exit139:           ; preds = %bb.ba, %_ZNK11CStringBaseIwE4FindEwi.exit.i137, %.lr.ph.i.i135, %bb.av
  br i1 %3, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %_ZN11CStringBaseIwE7ReplaceEww.exit139
  %i.gi = load ptr, ptr %7, align 8, !tbaa !109
  %i.gj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %i.gi)
          to label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit153 unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses
end_hunk_2
begin_hunk_3_@_ZN13CFieldPrinter13PrintItemInfoERK4CArcjb:bb.a
bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0.i141 = phi i32 [ %i.gq, %bb.bf ], [ %i.gp, %bb.be ] ; 4 uses
  %i.gr = icmp sgt i32 %.0.i141, 0
  br i1 %i.gr, label %.lr.ph.i.i147, label %_ZL11PrintSpacesi.exit.i142

.lr.ph.i.i147:                                    ; preds = %bb.bg, %.noexc150
  %.03.i.i148 = phi i32 [ %i.gt, %.noexc150 ], [ 0, %bb.bg ]
  %i.gs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc150 unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc150:                                        ; preds = %.lr.ph.i.i147
  %i.gt = add nuw nsw i32 %.03.i.i148, 1          ; 2 uses
  %exitcond.not.i.i149 = icmp eq i32 %i.gt, %.0.i141
  br i1 %exitcond.not.i.i149, label %_ZL11PrintSpacesi.exit.i142, label %.lr.ph.i.i147, !llvm.loop !1

_ZL11PrintSpacesi.exit.i142:                      ; preds = %.noexc150, %bb.bg, %bb.be
  %.013.i143 = phi i32 [ 0, %bb.be ], [ %.0.i141, %bb.bg ], [ %.0.i141, %.noexc150 ]
  %i.gu = load ptr, ptr %7, align 8, !tbaa !109
  %i.gv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %i.gu)
          to label %.noexc151 unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc151:                                        ; preds = %_ZL11PrintSpacesi.exit.i142
  %i.gw = sub nsw i32 %i.gp, %.013.i143           ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph.i8.i144, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit153

.lr.ph.i8.i144:                                   ; preds = %.noexc151, %.noexc152
  %.03.i9.i145 = phi i32 [ %i.gz, %.noexc152 ], [ 0, %.noexc151 ]
  %i.gy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc152 unwind label %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc152:                                        ; preds = %.lr.ph.i8.i144
  %i.gz = add nuw nsw i32 %.03.i9.i145, 1         ; 2 uses
  %exitcond.not.i10.i146 = icmp eq i32 %i.gz, %i.gw
  br i1 %exitcond.not.i10.i146, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit153, label %.lr.ph.i8.i144, !llvm.loop !1

_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit153: ; preds = %.noexc152, %.noexc151, %bb.bb
  %i.ha = load ptr, ptr %7, align 8, !tbaa !109   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %_ZN11CStringBaseIwED2Ev.exit154, label %bb.bh

bb.bh:                                            ; preds = %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit153
  call void @_ZdaPv(ptr noundef nonnull %i.ha) #17
  br label %_ZN11CStringBaseIwED2Ev.exit154

_ZN11CStringBaseIwED2Ev.exit154:                  ; preds = %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit153, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZL11PrintSpacesi.exit102

_ZN11CStringBaseIwED2Ev.exit140:                  ; preds = %bb.bd, %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bc
  %.pn84 = phi { ptr, i32 } [ %i.gk, %bb.bc ], [ %lpad.loopexit.split-lp283, %.loopexit.split-lp184.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp283, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZN11CStringBaseIwED2Ev.exit127

_ZL11PrintSpacesi.exit102:                        ; preds = %.noexc101, %bb.as, %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, %.noexc109, %bb.ai, %bb.z, %_ZN11CStringBaseIwED2Ev.exit154
  br i1 %3, label %_ZL11PrintSpacesi.exit102.thread, label %_ZL11PrintSpacesi.exit102.thread170

_ZL11PrintSpacesi.exit102.thread:                 ; preds = %.thread175, %bb.am, %bb.ad, %_ZL11PrintSpacesi.exit102
  %i.hc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull @_Z4endlR13CStdOutStream)
          to label %_ZL11PrintSpacesi.exit102.thread170 unwind label %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge96:                                      ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZL11PrintSpacesi.exit102.thread170

.critedge:                                        ; preds = %bb.g
  %i.hd = icmp eq ptr %i.bj, null
  br i1 %i.hd, label %_ZN11CStringBaseIwED2Ev.exit155, label %bb.bi

bb.bi:                                            ; preds = %.critedge
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #17
  br label %_ZN11CStringBaseIwED2Ev.exit155

_ZN11CStringBaseIwED2Ev.exit155:                  ; preds = %.critedge, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZL11PrintSpacesi.exit102.thread170

_ZL11PrintSpacesi.exit102.thread170:              ; preds = %.thread175, %bb.ae, %.critedge96, %_ZL11PrintSpacesi.exit102.thread, %_ZL11PrintSpacesi.exit102, %_ZN11CStringBaseIwED2Ev.exit155, %bb.o
  %.776 = phi i32 [ %i.bi, %_ZN11CStringBaseIwED2Ev.exit155 ], [ %.069204, %_ZL11PrintSpacesi.exit102 ], [ %i.bv, %bb.o ], [ %i.ck, %.critedge96 ], [ %.069204, %_ZL11PrintSpacesi.exit102.thread ], [ %.069204, %bb.ae ], [ %.069204, %.thread175 ] ; 2 uses
  %.667 = phi i1 [ false, %_ZN11CStringBaseIwED2Ev.exit155 ], [ true, %_ZL11PrintSpacesi.exit102 ], [ false, %bb.o ], [ false, %.critedge96 ], [ true, %_ZL11PrintSpacesi.exit102.thread ], [ true, %bb.ae ], [ true, %.thread175 ]
  %i.he = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.bj ; 0 uses

bb.bj:                                            ; preds = %_ZL11PrintSpacesi.exit102.thread170
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %_ZL11PrintSpacesi.exit102.thread170
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br i1 %.667, label %bb.b, label %._crit_edge

_ZN11CStringBaseIwED2Ev.exit127:                  ; preds = %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.at, %bb.ab, %_ZN11CStringBaseIwED2Ev.exit140, %_ZN11CStringBaseIwED2Ev.exit97
  %.pn91.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN11CStringBaseIwED2Ev.exit97 ], [ %.pn84, %_ZN11CStringBaseIwED2Ev.exit140 ], [ %lpad.loopexit.split-lp278, %bb.at ], [ %.pn89, %bb.ab ], [ %lpad.loopexit.split-lp278, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp289, %.loopexit.split-lp193.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.hh = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit156 unwind label %bb.bk ; 0 uses

bb.bk:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit127
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit156:      ; preds = %_ZN11CStringBaseIwED2Ev.exit127
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn91.pn

._crit_edge:                                      ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit, %bb.b, %bb.a
  %i.hk = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.776, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit ]
  ret i32 %i.hk
}

declare noundef i32 @_ZNK4CArc11GetItemPathEjR11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEPKw(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z19IsArchiveItemFolderP10IInArchivejRb(ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare void @_Z23ConvertPropertyToStringRK14tagPROPVARIANTjb(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_Z4endlR13CStdOutStream(ptr noundef nonnull align 8 dereferenceable(16)) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13CFieldPrinter16PrintSummaryInfoEyyPKyS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !192 {
bb.a:
  %5 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 7 uses
  %i.a = alloca [32 x i32], align 16              ; 8 uses
  %6 = alloca %class.CStringBase, align 8         ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !123
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit ] ; 2 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !122
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !124  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !129  ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i, label %_ZL11PrintSpacesi.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.03.i = phi i32 [ %i.p, %.lr.ph.i ], [ 0, %bb.b ]
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32) ; 0 uses
  %i.p = add nuw nsw i32 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.p, %i.m
  br i1 %exitcond.not.i, label %_ZL11PrintSpacesi.exit, label %.lr.ph.i, !llvm.loop !1

_ZL11PrintSpacesi.exit:                           ; preds = %.lr.ph.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i16 0, ptr %5, align 8, !tbaa !133
  store i16 0, ptr %i.f, align 2, !tbaa !134
  %i.q = load i32, ptr %i.k, align 8, !tbaa !118
  switch i32 %i.q, label %bb.v [
    i32 7, label %bb.c
    i32 8, label %.invoke
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %_ZL11PrintSpacesi.exit
  br label %.invoke

.invoke:                                          ; preds = %_ZL11PrintSpacesi.exit, %bb.c
  %i.r = phi ptr [ %3, %bb.c ], [ %4, %_ZL11PrintSpacesi.exit ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !145
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !130
  invoke fastcc void @_ZL17PrintNumberString11EAdjustmentiPKy(i32 noundef %i.t, i32 noundef %i.v, ptr noundef %i.r)
          to label %_ZN11CStringBaseIwED2Ev.exit69 unwind label %bb.y

bb.d:                                             ; preds = %_ZL11PrintSpacesi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  invoke void @_Z21ConvertUInt64ToStringyPw(i64 noundef %1, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %wcslen.i.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.a)
  %i.w = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.x = add nsw i32 %i.w, 1                      ; 3 uses
  %i.y = icmp ne i32 %i.x, 0
  call void @llvm.assume(i1 %i.y)
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = icmp slt i32 %i.w, -1
  %i.ab = shl nuw nsw i64 %i.z, 2
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #16
          to label %.noexc unwind label %bb.s     ; 10 uses

.noexc:                                           ; preds = %bb.e
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = load i32, ptr %i.h, align 4, !tbaa !107
  %i.ag = icmp sgt i32 %i.af, 0
  %.pre4.i = load i32, ptr %i.g, align 8, !tbaa !108 ; 5 uses
  br i1 %i.ag, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %.noexc
  %i.ah = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !109 ; 9 uses
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i116 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre4.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre4.i, 8
  %i.ai = sub i64 %.pre.i.i116, %i.ae
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <4 x i32>, ptr %i.aj, align 4, !tbaa !111
  %wide.load117 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !111
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %wide.load, ptr %i.al, align 4, !tbaa !111
  store <4 x i32> %wide.load117, ptr %i.am, align 4, !tbaa !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !111
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i.prol
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !111
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !189

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ar = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.at = icmp eq ptr %.pre.i.i, null
  br i1 %i.at, label %bb.f, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !111
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !111
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !111
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !111
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !111
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.1
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !111
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !111
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.2
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !111
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !190

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #17
  %.pre.i = load i32, ptr %i.g, align 8, !tbaa !108
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc
  %i.bg = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre4.i, %._crit_edge.i.i ], [ %.pre4.i, %.noexc ]
  store ptr %i.ad, ptr %6, align 8, !tbaa !109
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.bh
  store i32 0, ptr %i.bi, align 4, !tbaa !111
  store i32 %i.x, ptr %i.h, align 4, !tbaa !107
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.f, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.bl, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ad, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.a, %bb.f ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.bk = load i32, ptr %.0.i.i, align 4, !tbaa !111 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.bk, ptr %.04.i.i, align 4, !tbaa !111
  %.not.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !0

bb.g:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.w, ptr %i.g, align 8, !tbaa !108
  %i.bm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.73)
          to label %bb.i unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.bo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.2)
          to label %bb.j unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.i
  invoke void @_Z21ConvertUInt64ToStringyPw(i64 noundef %2, ptr noundef nonnull %i.a)
          to label %bb.k unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.bp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.a)
          to label %bb.l unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1)
          to label %bb.m unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.br = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.74)
          to label %bb.n unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !145
  %i.bu = load i32, ptr %i.g, align 8, !tbaa !108 ; 2 uses
  %i.bv = sub nsw i32 0, %i.bu                    ; 2 uses
  switch i32 %i.bt, label %_ZL11PrintSpacesi.exit.i [
    i32 2, label %bb.p
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bw = sdiv i32 %i.bu, -2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i = phi i32 [ %i.bw, %bb.o ], [ %i.bv, %bb.n ] ; 4 uses
  %i.bx = icmp sgt i32 %.0.i, 0
  br i1 %i.bx, label %.lr.ph.i.i32, label %_ZL11PrintSpacesi.exit.i

.lr.ph.i.i32:                                     ; preds = %bb.p, %.noexc34
  %.03.i.i = phi i32 [ %i.bz, %.noexc34 ], [ 0, %bb.p ]
  %i.by = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc34 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc34:                                         ; preds = %.lr.ph.i.i32
  %i.bz = add nuw nsw i32 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i33 = icmp eq i32 %i.bz, %.0.i
  br i1 %exitcond.not.i.i33, label %_ZL11PrintSpacesi.exit.i, label %.lr.ph.i.i32, !llvm.loop !1

_ZL11PrintSpacesi.exit.i:                         ; preds = %.noexc34, %bb.p, %bb.n
  %.013.i = phi i32 [ 0, %bb.n ], [ %.0.i, %bb.p ], [ %.0.i, %.noexc34 ]
  %i.ca = load ptr, ptr %6, align 8, !tbaa !109
  %i.cb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %i.ca)
          to label %.noexc35 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc35:                                         ; preds = %_ZL11PrintSpacesi.exit.i
  %i.cc = sub nsw i32 %i.bv, %.013.i              ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i8.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit

.lr.ph.i8.i:                                      ; preds = %.noexc35, %.noexc36
  %.03.i9.i = phi i32 [ %i.cf, %.noexc36 ], [ 0, %.noexc35 ]
  %i.ce = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc36 unwind label %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc36:                                         ; preds = %.lr.ph.i8.i
  %i.cf = add nuw nsw i32 %.03.i9.i, 1            ; 2 uses
  %exitcond.not.i10.i = icmp eq i32 %i.cf, %i.cc
  br i1 %exitcond.not.i10.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, label %.lr.ph.i8.i, !llvm.loop !1

_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit: ; preds = %.noexc36, %.noexc35
  %i.cg = load ptr, ptr %6, align 8, !tbaa !109   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #17
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN11CStringBaseIwED2Ev.exit69

bb.r:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %bb.e
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit37

.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i8.i, %.lr.ph.i.i32, %_ZL11PrintSpacesi.exit.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %6, align 8, !tbaa !109   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN11CStringBaseIwED2Ev.exit37, label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %i.ck) #17
  br label %_ZN11CStringBaseIwED2Ev.exit37

_ZN11CStringBaseIwED2Ev.exit37:                   ; preds = %bb.t, %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s
  %.pn27 = phi { ptr, i32 } [ %i.cj, %bb.s ], [ %lpad.loopexit.split-lp124, %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp124, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.u

bb.u:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit37, %bb.r
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %_ZN11CStringBaseIwED2Ev.exit37 ], [ %i.ci, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN11CStringBaseIwED2Ev.exit70

bb.v:                                             ; preds = %_ZL11PrintSpacesi.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !145
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !130 ; 3 uses
  %i.cq = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #16
          to label %.noexc54 unwind label %bb.y   ; 4 uses

.noexc54:                                         ; preds = %bb.v
  store i32 0, ptr %i.cq, align 4, !tbaa !111
  switch i32 %i.cn, label %_ZL11PrintSpacesi.exit.i57 [
    i32 2, label %bb.x
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %.noexc54
  %i.cr = sdiv i32 %i.cp, 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.noexc54
  %.0.i56 = phi i32 [ %i.cr, %bb.w ], [ %i.cp, %.noexc54 ] ; 4 uses
  %i.cs = icmp sgt i32 %.0.i56, 0
  br i1 %i.cs, label %.lr.ph.i.i62, label %_ZL11PrintSpacesi.exit.i57

.lr.ph.i.i62:                                     ; preds = %bb.x, %.noexc65
  %.03.i.i63 = phi i32 [ %i.cu, %.noexc65 ], [ 0, %bb.x ]
  %i.ct = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc65:                                         ; preds = %.lr.ph.i.i62
  %i.cu = add nuw nsw i32 %.03.i.i63, 1           ; 2 uses
  %exitcond.not.i.i64 = icmp eq i32 %i.cu, %.0.i56
  br i1 %exitcond.not.i.i64, label %_ZL11PrintSpacesi.exit.i57, label %.lr.ph.i.i62, !llvm.loop !1

_ZL11PrintSpacesi.exit.i57:                       ; preds = %.noexc65, %bb.x, %.noexc54
  %.013.i58 = phi i32 [ 0, %.noexc54 ], [ %.0.i56, %bb.x ], [ %.0.i56, %.noexc65 ]
  %i.cv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef nonnull %i.cq)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc66:                                         ; preds = %_ZL11PrintSpacesi.exit.i57
  %i.cw = sub nsw i32 %i.cp, %.013.i58            ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i8.i59, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit68

.lr.ph.i8.i59:                                    ; preds = %.noexc66, %.noexc67
  %.03.i9.i60 = phi i32 [ %i.cz, %.noexc67 ], [ 0, %.noexc66 ]
  %i.cy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc67:                                         ; preds = %.lr.ph.i8.i59
  %i.cz = add nuw nsw i32 %.03.i9.i60, 1          ; 2 uses
  %exitcond.not.i10.i61 = icmp eq i32 %i.cz, %i.cw
  br i1 %exitcond.not.i10.i61, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit68, label %.lr.ph.i8.i59, !llvm.loop !1

_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit68: ; preds = %.noexc67, %.noexc66
  call void @_ZdaPv(ptr noundef nonnull %i.cq) #17
  br label %_ZN11CStringBaseIwED2Ev.exit69

bb.y:                                             ; preds = %.invoke, %bb.v
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit70

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i8.i59, %.lr.ph.i.i62, %_ZL11PrintSpacesi.exit.i57
  %lpad.loopexit.split-lp119 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.cq) #17
  br label %_ZN11CStringBaseIwED2Ev.exit70

_ZN11CStringBaseIwED2Ev.exit69:                   ; preds = %.invoke, %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit68, %_ZN11CStringBaseIwED2Ev.exit
  %i.db = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit69
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %_ZN11CStringBaseIwED2Ev.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = load i32, ptr %i.b, align 4, !tbaa !123
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next, %i.df
  br i1 %i.dg, label %bb.b, label %._crit_edge, !llvm.loop !191

_ZN11CStringBaseIwED2Ev.exit70:                   ; preds = %bb.y, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.u
  %.pn30 = phi { ptr, i32 } [ %lpad.loopexit.split-lp119, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn27.pn, %bb.u ], [ %i.da, %bb.y ]
  %i.dh = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit71 unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit70
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit71:       ; preds = %_ZN11CStringBaseIwED2Ev.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn30
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL17PrintNumberString11EAdjustmentiPKy(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !193 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8, !tbaa !147
  call void @_Z21ConvertUInt64ToStringyPw(i64 noundef %i.b, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %wcslen.i.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.a)
  %i.c = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = zext nneg i32 %i.d to i64
  %i.g = icmp slt i32 %i.c, -1
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #16 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !111
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %i.j, %bb.d ] ; 6 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.m, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.k, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.l = load i32, ptr %.0.i.i, align 4, !tbaa !111 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.l, ptr %.04.i.i, align 4, !tbaa !111
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.e, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.e
  %i.n = sub nsw i32 %1, %i.c                     ; 3 uses
  switch i32 %0, label %_ZL11PrintSpacesi.exit.i [
    i32 2, label %bb.g
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.o = sdiv i32 %i.n, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN11CStringBaseIwEC2EPKw.exit
  %.0.i = phi i32 [ %i.o, %bb.f ], [ %i.n, %_ZN11CStringBaseIwEC2EPKw.exit ] ; 4 uses
  %i.p = icmp sgt i32 %.0.i, 0
  br i1 %i.p, label %.lr.ph.i.i5, label %_ZL11PrintSpacesi.exit.i

.lr.ph.i.i5:                                      ; preds = %bb.g, %.noexc
  %.03.i.i = phi i32 [ %i.r, %.noexc ], [ 0, %bb.g ]
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i5
  %i.r = add nuw nsw i32 %.03.i.i, 1              ; 2 uses
  %exitcond.not.i.i6 = icmp eq i32 %i.r, %.0.i
  br i1 %exitcond.not.i.i6, label %_ZL11PrintSpacesi.exit.i, label %.lr.ph.i.i5, !llvm.loop !1

_ZL11PrintSpacesi.exit.i:                         ; preds = %.noexc, %bb.g, %_ZN11CStringBaseIwEC2EPKw.exit
  %.013.i = phi i32 [ 0, %_ZN11CStringBaseIwEC2EPKw.exit ], [ %.0.i, %bb.g ], [ %.0.i, %.noexc ]
  %i.s = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, ptr noundef %.sroa.0.0)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc7:                                          ; preds = %_ZL11PrintSpacesi.exit.i
  %i.t = sub nsw i32 %i.n, %.013.i                ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i8.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit

.lr.ph.i8.i:                                      ; preds = %.noexc7, %.noexc8
  %.03.i9.i = phi i32 [ %i.w, %.noexc8 ], [ 0, %.noexc7 ]
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEc(ptr noundef nonnull align 8 dereferenceable(16) @g_StdOut, i8 noundef signext 32)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc8:                                          ; preds = %.lr.ph.i8.i
  %i.w = add nuw nsw i32 %.03.i9.i, 1             ; 2 uses
  %exitcond.not.i10.i = icmp eq i32 %i.w, %i.t
  br i1 %exitcond.not.i10.i, label %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, label %.lr.ph.i8.i, !llvm.loop !1

_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit: ; preds = %.noexc8, %.noexc7
  %i.x = icmp eq ptr %.sroa.0.0, null
  br i1 %i.x, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #17
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZL11PrintString11EAdjustmentiRK11CStringBaseIwE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i8.i, %.lr.ph.i.i5, %_ZL11PrintSpacesi.exit.i
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup
  %i.y = icmp eq ptr %.sroa.0.0, null
  br i1 %i.y, label %_ZN11CStringBaseIwED2Ev.exit9, label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #17
  br label %_ZN11CStringBaseIwED2Ev.exit9

_ZN11CStringBaseIwED2Ev.exit9:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %lpad.loopexit.split-lp28
}

declare void @_Z21ConvertUInt64ToStringyPw(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !guid !196 {
bb.a:
  %wcslen.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1)
  %i.a = trunc i64 %wcslen.i to i32               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !107  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !108  ; 3 uses
  %i.f = xor i32 %i.e, -1
  %i.g = add i32 %i.c, %i.f                       ; 3 uses
  %.not.i = icmp slt i32 %i.g, %i.a
  br i1 %.not.i, label %bb.b, label %_ZN11CStringBaseIwE10GrowLengthEi.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.c, 64
  %i.i = lshr i32 %i.c, 1
  %i.j = icmp sgt i32 %i.c, 8
  %..i = select i1 %i.j, i32 16, i32 4
  %.0.i = select i1 %i.h, i32 %i.i, i32 %..i      ; 2 uses
  %i.k = add nsw i32 %.0.i, %i.g
  %i.l = icmp slt i32 %i.k, %i.a
  %i.m = sub nsw i32 %i.a, %i.g
  %.1.i = select i1 %i.l, i32 %i.m, i32 %.0.i
  %i.n = add nsw i32 %.1.i, %i.c                  ; 2 uses
  %i.o = add nsw i32 %i.n, 1                      ; 3 uses
  %i.p = icmp eq i32 %i.o, %i.c
  br i1 %i.p, label %_ZN11CStringBaseIwE10GrowLengthEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = zext nneg i32 %i.o to i64
  %i.r = icmp slt i32 %i.n, -1
  %i.s = shl nuw nsw i64 %i.q, 2
  %i.t = select i1 %i.r, i64 -1, i64 %i.s
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #16 ; 4 uses
  %i.v = load i32, ptr %i.b, align 4, !tbaa !107
  %i.w = icmp sgt i32 %i.v, 0
  %.pre12.i = load i32, ptr %i.d, align 8, !tbaa !108 ; 5 uses
  br i1 %i.w, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.x = icmp sgt i32 %.pre12.i, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !109 ; 4 uses
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre12.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre12.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !111
  %wide.load8 = load <4 x i32>, ptr %i.z, align 4, !tbaa !111
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !111
  store <4 x i32> %wide.load8, ptr %i.ab, align 4, !tbaa !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.ad = icmp eq ptr %.pre.i.i, null
  br i1 %i.ad, label %bb.d, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !111
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !111
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !195

._crit_edge.thread.i.i:                           ; preds = %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #17
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.ah = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre12.i, %._crit_edge.i.i ], [ %.pre12.i, %bb.c ] ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !109
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ai
  store i32 0, ptr %i.aj, align 4, !tbaa !111
  store i32 %i.o, ptr %i.b, align 4, !tbaa !107
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit

_ZN11CStringBaseIwE10GrowLengthEi.exit:           ; preds = %bb.a, %bb.b, %bb.d
  %i.ak = phi i32 [ %i.e, %bb.a ], [ %i.e, %bb.b ], [ %i.ah, %bb.d ] ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !109
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE10GrowLengthEi.exit
  %.04.i = phi ptr [ %i.an, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.aq, %bb.e ] ; 2 uses
  %.0.i4 = phi ptr [ %1, %_ZN11CStringBaseIwE10GrowLengthEi.exit ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i4, i64 4
  %i.ap = load i32, ptr %.0.i4, align 4, !tbaa !111 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  store i32 %i.ap, ptr %.04.i, align 4, !tbaa !111
  %.not.i5 = icmp eq i32 %i.ap, 0
  br i1 %.not.i5, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !0

_Z12MyStringCopyIwEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.ar = add nsw i32 %i.ak, %i.a
  store i32 %i.ar, ptr %i.d, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z14GetUInt64ValueP10IInArchivejjRy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !197 {
bb.a:
  %4 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i16 0, ptr %4, align 8, !tbaa !133
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !134
  %i.b = load ptr, ptr %0, align 8, !tbaa !126
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr @.str.4, ptr %i.f, align 16, !tbaa !143
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIPKc, ptr null) #19
          to label %bb.k unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.b
  %i.k = load i16, ptr %4, align 8, !tbaa !133
  %i.l = icmp ne i16 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = invoke noundef i64 @_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  store i64 %i.m, ptr %3, align 8, !tbaa !147
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.n = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit6 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #18
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit6:        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i1 %i.l

bb.k:                                             ; preds = %bb.c
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3
end_hunk_3
