Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lgc?download=true
inline.NumInlined: 48
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.Luau::FValue" = type <{ i8, i8, [6 x i8], ptr, ptr, i32, [4 x i8] }>
%struct.LuaNode = type { %struct.lua_TValue, %struct.TKey }
%struct.lua_TValue = type { %union.Value, [1 x i32], i32 }
%union.Value = type { ptr }
%struct.TKey = type { %union.Value, [1 x i32], i32 }
%struct.CallContext.8 = type { i32 }
%struct.CallContext.7 = type { ptr, i32 }
%struct.CallContext = type { i8 }

$_ZN4Luau6FValueIbE4listE = comdat any

$_ZN4Luau6FValueIiE4listE = comdat any

@_ZN5FFlag24LuauUdataMetatablePinnedE = dso_local global %"struct.Luau::FValue" zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"LuauUdataMetatablePinned\00", align 1
@_ZN6DFFlag18LuauGcTableStepFixE = dso_local global %"struct.Luau::FValue" zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"LuauGcTableStepFix\00", align 1
@_ZN5FFlag16LuauGcTraceUdataE = dso_local global %"struct.Luau::FValue" zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"LuauGcTraceUdata\00", align 1
@_ZN6DFFlag21LuauGcMarkUdataAccessE = dso_local global %"struct.Luau::FValue" zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"LuauGcMarkUdataAccess\00", align 1
@_ZN5FFlag21LuauBackedgeHeapCheckE = external local_unnamed_addr global %"struct.Luau::FValue", align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"remark\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"atomic\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"sweep\00", align 1
@_ZN4Luau6FValueIbE4listE = linkonce_odr dso_local local_unnamed_addr global ptr null, comdat, align 8
@_ZN4Luau6FValueIiE4listE = linkonce_odr dso_local local_unnamed_addr global ptr null, comdat, align 8
@luaH_dummynode = external global %struct.LuaNode, align 8
@_ZN5FFlag21LuauManagedDebugNamesE = external local_unnamed_addr global %"struct.Luau::FValue", align 8
@_ZN5FFlag18LuauDirectFieldGetE = external local_unnamed_addr global %"struct.Luau::FValue", align 8
@_ZN5FFlag22LuauUdataDirectAccess6E = external local_unnamed_addr global %"struct.Luau::FValue", align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_lgc.cpp, ptr null }]
@switch.table._Z14luaC_statenamei = private unnamed_addr constant [5 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], align 8

; Function Attrs: mustprogress uwtable
define hidden void @_Z12luaC_freeallP9lua_State(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z13luaM_visitgcoP9lua_StatePvPFbS1_P8lua_PageP8GCObjectE(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @_ZL9deletegcoPvP8lua_PageP8GCObject)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden void @_Z13luaM_visitgcoP9lua_StatePvPFbS1_P8lua_PageP8GCObjectE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZL9deletegcoPvP8lua_PageP8GCObject(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  tail call fastcc void @_ZL7freeobjP9lua_StateP8GCObjectP8lua_Page(ptr noundef %0, ptr noundef %2, ptr noundef %1)
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_Z9luaC_stepP9lua_Stateb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38
  %i.g = mul nsw i32 %i.f, %i.d
  %i.h = sdiv i32 %i.g, 100
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.m = load i64, ptr %i.l, align 16, !tbaa !115
  %i.n = sub i64 %i.k, %i.m                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1296 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !116 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  tail call void %i.p(ptr noundef nonnull %0, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 33 ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !40
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noundef double @_Z9lua_clockv()
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 18688
  store double %i.t, ptr %i.u, align 16, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = load i8, ptr @_ZN5FFlag21LuauBackedgeHeapCheckE, align 8, !tbaa !44, !range !45, !noundef !46
  %i.w = trunc nuw i8 %i.v to i1
  %or.cond = and i1 %1, %i.w
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.e, align 4, !tbaa !38
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %i.n, %i.y
  %i.aa = udiv i64 %i.z, 100
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.i)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i64 [ %spec.select, %bb.f ], [ %i.i, %bb.e ]
  %i.ab = load i8, ptr %i.q, align 1, !tbaa !40
  %i.ac = zext i8 %i.ab to i32
  %i.ad = tail call fastcc noundef i64 @_ZL6gcstepP9lua_Statem(ptr noundef nonnull %0, i64 noundef %.1)
  %i.ae = mul i64 %i.ad, 100
  %i.af = load i32, ptr %i.e, align 4, !tbaa !38
  %i.ag = sext i32 %i.af to i64
  %i.ah = udiv i64 %i.ae, %i.ag                   ; 2 uses
  %i.ai = load i8, ptr %i.q, align 1, !tbaa !40
  %i.aj = icmp eq i8 %i.ai, 0
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !39  ; 4 uses
  br i1 %i.aj, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.al = udiv i64 %i.ak, 100
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.an = load i32, ptr %i.am, align 16, !tbaa !47
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul i64 %i.al, %i.ao                    ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 18696
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 18704 ; 2 uses
  %i.at = load double, ptr %i.as, align 16, !tbaa !49
  %i.au = fsub double %i.ar, %i.at                ; 2 uses
  %i.av = fcmp olt double %i.au, 1.000000e-03
  br i1 %i.av, label %_ZL14getheaptriggerP12global_Statem.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 18664
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !50 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 18672
  %i.az = load i64, ptr %i.ay, align 16, !tbaa !51
  %i.ba = sub i64 %i.ax, %i.az
  %i.bb = uitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, %i.au
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 18688
  %i.be = load double, ptr %i.bd, align 16, !tbaa !118
  %i.bf = fsub double %i.ar, %i.be
  %i.bg = fmul double %i.bf, %i.bc
  %i.bh = fptosi double %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 18528
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 18680
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !52
  %i.bl = sub i64 %i.ax, %i.bk
  %i.bm = lshr i64 %i.bl, 10
  %i.bn = trunc i64 %i.bm to i32                  ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 18656 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 16, !tbaa !119 ; 2 uses
  %i.bq = and i32 %i.bp, 31
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !53
  store i32 %i.bn, ptr %i.bs, align 4, !tbaa !53
  %i.bu = sub nsw i32 %i.bn, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 18660 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !120
  %i.bx = add nsw i32 %i.bw, %i.bu                ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !120
  %i.by = add i32 %i.bp, 1
  store i32 %i.by, ptr %i.bo, align 16, !tbaa !119
  %2 = insertelement <2 x i32> poison, i32 %i.bn, i64 0
  %3 = insertelement <2 x i32> %2, i32 %i.bx, i64 1
  %4 = sitofp <2 x i32> %3 to <2 x double>
  %5 = fmul nnan <2 x double> %4, <double 4.050000e-01, double f0x3FCF1A9FBE76C8B5>
  %6 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %5)
  %i.bz = fmul double %6, 1.024000e+03
  %i.ca = fptosi double %i.bz to i64
  %i.cb = add i64 %i.bh, %i.ca
  %i.cc = sub i64 %i.ap, %i.cb                    ; 2 uses
  %i.cd = icmp slt i64 %i.cc, %i.ak
  %i.ce = tail call i64 @llvm.smin.i64(i64 %i.cc, i64 %i.ap)
  %i.cf = select i1 %i.cd, i64 %i.ak, i64 %i.ce
  br label %_ZL14getheaptriggerP12global_Statem.exit

_ZL14getheaptriggerP12global_Statem.exit:         ; preds = %bb.h, %bb.i
  %.0.i = phi i64 [ %i.cf, %bb.i ], [ %i.ap, %bb.h ]
  store i64 %.0.i, ptr %i.l, align 16, !tbaa !115
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 18680
  store i64 %i.ap, ptr %i.cg, align 8, !tbaa !52
  %i.ch = tail call noundef double @_Z9lua_clockv()
  store double %i.ch, ptr %i.as, align 16, !tbaa !49
  %i.ci = load i64, ptr %i.j, align 8, !tbaa !39
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 18672
  store i64 %i.ci, ptr %i.cj, align 16, !tbaa !51
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ck = add i64 %i.ak, %i.ah                    ; 3 uses
  store i64 %i.ck, ptr %i.l, align 16, !tbaa !115
  %.not53 = icmp ult i64 %i.ck, %i.n
  br i1 %.not53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = sub nuw i64 %i.ck, %i.n
  store i64 %i.cl, ptr %i.l, align 16, !tbaa !115
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %_ZL14getheaptriggerP12global_Statem.exit
  %i.cm = load ptr, ptr %i.o, align 16, !tbaa !116 ; 2 uses
  %.not54 = icmp eq ptr %i.cm, null
  br i1 %.not54, label %bb.n, label %bb.m, !prof !117

bb.m:                                             ; preds = %bb.l
  tail call void %i.cm(ptr noundef nonnull %0, i32 noundef %i.ac)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret i64 %i.ah
}

declare noundef double @_Z9lua_clockv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZL6gcstepP9lua_Statem(ptr noundef %0, i64 noundef range(i64 -21474836, 184467440737095517) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.CallContext.8, align 4      ; 4 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %3 = alloca %struct.CallContext.7, align 8      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 33 ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !40
  switch i8 %i.h, label %bb.bo [
    i8 0, label %bb.b
    i8 1, label %.preheader
    i8 2, label %.preheader42
    i8 3, label %bb.e
    i8 4, label %.preheader43
  ]

.preheader43:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 752 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !54  ; 3 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = icmp ne i64 %1, 0
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.preheader42:                                     ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.p = icmp ne ptr %i.o, null                   ; 2 uses
  %i.q = icmp ne i64 %1, 0
  %i.r = and i1 %i.p, %i.q
  br i1 %i.r, label %.lr.ph60, label %._crit_edge61

.preheader:                                       ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.u = icmp ne ptr %i.t, null                   ; 2 uses
  %i.v = icmp ne i64 %1, 0
  %i.w = and i1 %i.u, %i.v
  br i1 %i.w, label %.lr.ph65, label %._crit_edge66

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL8markrootP9lua_State(ptr noundef nonnull %0)
  br label %bb.bo

.lr.ph65:                                         ; preds = %.preheader, %.lr.ph65
  %.064 = phi i64 [ %i.y, %.lr.ph65 ], [ 0, %.preheader ]
  %i.x = tail call fastcc noundef i64 @_ZL13propagatemarkP12global_State(ptr noundef nonnull %i.f)
  %i.y = add i64 %i.x, %.064                      ; 3 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.aa = icmp ne ptr %i.z, null                  ; 2 uses
  %i.ab = icmp ult i64 %i.y, %1
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %i.ac, label %.lr.ph65, label %._crit_edge66, !llvm.loop !121

._crit_edge66:                                    ; preds = %.lr.ph65, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.y, %.lr.ph65 ] ; 2 uses
  %.lcssa = phi i1 [ %i.u, %.preheader ], [ %i.aa, %.lr.ph65 ]
  br i1 %.lcssa, label %bb.bo, label %bb.c

bb.c:                                             ; preds = %._crit_edge66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !57
  store ptr %i.ae, ptr %i.s, align 8, !tbaa !55
  store ptr null, ptr %i.ad, align 16, !tbaa !57
  store i8 2, ptr %i.g, align 1, !tbaa !40
  br label %bb.bo

.lr.ph60:                                         ; preds = %.preheader42, %.lr.ph60
  %.159 = phi i64 [ %i.ag, %.lr.ph60 ], [ 0, %.preheader42 ]
  %i.af = tail call fastcc noundef i64 @_ZL13propagatemarkP12global_State(ptr noundef nonnull %i.f)
  %i.ag = add i64 %i.af, %.159                    ; 3 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.ai = icmp ne ptr %i.ah, null                 ; 2 uses
  %i.aj = icmp ult i64 %i.ag, %1
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %i.ak, label %.lr.ph60, label %._crit_edge61, !llvm.loop !122

._crit_edge61:                                    ; preds = %.lr.ph60, %.preheader42
  %.1.lcssa = phi i64 [ 0, %.preheader42 ], [ %i.ag, %.lr.ph60 ] ; 2 uses
  %.lcssa45 = phi i1 [ %i.p, %.preheader42 ], [ %i.ai, %.lr.ph60 ]
  br i1 %.lcssa45, label %bb.bo, label %bb.d

bb.d:                                             ; preds = %._crit_edge61
  store i8 3, ptr %i.g, align 1, !tbaa !40
  br label %bb.bo

bb.e:                                             ; preds = %bb.a
  %i.al = tail call noundef double @_Z9lua_clockv()
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 18696
  store double %i.al, ptr %i.am, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 18664
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !50
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !23  ; 26 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 768 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 792
  %.013.i.i = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not14.i.i = icmp eq ptr %.013.i.i, %i.ar
  br i1 %.not14.i.i, label %_ZL12remarkupvalsP12global_State.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.i
  %.016.i.i = phi ptr [ %.0.i.i, %bb.i ], [ %.013.i.i, %bb.e ] ; 3 uses
  %.01015.i.i = phi i64 [ %i.at, %bb.i ], [ 0, %bb.e ]
  %i.at = add i64 %.01015.i.i, 40                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !58
  %i.aw = and i8 %i.av, 7
  %.not11.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not11.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !59 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !60
  %i.bb = icmp sgt i32 %i.ba, 5
  br i1 %i.bb, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !58 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !58
  %i.bf = and i8 %i.be, 3
  %.not12.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not12.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef %i.aq, ptr noundef nonnull %i.bc)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 24
  %.0.i.i = load ptr, ptr %i.bg, align 8, !tbaa !58 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %i.ar
  br i1 %.not.i.i, label %_ZL12remarkupvalsP12global_State.exit.i, label %.lr.ph.i.i, !llvm.loop !123

_ZL12remarkupvalsP12global_State.exit.i:          ; preds = %bb.i, %bb.e
  %.010.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %i.at, %bb.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 10 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !55
  %.not3.i.i = icmp eq ptr %i.bi, null
  br i1 %.not3.i.i, label %_ZL12propagateallP12global_State.exit.i, label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %_ZL12remarkupvalsP12global_State.exit.i, %.lr.ph.i44.i
  %.04.i.i = phi i64 [ %i.bk, %.lr.ph.i44.i ], [ 0, %_ZL12remarkupvalsP12global_State.exit.i ]
  %i.bj = tail call fastcc noundef i64 @_ZL13propagatemarkP12global_State(ptr noundef nonnull %i.aq)
  %i.bk = add i64 %i.bj, %.04.i.i                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL6markmtP12global_State:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !62 ; 3 uses
  %.not.11 = icmp eq ptr %i.be, null
  br i1 %.not.11, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !58
  %i.bh = and i8 %i.bg, 3
  %.not9.11 = icmp eq i8 %i.bh, 0
  br i1 %.not9.11, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef nonnull %0, ptr noundef nonnull %i.be)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !62 ; 3 uses
  %.not.12 = icmp eq ptr %i.bj, null
  br i1 %.not.12, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !58
  %i.bm = and i8 %i.bl, 3
  %.not9.12 = icmp eq i8 %i.bm, 0
  br i1 %.not9.12, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef nonnull %0, ptr noundef nonnull %i.bj)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62 ; 3 uses
  %.not.13 = icmp eq ptr %i.bo, null
  br i1 %.not.13, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !58
  %i.br = and i8 %i.bq, 3
  %.not9.13 = icmp eq i8 %i.br, 0
  br i1 %.not9.13, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef nonnull %0, ptr noundef nonnull %i.bo)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL15embeddermarkrefP9lua_Statei(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16432
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !58
  %i.f = tail call noundef ptr @_Z11luaH_getnumP8LuaTablei(ptr noundef %i.e, i32 noundef %1) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !60
  %i.i = icmp sgt i32 %i.h, 5
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !58
  %i.m = and i8 %i.l, 3
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !23
  tail call fastcc void @_ZL16reallymarkobjectP12global_StateP8GCObject(ptr noundef %i.n, ptr noundef nonnull %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  ret void
}

declare hidden noundef ptr @_Z11luaH_getnumP8LuaTablei(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZZL20tableresizeprotectedP9lua_StateP8LuaTableiEN11CallContext3runES0_Pv(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83
  tail call void @_Z15luaH_resizehashP9lua_StateP8LuaTablei(ptr noundef %0, ptr noundef %i.a, i32 noundef %i.c)
  ret void
}

declare hidden void @_Z15luaH_resizehashP9lua_StateP8LuaTablei(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @_Z15luaF_closeupvalP9lua_StateP5UpValb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare hidden void @_Z20luaM_getpagewalkinfoP8lua_PagePPcS2_PiS3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZZL21stringresizeprotectedP9lua_StateiEN11CallContext3runES0_Pv(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !91
  tail call void @_Z11luaS_resizeP9lua_Statei(ptr noundef %0, i32 noundef %i.a)
  ret void
}

declare hidden void @_Z11luaS_resizeP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_lgc.cpp() #6 section ".text.startup" {
bb.a:
  store i8 0, ptr @_ZN5FFlag24LuauUdataMetatablePinnedE, align 8, !tbaa !44
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag24LuauUdataMetatablePinnedE, i64 1), align 1, !tbaa !202
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag24LuauUdataMetatablePinnedE, i64 8), align 8, !tbaa !203
  %i.a = load ptr, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !204
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag24LuauUdataMetatablePinnedE, i64 16), align 8, !tbaa !205
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag24LuauUdataMetatablePinnedE, i64 24), align 8, !tbaa !206
  store i8 0, ptr @_ZN6DFFlag18LuauGcTableStepFixE, align 8, !tbaa !44
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN6DFFlag18LuauGcTableStepFixE, i64 1), align 1, !tbaa !202
  store ptr @.str.2, ptr getelementptr inbounds nuw (i8, ptr @_ZN6DFFlag18LuauGcTableStepFixE, i64 8), align 8, !tbaa !203
  store ptr @_ZN5FFlag24LuauUdataMetatablePinnedE, ptr getelementptr inbounds nuw (i8, ptr @_ZN6DFFlag18LuauGcTableStepFixE, i64 16), align 8, !tbaa !205
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6DFFlag18LuauGcTableStepFixE, i64 24), align 8, !tbaa !206
  store i8 0, ptr @_ZN5FFlag16LuauGcTraceUdataE, align 8, !tbaa !44
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag16LuauGcTraceUdataE, i64 1), align 1, !tbaa !202
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag16LuauGcTraceUdataE, i64 8), align 8, !tbaa !203
  store ptr @_ZN6DFFlag18LuauGcTableStepFixE, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag16LuauGcTraceUdataE, i64 16), align 8, !tbaa !205
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5FFlag16LuauGcTraceUdataE, i64 24), align 8, !tbaa !206
  store ptr @_ZN5FFlag16LuauGcTraceUdataE, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !204
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %.016.i.i = load ptr, ptr @_ZN4Luau6FValueIiE4listE, align 8, !tbaa !208 ; 2 uses
  %.not1217.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not1217.i.i, label %__cxx_global_var_init.5.exit, label %.lr.ph19.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.c
  %.01115.i.i = phi ptr [ %.011.i.i, %bb.c ], [ @_ZN5FFlag16LuauGcTraceUdataE, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !203
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(17) @.str.4) #10
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 24
  store i32 2, ptr %i.f, align 8, !tbaa !206
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 16
  %.011.i.i = load ptr, ptr %i.g, align 8, !tbaa !204 ; 2 uses
  %.not.i.i = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !200

.lr.ph19.i.i:                                     ; preds = %.preheader.i.i, %bb.e
  %.018.i.i = phi ptr [ %.0.i.i, %bb.e ], [ %.016.i.i, %.preheader.i.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !210
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(17) @.str.4) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph19.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 24
  store i32 2, ptr %i.l, align 8, !tbaa !211
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph19.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 16
  %.0.i.i = load ptr, ptr %i.m, align 8, !tbaa !208 ; 2 uses
  %.not12.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not12.i.i, label %__cxx_global_var_init.5.exit, label %.lr.ph19.i.i, !llvm.loop !201

__cxx_global_var_init.5.exit:                     ; preds = %bb.e, %.preheader.i.i
  store i8 0, ptr @_ZN6DFFlag21LuauGcMarkUdataAccessE, align 8, !tbaa !44
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN6DFFlag21LuauGcMarkUdataAccessE, i64 1), align 1, !tbaa !202
  store ptr @.str.7, ptr getelementptr inbounds nuw (i8, ptr @_ZN6DFFlag21LuauGcMarkUdataAccessE, i64 8), align 8, !tbaa !203
  store ptr @_ZN5FFlag16LuauGcTraceUdataE, ptr getelementptr inbounds nuw (i8, ptr @_ZN6DFFlag21LuauGcMarkUdataAccessE, i64 16), align 8, !tbaa !205
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6DFFlag21LuauGcMarkUdataAccessE, i64 24), align 8, !tbaa !206
  store ptr @_ZN6DFFlag21LuauGcMarkUdataAccessE, ptr @_ZN4Luau6FValueIbE4listE, align 8, !tbaa !204
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !56}
!1 = distinct !{!1, !56}
!2 = distinct !{!2, !56}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"bool", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS10lua_TValue", !13, i64 0}
!15 = !{!"p1 _ZTS12global_State", !13, i64 0}
!16 = !{!"p1 _ZTS8CallInfo", !13, i64 0}
!17 = !{!"short", !8, i64 0}
!18 = !{!"p1 _ZTS8LuaTable", !13, i64 0}
!19 = !{!"p1 _ZTS5UpVal", !13, i64 0}
!20 = !{!"p1 _ZTS8GCObject", !13, i64 0}
!21 = !{!"p1 _ZTS7TString", !13, i64 0}
!22 = !{!"_ZTS9lua_State", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !12, i64 5, !12, i64 6, !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !14, i64 40, !14, i64 48, !16, i64 56, !16, i64 64, !9, i64 72, !9, i64 76, !17, i64 80, !17, i64 82, !9, i64 84, !18, i64 88, !19, i64 96, !20, i64 104, !21, i64 112, !13, i64 120}
!23 = !{!22, !15, i64 24}
!24 = !{!"any p2 pointer", !13, i64 0}
!25 = !{!"p2 _ZTS7TString", !24, i64 0}
!26 = !{!"_ZTS11stringtable", !25, i64 0, !9, i64 8, !9, i64 12}
!27 = !{!"long", !8, i64 0}
!28 = !{!"p1 _ZTS8lua_Page", !13, i64 0}
!29 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!30 = !{!"_ZTS5UpVal", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !14, i64 8, !8, i64 16}
!31 = !{!"_ZTS10lua_TValue", !8, i64 0, !8, i64 8, !9, i64 12}
!32 = !{!"p1 _ZTS10lua_jmpbuf", !13, i64 0}
!33 = !{!"_ZTS13lua_Callbacks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!34 = !{!"_ZTS22lua_ExecutionCallbacks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!35 = !{!"double", !8, i64 0}
!36 = !{!"_ZTS7GCStats", !8, i64 0, !9, i64 128, !9, i64 132, !27, i64 136, !27, i64 144, !27, i64 152, !35, i64 160, !35, i64 168, !35, i64 176}
!37 = !{!"_ZTS12global_State", !26, i64 0, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 33, !20, i64 40, !20, i64 48, !20, i64 56, !27, i64 64, !27, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !8, i64 96, !8, i64 416, !28, i64 736, !28, i64 744, !28, i64 752, !29, i64 760, !30, i64 768, !8, i64 808, !8, i64 920, !8, i64 1032, !31, i64 1200, !31, i64 1216, !9, i64 1232, !32, i64 1240, !27, i64 1248, !8, i64 1256, !33, i64 1288, !34, i64 1368, !8, i64 1440, !8, i64 1952, !8, i64 11312, !8, i64 13360, !8, i64 14384, !8, i64 15408, !31, i64 16432, !9, i64 16448, !13, i64 16456, !8, i64 16464, !8, i64 17488, !36, i64 18528, !9, i64 18712}
!38 = !{!37, !9, i64 84}
!39 = !{!37, !27, i64 72}
!40 = !{!37, !8, i64 33}
!41 = !{!"p1 omnipotent char", !13, i64 0}
!42 = !{!"p1 _ZTSN4Luau6FValueIbEE", !13, i64 0}
!43 = !{!"_ZTSN4Luau6FValueIbEE", !12, i64 0, !12, i64 1, !41, i64 8, !42, i64 16, !9, i64 24}
!44 = !{!43, !12, i64 0}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!37, !9, i64 80}
!48 = !{!37, !35, i64 18696}
!49 = !{!37, !35, i64 18704}
!50 = !{!37, !27, i64 18664}
!51 = !{!37, !27, i64 18672}
!52 = !{!37, !27, i64 18680}
!53 = !{!9, !9, i64 0}
!54 = !{!37, !28, i64 752}
!55 = !{!37, !20, i64 40}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!37, !20, i64 48}
!58 = !{!8, !8, i64 0}
!59 = !{!30, !14, i64 8}
!60 = !{!31, !9, i64 12}
!61 = !{!37, !20, i64 56}
!62 = !{!18, !18, i64 0}
!63 = !{!"_ZTS25lua_UdataDirectAccessData", !31, i64 0, !31, i64 16, !31, i64 32, !13, i64 48, !13, i64 56, !13, i64 64}
!64 = !{!63, !9, i64 12}
!65 = !{!63, !9, i64 28}
!66 = !{!63, !9, i64 44}
!67 = !{!37, !13, i64 16456}
!68 = !{!37, !29, i64 760}
!69 = !{!"p1 _ZTS7LuaNode", !13, i64 0}
!70 = !{!"_ZTS8LuaTable", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !9, i64 8, !8, i64 12, !18, i64 16, !14, i64 24, !69, i64 32, !20, i64 40}
!71 = !{!70, !9, i64 8}
!72 = !{!70, !69, i64 32}
!73 = !{!70, !8, i64 6}
!74 = !{!70, !14, i64 24}
!75 = !{!"_ZTS4TKey", !8, i64 0, !8, i64 8, !9, i64 12, !9, i64 12}
!76 = !{!"_ZTS7LuaNode", !31, i64 0, !75, i64 16}
!77 = !{!76, !9, i64 12}
!78 = !{!70, !18, i64 16}
!79 = !{!70, !8, i64 3}
!80 = !{!21, !21, i64 0}
!81 = !{!"_ZTSZL20tableresizeprotectedP9lua_StateP8LuaTableiE11CallContext", !18, i64 0, !9, i64 8}
!82 = !{!81, !18, i64 0}
!83 = !{!81, !9, i64 8}
!84 = !{!70, !20, i64 40}
!85 = !{!30, !8, i64 3}
!86 = !{!37, !8, i64 32}
!87 = !{!37, !28, i64 744}
!88 = !{!37, !9, i64 8}
!89 = !{!37, !9, i64 12}
!90 = !{!"_ZTSZL21stringresizeprotectedP9lua_StateiE11CallContext", !9, i64 0}
!91 = !{!90, !9, i64 0}
!92 = !{!22, !18, i64 88}
!93 = !{!"_ZTS7Closure", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !20, i64 8, !18, i64 16, !8, i64 24}
!94 = !{!93, !20, i64 8}
!95 = !{!22, !20, i64 104}
!96 = !{!"p1 int", !13, i64 0}
!97 = !{!"p2 _ZTS5Proto", !24, i64 0}
!98 = !{!"p1 _ZTS6LocVar", !13, i64 0}
!99 = !{!"p1 _ZTS18FeedbackVectorSlot", !13, i64 0}
!100 = !{!"p1 _ZTS5Proto", !13, i64 0}
!101 = !{!"_ZTS5Proto", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !14, i64 8, !96, i64 16, !97, i64 24, !96, i64 32, !13, i64 40, !27, i64 48, !41, i64 56, !96, i64 64, !98, i64 72, !25, i64 80, !21, i64 88, !21, i64 96, !41, i64 104, !41, i64 112, !13, i64 120, !20, i64 128, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !99, i64 176, !9, i64 184, !9, i64 188, !100, i64 192, !100, i64 200, !27, i64 208}
!102 = !{!101, !20, i64 128}
!103 = !{!"_ZTS9LuauClass", !8, i64 0, !8, i64 1, !8, i64 2, !20, i64 8, !21, i64 16, !14, i64 24, !18, i64 32, !25, i64 40, !18, i64 48, !18, i64 56, !9, i64 64, !9, i64 68}
!104 = !{!103, !20, i64 8}
!105 = !{!"p1 _ZTS9LuauClass", !13, i64 0}
!106 = !{!"_ZTS10LuauObject", !8, i64 0, !8, i64 1, !8, i64 2, !20, i64 8, !105, i64 16, !9, i64 24, !14, i64 32}
!107 = !{!106, !20, i64 8}
!108 = !{!"_ZTS7TString", !8, i64 0, !8, i64 1, !8, i64 2, !17, i64 4, !21, i64 8, !9, i64 16, !9, i64 20, !8, i64 24}
!109 = !{!108, !8, i64 1}
!110 = !{!22, !14, i64 48}
!111 = !{!22, !9, i64 72}
!112 = !{!22, !14, i64 8}
!113 = !{!22, !9, i64 76}
!114 = !{!37, !9, i64 88}
!115 = !{!37, !27, i64 64}
!116 = !{!37, !13, i64 1296}
!117 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!118 = !{!37, !35, i64 18688}
!119 = !{!37, !9, i64 18656}
!120 = !{!37, !9, i64 18660}
!121 = distinct !{!121, !56}
!122 = distinct !{!122, !56}
!123 = distinct !{!123, !56}
!124 = distinct !{!124, !56}
!125 = distinct !{null}
!126 = distinct !{!126, !56}
!127 = distinct !{!127, !56}
!128 = distinct !{!128, !56}
!129 = distinct !{!129, !56}
!130 = distinct !{!130, !56}
!131 = distinct !{!131, !56}
!132 = distinct !{!132, !56}
!133 = !{!41, !41, i64 0}
!134 = distinct !{!134, !56}
!135 = distinct !{!135, !56}
!136 = distinct !{!136, !56}
!137 = distinct !{!137, !56}
!138 = distinct !{!138, !56}
!139 = !{!37, !9, i64 1228}
!140 = !{!37, !9, i64 16444}
!141 = !{!"_ZTS5Udata", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !9, i64 4, !18, i64 8, !8, i64 16}
!142 = !{!141, !8, i64 3}
!143 = !{!13, !13, i64 0}
!144 = !{!141, !18, i64 8}
!145 = !{!20, !20, i64 0}
!146 = !{!27, !27, i64 0}
!147 = distinct !{!147, !56}
!148 = distinct !{!148, !56}
!149 = distinct !{!149, !56}
!150 = distinct !{!150, !56}
!151 = distinct !{!151, !56}
!152 = distinct !{!152, !56}
!153 = distinct !{!153, !56}
!154 = distinct !{!154, !56}
!155 = distinct !{!155, !56}
!156 = distinct !{!156, !56}
!157 = distinct !{!157, !56}
!158 = distinct !{!158, !56}
!159 = !{!93, !18, i64 16}
!160 = !{!93, !8, i64 3}
!161 = !{!93, !8, i64 4}
!162 = !{!22, !12, i64 5}
!163 = !{!101, !21, i64 88}
!164 = !{!101, !21, i64 96}
!165 = !{!101, !9, i64 152}
!166 = !{!101, !9, i64 148}
!167 = !{!101, !25, i64 80}
!168 = !{!101, !14, i64 8}
!169 = !{!101, !9, i64 140}
!170 = !{!101, !9, i64 144}
!171 = !{!101, !98, i64 72}
!172 = !{!101, !97, i64 24}
!173 = !{!100, !100, i64 0}
!174 = !{!"_ZTS6LocVar", !21, i64 0, !9, i64 8, !9, i64 12, !8, i64 16}
!175 = !{!174, !21, i64 0}
!176 = !{!101, !100, i64 192}
!177 = !{!101, !100, i64 200}
!178 = !{!101, !9, i64 136}
!179 = !{!101, !9, i64 156}
end_hunk_1
