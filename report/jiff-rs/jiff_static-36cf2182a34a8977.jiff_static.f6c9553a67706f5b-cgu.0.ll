Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_static-36cf2182a34a8977.jiff_static.f6c9553a67706f5b-cgu.0?download=true
inline.NumInlined: 263
inline.NumDeleted: 162
begin_hunk_0_@_RNvMCslbDAsNdhiVr_11jiff_staticNtB2_7Include14from_path_only:bb.a
.lr.ph123:                                        ; preds = %.preheader.i.us.i.i.preheader, %.preheader.i.us.i.i
  %.sroa.09.0.us.i.us.i.i122 = phi i64 [ %i.eq, %.preheader.i.us.i.i ], [ %.fr160.i.i, %.preheader.i.us.i.i.preheader ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.09.0.us.i.us.i.i122
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !451, !noalias !457, !noundef !4
  %i.et = add i64 %.sroa.09.0.us.i.us.i.i122, %i.ej ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.ci
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.et
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !449, !noalias !456, !noundef !4
  %.not20.us.i.us.i.i = icmp eq i8 %i.es, %i.ew
  br i1 %.not20.us.i.us.i.i, label %.preheader.i.us.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph123
  %i.ex = sub i64 %.sink.i13.us.i36.i, %i.eh
  br label %bb.ab

bb.ab:                                            ; preds = %.split.us.us.i.i, %bb.aa, %.lr.ph.split.us.i.us.i.i
  %.sink.i13.us.i.i = phi i64 [ %i.fh, %.split.us.us.i.i ], [ %i.ex, %bb.aa ], [ %i.ej, %.lr.ph.split.us.i.us.i.i ] ; 2 uses
  %i.ey = sub i64 %.sink.i13.us.i.i, %i.cm        ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ci
  br i1 %i.ez, label %.lr.ph.split.us.i.us.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread

.preheader45.i.us.us.i.i:                         ; preds = %.lr.ph120
  %.not19.us.i.us.us.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not19.us.i.us.us.i.i, label %.preheader.i.us.i.i.preheader, label %.lr.ph120

.preheader.i.us.i.i.preheader:                    ; preds = %.preheader45.i.us.us.i.i, %.preheader45.i.us.us.i.i.preheader
  br i1 %exitcond72.not.i.us.i.i121.not, label %.lr.ph123, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17

.lr.ph120:                                        ; preds = %.preheader45.i.us.us.i.i.preheader, %.preheader45.i.us.us.i.i
  %.sroa.2.0.us.i.us.us.i.i119 = phi i64 [ %i.fa, %.preheader45.i.us.us.i.i ], [ %.fr160.i.i, %.preheader45.i.us.us.i.i.preheader ]
  %i.fa = add i64 %.sroa.2.0.us.i.us.us.i.i119, -1 ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !451, !noalias !457, !noundef !4
  %i.fd = add i64 %i.fa, %i.ej                    ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.ci
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fd
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !449, !noalias !456, !noundef !4
  %.not21.us.i.us.us.i.i = icmp eq i8 %i.fc, %i.fg
  br i1 %.not21.us.i.us.us.i.i, label %.preheader45.i.us.us.i.i, label %.split.us.us.i.i

.split.us.us.i.i:                                 ; preds = %.lr.ph120
  %.neg.us.i.us.i.i = sub i64 %.sink.i13.us.i36.i, %.fr160.i.i
  %i.fh = add i64 %.neg.us.i.us.i.i, %i.fa
  br label %bb.ab

.lr.ph.i10.split.i.i:                             ; preds = %.lr.ph.i10.i.i
  %.not19.us.i.i.i = icmp eq i64 %.fr160.i.i, 0
  br i1 %.not19.us.i.i.i, label %.lr.ph.split.us.i.us93.i.i.preheader, label %.lr.ph.split.us.i.i.preheader.i

.lr.ph.split.us.i.us93.i.i.preheader:             ; preds = %.lr.ph.i10.split.i.i
  %exitcond72.not.i.us97.i.i113 = icmp eq i64 %umax71.i11.i.i, 0
  br label %.lr.ph.split.us.i.us93.i.i

.lr.ph.split.us.i.i.preheader.i:                  ; preds = %.lr.ph.i10.split.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ea
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !449, !noalias !456, !noundef !4
  %i.fk = and i8 %i.fj, 63
  %i.fl = zext nneg i8 %i.fk to i64
  %i.fm = shl nuw i64 1, %i.fl
  %i.fn = and i64 %i.fm, %i.ed
  %.not.us.i.i34.i = icmp eq i64 %i.fn, 0
  br i1 %.not.us.i.i34.i, label %.lr.ph.i, label %.preheader45.i.preheader.i.i

.lr.ph.split.us.i.us93.i.i:                       ; preds = %.lr.ph.split.us.i.us93.i.i.preheader, %bb.ad
  %i.fo = phi i64 [ %i.ge, %bb.ad ], [ %i.ea, %.lr.ph.split.us.i.us93.i.i.preheader ] ; 5 uses
  %i.fp = phi i64 [ %.sink.i13.us99.i.i, %bb.ad ], [ %.promoted.i7.i.i, %.lr.ph.split.us.i.us93.i.i.preheader ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fo
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !449, !noalias !456, !noundef !4
  %i.fs = and i8 %i.fr, 63
  %i.ft = zext nneg i8 %i.fs to i64
  %i.fu = shl nuw i64 1, %i.ft
  %i.fv = and i64 %i.fu, %i.ed
  %.not.us.i.us94.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not.us.i.us94.i.i, label %bb.ad, label %.preheader.i.us95.i.i.preheader

.preheader.i.us95.i.i.preheader:                  ; preds = %.lr.ph.split.us.i.us93.i.i
  br i1 %exitcond72.not.i.us97.i.i113, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17, label %.lr.ph115

.preheader.i.us95.i.i:                            ; preds = %.lr.ph115
  %i.fw = add i64 %.sroa.09.0.us.i.us96.i.i114, 1 ; 2 uses
  %exitcond72.not.i.us97.i.i = icmp eq i64 %i.fw, %umax71.i11.i.i
  br i1 %exitcond72.not.i.us97.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17, label %.lr.ph115

.lr.ph115:                                        ; preds = %.preheader.i.us95.i.i.preheader, %.preheader.i.us95.i.i
  %.sroa.09.0.us.i.us96.i.i114 = phi i64 [ %i.fw, %.preheader.i.us95.i.i ], [ 0, %.preheader.i.us95.i.i.preheader ] ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.09.0.us.i.us96.i.i114
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !451, !noalias !457, !noundef !4
  %i.fz = add nuw i64 %.sroa.09.0.us.i.us96.i.i114, %i.fo ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.ci
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !449, !noalias !456, !noundef !4
  %.not20.us.i.us98.i.i = icmp eq i8 %i.fy, %i.gc
  br i1 %.not20.us.i.us98.i.i, label %.preheader.i.us95.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph115
  %i.gd = sub i64 %i.fp, %i.eh
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.split.us.i.us93.i.i
  %.sink.i13.us99.i.i = phi i64 [ %i.fo, %.lr.ph.split.us.i.us93.i.i ], [ %i.gd, %bb.ac ] ; 2 uses
  %i.ge = sub i64 %.sink.i13.us99.i.i, %i.cm      ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.ci
  br i1 %i.gf, label %.lr.ph.split.us.i.us93.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.gn
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !449, !noalias !456, !noundef !4
  %i.gi = and i8 %i.gh, 63
  %i.gj = zext nneg i8 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = and i64 %i.gk, %i.ed
  %.not.us.i.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not.us.i.i.i, label %.lr.ph.i, label %.preheader45.i.preheader.i.i

.preheader45.i.preheader.i.i:                     ; preds = %.lr.ph.split.us.i.i.i, %.lr.ph.split.us.i.i.preheader.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ei, i64 noundef range(i64 0, -9223372036854775808) %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !noalias !458
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.split.us.i.i.preheader.i, %.lr.ph.split.us.i.i.i
  %i.gm = phi i64 [ %i.gn, %.lr.ph.split.us.i.i.i ], [ %i.ea, %.lr.ph.split.us.i.i.preheader.i ]
  %i.gn = sub i64 %i.gm, %i.cm                    ; 3 uses
  %i.go = icmp ult i64 %i.gn, %i.ci
  br i1 %i.go, label %.lr.ph.split.us.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread

_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread: ; preds = %bb.s, %.lr.ph.i, %bb.ad, %bb.ab, %.preheader.i.i, %bb.q, %bb.m, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !409
  br label %.split

_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17: ; preds = %.preheader46.i.i.i, %bb.u, %.preheader.i.us95.i.i.preheader, %.preheader.i.us95.i.i, %.preheader.i.us.i.i.preheader, %.preheader.i.us.i.i, %bb.l, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit17.i.i.us.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit19.i.i.us.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit21.i.i.us.i.i, %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i, %bb.g
  %.sroa.4.1.i.ph = phi i64 [ %i.bg, %bb.l ], [ 0, %_RNvXsw_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i ], [ %i.da, %bb.u ], [ %.promoted105.i.i, %bb.g ], [ %i.ej, %.preheader.i.us.i.i.preheader ], [ %i.bg, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit21.i.i.us.i.i ], [ %i.bg, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit19.i.i.us.i.i ], [ %i.bg, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCslbDAsNdhiVr_11jiff_static.exit17.i.i.us.i.i ], [ %i.fo, %.preheader.i.us95.i.i.preheader ], [ %i.ej, %.preheader.i.us.i.i ], [ %i.fo, %.preheader.i.us95.i.i ], [ %i.da, %.preheader46.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !409
  br label %bb.ae

_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit: ; preds = %bb.o
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gq = load i8, ptr %i.gp, align 8, !alias.scope !412, !noalias !415, !noundef !4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !412, !noalias !415, !nonnull !4, !noundef !4
  %i.gt = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr15memrchr_aligned(i8 noundef %i.gq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gs, i64 noundef %i.ca), !noalias !432 ; 2 uses
  %i.gu = extractvalue { i64, i64 } %i.gt, 0
  %i.gv = trunc nuw i64 %i.gu to i1
  %i.gw = extractvalue { i64, i64 } %i.gt, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !409
  br i1 %i.gv, label %bb.ae, label %.split

bb.ae:                                            ; preds = %.split.us.i.i, %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17, %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit
  %.sroa.4.1.i20 = phi i64 [ %.sroa.4.1.i.ph, %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread17 ], [ %i.gw, %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit ], [ 0, %.split.us.i.i ]
  %i.gx = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.4.1.i20, i64 9) ; 6 uses
  %.not.i = icmp ult i64 %i.gx, %2
  br i1 %.not.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %.split76

.split76:                                         ; preds = %bb.ae
  %i.gy = icmp eq i64 %i.gx, %2
  br i1 %i.gy, label %bb.af, label %bb.ag, !prof !237

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %bb.ae
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 %i.gx
  %i.ha = load i8, ptr %i.gz, align 1, !alias.scope !459, !noundef !4
  %i.hb = icmp sgt i8 %i.ha, -65
  br i1 %i.hb, label %bb.af, label %bb.ag, !prof !237

.split:                                           ; preds = %.split.us.i.i, %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core3stre5rfindReECslbDAsNdhiVr_11jiff_static.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslbDAsNdhiVr_11jiff_static, ptr %.sroa.46.0..sroa_idx, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hc, ptr noundef nonnull @9, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 2, ptr %0, align 8
  br label %bb.ah

bb.af:                                            ; preds = %.split76, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 %i.gx
  %i.he = sub nuw i64 %2, %i.gx
  tail call fastcc void @_RNvMCslbDAsNdhiVr_11jiff_staticNtB2_7Include17from_path_with_id(ptr noalias nofree noundef align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hd, i64 noundef %i.he, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.ah

bb.ag:                                            ; preds = %.split76, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.gx, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23
  unreachable

bb.ah:                                            ; preds = %.split, %bb.af
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMCslbDAsNdhiVr_11jiff_staticNtB2_7Include17from_path_with_id(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [30 x i8], align 1                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [232 x i8], align 8               ; 7 uses
  %.sroa.69 = alloca [24 x i8], align 8           ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  store ptr %3, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %4, ptr %i.l, align 8
  %i.m = icmp ult i64 %2, 31                      ; 3 uses
  br i1 %i.m, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.f, i8 0, i64 30, i1 false)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.b, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %.7..7..7..sroa.588.sroa.5.0.copyload.pre = load ptr, ptr %.7..7..7..sroa_idx, align 1
  %.15..15..15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %.15..15..15..sroa.588.sroa.6.0.copyload.pre = load i64, ptr %.15..15..15..sroa_idx, align 1
  %.23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 23
  %.23..23..23..sroa.588.sroa.7.0.copyload.pre = load i56, ptr %.23..23..23..sroa_idx, align 1
  %5 = zext i56 %.23..23..23..sroa.588.sroa.7.0.copyload.pre to i64
  br label %bb.b

bb.b:                                             ; preds = %.split.i, %.lr.ph.preheader.i
  %.23..23..sroa.588.sroa.7.0.copyload = phi i64 [ 0, %.split.i ], [ %5, %.lr.ph.preheader.i ]
  %.15..15..sroa.588.sroa.6.0.copyload = phi i64 [ 0, %.split.i ], [ %.15..15..15..sroa.588.sroa.6.0.copyload.pre, %.lr.ph.preheader.i ]
  %.7..7..sroa.588.sroa.5.0.copyload = phi ptr [ null, %.split.i ], [ %.7..7..7..sroa.588.sroa.5.0.copyload.pre, %.lr.ph.preheader.i ]
  %.sroa.524.sroa.7.30.insert.shift = shl nuw nsw i64 %2, 56
  %.sroa.524.sroa.7.30.insert.insert = or disjoint i64 %.sroa.524.sroa.7.30.insert.shift, %.23..23..sroa.588.sroa.7.0.copyload
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !462
  %i.n = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %2, i64 noundef 1) #18, !noalias !462 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.f, %bb.b
  %.sroa.15.0 = phi i64 [ %.sroa.524.sroa.7.30.insert.insert, %bb.b ], [ undef, %bb.f ]
  %.sroa.12.0 = phi i64 [ %.15..15..sroa.588.sroa.6.0.copyload, %bb.b ], [ %2, %bb.f ] ; 5 uses
  %.sroa.9.0 = phi ptr [ %.7..7..sroa.588.sroa.5.0.copyload, %bb.b ], [ %i.n, %bb.f ] ; 5 uses
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ 2, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNvNtCsaL1QbXo9JQH_3std2fs4read5inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %_RINvNtCsaL1QbXo9JQH_3std2fs4readReECslbDAsNdhiVr_11jiff_static.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %2) #19
  unreachable

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  br label %bb.d

bb.g:                                             ; preds = %bb.k, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsaL1QbXo9JQH_3std2fs4readReECslbDAsNdhiVr_11jiff_static.exit: ; preds = %bb.d
  %i.q = load i64, ptr %i.j, align 8, !range !61, !noundef !4 ; 7 uses
  %i.r = icmp eq i64 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 5 uses
  br i1 %i.r, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_RINvNtCsaL1QbXo9JQH_3std2fs4readReECslbDAsNdhiVr_11jiff_static.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.t, ptr %i.e, align 8, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !465
  store ptr %i.k, ptr %i.d, align 8, !noalias !465
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslbDAsNdhiVr_11jiff_static, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !465
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.u, align 8, !noalias !465
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !465
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @4, ptr noundef nonnull %i.d)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslbDAsNdhiVr_11jiff_static.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.val12.i = load ptr, ptr %i.e, align 8, !noalias !465, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbDAsNdhiVr_11jiff_static(ptr nonnull %.val12.i) #21
          to label %.body unwind label %bb.l, !noalias !469

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslbDAsNdhiVr_11jiff_static.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !465
  %.val11.i = load ptr, ptr %i.e, align 8, !noalias !465, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !465
  %i.w = ptrtoint ptr %.val11.i to i64            ; 2 uses
  %i.x = and i64 %i.w, 3
  switch i64 %i.x, label %default.unreachable [
    i64 2, label %bb.v
    i64 3, label %bb.j
    i64 0, label %bb.v
    i64 1, label %bb.k
  ], !prof !215

default.unreachable:                              ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslbDAsNdhiVr_11jiff_static.exit.i
  unreachable

bb.j:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslbDAsNdhiVr_11jiff_static.exit.i
  %i.y = icmp ult ptr %.val11.i, inttoptr (i64 188978561024 to ptr)
  %i.z = and i64 %i.w, 1095216660480
  %i.aa = icmp ne i64 %i.z, 1095216660480
  call void @llvm.assume(i1 %i.y)
  call void @llvm.assume(i1 %i.aa)
  br label %bb.v

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslbDAsNdhiVr_11jiff_static.exit.i
  %i.ab = getelementptr i8, ptr %.val11.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !470, !noalias !465
  store i8 3, ptr %i.c, align 8, !alias.scope !470, !noalias !465
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.v unwind label %bb.g

bb.l:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !469
  unreachable

bb.m:                                             ; preds = %_RINvNtCsaL1QbXo9JQH_3std2fs4readReECslbDAsNdhiVr_11jiff_static.exit
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5107.0.copyload = load i64, ptr %.sroa.5107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB4_8TimeZone5parse(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(address) dereferenceable(232) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %.sroa.5107.0.copyload)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %i.q, 0
  br i1 %i.af, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !473
  br label %.body

bb.p:                                             ; preds = %bb.m
  %i.ag = load i64, ptr %i.i, align 8, !range !273, !noundef !4 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.ah, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.sroa.039.0.copyload = load i64, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.039.0.copyload, ptr %i.b, align 8, !noalias !476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !476
  store ptr %i.k, ptr %i.a, align 8, !noalias !476
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslbDAsNdhiVr_11jiff_static, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !476
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.aj, align 8, !noalias !476
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs3_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB5_10ParseErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !476
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @5, ptr noundef nonnull %i.a)
          to label %bb.t unwind label %bb.n

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.538.0..sroa_idx, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.f, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 %i.ag, ptr %0, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 %.sroa.0.0, ptr %.sroa.619.0..sroa_idx, align 8
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %.sroa.9.0, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx, align 8
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %.sroa.12.0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx, align 8
  %.sroa.619.sroa.7.0..sroa.619.0..sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %.sroa.15.0, ptr %.sroa.619.sroa.7.0..sroa.619.0..sroa_idx.sroa_idx.a, align 8
  %i.ak = icmp eq i64 %i.q, 0
  br i1 %i.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslbDAsNdhiVr_11jiff_static.exit56.a, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !480
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslbDAsNdhiVr_11jiff_static.exit56.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslbDAsNdhiVr_11jiff_static.exit56.a: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslbDAsNdhiVr_11jiff_static.exit57, %bb.r, %bb.s
  ret void

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.am = icmp eq i64 %i.q, 0
  br i1 %i.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslbDAsNdhiVr_11jiff_static.exit57, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !483
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslbDAsNdhiVr_11jiff_static.exit57

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslbDAsNdhiVr_11jiff_static.exit57: ; preds = %bb.u, %bb.t, %bb.v
  %i.an = icmp eq i64 %.sroa.12.0, 0
  %or.cond = select i1 %i.m, i1 true, i1 %i.an
  br i1 %or.cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslbDAsNdhiVr_11jiff_static.exit56.a, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslbDAsNdhiVr_11jiff_static.exit57
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.12.0, i64 noundef 1) #18, !noalias !486
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslbDAsNdhiVr_11jiff_static.exit56.a

bb.v:                                             ; preds = %bb.j, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslbDAsNdhiVr_11jiff_static.exit.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslbDAsNdhiVr_11jiff_static.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.52.sroa.0.0.copyload95 = load i64, ptr %i.h, align 8
  %.sroa.52.sroa.7.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.52.sroa.7.0.copyload98 = load ptr, ptr %.sroa.52.sroa.7.0..sroa_idx97, align 8
  %.sroa.52.sroa.8.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.52.sroa.8.0.copyload102 = load i64, ptr %.sroa.52.sroa.8.0..sroa_idx101, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.52.sroa.0.0.copyload95, ptr %i.ao, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.52.sroa.7.0.copyload98, ptr %.sroa.4115.0..sroa_idx, align 8
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.52.sroa.8.0.copyload102, ptr %.sroa.5116.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslbDAsNdhiVr_11jiff_static.exit57

bb.w:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i60, %.body
  resume { ptr, i32 } %.pn

.body:                                            ; preds = %bb.o, %bb.n, %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.p, %bb.g ], [ %i.ae, %bb.n ], [ %i.ae, %bb.o ]
  %i.ap = icmp eq i64 %.sroa.12.0, 0
  %or.cond132 = select i1 %i.m, i1 true, i1 %i.ap
  br i1 %or.cond132, label %bb.w, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i60

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i60: ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.12.0, i64 noundef 1) #18, !noalias !491
  br label %bb.w
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslbDAsNdhiVr_11jiff_static(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !51, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslbDAsNdhiVr_11jiff_static.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 20
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #18
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslbDAsNdhiVr_11jiff_static.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslbDAsNdhiVr_11jiff_static.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslbDAsNdhiVr_11jiff_static(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !51, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslbDAsNdhiVr_11jiff_static.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslbDAsNdhiVr_11jiff_static.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslbDAsNdhiVr_11jiff_static.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslbDAsNdhiVr_11jiff_static(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_CslbDAsNdhiVr_11jiff_staticNtB4_7IncludeNtNtCsgwEn1eqcMsS_3syn5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [264 x i8], align 8               ; 8 uses
  %.sroa.675 = alloca [24 x i8], align 8          ; 7 uses
  %.sroa.669 = alloca [24 x i8], align 8          ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [264 x i8], align 8               ; 7 uses
  %.sroa.638 = alloca [24 x i8], align 8          ; 5 uses
  %.sroa.532 = alloca [24 x i8], align 8          ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [264 x i8], align 8               ; 7 uses
  %.sroa.614 = alloca [24 x i8], align 8          ; 5 uses
  %.sroa.59 = alloca [24 x i8], align 8           ; 4 uses
  %i.p = alloca [56 x i8], align 8                ; 10 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvXs_NtNtCsgwEn1eqcMsS_3syn3lit7parsingNtB6_6LitStrNtNtB8_5parse5Parse5parse(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 8 %1)
  %i.t = load i64, ptr %i.q, align 8, !range !61, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.t, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 8 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.587.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.587.0.copyload = load i64, ptr %.sroa.587.0..sroa_idx.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.w, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %.sroa.489.0..sroa_idx, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.587.0.copyload, ptr %.sroa.590.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslbDAsNdhiVr_11jiff_static.exit183

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store ptr %i.v, ptr %i.r, align 8
  invoke void @_RNvMNtCsgwEn1eqcMsS_3syn3litNtB2_6LitStr5value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgwEn1eqcMsS_3syn3lit6LitStrECslbDAsNdhiVr_11jiff_static(ptr nonnull %i.v) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslbDAsNdhiVr_11jiff_static.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %.val.i.i.i = load i64, ptr %i.v, align 8, !range !61, !alias.scope !496, !noundef !4 ; 2 uses
  %i.y = icmp sgt i64 %.val.i.i.i, 0
  br i1 %i.y, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro27LiteralECslbDAsNdhiVr_11jiff_static.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val1.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !496, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !499
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro27LiteralECslbDAsNdhiVr_11jiff_static.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro27LiteralECslbDAsNdhiVr_11jiff_static.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.val3.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !496, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.ab, label %bb.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro27LiteralECslbDAsNdhiVr_11jiff_static.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.val2.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !496, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %.val3.i.i.i, i64 noundef 1) #18, !noalias !496
  br label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgwEn1eqcMsS_3syn9lookahead10Lookahead1ECslbDAsNdhiVr_11jiff_static.exit: ; preds = %bb.ah, %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgwEn1eqcMsS_3syn9lookahead10Lookahead1ECslbDAsNdhiVr_11jiff_static.exit185, %bb.l, %bb.k, %bb.h
  %.pn145 = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.ah, %bb.l ], [ %i.bn, %bb.ah ], [ %i.ah, %bb.k ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsgwEn1eqcMsS_3syn9lookahead10Lookahead1ECslbDAsNdhiVr_11jiff_static.exit185 ], [ %.pn, %bb.aj ] ; 2 uses
end_hunk_0
