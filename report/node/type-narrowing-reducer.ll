inline.NumInlined: 187
inline.NumDeleted: 30
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.v8::internal::compiler::Type" = type { i64 }

$_ZNK2v88internal8compiler20TypeNarrowingReducer12reducer_nameEv = comdat any

@_ZTVN2v88internal8compiler20TypeNarrowingReducerE = hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal8compiler20TypeNarrowingReducerD2Ev, ptr @_ZN2v88internal8compiler20TypeNarrowingReducerD0Ev, ptr @_ZNK2v88internal8compiler20TypeNarrowingReducer12reducer_nameEv, ptr @_ZN2v88internal8compiler7Reducer8FinalizeEv, ptr @_ZN2v88internal8compiler20TypeNarrowingReducer6ReduceEPNS1_4NodeE] }, align 8
@.str = private unnamed_addr constant [21 x i8] c"TypeNarrowingReducer\00", align 1

@_ZN2v88internal8compiler20TypeNarrowingReducerC1EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS1_12JSHeapBrokerE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN2v88internal8compiler20TypeNarrowingReducerC2EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS1_12JSHeapBrokerE
@_ZN2v88internal8compiler20TypeNarrowingReducerD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal8compiler20TypeNarrowingReducerD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler20TypeNarrowingReducerC2EPNS1_15AdvancedReducer6EditorEPNS1_7JSGraphEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 24)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal8compiler20TypeNarrowingReducerE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %2, align 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @_ZN2v88internal8compiler14OperationTyperC1EPNS1_12JSHeapBrokerEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef %3, ptr noundef %i.e) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler20TypeNarrowingReducer4zoneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

declare void @_ZN2v88internal8compiler14OperationTyperC1EPNS1_12JSHeapBrokerEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal8compiler20TypeNarrowingReducerD2Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler20TypeNarrowingReducerD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #7
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler20TypeNarrowingReducer6ReduceEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::Type", align 8 ; 6 uses
  %3 = alloca %"class.v8::internal::compiler::Type", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::compiler::Type", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i16, ptr %i.b, align 8
  switch i16 %i.c, label %bb.dm [
    i16 133, label %bb.b
    i16 59, label %bb.g
    i16 152, label %bb.i
    i16 153, label %bb.k
    i16 154, label %bb.m
    i16 155, label %bb.o
    i16 156, label %bb.q
    i16 157, label %bb.s
    i16 158, label %bb.u
    i16 159, label %bb.w
    i16 160, label %bb.y
    i16 161, label %bb.aa
    i16 162, label %bb.ac
    i16 163, label %bb.ae
    i16 164, label %bb.ag
    i16 165, label %bb.ai
    i16 166, label %bb.ak
    i16 167, label %bb.am
    i16 139, label %bb.ao
    i16 194, label %bb.aq
    i16 195, label %bb.as
    i16 196, label %bb.au
    i16 197, label %bb.aw
    i16 198, label %bb.ay
    i16 199, label %bb.ba
    i16 200, label %bb.bc
    i16 201, label %bb.be
    i16 202, label %bb.bg
    i16 203, label %bb.bi
    i16 204, label %bb.bk
    i16 205, label %bb.bm
    i16 206, label %bb.bo
    i16 207, label %bb.bq
    i16 208, label %bb.bs
    i16 209, label %bb.bu
    i16 210, label %bb.bw
    i16 211, label %bb.by
    i16 212, label %bb.ca
    i16 213, label %bb.cc
    i16 214, label %bb.ce
    i16 215, label %bb.cg
    i16 216, label %bb.ci
    i16 217, label %bb.ck
    i16 218, label %bb.cm
    i16 219, label %bb.co
    i16 220, label %bb.cq
    i16 221, label %bb.cs
    i16 222, label %bb.cu
    i16 223, label %bb.cw
    i16 224, label %bb.cy
    i16 225, label %bb.da
    i16 226, label %bb.dc
    i16 227, label %bb.de
    i16 228, label %bb.dg
    i16 368, label %bb.di
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 251658240
  %.not.i.i = icmp eq i32 %i.f, 251658240
  %i.g = ptrtoint ptr %1 to i64
  %i.h = add i64 %i.g, 32
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit217

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, 16
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit217

_ZNK2v88internal8compiler4Node7InputAtEi.exit217: ; preds = %bb.b, %bb.c
  %.sink595 = phi ptr [ %i.n, %bb.c ], [ %i.j, %bb.b ]
  %.sink.i.i216 = phi ptr [ %i.m, %bb.c ], [ %i.i, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sink595, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.o, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.p = getelementptr inbounds nuw i8, ptr %.sink.i.i216, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0.0.copyload.i.i218 = load i64, ptr %i.r, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i218, ptr %3, align 8
  %i.s = icmp eq i64 %.sroa.0.0.copyload.i.i, 1119
  br i1 %i.s, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit

_ZNK2v88internal8compiler4Type2IsES2_.exit:       ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit217
  %i.t = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 1119) #6
  br i1 %i.t, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread, label %bb.f

_ZNK2v88internal8compiler4Type2IsES2_.exit.thread: ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit, %_ZNK2v88internal8compiler4Node7InputAtEi.exit217
  %i.u = icmp eq i64 %.sroa.0.0.copyload.i.i218, 1119
  br i1 %i.u, label %_ZNK2v88internal8compiler4Type2IsES2_.exit219.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit219

_ZNK2v88internal8compiler4Type2IsES2_.exit219:    ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread
  %i.v = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 1119) #6
  br i1 %i.v, label %_ZNK2v88internal8compiler4Type2IsES2_.exit219.thread, label %bb.f

_ZNK2v88internal8compiler4Type2IsES2_.exit219.thread: ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread, %_ZNK2v88internal8compiler4Type2IsES2_.exit219
  %i.w = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #6
  %i.x = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  %i.y = fcmp olt double %i.w, %i.x
  br i1 %i.y, label %5, label %bb.d

5:                                                ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit219.thread
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0.0.copyload.i = load i64, ptr %6, align 8
  br label %bb.f

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit219.thread
  %i.z = call noundef double @_ZNK2v88internal8compiler4Type3MinEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #6
  %i.aa = call noundef double @_ZNK2v88internal8compiler4Type3MaxEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  %i.ab = fcmp ult double %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i220 = load i64, ptr %i.ac, align 8
  br label %bb.f

bb.f:                                             ; preds = %5, %bb.e, %bb.d, %_ZNK2v88internal8compiler4Type2IsES2_.exit219, %_ZNK2v88internal8compiler4Type2IsES2_.exit
  %.sroa.0135.0 = phi i64 [ %.sroa.0.0.copyload.i, %5 ], [ %.sroa.0.0.copyload.i220, %bb.e ], [ -1, %bb.d ], [ -1, %_ZNK2v88internal8compiler4Type2IsES2_.exit219 ], [ -1, %_ZNK2v88internal8compiler4Type2IsES2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.dk

bb.g:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, 251658240
  %.not.i.i221 = icmp eq i32 %i.ag, 251658240
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = add i64 %i.ah, 32
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  br i1 %.not.i.i221, label %bb.h, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit223

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = add i64 %i.al, 16
  %i.an = inttoptr i64 %i.am to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit223

_ZNK2v88internal8compiler4Node7InputAtEi.exit223: ; preds = %bb.g, %bb.h
  %.sink.i.i222 = phi ptr [ %i.an, %bb.h ], [ %i.aj, %bb.g ]
  %i.ao = load ptr, ptr %.sink.i.i222, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.0.0.copyload.i.i224 = load i64, ptr %i.ap, align 8
  %i.aq = tail call i64 @_ZN2v88internal8compiler14OperationTyper13TypeTypeGuardEPKNS1_8OperatorENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, ptr noundef nonnull %i.a, i64 %.sroa.0.0.copyload.i.i224) #6
  br label %bb.dk

bb.i:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 251658240
  %.not.i.i225 = icmp eq i32 %i.au, 251658240
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = add i64 %i.av, 32
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  br i1 %.not.i.i225, label %bb.j, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit231

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = add i64 %i.az, 16
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit231

_ZNK2v88internal8compiler4Node7InputAtEi.exit231: ; preds = %bb.i, %bb.j
  %.pn594.in = phi ptr [ %i.bb, %bb.j ], [ %i.ax, %bb.i ] ; 2 uses
  %.pn594 = load ptr, ptr %.pn594.in, align 8
  %.sroa.0.0.copyload.i.i228513.in = getelementptr inbounds nuw i8, ptr %.pn594, i64 8
  %.sroa.0.0.copyload.i.i228513 = load i64, ptr %.sroa.0.0.copyload.i.i228513.in, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn594.in, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.0.0.copyload.i.i232 = load i64, ptr %i.be, align 8
  %i.bf = tail call i64 @_ZN2v88internal8compiler14OperationTyper9NumberAddENS1_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(104) %i.ar, i64 %.sroa.0.0.copyload.i.i228513, i64 %.sroa.0.0.copyload.i.i232) #6
  br label %bb.dk

bb.k:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 251658240
  %.not.i.i233 = icmp eq i32 %i.bj, 251658240
  %i.bk = ptrtoint ptr %1 to i64
  %i.bl = add i64 %i.bk, 32
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  br i1 %.not.i.i233, label %bb.l, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit239

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = add i64 %i.bo, 16
  %i.bq = inttoptr i64 %i.bp to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit239

_ZNK2v88internal8compiler4Node7InputAtEi.exit239: ; preds = %bb.k, %bb.l
  %.pn593.in = phi ptr [ %i.bq, %bb.l ], [ %i.bm, %bb.k ] ; 2 uses
  %.pn593 = load ptr, ptr %.pn593.in, align 8
  %.sroa.0.0.copyload.i.i236517.in = getelementptr inbounds nuw i8, ptr %.pn593, i64 8
  %.sroa.0.0.copyload.i.i236517 = load i64, ptr %.sroa.0.0.copyload.i.i236517.in, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.pn593.in, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.0.0.copyload.i.i240 = load i64, ptr %i.bt, align 8
  %i.bu = tail call i64 @_ZN2v88internal8compiler14OperationTyper14NumberSubtractENS1_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(104) %i.bg, i64 %.sroa.0.0.copyload.i.i236517, i64 %.sroa.0.0.copyload.i.i240) #6
  br label %bb.dk

bb.m:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = and i32 %i.bx, 251658240
  %.not.i.i241 = icmp eq i32 %i.by, 251658240
  %i.bz = ptrtoint ptr %1 to i64
  %i.ca = add i64 %i.bz, 32
  %i.cb = inttoptr i64 %i.ca to ptr               ; 2 uses
  br i1 %.not.i.i241, label %bb.n, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit247

bb.n:                                             ; preds = %bb.m
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = add i64 %i.cd, 16
  %i.cf = inttoptr i64 %i.ce to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit247

_ZNK2v88internal8compiler4Node7InputAtEi.exit247: ; preds = %bb.m, %bb.n
  %.pn592.in = phi ptr [ %i.cf, %bb.n ], [ %i.cb, %bb.m ] ; 2 uses
  %.pn592 = load ptr, ptr %.pn592.in, align 8
  %.sroa.0.0.copyload.i.i244521.in = getelementptr inbounds nuw i8, ptr %.pn592, i64 8
  %.sroa.0.0.copyload.i.i244521 = load i64, ptr %.sroa.0.0.copyload.i.i244521.in, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn592.in, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.0.0.copyload.i.i248 = load i64, ptr %i.ci, align 8
  %i.cj = tail call i64 @_ZN2v88internal8compiler14OperationTyper14NumberMultiplyENS1_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(104) %i.bv, i64 %.sroa.0.0.copyload.i.i244521, i64 %.sroa.0.0.copyload.i.i248) #6
  br label %bb.dk

bb.o:                                             ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = and i32 %i.cm, 251658240
  %.not.i.i249 = icmp eq i32 %i.cn, 251658240
  %i.co = ptrtoint ptr %1 to i64
  %i.cp = add i64 %i.co, 32
  %i.cq = inttoptr i64 %i.cp to ptr               ; 2 uses
  br i1 %.not.i.i249, label %bb.p, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit255

bb.p:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = add i64 %i.cs, 16
  %i.cu = inttoptr i64 %i.ct to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit255

_ZNK2v88internal8compiler4Node7InputAtEi.exit255: ; preds = %bb.o, %bb.p
  %.pn591.in = phi ptr [ %i.cu, %bb.p ], [ %i.cq, %bb.o ] ; 2 uses
  %.pn591 = load ptr, ptr %.pn591.in, align 8
  %.sroa.0.0.copyload.i.i252525.in = getelementptr inbounds nuw i8, ptr %.pn591, i64 8
  %.sroa.0.0.copyload.i.i252525 = load i64, ptr %.sroa.0.0.copyload.i.i252525.in, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn591.in, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.0.0.copyload.i.i256 = load i64, ptr %i.cx, align 8
  %i.cy = tail call i64 @_ZN2v88internal8compiler14OperationTyper12NumberDivideENS1_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(104) %i.ck, i64 %.sroa.0.0.copyload.i.i252525, i64 %.sroa.0.0.copyload.i.i256) #6
  br label %bb.dk

bb.q:                                             ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = and i32 %i.db, 251658240
  %.not.i.i257 = icmp eq i32 %i.dc, 251658240
  %i.dd = ptrtoint ptr %1 to i64
  %i.de = add i64 %i.dd, 32
  %i.df = inttoptr i64 %i.de to ptr               ; 2 uses
  br i1 %.not.i.i257, label %bb.r, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit263

bb.r:                                             ; preds = %bb.q
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = add i64 %i.dh, 16
  %i.dj = inttoptr i64 %i.di to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit263

_ZNK2v88internal8compiler4Node7InputAtEi.exit263: ; preds = %bb.q, %bb.r
  %.pn590.in = phi ptr [ %i.dj, %bb.r ], [ %i.df, %bb.q ] ; 2 uses
  %.pn590 = load ptr, ptr %.pn590.in, align 8
  %.sroa.0.0.copyload.i.i260529.in = getelementptr inbounds nuw i8, ptr %.pn590, i64 8
  %.sroa.0.0.copyload.i.i260529 = load i64, ptr %.sroa.0.0.copyload.i.i260529.in, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.pn590.in, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.0.0.copyload.i.i264 = load i64, ptr %i.dm, align 8
  %i.dn = tail call i64 @_ZN2v88internal8compiler14OperationTyper13NumberModulusENS1_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(104) %i.cz, i64 %.sroa.0.0.copyload.i.i260529, i64 %.sroa.0.0.copyload.i.i264) #6
  br label %bb.dk

bb.s:                                             ; preds = %bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = and i32 %i.dq, 251658240
  %.not.i.i265 = icmp eq i32 %i.dr, 251658240
  %i.ds = ptrtoint ptr %1 to i64
  %i.dt = add i64 %i.ds, 32
  %i.du = inttoptr i64 %i.dt to ptr               ; 2 uses
  br i1 %.not.i.i265, label %bb.t, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit271

bb.t:                                             ; preds = %bb.s
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = add i64 %i.dw, 16
  %i.dy = inttoptr i64 %i.dx to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit271

_ZNK2v88internal8compiler4Node7InputAtEi.exit271: ; preds = %bb.s, %bb.t
  %.pn589.in = phi ptr [ %i.dy, %bb.t ], [ %i.du, %bb.s ] ; 2 uses
end_hunk_0
