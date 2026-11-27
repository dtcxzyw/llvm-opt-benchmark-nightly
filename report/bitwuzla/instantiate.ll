Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/instantiate?download=true
inline.NumInlined: 432
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm = comdat any

$_ZN7CaDiCaL8Internal12watch_clauseEPNS_6ClauseE = comdat any

@.str = private unnamed_addr constant [12 x i8] c"instantiate\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"attempting to instantiate %ld candidate literal clause pairs\00", align 1
@.str.2 = private unnamed_addr constant [94 x i8] c"instantiation %ld (%.1f%%) succeeded (%.1f%%) with %zd negative occurrences in size %d clause\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"instantiated %ld candidate successfully out of %ld tried %.1f%%\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal32collect_instantiation_candidatesERNS_12InstantiatorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194, !nonnull !12, !align !195
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  %.not5669 = icmp eq i32 %i.c, 0
  br i1 %.not5669, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3544 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3548 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3540 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.b

._crit_edge73:                                    ; preds = %.loopexit58, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph72, %.loopexit58
  %.sroa.052.070 = phi i32 [ 1, %.lr.ph72 ], [ %4, %.loopexit58 ] ; 10 uses
  %i.o = tail call i32 @llvm.abs.i32(i32 %.sroa.052.070, i1 true) ; 3 uses
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !196
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !197  ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = icmp ugt i64 %i.v, %i.p
  br i1 %i.w, label %_ZN7CaDiCaL8Internal6frozenEi.exit, label %_ZN7CaDiCaL8Internal6frozenEi.exit.thread

_ZN7CaDiCaL8Internal6frozenEi.exit:               ; preds = %bb.b
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  %i.y = load i32, ptr %i.x, align 4, !tbaa !13
  %.not57 = icmp eq i32 %i.y, 0
  br i1 %.not57, label %_ZN7CaDiCaL8Internal6frozenEi.exit.thread, label %.loopexit58

_ZN7CaDiCaL8Internal6frozenEi.exit.thread:        ; preds = %bb.b, %_ZN7CaDiCaL8Internal6frozenEi.exit
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.p
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = and i32 %i.ab, 117440768
  %or.cond55 = icmp eq i32 %i.ac, 16777216
  br i1 %or.cond55, label %.preheader.preheader, label %.loopexit58

.preheader.preheader:                             ; preds = %_ZN7CaDiCaL8Internal6frozenEi.exit.thread
  %i.ad = sub nsw i32 0, %.sroa.052.070           ; 3 uses
  %i.ae = tail call i32 @llvm.abs.i32(i32 %.sroa.052.070, i1 true) ; 2 uses
  %i.af = tail call noundef i32 @llvm.fshl.i32(i32 %i.ae, i32 %i.ad, i32 1)
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !198 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.ak = load i32, ptr %i.h, align 8, !tbaa !199
  %i.al = sext i32 %i.ak to i64                   ; 3 uses
  %i.am = icmp sgt i64 %i.aj, %i.al
  br i1 %i.am, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader.preheader
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !200
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ag ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !160 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !160 ; 2 uses
  %.not64 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not64, label %.loopexit, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.c
  %i.as = tail call i32 @llvm.fshl.i32(i32 %i.ae, i32 %.sroa.052.070, i32 1)
  %i.at = zext i32 %i.as to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph67, %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit
  %.sroa.048.065 = phi ptr [ %i.ap, %.lr.ph67 ], [ %i.di, %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit ] ; 2 uses
  %i.au = load ptr, ptr %.sroa.048.065, align 8, !tbaa !161 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  %i.ax = and i32 %i.aw, 16
  %.not42 = icmp eq i32 %i.ax, 0
  br i1 %.not42, label %bb.e, label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit

bb.e:                                             ; preds = %bb.d
  %i.ay = load i32, ptr %i.j, align 4, !tbaa !201
  %.not43 = icmp eq i32 %i.ay, 0
  %i.az = and i32 %i.aw, 128
  %.not44 = icmp eq i32 %i.az, 0
  %or.cond = or i1 %.not44, %.not43
  br i1 %or.cond, label %bb.f, label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !13 ; 5 uses
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !202
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %.not4559 = icmp eq i32 %i.bb, 0
  br i1 %.not4559, label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bf = sext i32 %i.bb to i64
  %i.bg = load ptr, ptr %i.l, align 8, !tbaa !162 ; 3 uses
  %i.bh = add nsw i64 %i.bf, 4611686018427387903  ; 2 uses
  %i.bi = and i64 %i.bh, 4611686018427387903      ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %i.bk = icmp eq i64 %i.bi, 0
  br i1 %i.bk, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bj, 9223372036854775806
  br label %bb.h

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  %i.bl = and i64 %i.bh, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bl, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.062.epil.init = phi ptr [ %i.be, %.lr.ph ], [ %i.cf, %._crit_edge.unr-lcssa ]
  %.03761.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1115, %._crit_edge.unr-lcssa ]
  %.03860.epil.init = phi i1 [ false, %.lr.ph ], [ %spec.select.1113, %._crit_edge.unr-lcssa ]
  %lcmp.mod108 = trunc i64 %i.bj to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.bm = load i32, ptr %.062.epil.init, align 4, !tbaa !13
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bg, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !163 ; 2 uses
  %.inv.epil = icmp sgt i8 %i.bp, 0
  %spec.select.epil = select i1 %.inv.epil, i1 true, i1 %.03860.epil.init
  %.not46.epil = icmp eq i8 %i.bp, 0
  %i.bq = zext i1 %.not46.epil to i32
  %.1.epil = add nuw nsw i32 %.03761.epil.init, %i.bq
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %spec.select.lcssa = phi i1 [ %spec.select.1113, %._crit_edge.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  %.1.lcssa = phi i32 [ %.1.1115, %._crit_edge.unr-lcssa ], [ %.1.epil, %.epil.preheader ]
  %i.br = icmp samesign ult i32 %.1.lcssa, 3
  %i.bs = select i1 %spec.select.lcssa, i1 true, i1 %i.br
  br i1 %i.bs, label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit, label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %.062 = phi ptr [ %i.be, %.lr.ph.new ], [ %i.cf, %bb.h ] ; 3 uses
  %.03761 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1115, %bb.h ]
  %.03860 = phi i1 [ false, %.lr.ph.new ], [ %spec.select.1113, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.bt = load i32, ptr %.062, align 4, !tbaa !13
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bg, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !163 ; 2 uses
  %.inv = icmp sgt i8 %i.bw, 0
  %.not46 = icmp eq i8 %i.bw, 0
  %i.bx = zext i1 %.not46 to i32
  %.1 = add nuw nsw i32 %.03761, %i.bx
  %i.by = getelementptr inbounds nuw i8, ptr %.062, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !13
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %i.bg, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !163 ; 2 uses
  %.inv.1112 = icmp sgt i8 %i.cc, 0
  %i.cd = select i1 %.inv.1112, i1 true, i1 %.inv
  %spec.select.1113 = select i1 %i.cd, i1 true, i1 %.03860 ; 3 uses
  %.not46.1114 = icmp eq i8 %i.cc, 0
  %i.ce = zext i1 %.not46.1114 to i32
  %.1.1115 = add nuw nsw i32 %.1, %i.ce           ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.062, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.h

bb.i:                                             ; preds = %._crit_edge
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !200
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.at ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !164
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !165
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3                 ; 2 uses
  %i.cp = load ptr, ptr %i.m, align 8, !tbaa !168 ; 9 uses
  %i.cq = load ptr, ptr %i.n, align 8, !tbaa !203
  %.not.i.i.i = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.ad, ptr %i.cp, align 8, !tbaa !13
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 %i.bb, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !13
  %.sroa.6.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.co, ptr %.sroa.6.0..sroa_idx.i.a, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.au, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !161
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr %i.cr, ptr %i.m, align 8, !tbaa !168
  br label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit

bb.k:                                             ; preds = %bb.i
  %i.cs = load ptr, ptr %1, align 8, !tbaa !169   ; 5 uses
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 3 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %.loopexit74, label %_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

.loopexit74:                                      ; preds = %bb.k, %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #10
  unreachable

_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.k
  %i.cx = sdiv exact i64 %i.cv, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 384307168202282325)
  %i.db = select i1 %i.cz, i64 384307168202282325, i64 %i.da ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.db, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.dc = mul nuw nsw i64 %i.db, 24
  %i.dd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #11 ; 5 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv ; 4 uses
  store i32 %i.ad, ptr %2, align 8, !tbaa !13
  %.sroa.5.0..sroa_idx5.i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.bb, ptr %.sroa.5.0..sroa_idx5.i.a, align 4, !tbaa !13
  %.sroa.6.0..sroa_idx7.i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.co, ptr %.sroa.6.0..sroa_idx7.i.a, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.au, ptr %.sroa.7.0..sroa_idx9.i, align 8, !tbaa !161
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.cs, %i.cp
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dd, %_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cs, %_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !204, !alias.scope !205
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.de, %i.cp
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !193

_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 24
  %.not.i23.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.cs) #12
  br label %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.dd, ptr %1, align 8, !tbaa !169
  store ptr %i.dg, ptr %i.m, align 8, !tbaa !168
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %i.db
  store ptr %i.dh, ptr %i.n, align 8, !tbaa !203
  br label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit

_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit: ; preds = %bb.g, %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.j, %._crit_edge, %bb.f, %bb.e, %bb.d
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.048.065, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.di, %i.ar
  br i1 %.not, label %.loopexit.loopexit, label %bb.d

.loopexit.loopexit:                               ; preds = %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !198
  %.pre76 = load i32, ptr %i.h, align 8, !tbaa !199
  %.pre77 = sext i32 %.pre76 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %.preheader.preheader
  %.pre-phi = phi i64 [ %.pre77, %.loopexit.loopexit ], [ %i.al, %bb.c ], [ %i.al, %.preheader.preheader ]
  %i.dj = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.ah, %bb.c ], [ %i.ah, %.preheader.preheader ]
  %i.dk = tail call noundef i32 @llvm.fshl.i32(i32 %i.o, i32 %.sroa.052.070, i32 1)
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !21
  %i.do = icmp sgt i64 %i.dn, %.pre-phi
  br i1 %i.do, label %.loopexit58, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.dp = load ptr, ptr %i.i, align 8, !tbaa !200
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.dl ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !160 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !160 ; 2 uses
  %.not64.1 = icmp eq ptr %i.dr, %i.dt
  br i1 %.not64.1, label %.loopexit58, label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %bb.m
  %i.du = sub nsw i32 0, %.sroa.052.070
  %i.dv = tail call i32 @llvm.fshl.i32(i32 %i.o, i32 %i.du, i32 1)
  %i.dw = zext i32 %i.dv to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit.1, %.lr.ph67.1
  %.sroa.048.065.1 = phi ptr [ %i.dr, %.lr.ph67.1 ], [ %i.gl, %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit.1 ] ; 2 uses
  %i.dx = load ptr, ptr %.sroa.048.065.1, align 8, !tbaa !161 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 8            ; 2 uses
  %i.ea = and i32 %i.dz, 16
  %.not42.1 = icmp eq i32 %i.ea, 0
  br i1 %.not42.1, label %bb.o, label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit.1

bb.o:                                             ; preds = %bb.n
  %i.eb = load i32, ptr %i.j, align 4, !tbaa !201
  %.not43.1 = icmp eq i32 %i.eb, 0
  %i.ec = and i32 %i.dz, 128
  %.not44.1 = icmp eq i32 %i.ec, 0
  %or.cond.1 = or i1 %.not44.1, %.not43.1
  br i1 %or.cond.1, label %bb.p, label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit.1

bb.p:                                             ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !13 ; 5 uses
  %i.ef = load i32, ptr %i.k, align 4, !tbaa !202
  %i.eg = icmp slt i32 %i.ee, %i.ef
  br i1 %i.eg, label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %.not4559.1 = icmp eq i32 %i.ee, 0
  br i1 %.not4559.1, label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.q
  %i.ei = sext i32 %i.ee to i64
  %i.ej = load ptr, ptr %i.l, align 8, !tbaa !162 ; 3 uses
  %i.ek = add nsw i64 %i.ei, 4611686018427387903  ; 2 uses
  %i.el = and i64 %i.ek, 4611686018427387903      ; 2 uses
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %i.en = icmp eq i64 %i.el, 0
  br i1 %i.en, label %.epil.preheader117, label %.lr.ph.1.new

.lr.ph.1.new:                                     ; preds = %.lr.ph.1
  %unroll_iter123 = and i64 %i.em, 9223372036854775806
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.1.new
  %.062.1 = phi ptr [ %i.eh, %.lr.ph.1.new ], [ %i.fa, %bb.r ] ; 3 uses
  %.03761.1 = phi i32 [ 0, %.lr.ph.1.new ], [ %.1.1.1, %bb.r ]
  %.03860.1 = phi i1 [ false, %.lr.ph.1.new ], [ %spec.select.1.1, %bb.r ]
  %niter124 = phi i64 [ 0, %.lr.ph.1.new ], [ %niter124.next.1, %bb.r ]
  %i.eo = load i32, ptr %.062.1, align 4, !tbaa !13
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.ej, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !163 ; 2 uses
  %.inv.1 = icmp sgt i8 %i.er, 0
  %.not46.1 = icmp eq i8 %i.er, 0
  %i.es = zext i1 %.not46.1 to i32
  %.1.1 = add nuw nsw i32 %.03761.1, %i.es
  %i.et = getelementptr inbounds nuw i8, ptr %.062.1, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !13
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %i.ej, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !163 ; 2 uses
  %.inv.1.1 = icmp sgt i8 %i.ex, 0
  %i.ey = select i1 %.inv.1.1, i1 true, i1 %.inv.1
  %spec.select.1.1 = select i1 %i.ey, i1 true, i1 %.03860.1 ; 3 uses
  %.not46.1.1 = icmp eq i8 %i.ex, 0
  %i.ez = zext i1 %.not46.1.1 to i32
  %.1.1.1 = add nuw nsw i32 %.1.1, %i.ez          ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.062.1, i64 8 ; 2 uses
  %niter124.next.1 = add i64 %niter124, 2         ; 2 uses
  %niter124.ncmp.1 = icmp eq i64 %niter124.next.1, %unroll_iter123
  br i1 %niter124.ncmp.1, label %._crit_edge.1.unr-lcssa, label %bb.r

._crit_edge.1.unr-lcssa:                          ; preds = %bb.r
  %i.fb = and i64 %i.ek, 1
  %lcmp.mod119.not.not = icmp eq i64 %i.fb, 0
  br i1 %lcmp.mod119.not.not, label %.epil.preheader117, label %._crit_edge.1

.epil.preheader117:                               ; preds = %._crit_edge.1.unr-lcssa, %.lr.ph.1
  %.062.1.epil.init = phi ptr [ %i.eh, %.lr.ph.1 ], [ %i.fa, %._crit_edge.1.unr-lcssa ]
  %.03761.1.epil.init = phi i32 [ 0, %.lr.ph.1 ], [ %.1.1.1, %._crit_edge.1.unr-lcssa ]
  %.03860.1.epil.init = phi i1 [ false, %.lr.ph.1 ], [ %spec.select.1.1, %._crit_edge.1.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %i.em to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.fc = load i32, ptr %.062.1.epil.init, align 4, !tbaa !13
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %i.ej, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !163 ; 2 uses
  %.inv.1.epil = icmp sgt i8 %i.ff, 0
  %spec.select.1.epil = select i1 %.inv.1.epil, i1 true, i1 %.03860.1.epil.init
  %.not46.1.epil = icmp eq i8 %i.ff, 0
  %i.fg = zext i1 %.not46.1.epil to i32
  %.1.1.epil = add nuw nsw i32 %.03761.1.epil.init, %i.fg
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.1.unr-lcssa, %.epil.preheader117
  %spec.select.1.lcssa = phi i1 [ %spec.select.1.1, %._crit_edge.1.unr-lcssa ], [ %spec.select.1.epil, %.epil.preheader117 ]
  %.1.1.lcssa = phi i32 [ %.1.1.1, %._crit_edge.1.unr-lcssa ], [ %.1.1.epil, %.epil.preheader117 ]
  %i.fh = icmp samesign ult i32 %.1.1.lcssa, 3
  %i.fi = select i1 %spec.select.1.lcssa, i1 true, i1 %i.fh
  br i1 %i.fi, label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit.1, label %bb.s

bb.s:                                             ; preds = %._crit_edge.1
  %i.fj = load ptr, ptr %i.i, align 8, !tbaa !200
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.fj, i64 %i.dw ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !164
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !165
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 3                 ; 2 uses
  %i.fs = load ptr, ptr %i.m, align 8, !tbaa !168 ; 9 uses
  %i.ft = load ptr, ptr %i.n, align 8, !tbaa !203
  %.not.i.i.i.1 = icmp eq ptr %i.fs, %i.ft
  br i1 %.not.i.i.i.1, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %.sroa.052.070, ptr %i.fs, align 8, !tbaa !13
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 %i.ee, ptr %.sroa.5.0..sroa_idx.i.1, align 4, !tbaa !13
  %.sroa.6.0..sroa_idx.i.1.a = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %i.fr, ptr %.sroa.6.0..sroa_idx.i.1.a, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store ptr %i.dx, ptr %.sroa.7.0..sroa_idx.i.1, align 8, !tbaa !161
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store ptr %i.fu, ptr %i.m, align 8, !tbaa !168
  br label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit.1

bb.u:                                             ; preds = %bb.s
  %i.fv = load ptr, ptr %1, align 8, !tbaa !169   ; 5 uses
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775800
  br i1 %i.fz, label %.loopexit74, label %_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.1

_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.1: ; preds = %bb.u
  %i.ga = sdiv exact i64 %i.fy, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i.i.i.i.1, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 384307168202282325)
  %i.ge = select i1 %i.gc, i64 384307168202282325, i64 %i.gd ; 3 uses
  %.not.i.i.i.i.i.1 = icmp ne i64 %i.ge, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.1)
  %i.gf = mul nuw nsw i64 %i.ge, 24
  %i.gg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #11 ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fy ; 4 uses
  store i32 %.sroa.052.070, ptr %3, align 8, !tbaa !13
  %.sroa.5.0..sroa_idx5.i.1.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ee, ptr %.sroa.5.0..sroa_idx5.i.1.a, align 4, !tbaa !13
  %.sroa.6.0..sroa_idx7.i.1.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fr, ptr %.sroa.6.0..sroa_idx7.i.1.a, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx9.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dx, ptr %.sroa.7.0..sroa_idx9.i.1, align 8, !tbaa !161
  %.not10.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.fv, %i.fs
  br i1 %.not10.i.i.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.1
  %.012.i.i.i.i.i.i.i.i.1 = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ %i.gg, %_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.1 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.1 = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ %i.fv, %_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.1 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i.i.1, i64 24, i1 false), !tbaa.struct !204, !alias.scope !205
  %i.gh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.gh, %i.fs
  br i1 %.not.i.i.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.i.i.1, !llvm.loop !193

_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1, %_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.1
  %.0.lcssa.i.i.i.i.i.i.i.i.1 = phi ptr [ %i.gg, %_ZNKSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.1 ], [ %i.gi, %.lr.ph.i.i.i.i.i.i.i.i.1 ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.1, i64 24
  %.not.i23.i.i.i.i.1 = icmp eq ptr %i.fv, null
  br i1 %.not.i23.i.i.i.i.1, label %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.1, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.1
  tail call void @_ZdlPv(ptr noundef nonnull %i.fv) #12
  br label %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.1

_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.1: ; preds = %bb.v, %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.1
  store ptr %i.gg, ptr %1, align 8, !tbaa !169
  store ptr %i.gj, ptr %i.m, align 8, !tbaa !168
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %i.ge
  store ptr %i.gk, ptr %i.n, align 8, !tbaa !203
  br label %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit.1

_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit.1: ; preds = %bb.q, %_ZNSt6vectorIN7CaDiCaL12Instantiator9CandidateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.1, %bb.t, %._crit_edge.1, %bb.p, %bb.o, %bb.n
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.048.065.1, i64 8 ; 2 uses
  %.not.1 = icmp eq ptr %i.gl, %i.dt
  br i1 %.not.1, label %.loopexit58, label %bb.n

.loopexit58:                                      ; preds = %_ZN7CaDiCaL12Instantiator9candidateEiPNS_6ClauseEim.exit.1, %.loopexit, %bb.m, %_ZN7CaDiCaL8Internal6frozenEi.exit.thread, %_ZN7CaDiCaL8Internal6frozenEi.exit
  %4 = add i32 %.sroa.052.070, 1
  %.not56 = icmp eq i32 %.sroa.052.070, %i.c
  br i1 %.not56, label %._crit_edge73, label %bb.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal14inst_propagateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6560
  %i.d = load i32, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !172
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 6528
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3620
  %i.i = load i32, ptr %i.h, align 4, !tbaa !173
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.c, %bb.d
  %i.l = phi double [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %i.g, double noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !174
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.bg
  %i.y = load i64, ptr %i.m, align 8, !tbaa !174  ; 4 uses
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !175
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !176 ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  %.not72 = icmp eq i64 %i.y, %i.ae               ; 2 uses
  br i1 %.not72, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add i64 %i.y, 1
  store i64 %i.af, ptr %i.m, align 8, !tbaa !174
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13 ; 2 uses
  %i.ai = sub nsw i32 0, %i.ah                    ; 6 uses
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.ak = tail call noundef i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.ai, i32 1)
  %i.al = zext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !177
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !179 ; 4 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !179 ; 5 uses
  %.not175445 = icmp eq ptr %i.aq, %i.ap
  br i1 %.not175445, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread, label %.lr.ph450

.lr.ph450:                                        ; preds = %bb.g, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %.sroa.0140.0447 = phi ptr [ %i.ar, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %i.aq, %bb.g ] ; 2 uses
  %.sroa.0132.0446 = phi ptr [ %.sroa.0132.3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %i.aq, %bb.g ] ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0140.0447, i64 16 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0132.0446, i64 16 ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0132.0446, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0140.0447, i64 16, i1 false), !tbaa.struct !180
  %.sroa.0119.0.copyload = load ptr, ptr %.sroa.0132.0446, align 8, !tbaa !161 ; 15 uses
  %.sroa.15.0..sroa.0117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0132.0446, i64 8 ; 3 uses
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa.0117.0..sroa_idx, align 8, !tbaa !13 ; 4 uses
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !162 ; 8 uses
  %i.au = sext i32 %.sroa.15.0.copyload to i64    ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !163 ; 2 uses
  %i.ax = icmp sgt i8 %i.aw, 0
  br i1 %i.ax, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, label %bb.h, !llvm.loop !206

bb.h:                                             ; preds = %.lr.ph450
  %.sroa.17.0..sroa.0117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0132.0446, i64 12
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa.0117.0..sroa_idx, align 4, !tbaa !13
  %i.ay = icmp eq i32 %.sroa.17.0.copyload, 2
  br i1 %i.ay, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.az = icmp slt i8 %i.aw, 0
  %i.ba = load i8, ptr %i.s, align 8, !tbaa !181, !range !182, !noundef !12
  %i.bb = trunc nuw i8 %i.ba to i1                ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  br i1 %i.bb, label %bb.k, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !164 ; 4 uses
  %i.bd = load ptr, ptr %i.v, align 8, !tbaa !215
  %.not.i79 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i79, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %.sroa.0119.0.copyload, ptr %i.bc, align 8, !tbaa !161
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.be, ptr %i.u, align 8, !tbaa !164
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !165 ; 4 uses
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 5 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775800
  br i1 %i.bj, label %bb.n, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #10
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bk = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 1152921504606846975)
  %i.bo = select i1 %i.bm, i64 1152921504606846975, i64 %i.bn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #11 ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bi ; 2 uses
  store ptr %.sroa.0119.0.copyload, ptr %i.br, align 8, !tbaa !161
  %i.bs = icmp sgt i64 %i.bi, 0
  br i1 %i.bs, label %bb.o, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 8 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bf) #12
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bq, ptr %i.t, align 8, !tbaa !165
  store ptr %i.bt, ptr %i.u, align 8, !tbaa !164
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bu, ptr %i.v, align 8, !tbaa !215
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread

bb.q:                                             ; preds = %bb.i
  br i1 %i.bb, label %bb.r, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit87

bb.r:                                             ; preds = %bb.q
  %i.bv = load ptr, ptr %i.u, align 8, !tbaa !164 ; 4 uses
  %i.bw = load ptr, ptr %i.v, align 8, !tbaa !215
  %.not.i80 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i80, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.sroa.0119.0.copyload, ptr %i.bv, align 8, !tbaa !161
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bx, ptr %i.u, align 8, !tbaa !164
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit87

bb.t:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %i.t, align 8, !tbaa !165 ; 4 uses
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 5 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.u, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i81

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #10
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i81: ; preds = %bb.t
  %i.cd = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i82 = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i82, %i.cd ; 2 uses
end_hunk_0
