Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/gap-resolver?download=true
inline.NumInlined: 233
inline.NumDeleted: 115
begin_hunk_0
@.str.2 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler11GapResolver7ResolveEPNS1_12ParallelMoveE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not68 = icmp eq ptr %i.b, %i.d
  br i1 %.not68, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.l
  %.pre = load ptr, ptr %i.a, align 8             ; 4 uses
  %.pre70 = load ptr, ptr %i.c, align 8           ; 4 uses
  %.pre77 = ptrtoint ptr %.pre to i64
  %.pre78 = ptrtoint ptr %.pre70 to i64           ; 2 uses
  %.pre80 = sub i64 %.pre77, %.pre78
  %.pre82 = ashr exact i64 %.pre80, 3
  %i.i = icmp eq i64 %.1, %.pre82
  %i.j = and i8 %.sroa.051.1, %.sroa.053.1
  %i.k = icmp eq i8 %i.j, 0                       ; 2 uses
  br i1 %i.i, label %bb.o, label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.03859 = phi i64 [ %.1, %bb.l ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.04058 = phi i64 [ %.141, %bb.l ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.sroa.051.057 = phi i8 [ %.sroa.051.1, %bb.l ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.053.056 = phi i8 [ %.sroa.053.1, %bb.l ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.l = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.04058 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 7 uses
  %i.p = and i64 %i.o, 7                          ; 4 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.s = icmp eq i64 %i.p, 4
  br i1 %i.s, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.t = add nuw i64 %.04058, 1
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.u = icmp samesign ugt i64 %i.p, 4
  br i1 %i.u, label %bb.d, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = and i64 %i.o, 8
  %i.w = icmp eq i64 %i.v, 0
  %i.x = and i64 %i.o, 3840
  %i.y = icmp ne i64 %i.x, 0
  %i.z = and i1 %i.y, %i.w
  %i.aa = and i64 %i.o, -4088
  %i.ab = select i1 %i.z, i64 288, i64 0
  %i.ac = or disjoint i64 %i.aa, %i.ab
  %i.ad = or disjoint i64 %i.ac, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.02.i.i.i = phi i64 [ %i.ad, %bb.d ], [ %i.o, %bb.c ]
  %i.ae = load i64, ptr %i.r, align 8             ; 5 uses
  %i.af = and i64 %i.ae, 7
  %i.ag = icmp samesign ugt i64 %i.af, 4
  br i1 %i.ag, label %bb.e, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit

bb.e:                                             ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i
  %i.ah = and i64 %i.ae, 8
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = and i64 %i.ae, 3840
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = and i1 %i.ak, %i.ai
  %i.am = and i64 %i.ae, -4088
  %i.an = select i1 %i.al, i64 288, i64 0
  %i.ao = or disjoint i64 %i.am, %i.an
  %i.ap = or disjoint i64 %i.ao, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit: ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i, %bb.e
  %.02.i4.i.i = phi i64 [ %i.ap, %bb.e ], [ %i.ae, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i ]
  %i.aq = icmp eq i64 %.02.i.i.i, %.02.i4.i.i
  br i1 %i.aq, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, label %bb.g

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread: ; preds = %.lr.ph, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit
  %i.ar = add i64 %.03859, -1                     ; 4 uses
  %i.as = icmp ult i64 %.04058, %i.ar
  br i1 %i.as, label %bb.f, label %bb.l, !llvm.loop !7

bb.f:                                             ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ar
  %i.au = load ptr, ptr %i.at, align 8
  store ptr %i.au, ptr %i.m, align 8
  br label %bb.l, !llvm.loop !7

bb.g:                                             ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit
  %i.av = add nuw i64 %.04058, 1                  ; 2 uses
  %i.aw = icmp eq i64 %i.p, 2
  br i1 %i.aw, label %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.ax = phi i64 [ %i.t, %.thread ], [ %i.av, %bb.g ] ; 2 uses
  %i.ay = and i64 %i.o, 8
  %.not.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i, label %bb.i, label %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit

bb.i:                                             ; preds = %bb.h
  %i.az = and i64 %i.o, 3840
  %.not2.i = icmp eq i64 %i.az, 0
  %i.ba = select i1 %.not2.i, i8 1, i8 2
  br label %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit

_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.bb = phi i64 [ %i.av, %bb.g ], [ %i.ax, %bb.i ], [ %i.ax, %bb.h ]
  %.1.i = phi i8 [ 0, %bb.g ], [ %i.ba, %bb.i ], [ 3, %bb.h ]
  %i.bc = shl nuw nsw i8 1, %.1.i
  %i.bd = or i8 %i.bc, %.sroa.053.056
  %.val = load i64, ptr %i.r, align 8             ; 3 uses
  %i.be = and i64 %.val, 7
  %i.bf = icmp eq i64 %i.be, 2
  br i1 %i.bf, label %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit50, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit
  %i.bg = and i64 %.val, 8
  %.not.i47 = icmp eq i64 %i.bg, 0
  br i1 %.not.i47, label %bb.k, label %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit50

bb.k:                                             ; preds = %bb.j
  %i.bh = and i64 %.val, 3840
  %.not2.i49 = icmp eq i64 %i.bh, 0
  %i.bi = select i1 %.not2.i49, i8 1, i8 2
  br label %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit50

_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit50: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit, %bb.j, %bb.k
  %.1.i48 = phi i8 [ 0, %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit ], [ %i.bi, %bb.k ], [ 3, %bb.j ]
  %i.bj = shl nuw nsw i8 1, %.1.i48
  %i.bk = or i8 %i.bj, %.sroa.051.057
  br label %bb.l

bb.l:                                             ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread, %bb.f, %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit50
  %.sroa.053.1 = phi i8 [ %.sroa.053.056, %bb.f ], [ %.sroa.053.056, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread ], [ %i.bd, %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit50 ] ; 2 uses
  %.sroa.051.1 = phi i8 [ %.sroa.051.057, %bb.f ], [ %.sroa.051.057, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread ], [ %i.bk, %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit50 ] ; 2 uses
  %.141 = phi i64 [ %.04058, %bb.f ], [ %.04058, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread ], [ %i.bb, %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit50 ] ; 2 uses
  %.1 = phi i64 [ %i.ar, %bb.f ], [ %i.ar, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread ], [ %.03859, %_ZN2v88internal8compiler12_GLOBAL__N_17GetKindERKNS1_18InstructionOperandE.exit50 ] ; 7 uses
  %i.bl = icmp ult i64 %.141, %.1
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

bb.m:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %.pre78
  %i.bq = ashr exact i64 %i.bp, 3
  %.not.i.i = icmp ugt i64 %.1, %i.bq
  br i1 %.not.i.i, label %bb.n, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE14EnsureCapacityEm.exit.i, !prof !6

bb.n:                                             ; preds = %bb.m
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.1)
  %.pre.i = load ptr, ptr %i.c, align 8
  %.pre71 = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE14EnsureCapacityEm.exit.i: ; preds = %bb.n, %bb.m
  %i.br = phi ptr [ %.pre, %bb.m ], [ %.pre71, %bb.n ] ; 3 uses
  %i.bs = phi ptr [ %.pre70, %bb.m ], [ %.pre.i, %bb.n ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.1 ; 4 uses
  %i.bu = icmp ult ptr %i.br, %i.bt
  br i1 %i.bu, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE14EnsureCapacityEm.exit.i
  %i.bv = ptrtoaddr ptr %i.br to i64
  %i.bw = ptrtoaddr ptr %i.bs to i64
  %i.bx = shl nuw nsw i64 %.1, 3
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = xor i64 %i.bv, -1
  %i.ca = add i64 %i.by, %i.bz
  %i.cb = and i64 %i.ca, -8
  %i.cc = add i64 %i.cb, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.br, i8 0, i64 %i.cc, i1 false)
  %.pre74.pre.pre = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE6resizeEm.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  %.pre74.pre = phi ptr [ %i.bs, %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE14EnsureCapacityEm.exit.i ], [ %.pre74.pre.pre, %.lr.ph.preheader.i ] ; 2 uses
  store ptr %i.bt, ptr %i.a, align 8
  br i1 %i.k, label %.critedge, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  br i1 %i.k, label %.critedge, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE6resizeEm.exit, %bb.o
  %i.cd = phi ptr [ %i.bt, %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE6resizeEm.exit ], [ %.pre, %bb.o ] ; 3 uses
  %.pre74101 = phi ptr [ %.pre74.pre, %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE6resizeEm.exit ], [ %.pre70, %bb.o ] ; 3 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %.pre74101 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = icmp ult i64 %i.cg, 9
  br i1 %i.ch, label %.critedge, label %.lr.ph63

.critedge:                                        ; preds = %bb.a, %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE6resizeEm.exit, %bb.o, %bb.p
  %i.ci = phi ptr [ %i.bt, %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE6resizeEm.exit ], [ %.pre, %bb.o ], [ %i.cd, %bb.p ], [ %i.b, %bb.a ] ; 2 uses
  %.pre74100 = phi ptr [ %.pre74.pre, %_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE6resizeEm.exit ], [ %.pre70, %bb.o ], [ %.pre74101, %bb.p ], [ %i.d, %bb.a ] ; 2 uses
  %.not4365 = icmp eq ptr %.pre74100, %i.ci
  br i1 %.not4365, label %.loopexit, label %.lr.ph67

.lr.ph67:                                         ; preds = %.critedge, %.lr.ph67
  %.03966 = phi ptr [ %i.cp, %.lr.ph67 ], [ %.pre74100, %.critedge ] ; 2 uses
  %i.cj = load ptr, ptr %.03966, align 8          ; 2 uses
  %i.ck = load ptr, ptr %0, align 8               ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load ptr, ptr %i.ck, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(12) %i.ck, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.cl) #10
  %i.cp = getelementptr inbounds nuw i8, ptr %.03966, i64 8 ; 2 uses
  %.not43 = icmp eq ptr %i.cp, %i.ci
  br i1 %.not43, label %.loopexit, label %.lr.ph67

._crit_edge64:                                    ; preds = %bb.r
  %i.cq = load ptr, ptr %0, align 8               ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(12) %i.cq) #10
  br label %.loopexit

.lr.ph63:                                         ; preds = %bb.p, %bb.r
  %i.cu = phi ptr [ %i.db, %bb.r ], [ %.pre74101, %bb.p ] ; 2 uses
  %i.cv = phi ptr [ %i.dc, %bb.r ], [ %i.cd, %bb.p ]
  %.062 = phi i64 [ %i.dd, %bb.r ], [ 0, %bb.p ]  ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.062
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = and i64 %i.cy, 7
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph63
  tail call void @_ZN2v88internal8compiler11GapResolver11PerformMoveEPNS1_12ParallelMoveEPNS1_12MoveOperandsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.cx)
  %.pre72 = load ptr, ptr %i.a, align 8
  %.pre73 = load ptr, ptr %i.c, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph63
  %i.db = phi ptr [ %.pre73, %bb.q ], [ %i.cu, %.lr.ph63 ] ; 2 uses
  %i.dc = phi ptr [ %.pre72, %bb.q ], [ %i.cv, %.lr.ph63 ] ; 2 uses
  %i.dd = add nuw i64 %.062, 1                    ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 3
  %i.di = icmp ult i64 %i.dd, %i.dh
  br i1 %i.di, label %.lr.ph63, label %._crit_edge64, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph67, %.critedge, %._crit_edge64
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler11GapResolver11PerformMoveEPNS1_12ParallelMoveEPNS1_12MoveOperandsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = call noundef ptr @_ZN2v88internal8compiler11GapResolver17PerformMoveHelperEPNS1_12ParallelMoveEPNS1_12MoveOperandsEPSt6vectorIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %.not21 = icmp eq ptr %i.a, null
  br i1 %.not21, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph23, %._crit_edge
  %i.e = phi ptr [ %i.a, %.lr.ph23 ], [ %i.p, %._crit_edge ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i64 %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull %i.e) #10
  %i.k = load i64, ptr %i.e, align 8
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1719 = icmp eq ptr %i.l, %i.m
  br i1 %.not1719, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.n = load ptr, ptr %3, align 8                ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.n
  %spec.store.select = select i1 %.not.i.i, ptr %i.o, ptr %i.n
  store ptr %spec.store.select, ptr %i.d, align 8
  %i.p = call noundef ptr @_ZN2v88internal8compiler11GapResolver17PerformMoveHelperEPNS1_12ParallelMoveEPNS1_12MoveOperandsEPSt6vectorIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %._crit_edge24, label %bb.b

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.020 = phi ptr [ %i.v, %bb.d ], [ %i.l, %bb.b ] ; 2 uses
  %i.q = load ptr, ptr %.020, align 8             ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = and i64 %i.r, 7
  %i.t = icmp ne i64 %i.s, 4
  %i.u = icmp eq i64 %i.r, %i.k
  %.0.i.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %.0.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  store i64 %i.j, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  %.not17 = icmp eq ptr %i.v, %i.m
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge24:                                    ; preds = %._crit_edge, %bb.a
  %i.w = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN2v88internal8compiler12MoveOperandsESaIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #11
  br label %_ZNSt6vectorIPN2v88internal8compiler12MoveOperandsESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal8compiler12MoveOperandsESaIS4_EED2Ev.exit: ; preds = %._crit_edge24, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler6IsSwapEPNS1_12MoveOperandsES3_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8                ; 2 uses
  %i.c = and i64 %i.b, 7
  %i.d = icmp eq i64 %i.c, 4
  %i.e = icmp eq ptr %0, %i.a
  %i.f = load i64, ptr %i.a, align 8
  %i.g = icmp eq i64 %i.b, %i.f
  %.0.i.i = select i1 %i.d, i1 %i.e, i1 %i.g
  br i1 %.0.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %1, align 8                ; 2 uses
  %i.j = and i64 %i.i, 7
  %i.k = icmp eq i64 %i.j, 4
  %i.l = icmp eq ptr %1, %i.h
  %i.m = load i64, ptr %i.h, align 8
  %i.n = icmp eq i64 %i.i, %i.m
  %.0.i.i4 = select i1 %i.k, i1 %i.l, i1 %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ %.0.i.i4, %bb.b ]
  ret i1 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler11GapResolver12PerformCycleERKSt6vectorIPNS1_12MoveOperandsESaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::InstructionOperand", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8              ; 11 uses
  %i.e = load ptr, ptr %1, align 8                ; 3 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp eq i64 %i.h, 16
  br i1 %i.i, label %bb.b, label %_ZN2v88internal8compiler6IsSwapEPNS1_12MoveOperandsES3_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.l = load i64, ptr %i.j, align 8              ; 2 uses
  %i.m = and i64 %i.l, 7
  %i.n = icmp eq i64 %i.m, 4
  %i.o = icmp eq ptr %i.j, %i.k
  %i.p = load i64, ptr %i.k, align 8              ; 2 uses
  %i.q = icmp eq i64 %i.l, %i.p
  %.0.i.i.i = select i1 %i.n, i1 %i.o, i1 %i.q
  br i1 %.0.i.i.i, label %_ZN2v88internal8compiler6IsSwapEPNS1_12MoveOperandsES3_.exit, label %_ZN2v88internal8compiler6IsSwapEPNS1_12MoveOperandsES3_.exit.thread.thread

_ZN2v88internal8compiler6IsSwapEPNS1_12MoveOperandsES3_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.d, align 8              ; 3 uses
  %i.t = and i64 %i.s, 7                          ; 2 uses
  %i.u = icmp eq i64 %i.t, 4
  %i.v = icmp eq ptr %i.d, %i.r
  %i.w = load i64, ptr %i.r, align 8
  %i.x = icmp eq i64 %i.s, %i.w
  %.0.i.i4.i = select i1 %i.u, i1 %i.v, i1 %i.x
  br i1 %.0.i.i4.i, label %bb.c, label %_ZN2v88internal8compiler6IsSwapEPNS1_12MoveOperandsES3_.exit.thread.thread

bb.c:                                             ; preds = %_ZN2v88internal8compiler6IsSwapEPNS1_12MoveOperandsES3_.exit
  %i.y = icmp samesign ugt i64 %i.t, 4
  %i.z = and i64 %i.s, 8
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = and i1 %i.y, %i.aa                      ; 2 uses
  %spec.select = select i1 %i.ab, ptr %i.d, ptr %i.k
  %spec.select36 = select i1 %i.ab, ptr %i.k, ptr %i.d
  %i.ac = load ptr, ptr %0, align 8               ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr noundef nonnull %spec.select36, ptr noundef nonnull %spec.select) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %bb.d

_ZN2v88internal8compiler6IsSwapEPNS1_12MoveOperandsES3_.exit.thread.thread: ; preds = %bb.b, %_ZN2v88internal8compiler6IsSwapEPNS1_12MoveOperandsES3_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ah = lshr i64 %i.p, 4
end_hunk_0
