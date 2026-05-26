inline.NumInlined: 1354
inline.NumDeleted: 544
begin_hunk_0
@.str.13 = private unnamed_addr constant [29 x i8] c"NULL state in RunStateOnByte\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Unexpected special state in RunStateOnByte\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"StateSaver failed to restore state.\00", align 1
@_ZZN10duckdb_re23DFA14FastSearchLoopEPNS0_12SearchParamsEE8Searches = internal unnamed_addr constant [8 x { i64, i64 }] [{ i64, i64 } { i64 ptrtoint (ptr @_ZN10duckdb_re23DFA9SearchFFFEPNS0_12SearchParamsE to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN10duckdb_re23DFA9SearchFFTEPNS0_12SearchParamsE to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN10duckdb_re23DFA9SearchFTFEPNS0_12SearchParamsE to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN10duckdb_re23DFA9SearchFTTEPNS0_12SearchParamsE to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN10duckdb_re23DFA9SearchTFFEPNS0_12SearchParamsE to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN10duckdb_re23DFA9SearchTFTEPNS0_12SearchParamsE to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN10duckdb_re23DFA9SearchTTFEPNS0_12SearchParamsE to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN10duckdb_re23DFA9SearchTTTEPNS0_12SearchParamsE to i64), i64 0 }], align 16
@.str.16 = private unnamed_addr constant [30 x i8] c"context does not contain text\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Failed to analyze start state.\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"RE2 pthread failure\00", align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.19 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"RunStateOnByteUnlocked failed after ResetCache\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"RunStateOnByteUnlocked failed after Reset\00", align 1
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

@_ZN10duckdb_re23DFAC1EPNS_4ProgENS1_9MatchKindEl = hidden unnamed_addr alias void (ptr, ptr, i32, i64), ptr @_ZN10duckdb_re23DFAC2EPNS_4ProgENS1_9MatchKindEl
@_ZN10duckdb_re23DFAD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10duckdb_re23DFAD2Ev
@_ZN10duckdb_re23DFA8RWLockerC1EPNS_5MutexE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN10duckdb_re23DFA8RWLockerC2EPNS_5MutexE
@_ZN10duckdb_re23DFA8RWLockerD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10duckdb_re23DFA8RWLockerD2Ev
@_ZN10duckdb_re23DFA10StateSaverC1EPS0_PNS0_5StateE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN10duckdb_re23DFA10StateSaverC2EPS0_PNS0_5StateE
@_ZN10duckdb_re23DFA10StateSaverD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN10duckdb_re23DFA10StateSaverD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10duckdb_re24Prog42TESTING_ONLY_set_dfa_should_bail_when_slowEb(i1 noundef zeroext %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %0 to i8
  store i8 %i.a, ptr @_ZN10duckdb_re2L25dfa_should_bail_when_slowE, align 1, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re23DFAC2EPNS_4ProgENS1_9MatchKindEl(ptr noundef nonnull align 8 dereferenceable(296) initializes((0, 13)) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %2, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i8 0, ptr %i.b, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = tail call i32 @pthread_rwlock_init(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef null) #19
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN10duckdb_re25MutexC2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.18)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
  unreachable

common.resume:                                    ; preds = %_ZN10duckdb_re28PODArrayIiED2Ev.exit42, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %.pn.pn, %_ZN10duckdb_re28PODArrayIiED2Ev.exit42 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #19
  br label %common.resume

_ZN10duckdb_re25MutexC2Ev.exit:                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.k = tail call i32 @pthread_rwlock_init(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef null) #19
  %.not.i22 = icmp eq i32 %i.k, 0
  br i1 %.not.i22, label %_ZN10duckdb_re25MutexC2Ev.exit23, label %bb.e

bb.e:                                             ; preds = %_ZN10duckdb_re25MutexC2Ev.exit
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.18)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #19
  br label %.body

_ZN10duckdb_re25MutexC2Ev.exit23:                 ; preds = %_ZN10duckdb_re25MutexC2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store i64 %3, ptr %i.n, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.p, ptr %i.o, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 1, ptr %i.q, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i8 0, i64 80, i1 false)
  %i.u = load i32, ptr %i.a, align 8, !tbaa !36
  %i.v = icmp eq i32 %i.u, 1
  %.pre = load ptr, ptr %0, align 8, !tbaa !9     ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !42   ; 2 uses
  %. = select i1 %i.v, i32 %i.x, i32 0            ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 68
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 76
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = add i32 %i.z, %.
  %i.af = add i32 %i.ae, %i.ab
  %i.ag = add i32 %i.af, %i.ad                    ; 2 uses
  %i.ah = add nsw i32 %i.ag, 1                    ; 3 uses
  %i.ai = add i64 %3, -296
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 2 uses
  %i.ak = add nsw i32 %i.x, %.
  %i.al = sext i32 %i.ak to i64
  %i.am = sext i32 %i.ah to i64
  %i.an = shl nsw i64 %i.am, 2
  %i.ao = shl nsw i64 %i.al, 4
  %i.ap = add nsw i64 %i.an, %i.ao
  %i.aq = sub i64 %i.ai, %i.ap                    ; 4 uses
  store i64 %i.aq, ptr %i.n, align 8, !tbaa !38
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN10duckdb_re25MutexC2Ev.exit23
  store i8 1, ptr %i.b, align 4, !tbaa !37
  br label %bb.u

bb.j:                                             ; preds = %_ZN10duckdb_re25MutexC2Ev.exit23
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.aq, ptr %i.at, align 8, !tbaa !79
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !80
  %i.aw = add nsw i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = add nsw i64 %i.ay, 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !81
  %i.bc = add nsw i32 %i.bb, %.
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = add nsw i64 %i.az, %i.be
  %i.bg = mul nsw i64 %i.bf, 20
  %i.bh = icmp slt i64 %i.aq, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.b, align 4, !tbaa !37
  br label %bb.u

bb.l:                                             ; preds = %bb.p, %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.m:                                             ; preds = %bb.j
  %i.bj = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %bb.n unwind label %bb.l       ; 11 uses

bb.n:                                             ; preds = %bb.m
  %i.bk = load i32, ptr %i.aj, align 8, !tbaa !42 ; 3 uses
  %i.bl = add nsw i32 %i.bk, %.                   ; 6 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !82
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i, !prof !84

.noexc.i.i.i:                                     ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc24 unwind label %bb.v

.noexc24:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i: ; preds = %bb.n
  %i.bn = zext nneg i32 %i.bl to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2                ; 2 uses
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #21
          to label %.noexc25 unwind label %bb.v   ; 3 uses

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %i.bl, ptr %i.bq, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !85
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #21
          to label %bb.o unwind label %.thread.i.i

bb.o:                                             ; preds = %.noexc25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i32 %i.bl, ptr %i.bt, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !85
  %.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i, label %bb.p, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o
  %i.bv = add nsw i32 %i.bl, -1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bp, i8 -85, i64 %i.by, i1 false), !tbaa !3
  br label %bb.p

.thread.i.i:                                      ; preds = %.noexc25
  %i.bz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.bp) #22
  br label %.body26

bb.p:                                             ; preds = %.lr.ph.i.i.i, %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store i32 %i.bk, ptr %i.ca, align 8, !tbaa !86
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 44
  store i32 %., ptr %i.cb, align 4, !tbaa !88
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store i32 %i.bk, ptr %i.cc, align 8, !tbaa !89
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 52
  store i8 1, ptr %i.cd, align 4, !tbaa !90
  store ptr %i.bj, ptr %i.g, align 8, !tbaa !91
  %i.ce = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %bb.q unwind label %bb.l       ; 11 uses

bb.q:                                             ; preds = %bb.p
  %i.cf = load i32, ptr %i.aj, align 8, !tbaa !42 ; 3 uses
  %i.cg = add nsw i32 %i.cf, %.                   ; 6 uses
  store i32 0, ptr %i.ce, align 8, !tbaa !82
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %.noexc.i.i.i32, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i28, !prof !84

.noexc.i.i.i32:                                   ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc33 unwind label %bb.w

.noexc33:                                         ; preds = %.noexc.i.i.i32
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i28: ; preds = %bb.q
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = shl nuw nsw i64 %i.ci, 2                ; 2 uses
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #21
          to label %.noexc34 unwind label %bb.w   ; 3 uses

.noexc34:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i28
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 %i.cg, ptr %i.cl, align 4, !tbaa !3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !85
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #21
          to label %bb.r unwind label %.thread.i.i29

bb.r:                                             ; preds = %.noexc34
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i32 %i.cg, ptr %i.co, align 4, !tbaa !3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !85
  %.not.i.i30 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i30, label %bb.s, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %bb.r
  %i.cq = add nsw i32 %i.cg, -1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ck, i8 -85, i64 %i.ct, i1 false), !tbaa !3
  br label %bb.s

.thread.i.i29:                                    ; preds = %.noexc34
  %i.cu = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ck) #22
  br label %.body35

bb.s:                                             ; preds = %.lr.ph.i.i.i31, %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store i32 %i.cf, ptr %i.cv, align 8, !tbaa !86
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 44
  store i32 %., ptr %i.cw, align 4, !tbaa !88
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store i32 %i.cf, ptr %i.cx, align 8, !tbaa !89
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 52
  store i8 1, ptr %i.cy, align 4, !tbaa !90
  store ptr %i.ce, ptr %i.h, align 8, !tbaa !92
  %i.cz = icmp slt i32 %i.ag, -1
  br i1 %i.cz, label %.noexc.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i, !prof !84

.noexc.i:                                         ; preds = %bb.s
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc38 unwind label %bb.x

.noexc38:                                         ; preds = %.noexc.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i:   ; preds = %bb.s
  %i.da = zext nneg i32 %i.ah to i64
  %i.db = shl nuw nsw i64 %i.da, 2
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #21
          to label %_ZN10duckdb_re28PODArrayIiEC2Ei.exit unwind label %bb.x

_ZN10duckdb_re28PODArrayIiEC2Ei.exit:             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !93 ; 2 uses
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !93
  %.not.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i, label %_ZN10duckdb_re28PODArrayIiED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN10duckdb_re28PODArrayIiEC2Ei.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.de) #22
  br label %_ZN10duckdb_re28PODArrayIiED2Ev.exit

_ZN10duckdb_re28PODArrayIiED2Ev.exit:             ; preds = %bb.t, %_ZN10duckdb_re28PODArrayIiEC2Ei.exit
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !3
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %_ZN10duckdb_re28PODArrayIiED2Ev.exit, %bb.i
  ret void

bb.v:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i, %.noexc.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body26

.body26:                                          ; preds = %.thread.i.i, %bb.v
  %eh.lpad-body27 = phi { ptr, i32 } [ %i.df, %bb.v ], [ %i.bz, %.thread.i.i ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.bj) #22
  br label %bb.y

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i28, %.noexc.i.i.i32
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body35

.body35:                                          ; preds = %.thread.i.i29, %bb.w
  %eh.lpad-body36 = phi { ptr, i32 } [ %i.dg, %bb.w ], [ %i.cu, %.thread.i.i29 ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.ce) #22
  br label %bb.y

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i, %.noexc.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.body35, %.body26, %bb.l
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.x ], [ %eh.lpad-body36, %.body35 ], [ %i.bi, %bb.l ], [ %eh.lpad-body27, %.body26 ]
  tail call void @_ZNSt13unordered_setIPN10duckdb_re23DFA5StateENS1_9StateHashENS1_10StateEqualESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.o) #19
  %i.di = tail call i32 @pthread_rwlock_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.j) #19 ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.h, %bb.g, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.y ], [ %i.as, %bb.h ], [ %i.m, %bb.g ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !93 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i41, label %_ZN10duckdb_re28PODArrayIiED2Ev.exit42, label %bb.z

bb.z:                                             ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %i.dk) #22
  br label %_ZN10duckdb_re28PODArrayIiED2Ev.exit42

_ZN10duckdb_re28PODArrayIiED2Ev.exit42:           ; preds = %.body, %bb.z
  %i.dl = tail call i32 @pthread_rwlock_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #19 ; 0 uses
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_setIPN10duckdb_re23DFA5StateENS1_9StateHashENS1_10StateEqualESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIPN10duckdb_re23DFA5StateES3_SaIS3_ENSt8__detail9_IdentityENS1_10StateEqualENS1_9StateHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !95 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #22
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIPN10duckdb_re23DFA5StateES3_SaIS3_ENSt8__detail9_IdentityENS1_10StateEqualENS1_9StateHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !96

_ZNSt10_HashtableIPN10duckdb_re23DFA5StateES3_SaIS3_ENSt8__detail9_IdentityENS1_10StateEqualENS1_9StateHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIPN10duckdb_re23DFA5StateES3_SaIS3_ENSt8__detail9_IdentityENS1_10StateEqualENS1_9StateHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIPN10duckdb_re23DFA5StateES3_SaIS3_ENSt8__detail9_IdentityENS1_10StateEqualENS1_9StateHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.h) #22
  br label %_ZNSt10_HashtableIPN10duckdb_re23DFA5StateES3_SaIS3_ENSt8__detail9_IdentityENS1_10StateEqualENS1_9StateHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIPN10duckdb_re23DFA5StateES3_SaIS3_ENSt8__detail9_IdentityENS1_10StateEqualENS1_9StateHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPN10duckdb_re23DFA5StateES3_SaIS3_ENSt8__detail9_IdentityENS1_10StateEqualENS1_9StateHashENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10duckdb_re23DFAD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN10duckdb_re28PODArrayIiED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #22
  br label %_ZN10duckdb_re28PODArrayIiED2Ev.exit.i

_ZN10duckdb_re28PODArrayIiED2Ev.exit.i:           ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93   ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN10duckdb_re28PODArrayIiED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #22
  br label %_ZN10duckdb_re210SparseSetTIvED2Ev.exit

_ZN10duckdb_re210SparseSetTIvED2Ev.exit:          ; preds = %_ZN10duckdb_re28PODArrayIiED2Ev.exit.i, %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #22
  br label %bb.e

bb.e:                                             ; preds = %_ZN10duckdb_re210SparseSetTIvED2Ev.exit, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92   ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !93   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re23DFA12StateToWorkqEPNS0_5StateEPNS0_5WorkqE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !108
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN10duckdb_re23DFA5Workq4markEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN10duckdb_re23DFA5Workq4markEv.exit ] ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !112
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3    ; 2 uses
  switch i32 %i.n, label %bb.f [
    i32 -1, label %bb.c
    i32 -2, label %._crit_edge
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.g, align 4, !tbaa !90, !range !118, !noundef !119
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN10duckdb_re23DFA5Workq4markEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.g, align 4, !tbaa !90
  %i.q = load i32, ptr %i.c, align 8, !tbaa !89   ; 4 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.c, align 8, !tbaa !89
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !93   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.s, null
  %i.t = load i32, ptr %i.h, align 8
  %.not10.i.i.i = icmp ugt i32 %i.t, %i.q
  %.not.i.i.i = select i1 %.not.i.i.i.i, i1 %.not10.i.i.i, i1 false
  br i1 %.not.i.i.i, label %bb.e, label %_ZN10duckdb_re23DFA5Workq4markEv.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.v = sext i32 %i.q to i64
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.v
  store i32 %i.u, ptr %i.x, align 4, !tbaa !3
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.y
  store i32 %i.q, ptr %i.z, align 4, !tbaa !3
  %i.aa = load i32, ptr %2, align 8, !tbaa !82
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %2, align 8, !tbaa !82
  br label %_ZN10duckdb_re23DFA5Workq4markEv.exit

bb.f:                                             ; preds = %bb.b
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !111
  %i.ad = and i32 %i.ac, 255
  tail call void @_ZN10duckdb_re23DFA10AddToQueueEPNS0_5WorkqEij(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull %2, i32 noundef %i.n, i32 noundef %i.ad)
  br label %_ZN10duckdb_re23DFA5Workq4markEv.exit

_ZN10duckdb_re23DFA5Workq4markEv.exit:            ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !108
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !134

._crit_edge:                                      ; preds = %_ZN10duckdb_re23DFA5Workq4markEv.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re23DFA10AddToQueueEPNS0_5WorkqEij(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, ptr noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 5 uses
  store i32 %2, ptr %i.b, align 4, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = xor i32 %3, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.backedge
  %.04157 = phi i32 [ 1, %bb.a ], [ %.041.be, %.backedge ]
  %i.s = add nsw i32 %.04157, -1                  ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.b
  %.142.ph = phi i32 [ %i.s, %bb.b ], [ %.142.ph.be, %.outer.backedge ] ; 13 uses
  %.040.ph = phi i32 [ %i.v, %bb.b ], [ %i.cv, %.outer.backedge ]
  %i.w = load ptr, ptr %0, align 8                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  br label %.backedge70

.backedge70:                                      ; preds = %.backedge70.backedge, %.outer
  %.040 = phi i32 [ %.040.ph, %.outer ], [ %.040.be, %.backedge70.backedge ] ; 12 uses
  switch i32 %.040, label %bb.f [
    i32 -1, label %bb.c
    i32 0, label %.backedge
  ]

bb.c:                                             ; preds = %.backedge70
  %i.y = load i8, ptr %i.e, align 4, !tbaa !90, !range !118, !noundef !119
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.backedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.e, align 4, !tbaa !90
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !89  ; 4 uses
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.r, align 8, !tbaa !89
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !93  ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.ac, null
  %i.ad = load i32, ptr %i.c, align 8
  %.not10.i.i.i = icmp ugt i32 %i.ad, %i.aa
  %.not.i.i.i = select i1 %.not.i.i.i.i, i1 %.not10.i.i.i, i1 false
  br i1 %.not.i.i.i, label %bb.e, label %.backedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %1, align 8, !tbaa !82    ; 2 uses
  %i.af = sext i32 %i.aa to i64
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  store i32 %i.ae, ptr %i.ah, align 4, !tbaa !3
  %i.ai = sext i32 %i.ae to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ai
  store i32 %i.aa, ptr %i.aj, align 4, !tbaa !3
  %i.ak = load i32, ptr %1, align 8, !tbaa !82
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %1, align 8, !tbaa !82
  br label %.backedge

.backedge:                                        ; preds = %bb.v, %select.unfold, %.backedge70, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit, %_ZN10LogMessageD2Ev.exit, %bb.e, %bb.d, %bb.c
  %.041.be = phi i32 [ %.142.ph, %bb.c ], [ %.142.ph, %bb.d ], [ %.142.ph, %bb.e ], [ %.142.ph, %_ZN10LogMessageD2Ev.exit ], [ %.142.ph, %select.unfold ], [ %.142.ph, %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit ], [ %.142.ph, %.backedge70 ], [ %.4, %bb.v ] ; 2 uses
  %i.am = icmp sgt i32 %.041.be, 0
  br i1 %i.am, label %bb.b, label %bb.x, !llvm.loop !135

bb.f:                                             ; preds = %.backedge70
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !93  ; 3 uses
  %.not.i.i = icmp ne ptr %i.an, null
  %i.ao = load i32, ptr %i.c, align 8
  %.not6.i = icmp ugt i32 %i.ao, %.040
  %.not.i = select i1 %.not.i.i, i1 %.not6.i, i1 false
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = sext i32 %.040 to i64                   ; 2 uses
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ap ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3  ; 2 uses
  %i.at = load i32, ptr %1, align 8, !tbaa !82    ; 3 uses
  %i.au = icmp ult i32 %i.as, %i.at
  br i1 %i.au, label %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit, label %.thread52

_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit:  ; preds = %bb.g
  %i.av = sext i32 %i.as to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = icmp eq i32 %i.ax, %.040
  br i1 %i.ay, label %.backedge, label %.thread52, !llvm.loop !135

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %i.e, align 4, !tbaa !90
  %.pre = sext i32 %.040 to i64
  br label %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit

.thread52:                                        ; preds = %_ZNK10duckdb_re210SparseSetTIvE8containsEi.exit, %bb.g
  store i8 0, ptr %i.e, align 4, !tbaa !90
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !3
  %i.az = sext i32 %i.at to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.az
  store i32 %.040, ptr %i.ba, align 4, !tbaa !3
  %i.bb = load i32, ptr %1, align 8, !tbaa !82
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %1, align 8, !tbaa !82
  br label %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit

_ZN10duckdb_re23DFA5Workq10insert_newEi.exit:     ; preds = %bb.h, %.thread52
  %.pre-phi = phi i64 [ %.pre, %bb.h ], [ %i.ap, %.thread52 ] ; 4 uses
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !114 ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.pre-phi
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !115 ; 5 uses
  %i.bg = and i32 %i.bf, 7
  switch i32 %i.bg, label %bb.i [
    i32 2, label %select.unfold
    i32 5, label %select.unfold
    i32 3, label %bb.l
    i32 6, label %bb.l
    i32 1, label %bb.s
    i32 4, label %bb.t
  ]

bb.i:                                             ; preds = %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i8 0, ptr %4, align 8, !tbaa !136
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.i)
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.11, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.pre-phi
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !115
  %i.bk = and i32 %i.bj, 7
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %i.bk)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  store ptr %i.j, ptr %i.i, align 8, !tbaa !145
  %i.bm = load i64, ptr %i.l, align 8
  %i.bn = getelementptr inbounds i8, ptr %i.i, i64 %i.bm
  store ptr %i.k, ptr %i.bn, align 8, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.m, align 8, !tbaa !145
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !106 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.o
  br i1 %i.bp, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.bo) #22
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.m, align 8, !tbaa !145
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #19
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.backedge

bb.k:                                             ; preds = %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.bq

bb.l:                                             ; preds = %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit, %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.pre-phi ; 2 uses
  %i.bs = and i32 %i.bf, 8
  %.not44 = icmp eq i32 %i.bs, 0
  br i1 %.not44, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = add nuw nsw i32 %.040, 1
  %i.bu = add nsw i32 %.142.ph, 1
  %i.bv = sext i32 %.142.ph to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bv
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !3
  %.pre60 = load i32, ptr %i.br, align 4, !tbaa !115
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bx = phi i32 [ %i.bf, %bb.l ], [ %.pre60, %bb.m ] ; 5 uses
  %.2 = phi i32 [ %.142.ph, %bb.l ], [ %i.bu, %bb.m ] ; 6 uses
  %i.by = and i32 %i.bx, 7
  %i.bz = icmp eq i32 %i.by, 6
  br i1 %i.bz, label %bb.o, label %.outer.backedge

bb.o:                                             ; preds = %bb.n
  %i.ca = load i32, ptr %i.h, align 4, !tbaa !88
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.p, label %.outer.backedge

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !147
  %i.ce = icmp eq i32 %.040, %i.cd
  br i1 %i.ce, label %bb.q, label %.outer.backedge

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !148
  %.not45 = icmp eq i32 %.040, %i.cg
  br i1 %.not45, label %.outer.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = add nsw i32 %.2, 1
  %i.ci = sext i32 %.2 to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ci
  store i32 -1, ptr %i.cj, align 4, !tbaa !3
  %.pre61 = load i32, ptr %i.br, align 4, !tbaa !115
  br label %.outer.backedge

bb.s:                                             ; preds = %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit
  %i.ck = add nuw nsw i32 %.040, 1
  br label %.backedge70.backedge

bb.t:                                             ; preds = %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.pre-phi ; 2 uses
  %i.cm = and i32 %i.bf, 8
  %.not = icmp eq i32 %i.cm, 0
  br i1 %.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cn = add nuw nsw i32 %.040, 1
  %i.co = add nsw i32 %.142.ph, 1
  %i.cp = sext i32 %.142.ph to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cp
  store i32 %i.cn, ptr %i.cq, align 4, !tbaa !3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.4 = phi i32 [ %.142.ph, %bb.t ], [ %i.co, %bb.u ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !105
  %i.ct = and i32 %i.cs, %i.g
  %.not43 = icmp eq i32 %i.ct, 0
  br i1 %.not43, label %bb.w, label %.backedge

bb.w:                                             ; preds = %bb.v
  %i.cu = load i32, ptr %i.cl, align 4, !tbaa !115
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.w
  %.sink = phi i32 [ %i.cu, %bb.w ], [ %.pre61, %bb.r ], [ %i.bx, %bb.q ], [ %i.bx, %bb.p ], [ %i.bx, %bb.o ], [ %i.bx, %bb.n ]
  %.142.ph.be = phi i32 [ %.4, %bb.w ], [ %i.ch, %bb.r ], [ %.2, %bb.q ], [ %.2, %bb.p ], [ %.2, %bb.o ], [ %.2, %bb.n ]
  %i.cv = lshr i32 %.sink, 4
  br label %.outer

select.unfold:                                    ; preds = %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit, %_ZN10duckdb_re23DFA5Workq10insert_newEi.exit
  %i.cw = and i32 %i.bf, 8                        ; 2 uses
  %.lobit = lshr exact i32 %i.cw, 3
  %i.cx = xor i32 %.lobit, 1
  %spec.select53 = add nuw nsw i32 %i.cx, %.040
  %.not91 = icmp eq i32 %i.cw, 0
  br i1 %.not91, label %.backedge70.backedge, label %.backedge

.backedge70.backedge:                             ; preds = %select.unfold, %bb.s
  %.040.be = phi i32 [ %i.ck, %bb.s ], [ %spec.select53, %select.unfold ]
  br label %.backedge70

bb.x:                                             ; preds = %.backedge
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !145
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8, !tbaa !145
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.i) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8, !tbaa !145
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.m) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re23DFA21RunWorkqOnEmptyStringEPNS0_5WorkqES2_j(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) initializes((0, 4), (48, 52)) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  store i32 0, ptr %2, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.b, ptr %i.c, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i32, ptr %1, align 8, !tbaa !82
  %.not13 = icmp eq i32 %i.e, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.014 = phi ptr [ %i.f, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.h = load i32, ptr %.014, align 4, !tbaa !3   ; 2 uses
  %i.i = load i32, ptr %i.g, align 8, !tbaa !86
  %.not12 = icmp slt i32 %i.h, %i.i
  %. = select i1 %.not12, i32 %i.h, i32 -1
  tail call void @_ZN10duckdb_re23DFA10AddToQueueEPNS0_5WorkqEij(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull %2, i32 noundef %., i32 noundef %3)
  %i.j = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.l = load i32, ptr %1, align 8, !tbaa !82
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.m
  %.not = icmp eq ptr %i.j, %i.n
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !149
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re23DFA14RunWorkqOnByteEPNS0_5WorkqES2_ijPb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) initializes((0, 4), (48, 52)) %2, i32 noundef %3, i32 noundef %4, ptr noundef captures(none) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.LogMessage, align 8          ; 11 uses
  store i32 0, ptr %2, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i32, ptr %1, align 8, !tbaa !82
  %.not41 = icmp eq i32 %i.e, 0
  br i1 %.not41, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.m = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.o = getelementptr i8, ptr %i.m, i64 -24
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.u = icmp ne i32 %3, 256
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = add i32 %3, -65
  %i.x = icmp ult i32 %i.w, 26
  %i.y = or disjoint i32 %3, 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN10duckdb_re23DFA5Workq4markEv.exit
  %.042 = phi ptr [ %i.f, %.lr.ph ], [ %i.cl, %_ZN10duckdb_re23DFA5Workq4markEv.exit ] ; 15 uses
  %i.z = load i32, ptr %.042, align 4, !tbaa !3   ; 2 uses
  %i.aa = load i32, ptr %i.g, align 8, !tbaa !86
  %.not40 = icmp slt i32 %i.z, %i.aa
  br i1 %.not40, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %5, align 1, !tbaa !7, !range !118, !noundef !119
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i8, ptr %i.h, align 4, !tbaa !90, !range !118, !noundef !119
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN10duckdb_re23DFA5Workq4markEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.h, align 4, !tbaa !90
  %i.af = load i32, ptr %i.c, align 8, !tbaa !89  ; 4 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.c, align 8, !tbaa !89
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !93  ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.ah, null
  %i.ai = load i32, ptr %i.i, align 8
  %.not10.i.i.i = icmp ugt i32 %i.ai, %i.af
  %.not.i.i.i = select i1 %.not.i.i.i.i, i1 %.not10.i.i.i, i1 false
  br i1 %.not.i.i.i, label %bb.f, label %_ZN10duckdb_re23DFA5Workq4markEv.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %2, align 8, !tbaa !82    ; 2 uses
  %i.ak = sext i32 %i.af to i64
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ak
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !3
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.an
  store i32 %i.af, ptr %i.ao, align 4, !tbaa !3
  %i.ap = load i32, ptr %2, align 8, !tbaa !82
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %2, align 8, !tbaa !82
  br label %_ZN10duckdb_re23DFA5Workq4markEv.exit

bb.g:                                             ; preds = %bb.b
  %i.ar = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.as = sext i32 %i.z to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as ; 7 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !115 ; 2 uses
  %i.ax = and i32 %i.aw, 7
  switch i32 %i.ax, label %default.unreachable [
    i32 7, label %_ZN10duckdb_re23DFA5Workq4markEv.exit
    i32 3, label %_ZN10duckdb_re23DFA5Workq4markEv.exit
    i32 6, label %_ZN10duckdb_re23DFA5Workq4markEv.exit
    i32 1, label %_ZN10duckdb_re23DFA5Workq4markEv.exit
    i32 4, label %_ZN10duckdb_re23DFA5Workq4markEv.exit
    i32 2, label %bb.k
    i32 5, label %bb.o
    i32 0, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i8 0, ptr %6, align 8, !tbaa !136
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.11, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h
  %i.az = load i32, ptr %i.av, align 4, !tbaa !115
  %i.ba = and i32 %i.az, 7
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef %i.ba)
          to label %bb.i unwind label %bb.j       ; 0 uses

end_hunk_1
