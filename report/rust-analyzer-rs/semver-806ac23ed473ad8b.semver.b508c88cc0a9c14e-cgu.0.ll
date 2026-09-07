Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/semver-806ac23ed473ad8b.semver.b508c88cc0a9c14e-cgu.0?download=true
inline.NumInlined: 110
inline.NumDeleted: 40
begin_hunk_0_@_RNvNtCsfxDLtZq386g_6semver5parse11version_req:bb.a
  br i1 %i.er, label %bb.ag, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i51

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i51: ; preds = %bb.af
  %i.es = and i8 %i.eq, 31
  %i.et = zext nneg i8 %i.es to i32               ; 3 uses
  %i.eu = icmp ne i64 %.reass5.i.i50, %i.ek
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 2 ; 2 uses
  %i.ew = load i8, ptr %i.ep, align 1, !alias.scope !205, !noalias !206, !noundef !4
  %i.ex = shl nuw nsw i32 %i.et, 6
  %i.ey = and i8 %i.ew, 63
  %i.ez = zext nneg i8 %i.ey to i32               ; 2 uses
  %i.fa = or disjoint i32 %i.ex, %i.ez
  %i.fb = icmp samesign ugt i8 %i.eq, -33
  br i1 %i.fb, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i58, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i52

bb.ag:                                            ; preds = %bb.af
  %i.fc = zext nneg i8 %i.eq to i32
  br label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i52

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i58: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i51
  %i.fd = icmp ne i64 %.reass5.i.i50, %i.el
  tail call void @llvm.assume(i1 %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.en, i64 3 ; 2 uses
  %i.ff = load i8, ptr %i.ev, align 1, !alias.scope !205, !noalias !206, !noundef !4
  %i.fg = shl nuw nsw i32 %i.ez, 6
  %i.fh = and i8 %i.ff, 63
  %i.fi = zext nneg i8 %i.fh to i32
  %i.fj = or disjoint i32 %i.fg, %i.fi            ; 2 uses
  %i.fk = shl nuw nsw i32 %i.et, 12
  %i.fl = or disjoint i32 %i.fj, %i.fk
  %i.fm = icmp samesign ugt i8 %i.eq, -17
  br i1 %i.fm, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i59, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i52

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i59: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i58
  %i.fn = icmp ne i64 %.reass5.i.i50, %i.em
  tail call void @llvm.assume(i1 %i.fn)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fp = load i8, ptr %i.fe, align 1, !alias.scope !205, !noalias !206, !noundef !4
  %i.fq = shl nuw nsw i32 %i.et, 18
  %i.fr = and i32 %i.fq, 1835008
  %i.fs = shl nuw nsw i32 %i.fj, 6
  %i.ft = and i8 %i.fp, 63
  %i.fu = zext nneg i8 %i.ft to i32
  %i.fv = or disjoint i32 %i.fs, %i.fu
  %i.fw = or disjoint i32 %i.fv, %i.fr
  br label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i52

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i52: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i59, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i58, %bb.ag, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i51
  %.sroa.0.0.ph.i.i.i53 = phi ptr [ %i.ev, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i51 ], [ %i.fe, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i58 ], [ %i.fo, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i59 ], [ %i.ep, %bb.ag ]
  %.sroa.4.0.i.ph.i.i.i54 = phi i32 [ %i.fa, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i.i.i.i51 ], [ %i.fl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i.i.i.i58 ], [ %i.fw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i.i.i.i59 ], [ %i.fc, %bb.ag ] ; 2 uses
  %i.fx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i54, 1114112
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = ptrtoint ptr %.sroa.0.0.ph.i.i.i53 to i64
  %.reass.i.i55 = add i64 %invariant.op.i.i49, %i.fy
  %.not.i.i56 = icmp eq i32 %.sroa.4.0.i.ph.i.i.i54, 32
  br i1 %.not.i.i56, label %bb.ae, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit64

_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit:  ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i, %bb.b, %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsfxDLtZq386g_6semver.exit60.thread, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit64
  %.sroa.0.0 = phi i64 [ %.sroa.071.0.ph, %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsfxDLtZq386g_6semver.exit60.thread ], [ %.sroa.0.0.copyload, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit64 ], [ %.sroa.0.0.copyload, %bb.b ], [ %.sroa.0.0.copyload, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.i ]
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.0.0, ptr %i.fz, align 4
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ac

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit64: ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i52
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.772.0.ph, i64 %.reass5.i.i50
  %rhsc90 = load i8, ptr %i.ga, align 1
  %i.gb = icmp eq i8 %rhsc90, 44
  br i1 %i.gb, label %_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsfxDLtZq386g_6semver.exit60.thread, label %_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit

_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchescECsfxDLtZq386g_6semver.exit60.thread: ; preds = %bb.ae, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit64
  br label %_RNvNtCsfxDLtZq386g_6semver5parse8wildcard.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsfxDLtZq386g_6semver5parse16build_identifier(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.i = alloca i64, align 8               ; 5 uses
  %.not.us.i50.not = icmp eq i64 %2, 0
  br i1 %.not.us.i50.not, label %_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %bb.a, %.split.us.i.thread
  %.ph = phi ptr [ %i.o, %.split.us.i.thread ], [ %1, %bb.a ]
  %.ph89 = phi i64 [ %i.n, %.split.us.i.thread ], [ 0, %bb.a ] ; 4 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %.split.us.i
  %i.a = phi ptr [ %i.m, %.split.us.i ], [ %.ph, %.lr.ph.outer ] ; 2 uses
  %.sroa.08.0.us.i51 = phi i64 [ %i.k, %.split.us.i ], [ 0, %.lr.ph.outer ] ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !212, !noalias !213, !noundef !4 ; 7 uses
  %i.c = add i8 %i.b, -65
  %or.cond50.us.i = icmp ult i8 %i.c, 26
  br i1 %or.cond50.us.i, label %.split.us.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = add i8 %i.b, -97
  %or.cond51.us.i = icmp ult i8 %i.d, 26
  %i.e = icmp eq i8 %i.b, 45
  %or.cond75.us.i = or i1 %i.e, %or.cond51.us.i
  %i.f = add i8 %i.b, -48
  %or.cond52.us.i = icmp ult i8 %i.f, 10
  %or.cond108 = or i1 %or.cond75.us.i, %or.cond52.us.i
  br i1 %or.cond108, label %.split.us.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.sroa.08.0.us.i51, %.ph89       ; 4 uses
  %i.h = icmp eq i64 %.sroa.08.0.us.i51, 0
  br i1 %i.h, label %.split91.us.i, label %bb.d

.thread.i:                                        ; preds = %.split.us.i
  %i.i = icmp eq i64 %i.k, 0
  br i1 %i.i, label %.split91.us.i.thread, label %.critedge56.i.thread

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i8 %i.b, 46
  br i1 %i.j, label %.split.us.i.thread, label %.critedge56.i

.split.us.i:                                      ; preds = %.lr.ph, %bb.b
  %i.k = add i64 %.sroa.08.0.us.i51, 1            ; 3 uses
  %i.l = add i64 %.ph89, %i.k                     ; 5 uses
  %.not.us.i = icmp ult i64 %i.l, %2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 2 uses
  br i1 %.not.us.i, label %.lr.ph, label %.thread.i

.split.us.i.thread:                               ; preds = %bb.d
  %i.n = add nuw i64 %i.g, 1                      ; 3 uses
  %.not.us.i80 = icmp ult i64 %i.n, %2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  br i1 %.not.us.i80, label %.lr.ph.outer, label %_RNvNtCsfxDLtZq386g_6semver5parse10identifier.exit

.split91.us.i:                                    ; preds = %bb.c
  %i.p = icmp ne i64 %.ph89, 0
  %.not76.i = icmp eq i8 %i.b, 46
  %or.cond = or i1 %i.p, %.not76.i
  br i1 %or.cond, label %_RNvNtCsfxDLtZq386g_6semver5parse10identifier.exit, label %_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit

.split91.us.i.thread:                             ; preds = %.thread.i
  %i.q = icmp eq i64 %.ph89, 0
  br i1 %i.q, label %_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit, label %_RNvNtCsfxDLtZq386g_6semver5parse10identifier.exit

.critedge56.i:                                    ; preds = %bb.d
  %i.r = icmp eq i64 %i.g, 0
  br i1 %i.r, label %_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit, label %bb.e

.critedge56.i.thread:                             ; preds = %.thread.i
  %i.s = icmp eq i64 %i.l, 0
  br i1 %i.s, label %_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit, label %.split3.i.i

.split3.i.i:                                      ; preds = %.critedge56.i.thread
  %i.t = icmp eq i64 %i.l, %2
  br i1 %i.t, label %bb.g, label %bb.f

bb.e:                                             ; preds = %.critedge56.i
  %i.u = icmp sgt i8 %i.b, -65
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.split3.i.i
  %i.v = phi i64 [ %i.g, %bb.e ], [ %i.l, %.split3.i.i ]
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23, !noalias !213
  unreachable

_RNvNtCsfxDLtZq386g_6semver5parse10identifier.exit: ; preds = %.split.us.i.thread, %.split91.us.i.thread, %.split91.us.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1031, ptr %i.w, align 8
  store ptr null, ptr %0, align 8
  br label %bb.n

bb.g:                                             ; preds = %bb.e, %.split3.i.i
  %i.x = phi i64 [ %i.g, %bb.e ], [ %2, %.split3.i.i ] ; 8 uses
  %i.y = phi ptr [ %i.a, %bb.e ], [ %i.m, %.split3.i.i ] ; 2 uses
  %i.z = sub i64 %2, %i.x                         ; 2 uses
  %i.aa = icmp ult i64 %i.x, 9
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  store i64 0, ptr %.sroa.01.i, align 8, !noalias !214
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.01.i, ptr nonnull readonly align 1 %1, i64 %i.x, i1 false)
  %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0.copyload.i = load i64, ptr %.sroa.01.i, align 8, !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  br label %_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit

bb.i:                                             ; preds = %bb.j
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 219 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !214
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ab = icmp ult i64 %i.x, 72057594037927936
  br i1 %i.ab, label %bb.k, label %bb.i, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call range(i64 8, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i8
  %.lhs.trunc.i = sub nuw nsw i8 70, %i.ad
  %i.ae = udiv i8 %.lhs.trunc.i, 7
  %.zext.i = zext nneg i8 %i.ae to i64
  %i.af = add nuw nsw i64 %i.x, %.zext.i          ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !214
  %i.ag = tail call noundef align 2 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef 2) #22, !noalias !214 ; 4 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = icmp eq ptr %i.ag, null
  br i1 %i.ai, label %bb.l, label %.preheader.i, !prof !10

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 2, i64 noundef %i.af) #25, !noalias !214
  unreachable

bb.m:                                             ; preds = %.preheader.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull readonly align 1 %1, i64 %i.x, i1 false)
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 1, i64 %i.ah, i64 63)
  %3 = sub i64 %i.aj, %i.ah
  %4 = getelementptr i8, ptr %i.ag, i64 %3        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %5 = ptrtoint ptr %4 to i64
  br label %_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit

.preheader.i:                                     ; preds = %bb.k, %.preheader.i
  %.sroa.06.013.i = phi i64 [ %i.am, %.preheader.i ], [ %i.x, %bb.k ] ; 2 uses
  %.sroa.03.012.i = phi ptr [ %i.an, %.preheader.i ], [ %i.ag, %bb.k ] ; 2 uses
  %i.ak = trunc i64 %.sroa.06.013.i to i8
  %i.al = or i8 %i.ak, -128
  store i8 %i.al, ptr %.sroa.03.012.i, align 1, !noalias !214
  %i.am = lshr i64 %.sroa.06.013.i, 7             ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.012.i, i64 1 ; 2 uses
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %bb.m, label %.preheader.i

_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit: ; preds = %.split91.us.i, %bb.a, %.split91.us.i.thread, %.critedge56.i.thread, %.critedge56.i, %bb.h, %bb.m
  %.sroa.12.0.ph39 = phi ptr [ %i.y, %bb.m ], [ %i.y, %bb.h ], [ %1, %.critedge56.i ], [ %1, %.critedge56.i.thread ], [ %1, %.split91.us.i ], [ %1, %.split91.us.i.thread ], [ %1, %bb.a ]
  %.sroa.15.0.ph38 = phi i64 [ %i.z, %bb.m ], [ %i.z, %bb.h ], [ %2, %.critedge56.i ], [ %2, %.critedge56.i.thread ], [ %2, %.split91.us.i ], [ %2, %.split91.us.i.thread ], [ 0, %bb.a ]
  %.sroa.0.0.i = phi i64 [ %5, %bb.m ], [ %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0.copyload.i, %bb.h ], [ -1, %.critedge56.i ], [ -1, %.critedge56.i.thread ], [ -1, %.split91.us.i ], [ -1, %.split91.us.i.thread ], [ -1, %bb.a ]
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph39, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.15.0.ph38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.n

bb.n:                                             ; preds = %_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit, %_RNvNtCsfxDLtZq386g_6semver5parse10identifier.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsfxDLtZq386g_6semver5parse18numeric_identifier(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #1 {
bb.a:
  %.not79 = icmp eq i64 %2, 0
  br i1 %.not79, label %bb.j, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !noundef !4    ; 2 uses
  %i.b = add i8 %i.a, -58
  %or.cond.peel = icmp ult i8 %i.b, -10
  br i1 %or.cond.peel, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.c = add nsw i8 %i.a, -48
  %i.d = zext nneg i8 %i.c to i64                 ; 2 uses
  %exitcond.peel.not = icmp eq i64 %2, 1
  br i1 %exitcond.peel.not, label %.split.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.sroa.0.077 = phi i64 [ %i.q, %bb.f ], [ 1, %bb.b ] ; 4 uses
  %.sroa.018.076 = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.077
  %i.f = load i8, ptr %i.e, align 1, !noundef !4  ; 3 uses
  %i.g = add i8 %i.f, -58
  %or.cond = icmp ult i8 %i.g, -10
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %.sroa.018.076, 0
  br i1 %i.h, label %.loopexit88, label %bb.d

.loopexit88:                                      ; preds = %bb.c
  %.sroa.4.0.insert.ext = zext nneg i8 %3 to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 8
  %.sroa.013.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, 5
  store i64 %.sroa.013.0.insert.insert, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.i, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.018.076, i64 10) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %.loopexit89, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 2 uses
  %i.m = add nsw i8 %i.f, -48
  %i.n = zext nneg i8 %i.m to i64
  %i.o = add i64 %i.l, %i.n                       ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.l
  br i1 %i.p, label %.loopexit89, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.q = add nuw i64 %.sroa.0.077, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %2
  br i1 %exitcond.not, label %.split.i, label %.lr.ph, !llvm.loop !215

.loopexit89:                                      ; preds = %bb.e, %bb.d
  %.sroa.424.0.insert.ext = zext nneg i8 %3 to i64
  %.sroa.424.0.insert.shift = shl nuw nsw i64 %.sroa.424.0.insert.ext, 8
  %.sroa.023.0.insert.insert = or disjoint i64 %.sroa.424.0.insert.shift, 6
  store i64 %.sroa.023.0.insert.insert, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.r, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.j, %.loopexit88, %.loopexit89, %.split.i
  ret void

.loopexit:                                        ; preds = %.lr.ph
  %i.s = icmp sgt i8 %i.f, -65
  br i1 %i.s, label %.split.i, label %bb.k

.thread:                                          ; preds = %.lr.ph.preheader
  %i.t = load i8, ptr %1, align 1, !noalias !219, !noundef !4 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.h, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i: ; preds = %.thread
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = icmp samesign ne i64 %2, 1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i8, ptr %i.v, align 1, !noalias !219, !noundef !4
  %i.aa = shl nuw nsw i32 %i.x, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.t, -33
  br i1 %i.ae, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i, label %bb.i

bb.h:                                             ; preds = %.thread
  %i.af = zext nneg i8 %i.t to i32
  br label %bb.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ah = icmp samesign ne i64 %2, 2
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.ag, align 1, !noalias !219, !noundef !4
  %i.aj = shl nuw nsw i32 %i.ac, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 2 uses
  %i.an = shl nuw nsw i32 %i.x, 12
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = icmp samesign ugt i8 %i.t, -17
  br i1 %i.ap, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i, label %bb.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ar = icmp samesign ne i64 %2, 3
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load i8, ptr %i.aq, align 1, !noalias !219, !noundef !4
  %i.at = shl nuw nsw i32 %i.x, 18
  %i.au = and i32 %i.at, 1835008
  %i.av = shl nuw nsw i32 %i.am, 6
  %i.aw = and i8 %i.as, 63
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = or disjoint i32 %i.ay, %i.au
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.ao, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i ], [ %i.az, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i ], [ %i.ad, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i ], [ %i.af, %bb.h ] ; 2 uses
  %i.ba = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.ba)
  %.sroa.538.0.insert.ext = zext nneg i32 %.sroa.4.0.i.ph to i64
  %.sroa.538.0.insert.shift = shl nuw nsw i64 %.sroa.538.0.insert.ext, 32
  %.sroa.436.0.insert.ext = zext nneg i8 %3 to i64
  %.sroa.436.0.insert.shift = shl nuw nsw i64 %.sroa.436.0.insert.ext, 8
  %.sroa.436.0.insert.insert = or disjoint i64 %.sroa.538.0.insert.shift, %.sroa.436.0.insert.shift
  %.sroa.035.0.insert.insert = or disjoint i64 %.sroa.436.0.insert.insert, 2
  store i64 %.sroa.035.0.insert.insert, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bb, align 8
  br label %bb.g

bb.j:                                             ; preds = %bb.a
  %.sroa.442.0.insert.ext = zext nneg i8 %3 to i64
  %.sroa.442.0.insert.shift = shl nuw nsw i64 %.sroa.442.0.insert.ext, 8
  %.sroa.041.0.insert.insert = or disjoint i64 %.sroa.442.0.insert.shift, 1
  store i64 %.sroa.041.0.insert.insert, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bc, align 8
  br label %bb.g

.split.i:                                         ; preds = %bb.f, %bb.b, %.loopexit
  %.sroa.018.075 = phi i64 [ %.sroa.018.076, %.loopexit ], [ %i.d, %bb.b ], [ %i.o, %bb.f ]
  %.sroa.0.070 = phi i64 [ %.sroa.0.077, %.loopexit ], [ %2, %bb.b ], [ %2, %bb.f ] ; 2 uses
  %i.bd = sub nuw i64 %2, %.sroa.0.070
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.070
  store i64 %.sroa.018.075, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bd, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

bb.k:                                             ; preds = %.loopexit
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.077, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsfxDLtZq386g_6semver5parse21prerelease_identifier(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.i = alloca i64, align 8               ; 5 uses
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtCsfxDLtZq386g_6semver5parse10identifier(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef 3)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.012.0.copyload = load i64, ptr %i.d, align 8 ; 9 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.012.0.copyload, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load ptr, ptr %.sroa.510.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.611.0.copyload = load i64, ptr %.sroa.611.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = icmp eq i64 %.sroa.012.0.copyload, 0
  br i1 %i.f, label %_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %.sroa.012.0.copyload, 9
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  store i64 0, ptr %.sroa.01.i, align 8, !noalias !222
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.01.i, ptr nonnull readonly align 1 %i.b, i64 %.sroa.012.0.copyload, i1 false)
  %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0.copyload.i = load i64, ptr %.sroa.01.i, align 8, !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  br label %_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit

bb.f:                                             ; preds = %bb.g
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 219 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !222
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.h = icmp ult i64 %.sroa.012.0.copyload, 72057594037927936
  br i1 %i.h, label %bb.h, label %bb.f, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.i = tail call range(i64 8, 65) i64 @llvm.ctlz.i64(i64 %.sroa.012.0.copyload, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i8
  %.lhs.trunc.i = sub nuw nsw i8 70, %i.j
  %i.k = udiv i8 %.lhs.trunc.i, 7
  %.zext.i = zext nneg i8 %i.k to i64
  %i.l = add nuw nsw i64 %.sroa.012.0.copyload, %.zext.i ; 2 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !222
  %i.m = tail call noundef align 2 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef 2) #22, !noalias !222 ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %bb.i, label %.preheader.i, !prof !10

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 2, i64 noundef %i.l) #25, !noalias !222
  unreachable

bb.j:                                             ; preds = %.preheader.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %i.b, i64 %.sroa.012.0.copyload, i1 false)
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 1, i64 %i.n, i64 63)
  %3 = sub i64 %i.p, %i.n
  %4 = getelementptr i8, ptr %i.m, i64 %3         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %5 = ptrtoint ptr %4 to i64
  br label %_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit

.preheader.i:                                     ; preds = %bb.h, %.preheader.i
  %.sroa.06.013.i = phi i64 [ %i.s, %.preheader.i ], [ %.sroa.012.0.copyload, %bb.h ] ; 2 uses
  %.sroa.03.012.i = phi ptr [ %i.t, %.preheader.i ], [ %i.m, %bb.h ] ; 2 uses
  %i.q = trunc i64 %.sroa.06.013.i to i8
  %i.r = or i8 %i.q, -128
  store i8 %i.r, ptr %.sroa.03.012.i, align 1, !noalias !222
  %i.s = lshr i64 %.sroa.06.013.i, 7              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.012.i, i64 1 ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.j, label %.preheader.i

_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit: ; preds = %bb.c, %bb.e, %bb.j
  %.sroa.0.0.i = phi i64 [ %5, %bb.j ], [ %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0.copyload.i, %bb.e ], [ -1, %bb.c ]
  store i64 %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.510.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.611.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.k:                                             ; preds = %_RNvMNtCsfxDLtZq386g_6semver10identifierNtB2_10Identifier13new_unchecked.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvNtCsfxDLtZq386g_6semver5parse3dot(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #7 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.e, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit: ; preds = %bb.a
  %rhsc = load i8, ptr %1, align 1
  %i.a = icmp eq i8 %rhsc, 46
  br i1 %i.a, label %bb.c, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit
  %i.b = load i8, ptr %1, align 1, !noalias !225, !noundef !4 ; 5 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = and i8 %i.b, 31
  %i.f = zext nneg i8 %i.e to i32                 ; 3 uses
  %i.g = icmp samesign ne i64 %2, 1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = load i8, ptr %i.d, align 1, !noalias !225, !noundef !4
  %i.i = shl nuw nsw i32 %i.f, 6
  %i.j = and i8 %i.h, 63
  %i.k = zext nneg i8 %i.j to i32                 ; 2 uses
  %i.l = or disjoint i32 %i.i, %i.k
  %i.m = icmp samesign ugt i8 %i.b, -33
  br i1 %i.m, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i, label %bb.d

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit.thread
  %i.n = zext nneg i8 %i.b to i32
  br label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = icmp samesign ne i64 %2, 2
  tail call void @llvm.assume(i1 %i.p)
  %i.q = load i8, ptr %i.o, align 1, !noalias !225, !noundef !4
  %i.r = shl nuw nsw i32 %i.k, 6
  %i.s = and i8 %i.q, 63
  %i.t = zext nneg i8 %i.s to i32
  %i.u = or disjoint i32 %i.r, %i.t               ; 2 uses
  %i.v = shl nuw nsw i32 %i.f, 12
  %i.w = or disjoint i32 %i.u, %i.v
  %i.x = icmp samesign ugt i8 %i.b, -17
  br i1 %i.x, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i, label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.z = icmp samesign ne i64 %2, 3
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.y, align 1, !noalias !225, !noundef !4
  %i.ab = shl nuw nsw i32 %i.f, 18
  %i.ac = and i32 %i.ab, 1835008
  %i.ad = shl nuw nsw i32 %i.u, 6
  %i.ae = and i8 %i.aa, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = or disjoint i32 %i.ag, %i.ac
  br label %bb.d

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit
  %i.ai = add i64 %2, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 1
  store ptr %i.aj, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.ak, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.w, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit14.i ], [ %i.ah, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit16.i ], [ %i.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfxDLtZq386g_6semver.exit12.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.al = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.al)
  %.sroa.56.0.insert.ext = zext nneg i32 %.sroa.4.0.i.ph to i64
  %.sroa.56.0.insert.shift = shl nuw nsw i64 %.sroa.56.0.insert.ext, 32
  %.sroa.45.0.insert.ext = zext nneg i8 %3 to i64
  %.sroa.45.0.insert.shift = shl nuw nsw i64 %.sroa.45.0.insert.ext, 8
  %.sroa.45.0.insert.insert = or disjoint i64 %.sroa.56.0.insert.shift, %.sroa.45.0.insert.shift
  %.sroa.04.0.insert.insert = or disjoint i64 %.sroa.45.0.insert.insert, 3
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.sroa.410.0.insert.ext = zext nneg i8 %3 to i64
  %.sroa.410.0.insert.shift = shl nuw nsw i64 %.sroa.410.0.insert.ext, 8
  %.sroa.09.0.insert.insert = or disjoint i64 %.sroa.410.0.insert.shift, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.09.0.insert.insert.sink = phi i64 [ %.sroa.09.0.insert.insert, %bb.e ], [ %.sroa.04.0.insert.insert, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.09.0.insert.insert.sink, ptr %i.am, align 8
  store ptr null, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvNtCsfxDLtZq386g_6semver5parse8wildcard(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit23.thread, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit: ; preds = %bb.a
  %rhsc = load i8, ptr %1, align 1
  switch i8 %rhsc, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit23.thread [
    i8 42, label %bb.b
    i8 120, label %bb.c
    i8 88, label %bb.d
  ]

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit
  %i.a = add i64 %2, -1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i32 42, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit
  %i.c = add i64 %2, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i32 120, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.e

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit23.thread: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit, %bb.a
  store i32 -1, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit
  %i.e = add i64 %2, -1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i32 88, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.515.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsfxDLtZq386g_6semver.exit23.thread, %bb.b
  ret void
}

; Function Attrs: cold nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i64 1, 0) i64 @_RNvNvNtCsfxDLtZq386g_6semver10identifier10decode_len15decode_len_cold(ptr nofree noundef readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !noundef !4    ; 2 uses
  %i.b = icmp sgt i8 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i8 [ %i.l, %.lr.ph ], [ %i.a, %bb.a ]
  %.sroa.0.010 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ]
  %.sroa.02.09 = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.04.08 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 1 ; 2 uses
  %i.e = and i8 %i.c, 127
  %i.f = zext nneg i8 %i.e to i64
  %i.g = and i32 %.sroa.04.08, 63
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl i64 %i.f, %i.h
  %i.j = add i64 %i.i, %.sroa.02.09               ; 2 uses
  %i.k = add i32 %.sroa.04.08, 7
  %i.l = load i8, ptr %i.d, align 1, !noundef !4  ; 2 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.02.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.n = icmp ne i64 %.sroa.02.0.lcssa, 0
  tail call void @llvm.assume(i1 %i.n)
  ret i64 %.sroa.02.0.lcssa
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs1_NtCsfxDLtZq386g_6semver5serdeNtBa_7VersionNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB2_14VersionVisitorNtBQ_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 14)
  ret i1 %i.a
}

end_hunk_0
begin_hunk_1_@_RNvXs0_NtCsfxDLtZq386g_6semver5errorNtB5_8PositionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt:switch.lookup
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsfxDLtZq386g_6semver10ComparatorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !9, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfxDLtZq386g_6semver.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 56
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfxDLtZq386g_6semver.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfxDLtZq386g_6semver.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs1_NtCsfxDLtZq386g_6semver10identifierNtB5_10IdentifierNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp sge ptr %i.a, inttoptr (i64 -1 to ptr)
  %i.d = icmp sge ptr %i.b, inttoptr (i64 -1 to ptr)
  %or.cond6 = or i1 %or.cond, %i.d
  br i1 %or.cond6, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e     ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.g = icmp sgt i8 %.sroa.4.0.copyload.i.i, -1
  br i1 %i.g, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc noundef i64 @_RNvNvNtCsfxDLtZq386g_6semver10identifier10decode_len15decode_len_cold(ptr noundef nonnull readonly %i.f) #21
  br label %_RNvNtCsfxDLtZq386g_6semver10identifier10ptr_as_str.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.01.0.copyload.i.i = load i8, ptr %i.f, align 1
  %i.i = and i8 %.sroa.01.0.copyload.i.i, 127     ; 2 uses
  %i.j = zext nneg i8 %i.i to i64
  %i.k = icmp ne i8 %i.i, 0
  tail call void @llvm.assume(i1 %i.k)
  br label %_RNvNtCsfxDLtZq386g_6semver10identifier10ptr_as_str.exit

_RNvNtCsfxDLtZq386g_6semver10identifier10ptr_as_str.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i = phi i64 [ %i.j, %bb.e ], [ %i.h, %bb.d ] ; 3 uses
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i.i, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i8
  %.lhs.trunc.i = sub nuw nsw i8 70, %i.m
  %i.n = udiv i8 %.lhs.trunc.i, 7
  %.zext.i = zext nneg i8 %i.n to i64             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %.zext.i
  %i.p = ptrtoint ptr %i.b to i64
  %i.q = getelementptr i8, ptr %i.b, i64 %i.p     ; 4 uses
  %.sroa.4.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.4.0.copyload.i.i9 = load i8, ptr %.sroa.4.0..sroa_idx.i.i8, align 1
  %i.r = icmp sgt i8 %.sroa.4.0.copyload.i.i9, -1
  br i1 %i.r, label %bb.g, label %bb.f, !prof !6

bb.f:                                             ; preds = %_RNvNtCsfxDLtZq386g_6semver10identifier10ptr_as_str.exit
  %i.s = tail call fastcc noundef i64 @_RNvNvNtCsfxDLtZq386g_6semver10identifier10decode_len15decode_len_cold(ptr noundef nonnull readonly %i.q) #21
  br label %_RNvNtCsfxDLtZq386g_6semver10identifier10ptr_as_str.exit14

bb.g:                                             ; preds = %_RNvNtCsfxDLtZq386g_6semver10identifier10ptr_as_str.exit
  %.sroa.01.0.copyload.i.i13 = load i8, ptr %i.q, align 1
  %i.t = and i8 %.sroa.01.0.copyload.i.i13, 127   ; 2 uses
  %i.u = zext nneg i8 %i.t to i64
  %i.v = icmp ne i8 %i.t, 0
  tail call void @llvm.assume(i1 %i.v)
  br label %_RNvNtCsfxDLtZq386g_6semver10identifier10ptr_as_str.exit14

_RNvNtCsfxDLtZq386g_6semver10identifier10ptr_as_str.exit14: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i10 = phi i64 [ %i.u, %bb.g ], [ %i.s, %bb.f ]
  %i.w = icmp eq i64 %.sroa.0.0.i.i, %.sroa.0.0.i.i10
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvNtCsfxDLtZq386g_6semver10identifier10ptr_as_str.exit14
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %.zext.i
  %bcmp = tail call i32 @bcmp(ptr %i.o, ptr %i.x, i64 %.sroa.0.0.i.i)
  %i.y = icmp eq i32 %bcmp, 0
  br label %bb.i

bb.i:                                             ; preds = %_RNvNtCsfxDLtZq386g_6semver10identifier10ptr_as_str.exit14, %bb.b, %bb.a, %bb.h
  %.sroa.0.0 = phi i1 [ false, %_RNvNtCsfxDLtZq386g_6semver10identifier10ptr_as_str.exit14 ], [ true, %bb.a ], [ %i.y, %bb.h ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCsfxDLtZq386g_6semver5errorNtNtB7_5parse5ErrorNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 7)
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtCsfxDLtZq386g_6semver5errorNtNtB6_5parse5ErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsfxDLtZq386g_6semver(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !226, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsfxDLtZq386g_6semver, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsfxDLtZq386g_6semver.19, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsfxDLtZq386g_6semver5error8PositionNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.b = load i8, ptr %i.a, align 1, !range !8, !alias.scope !230, !noalias !231, !noundef !4 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsfxDLtZq386g_6semver5error8PositionNtB6_7Display3fmtBA_, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsfxDLtZq386g_6semver5error8PositionNtB6_7Display3fmtBA_.20, i64 %i.d
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !noalias !230
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRcNtB6_7Display3fmtCsfxDLtZq386g_6semver(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !232, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRyNtB6_7Display3fmtCsfxDLtZq386g_6semver(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCsfxDLtZq386g_6semver5errorNtB5_10QuotedCharNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load i32, ptr %0, align 4, !range !11, !noundef !4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsj_NtCshzWfHUSfYae_4core3fmtcNtB5_5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !5, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @30, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs_NtCsfxDLtZq386g_6semver10identifierNtB4_10IdentifierNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %or.cond.not = icmp slt ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %or.cond.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %1 = ptrtoint ptr %i.a to i64
  %i.b = getelementptr i8, ptr %i.a, i64 %1       ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1
  %i.c = icmp sgt i8 %.sroa.4.0.copyload.i, -1
  br i1 %i.c, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef i64 @_RNvNvNtCsfxDLtZq386g_6semver10identifier10decode_len15decode_len_cold(ptr noundef nonnull readonly %i.b) #21
  br label %_RNvNtCsfxDLtZq386g_6semver10identifier10decode_len.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.01.0.copyload.i = load i8, ptr %i.b, align 1
  %i.e = and i8 %.sroa.01.0.copyload.i, 127       ; 2 uses
  %i.f = zext nneg i8 %i.e to i64
  %i.g = icmp ne i8 %i.e, 0
  tail call void @llvm.assume(i1 %i.g)
  br label %_RNvNtCsfxDLtZq386g_6semver10identifier10decode_len.exit

_RNvNtCsfxDLtZq386g_6semver10identifier10decode_len.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.f, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i, i1 true)
  %i.i = trunc nuw nsw i64 %i.h to i8
  %.lhs.trunc = sub nuw nsw i8 70, %i.i
  %i.j = udiv i8 %.lhs.trunc, 7
  %.zext = zext nneg i8 %i.j to i64
  %i.k = add i64 %.sroa.0.0.i, %.zext             ; 3 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.l = tail call noundef align 2 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 2) #22 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.e, !prof !10

bb.e:                                             ; preds = %_RNvNtCsfxDLtZq386g_6semver10identifier10decode_len.exit
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.l, ptr align 1 %i.b, i64 %i.k, i1 false)
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 1, i64 %i.n, i64 63)
  %2 = sub i64 %i.o, %i.n
  %3 = getelementptr i8, ptr %i.l, i64 %2         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  br label %bb.g

bb.f:                                             ; preds = %_RNvNtCsfxDLtZq386g_6semver10identifier10decode_len.exit
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 2, i64 noundef %i.k) #25
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0.in = phi ptr [ %3, %bb.e ], [ %i.a, %bb.a ]
  %.sroa.0.0 = ptrtoint ptr %.sroa.0.0.in to i64
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCsfxDLtZq386g_6semver5errorNtNtB6_5parse5ErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = load i8, ptr %0, align 4, !range !233, !noundef !4
  switch i8 %i.v, label %default.unreachable155 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
  ]

default.unreachable155:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 39)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.x, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.u, ptr %i.t, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsfxDLtZq386g_6semver5error8PositionNtB6_7Display3fmtBA_, ptr %.sroa.435.0..sroa_idx, align 8
  %i.y = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !align !5, !noundef !4
  %i.ab = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa, ptr noundef nonnull @32, ptr noundef nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ac, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !range !11, !noundef !4
  store i32 %i.ae, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs2_NtCsfxDLtZq386g_6semver5errorNtB5_10QuotedCharNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.s, ptr %i.af, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsfxDLtZq386g_6semver5error8PositionNtB6_7Display3fmtBA_, ptr %.sroa.450.0..sroa_idx, align 8
  %i.ag = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !align !5, !noundef !4
  %i.aj = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai, ptr noundef nonnull @33, ptr noundef nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ak, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = load i32, ptr %i.al, align 4, !range !11, !noundef !4
  store i32 %i.am, ptr %i.o, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.o, ptr %i.n, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs2_NtCsfxDLtZq386g_6semver5errorNtB5_10QuotedCharNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %i.an, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsfxDLtZq386g_6semver5error8PositionNtB6_7Display3fmtBA_, ptr %.sroa.466.0..sroa_idx, align 8
  %i.ao = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !align !5, !noundef !4
  %i.ar = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, ptr noundef nonnull @34, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.as, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load i32, ptr %i.at, align 4, !range !11, !noundef !4
  store i32 %i.au, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsfxDLtZq386g_6semver5error8PositionNtB6_7Display3fmtBA_, ptr %.sroa.423.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.av, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs2_NtCsfxDLtZq386g_6semver5errorNtB5_10QuotedCharNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %i.aw = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !4, !align !5, !noundef !4
  %i.az = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @35, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ba, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsfxDLtZq386g_6semver5error8PositionNtB6_7Display3fmtBA_, ptr %.sroa.419.0..sroa_idx, align 8
  %i.bb = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !4, !align !5, !noundef !4
  %i.be = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bd, ptr noundef nonnull @36, ptr noundef nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.bf, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsfxDLtZq386g_6semver5error8PositionNtB6_7Display3fmtBA_, ptr %.sroa.415.0..sroa_idx, align 8
  %i.bg = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bj = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bi, ptr noundef nonnull @37, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.bk, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsfxDLtZq386g_6semver5error8PositionNtB6_7Display3fmtBA_, ptr %.sroa.411.0..sroa_idx, align 8
  %i.bl = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bo = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bn, ptr noundef nonnull @38, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.bp, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsfxDLtZq386g_6semver5error8PositionNtB6_7Display3fmtBA_, ptr %.sroa.47.0..sroa_idx, align 8
  %i.bq = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !4, !align !5, !noundef !4
end_hunk_1
