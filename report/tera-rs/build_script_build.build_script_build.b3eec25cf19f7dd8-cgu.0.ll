Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/build_script_build.build_script_build.b3eec25cf19f7dd8-cgu.0?download=true
inline.NumInlined: 247
inline.NumDeleted: 142
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvCsfrMbUeuvm3s_18build_script_build4main:bb.a
  %.sroa.01.0.i.i.i = phi i64 [ 2, %bb.ab ], [ %..i.i.i, %bb.ac ], [ 1, %bb.aa ]
  %i.as = add i64 %.sroa.01.0.i.i.i, %.sroa.212.1.i
  br label %.lr.ph182.i.i

.lr.ph182.i.i:                                    ; preds = %.preheader47.i.i, %.loopexit.i.i
  %.sroa.212.1.i = phi i64 [ %i.as, %.loopexit.i.i ], [ %.sroa.212.0.i, %.preheader47.i.i ] ; 14 uses
  %i.at = phi i8 [ %i.aw, %.loopexit.i.i ], [ %.sroa.1016.sroa.0.0.i, %.preheader47.i.i ] ; 2 uses
  %i.au = trunc nuw i8 %i.at to i1                ; 2 uses
  %i.av = and i8 %i.at, 1
  %i.aw = xor i8 %i.av, 1                         ; 3 uses
  %i.ax = icmp eq i64 %.sroa.212.1.i, 0
  br i1 %i.ax, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph182.i.i
  %.not.i.i.i.i = icmp ult i64 %.sroa.212.1.i, %.sroa.1165.0.copyload.i
  br i1 %.not.i.i.i.i, label %bb.p, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.o
  %i.ay = icmp ne i64 %.sroa.212.1.i, %.sroa.1165.0.copyload.i
  %or.cond.i.i.i = select i1 %i.ay, i1 true, i1 %.not43.i.i.i
  br i1 %or.cond.i.i.i, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread92.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.1064.0.copyload.i, i64 %.sroa.212.1.i
  %i.ba = load i8, ptr %i.az, align 1, !noalias !31
  %i.bb = icmp sgt i8 %i.ba, -65
  br i1 %i.bb, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread92.i.i.i, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i

_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.i.i.i: ; preds = %.lr.ph182.i.i
  br i1 %.not43.i.i.i, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i, label %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread92.i.i.i

_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread92.i.i.i: ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.i.i.i, %bb.p, %.split.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.1064.0.copyload.i, i64 %.sroa.212.1.i ; 4 uses
  %i.bd = icmp samesign eq i64 %.sroa.212.1.i, %.sroa.1165.0.copyload.i
  br i1 %i.bd, label %bb.z, label %bb.q

bb.q:                                             ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread92.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bf = load i8, ptr %i.bc, align 1, !noalias !31 ; 5 uses
  %i.bg = icmp sgt i8 %i.bf, -1
  br i1 %i.bg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = and i8 %i.bf, 31
  %i.bi = zext nneg i8 %i.bh to i32               ; 3 uses
  %i.bj = add nuw nsw i64 %.sroa.212.1.i, 1
  %i.bk = icmp samesign eq i64 %i.bj, %.sroa.1165.0.copyload.i
  br i1 %i.bk, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build.exit15.thread.i.i.i.i, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bl = zext nneg i8 %i.bf to i32
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bn = load i8, ptr %i.be, align 1, !noalias !31
  %i.bo = shl nuw nsw i32 %i.bi, 6
  %i.bp = and i8 %i.bn, 63
  %i.bq = zext nneg i8 %i.bp to i32               ; 2 uses
  %i.br = or disjoint i32 %i.bo, %i.bq
  %i.bs = icmp samesign ugt i8 %i.bf, -33
  br i1 %i.bs, label %bb.u, label %bb.y

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build.exit15.thread.i.i.i.i: ; preds = %bb.r
  call fastcc void @_RNvNvNtCsf3Ta7LF998c_4core4hint21unreachable_unchecked18precondition_checkCsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 @6) #22, !noalias !31
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.bt = add nuw nsw i64 %.sroa.212.1.i, 2
  %i.bu = icmp samesign eq i64 %i.bt, %.sroa.1165.0.copyload.i
  br i1 %i.bu, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build.exit17.thread.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %i.bw = load i8, ptr %i.bm, align 1, !noalias !31
  %i.bx = shl nuw nsw i32 %i.bq, 6
  %i.by = and i8 %i.bw, 63
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bx, %i.bz            ; 2 uses
  %i.cb = shl nuw nsw i32 %i.bi, 12
  %i.cc = or disjoint i32 %i.ca, %i.cb
  %i.cd = icmp samesign ugt i8 %i.bf, -17
  br i1 %i.cd, label %bb.w, label %bb.y

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build.exit17.thread.i.i.i.i: ; preds = %bb.u
  call fastcc void @_RNvNvNtCsf3Ta7LF998c_4core4hint21unreachable_unchecked18precondition_checkCsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 @7) #22, !noalias !31
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ce = add nuw nsw i64 %.sroa.212.1.i, 3
  %i.cf = icmp samesign eq i64 %i.ce, %.sroa.1165.0.copyload.i
  br i1 %i.cf, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build.exit19.thread.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = load i8, ptr %i.bv, align 1, !noalias !31
  %i.ch = shl nuw nsw i32 %i.bi, 18
  %i.ci = and i32 %i.ch, 1835008
  %i.cj = shl nuw nsw i32 %i.ca, 6
  %i.ck = and i8 %i.cg, 63
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.cj, %i.cl
  %i.cn = or disjoint i32 %i.cm, %i.ci
  br label %bb.y

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfrMbUeuvm3s_18build_script_build.exit19.thread.i.i.i.i: ; preds = %bb.w
  call fastcc void @_RNvNvNtCsf3Ta7LF998c_4core4hint21unreachable_unchecked18precondition_checkCsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 @8) #22, !noalias !31
  unreachable

_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i: ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.i.i.i, %bb.p, %.split.i.i.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr %.sroa.1064.0.copyload.i, i64 %.sroa.1165.0.copyload.i, i64 %.sroa.212.1.i, i64 %.sroa.1165.0.copyload.i, ptr nonnull align 8 @61) #24
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !30

.noexc.i:                                         ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i
  unreachable

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.t, %bb.s
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.br, %bb.t ], [ %i.cc, %bb.v ], [ %i.cn, %bb.x ], [ %i.bl, %bb.s ] ; 3 uses
  br i1 %i.au, label %.loopexit49.i.i, label %bb.aa

bb.z:                                             ; preds = %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread92.i.i.i
  br i1 %i.au, label %.loopexit49.i.i, label %.loopexit.i

bb.aa:                                            ; preds = %bb.y
  %i.co = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 128
  br i1 %i.co, label %.loopexit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 2048
  br i1 %i.cp, label %.loopexit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 65536
  %..i.i.i = select i1 %i.cq, i64 3, i64 4
  br label %.loopexit.i.i

bb.ad:                                            ; preds = %bb.m
  %.not.i.i = icmp ult i64 %.sroa.212.0.i, %.sroa.1165.0.copyload.i
  br i1 %.not.i.i, label %bb.af, label %.loopexit.i

bb.ae:                                            ; preds = %bb.m
  %i.cr = icmp eq i64 %.sroa.2921.0.i, -1
  %i.cs = add i64 %.sroa.19.0.i, %i.ar            ; 3 uses
  %i.ct = icmp ult i64 %i.cs, %.sroa.1165.0.copyload.i ; 2 uses
  br i1 %i.cr, label %bb.ao, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.cu = sub nuw i64 %.sroa.1165.0.copyload.i, %.sroa.212.0.i ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.1064.0.copyload.i, i64 %.sroa.212.0.i ; 2 uses
  %i.cw = icmp ult i64 %i.cu, 16
  br i1 %i.cw, label %.lr.ph.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.af, %bb.ag
  %.sroa.04.09.i.i.i = phi i64 [ %i.da, %bb.ag ], [ 0, %bb.af ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.sroa.04.09.i.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !32
  %i.cz = icmp eq i8 %i.cy, %.sroa.1016.sroa.0.0.i
  br i1 %i.cz, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i
  %i.da = add nuw nsw i64 %.sroa.04.09.i.i.i, 1   ; 2 uses
  %exitcond.not.i5.i.i = icmp eq i64 %i.da, %i.cu
  br i1 %exitcond.not.i5.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.i.i: ; preds = %bb.af
  %i.db = invoke { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 %.sroa.1016.sroa.0.0.i, ptr %i.cv, i64 %i.cu)
          to label %.noexc27.i unwind label %.loopexit94.i, !noalias !30 ; 2 uses

.noexc27.i:                                       ; preds = %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.i.i
  %i.dc = extractvalue { i64, i64 } %i.db, 0
  %i.dd = trunc nuw i64 %i.dc to i1
  br i1 %i.dd, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37_crit_edge.i.i, label %.loopexit.i

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37_crit_edge.i.i: ; preds = %.noexc27.i
  %i.de = extractvalue { i64, i64 } %i.db, 1
  br label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i: ; preds = %.lr.ph.i.i.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37_crit_edge.i.i
  %.sroa.5.1.i40.i.i = phi i64 [ %i.de, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit._RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37_crit_edge.i.i ], [ %.sroa.04.09.i.i.i, %.lr.ph.i.i.i ]
  %i.df = add i64 %.sroa.5.1.i40.i.i, %.sroa.212.0.i ; 2 uses
  %i.dg = add i64 %i.df, 1                        ; 2 uses
  br label %.loopexit49.i.i

bb.ah:                                            ; preds = %bb.ae
  br i1 %i.ct, label %.lr.ph.i6.i.preheader.i, label %.loopexit.i

.lr.ph.i6.i.preheader.i:                          ; preds = %bb.ah
  %.sroa.1016.sroa.0.0.insert.ext.i = zext i8 %.sroa.1016.sroa.0.0.i to i64
  %.sroa.1016.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.1016.sroa.6.0.insert.insert.i, %.sroa.1016.sroa.0.0.insert.ext.i ; 2 uses
  %i.dh = sub i64 %.sroa.1367.0.copyload.i, %.sroa.1016.sroa.0.0.insert.insert.i
  %invariant.op = sub i64 1, %.sroa.212.0.i
  br label %.lr.ph.i6.i.i

.lr.ph.i6.i.i:                                    ; preds = %.sink.split.i.i.i, %.lr.ph.i6.i.preheader.i
  %i.di = phi i64 [ %.sink.i11.i.i, %.sink.split.i.i.i ], [ %.sroa.2921.0.i, %.lr.ph.i6.i.preheader.i ] ; 3 uses
  %i.dj = phi i64 [ %i.ds, %.sink.split.i.i.i ], [ %i.cs, %.lr.ph.i6.i.preheader.i ]
  %i.dk = phi i64 [ %.ph.i.i.i, %.sink.split.i.i.i ], [ %.sroa.19.0.i, %.lr.ph.i6.i.preheader.i ] ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.1064.0.copyload.i, i64 %i.dj
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !33
  %i.dn = and i8 %i.dm, 63
  %i.do = zext nneg i8 %i.dn to i64
  %0 = lshr i64 %.sroa.559.0.copyload.i, %i.do
  %.not.i7.i.i = trunc i64 %0 to i1
  br i1 %.not.i7.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i6.i.i
  %i.dp = add i64 %i.dk, %.sroa.1367.0.copyload.i
  br label %.sink.split.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i6.i.i
  %i.dq = call i64 @llvm.umax.i64(i64 %.sroa.212.0.i, i64 %i.di) ; 3 uses
  %i.dr = getelementptr i8, ptr %.sroa.1064.0.copyload.i, i64 %i.dk ; 2 uses
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %i.dq, i64 %.sroa.1367.0.copyload.i)
  %exitcond.not.i10.i.i372.not = icmp ult i64 %i.dq, %.sroa.1367.0.copyload.i
  br i1 %exitcond.not.i10.i.i372.not, label %.lr.ph, label %.preheader44.i.i.preheader

.sink.split.i.i.i:                                ; preds = %bb.an, %bb.am, %bb.ai
  %.sink.i11.i.i = phi i64 [ 0, %bb.an ], [ %i.dh, %bb.am ], [ 0, %bb.ai ]
  %.ph.i.i.i = phi i64 [ %i.ek, %bb.an ], [ %i.ef, %bb.am ], [ %i.dp, %bb.ai ] ; 2 uses
  %i.ds = add i64 %.ph.i.i.i, %i.ar               ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %.sroa.1165.0.copyload.i
  br i1 %i.dt, label %.lr.ph.i6.i.i, label %.loopexit.i

bb.ak:                                            ; preds = %.lr.ph
  %i.du = add i64 %.sroa.02.0.i9.i.i373, 1        ; 2 uses
  %exitcond.not.i10.i.i = icmp eq i64 %i.du, %umax.i.i.i
  br i1 %exitcond.not.i10.i.i, label %.preheader44.i.i.preheader, label %.lr.ph

.preheader44.i.i.preheader:                       ; preds = %bb.ak, %bb.aj
  %i.dv = icmp ult i64 %i.di, %.sroa.212.0.i
  br i1 %i.dv, label %.lr.ph375, label %.preheader44.i.i.preheader._crit_edge

.preheader44.i.i:                                 ; preds = %bb.al
  %i.dw = icmp ult i64 %i.di, %i.dy
  br i1 %i.dw, label %.lr.ph375, label %.preheader44.i.i.preheader._crit_edge

.preheader44.i.i.preheader._crit_edge:            ; preds = %.preheader44.i.i.preheader, %.preheader44.i.i
  %i.dx = add i64 %i.dk, %.sroa.1367.0.copyload.i ; 2 uses
  br label %.loopexit49.i.i

.lr.ph375:                                        ; preds = %.preheader44.i.i.preheader, %.preheader44.i.i
  %.sroa.2.0.i.i.i374 = phi i64 [ %i.dy, %.preheader44.i.i ], [ %.sroa.212.0.i, %.preheader44.i.i.preheader ]
  %i.dy = add i64 %.sroa.2.0.i.i.i374, -1         ; 6 uses
  %i.dz = icmp ult i64 %i.dy, %.sroa.1367.0.copyload.i
  br i1 %i.dz, label %bb.al, label %.invoke.i

bb.al:                                            ; preds = %.lr.ph375
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.1266.0.copyload.i, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !33
  %i.ec = getelementptr i8, ptr %i.dr, i64 %i.dy
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !33
  %.not17.i.i.i = icmp eq i8 %i.eb, %i.ed
  br i1 %.not17.i.i.i, label %.preheader44.i.i, label %bb.am

.invoke.i:                                        ; preds = %.preheader.preheader.i.split.i, %.lr.ph375
  %i.ee = phi i64 [ %i.dy, %.lr.ph375 ], [ %i.el, %.preheader.preheader.i.split.i ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 %i.ee, i64 %.sroa.1367.0.copyload.i, ptr nonnull align 8 @3) #24
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !30

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ef = add i64 %i.dk, %.sroa.1016.sroa.0.0.insert.insert.i
  br label %.sink.split.i.i.i

.lr.ph:                                           ; preds = %bb.aj, %bb.ak
  %.sroa.02.0.i9.i.i373 = phi i64 [ %i.du, %bb.ak ], [ %i.dq, %bb.aj ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.1266.0.copyload.i, i64 %.sroa.02.0.i9.i.i373
  %i.eh = load i8, ptr %i.eg, align 1, !noalias !33
  %i.ei = getelementptr i8, ptr %i.dr, i64 %.sroa.02.0.i9.i.i373
  %i.ej = load i8, ptr %i.ei, align 1, !noalias !33
  %.not18.i.i.i = icmp eq i8 %i.eh, %i.ej
  br i1 %.not18.i.i.i, label %bb.ak, label %bb.an

bb.an:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.dk, %invariant.op
  %i.ek = add i64 %.reass.i.reass.reass, %.sroa.02.0.i9.i.i373
  br label %.sink.split.i.i.i

bb.ao:                                            ; preds = %bb.ae
  br i1 %i.ct, label %.lr.ph.i15.i.preheader.i, label %.loopexit.i

.lr.ph.i15.i.preheader.i:                         ; preds = %bb.ao
  %umax.i18.i.i = call i64 @llvm.umax.i64(i64 %.sroa.212.0.i, i64 %.sroa.1367.0.copyload.i)
  %i.el = add i64 %.sroa.212.0.i, -1              ; 2 uses
  %.first_iter.i.i = icmp ult i64 %i.el, %.sroa.1367.0.copyload.i
  %.first_iter.i.fr.i = freeze i1 %.first_iter.i.i
  %.sroa.1016.sroa.0.0.insert.ext27.i = zext i8 %.sroa.1016.sroa.0.0.i to i64
  %.sroa.1016.sroa.0.0.insert.insert29.i = or disjoint i64 %.sroa.1016.sroa.6.0.insert.insert.i, %.sroa.1016.sroa.0.0.insert.ext27.i
  %exitcond.not.i20.i.i377.not = icmp ult i64 %.sroa.212.0.i, %.sroa.1367.0.copyload.i
  %invariant.op498 = sub i64 1, %.sroa.212.0.i
  %.not41.i.us.i380 = icmp eq i64 %.sroa.212.0.i, 0 ; 2 uses
  br label %.lr.ph.i15.i.i

.lr.ph.i15.i.i:                                   ; preds = %bb.ar, %.lr.ph.i15.i.preheader.i
  %i.em = phi i64 [ %i.eu, %bb.ar ], [ %i.cs, %.lr.ph.i15.i.preheader.i ]
  %i.en = phi i64 [ %.sink.i.i, %bb.ar ], [ %.sroa.19.0.i, %.lr.ph.i15.i.preheader.i ] ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.1064.0.copyload.i, i64 %i.em
  %i.ep = load i8, ptr %i.eo, align 1, !noalias !34
  %i.eq = and i8 %i.ep, 63
  %i.er = zext nneg i8 %i.eq to i64
  %1 = lshr i64 %.sroa.559.0.copyload.i, %i.er
  %.not.i16.i.i = trunc i64 %1 to i1
  br i1 %.not.i16.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i15.i.i
  %i.es = add i64 %i.en, %.sroa.1367.0.copyload.i
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i15.i.i
  %i.et = getelementptr i8, ptr %.sroa.1064.0.copyload.i, i64 %i.en ; 2 uses
  br i1 %exitcond.not.i20.i.i377.not, label %.lr.ph379, label %.preheader.preheader.i.i

bb.ar:                                            ; preds = %bb.at, %.split136.us.i, %bb.ap
  %.sink.i.i = phi i64 [ %i.fi, %bb.at ], [ %i.fc, %.split136.us.i ], [ %i.es, %bb.ap ] ; 2 uses
  %i.eu = add i64 %.sink.i.i, %i.ar               ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %.sroa.1165.0.copyload.i
  br i1 %i.ev, label %.lr.ph.i15.i.i, label %.loopexit.i

bb.as:                                            ; preds = %.lr.ph379
  %i.ew = add i64 %.sroa.02.0.i19.i.i378, 1       ; 2 uses
  %exitcond.not.i20.i.i = icmp eq i64 %i.ew, %umax.i18.i.i
  br i1 %exitcond.not.i20.i.i, label %.preheader.preheader.i.i, label %.lr.ph379

.preheader.preheader.i.i:                         ; preds = %bb.as, %bb.aq
  br i1 %.first_iter.i.fr.i, label %.preheader.i26.us.i.preheader, label %.preheader.preheader.i.split.i

.preheader.i26.us.i.preheader:                    ; preds = %.preheader.preheader.i.i
  br i1 %.not41.i.us.i380, label %.split.us.i, label %.lr.ph382

.preheader.i26.us.i:                              ; preds = %.lr.ph382
  %.not41.i.us.i = icmp eq i64 %i.ex, 0
  br i1 %.not41.i.us.i, label %.split.us.i, label %.lr.ph382

.lr.ph382:                                        ; preds = %.preheader.i26.us.i.preheader, %.preheader.i26.us.i
  %.sroa.2.0.i22.i.us.i381 = phi i64 [ %i.ex, %.preheader.i26.us.i ], [ %.sroa.212.0.i, %.preheader.i26.us.i.preheader ]
  %i.ex = add i64 %.sroa.2.0.i22.i.us.i381, -1    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.1266.0.copyload.i, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !noalias !34
  %i.fa = getelementptr i8, ptr %i.et, i64 %i.ex
  %i.fb = load i8, ptr %i.fa, align 1, !noalias !34
  %.not17.i23.i.us.i = icmp eq i8 %i.ez, %i.fb
  br i1 %.not17.i23.i.us.i, label %.preheader.i26.us.i, label %.split136.us.i

.split136.us.i:                                   ; preds = %.lr.ph382
  %i.fc = add i64 %.sroa.1016.sroa.0.0.insert.insert29.i, %i.en
  br label %bb.ar

.preheader.preheader.i.split.i:                   ; preds = %.preheader.preheader.i.i
  br i1 %.not41.i.us.i380, label %.split.us.i, label %.invoke.i

.split.us.i:                                      ; preds = %.preheader.i26.us.i.preheader, %.preheader.i26.us.i, %.preheader.preheader.i.split.i
  %i.fd = add i64 %i.en, %.sroa.1367.0.copyload.i ; 2 uses
  br label %.loopexit49.i.i

.lr.ph379:                                        ; preds = %bb.aq, %bb.as
  %.sroa.02.0.i19.i.i378 = phi i64 [ %i.ew, %bb.as ], [ %.sroa.212.0.i, %bb.aq ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.1266.0.copyload.i, i64 %.sroa.02.0.i19.i.i378
  %i.ff = load i8, ptr %i.fe, align 1, !noalias !34
  %i.fg = getelementptr i8, ptr %i.et, i64 %.sroa.02.0.i19.i.i378
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !34
  %.not18.i21.i.i = icmp eq i8 %i.ff, %i.fh
  br i1 %.not18.i21.i.i, label %bb.as, label %bb.at

bb.at:                                            ; preds = %.lr.ph379
  %.reass258.i.reass.reass = add i64 %i.en, %invariant.op498
  %i.fi = add i64 %.reass258.i.reass.reass, %.sroa.02.0.i19.i.i378
  br label %bb.ar

.loopexit94.i:                                    ; preds = %bb.aw, %.loopexit49.i.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i:                             ; preds = %.invoke.i, %_RNvXs9_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsfrMbUeuvm3s_18build_script_build.exit.thread.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.i:                                      ; preds = %bb.ao, %bb.ah, %.noexc27.i, %bb.ad, %bb.z, %.preheader47.i.i, %bb.ag, %.sink.split.i.i.i, %bb.ar
  %i.fj = getelementptr inbounds nuw i8, ptr @20, i64 %.sroa.04.0.i
  %gepdiff90.i.a = sub nuw nsw i64 89, %.sroa.04.0.i ; 3 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs3TflR1YWh2n_9addr2line(ptr nonnull align 8 %i.l, i64 %gepdiff90.i.a)
          to label %.noexc31.i unwind label %bb.l, !noalias !30

.noexc31.i:                                       ; preds = %.loopexit.i
  %.not.i30.i = icmp eq i64 %.sroa.04.0.i, 89
  br i1 %.not.i30.i, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %.noexc31.i
  %i.fk = load i64, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  %i.fl = load ptr, ptr %.sroa.212.0..sroa_idx.i, align 8, !noalias !30
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr nonnull readonly align 1 %i.fj, i64 %gepdiff90.i.a, i1 false), !noalias !30
  br label %bb.ba

.loopexit49.i.i:                                  ; preds = %bb.y, %.split.us.i, %.preheader44.i.i.preheader._crit_edge, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i, %bb.z
  %.sroa.212.2.i = phi i64 [ %.sroa.212.0.i, %.split.us.i ], [ %i.dg, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i ], [ %.sroa.1165.0.copyload.i, %bb.z ], [ %.sroa.212.0.i, %.preheader44.i.i.preheader._crit_edge ], [ %.sroa.212.1.i, %bb.y ]
  %.sroa.19.1.i = phi i64 [ %i.fd, %.split.us.i ], [ %.sroa.19.0.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i ], [ %.sroa.19.0.i, %bb.z ], [ %i.dx, %.preheader44.i.i.preheader._crit_edge ], [ %.sroa.19.0.i, %bb.y ]
  %.sroa.2921.2.i = phi i64 [ -1, %.split.us.i ], [ %.sroa.2921.0.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i ], [ %.sroa.2921.0.i, %bb.z ], [ 0, %.preheader44.i.i.preheader._crit_edge ], [ %.sroa.2921.0.i, %bb.y ]
  %.sroa.1016.sroa.0.1.i = phi i8 [ %.sroa.1016.sroa.0.0.i, %.split.us.i ], [ %.sroa.1016.sroa.0.0.i, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i ], [ %i.aw, %bb.z ], [ %.sroa.1016.sroa.0.0.i, %.preheader44.i.i.preheader._crit_edge ], [ %i.aw, %bb.y ]
  %.sroa.269.1.i = phi i64 [ %i.en, %.split.us.i ], [ %i.df, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i ], [ %.sroa.1165.0.copyload.i, %bb.z ], [ %i.dk, %.preheader44.i.i.preheader._crit_edge ], [ %.sroa.212.1.i, %bb.y ] ; 2 uses
  %.sroa.770.1.i = phi i64 [ %i.fd, %.split.us.i ], [ %i.dg, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchrCsfrMbUeuvm3s_18build_script_build.exit.thread37.i.i ], [ %.sroa.1165.0.copyload.i, %bb.z ], [ %i.dx, %.preheader44.i.i.preheader._crit_edge ], [ %.sroa.212.1.i, %bb.y ]
  %i.fn = getelementptr inbounds nuw i8, ptr @20, i64 %.sroa.04.0.i
  %gepdiff.i = sub nuw nsw i64 %.sroa.269.1.i, %.sroa.04.0.i ; 3 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs3TflR1YWh2n_9addr2line(ptr nonnull align 8 %i.l, i64 %gepdiff.i)
          to label %.noexc33.i unwind label %.loopexit94.i, !noalias !30

.noexc33.i:                                       ; preds = %.loopexit49.i.i
  %.not.i32.i = icmp eq i64 %.sroa.269.1.i, %.sroa.04.0.i
  br i1 %.not.i32.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.noexc33.i
  %i.fo = load i64, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  %i.fp = load ptr, ptr %.sroa.212.0..sroa_idx.i, align 8, !noalias !30
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr nonnull readonly align 1 %i.fn, i64 %gepdiff.i, i1 false), !noalias !30
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.noexc33.i
  %i.fr = load i64, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  %i.fs = add i64 %i.fr, %gepdiff.i
  store i64 %i.fs, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs3TflR1YWh2n_9addr2line(ptr nonnull align 8 %i.l, i64 %.val36)
          to label %.noexc36.i unwind label %.loopexit94.i, !noalias !30

.noexc36.i:                                       ; preds = %bb.aw
  br i1 %.not.i35.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.noexc36.i
  %i.ft = load i64, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  %i.fu = load ptr, ptr %.sroa.212.0..sroa_idx.i, align 8, !noalias !30
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fv, ptr readonly align 1 %.val35, i64 %.val36, i1 false), !noalias !30
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.noexc36.i
  %i.fw = load i64, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  %i.fx = add i64 %i.fw, %.val36
  store i64 %i.fx, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  br label %bb.m

bb.az:                                            ; preds = %bb.k
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !30
  unreachable

.thread126:                                       ; preds = %.invoke, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfrMbUeuvm3s_18build_script_build.exit.i95, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsfrMbUeuvm3s_18build_script_build.exit.i, %bb.dg, %bb.dq, %bb.dp, %bb.dh, %bb.do, %bb.dn, %bb.cy, %bb.dm, %bb.dl, %bb.bn, %bb.dk, %_RINvMsi_NtCs5Xr050g3D4S_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECsfrMbUeuvm3s_18build_script_build.exit.i, %bb.dj, %.loopexit.i62, %bb.di
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body49

bb.ba:                                            ; preds = %.noexc31.i, %bb.au
  %i.fz = load i64, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  %i.ga = add i64 %i.fz, %gepdiff90.i.a
  store i64 %i.ga, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val37 = load ptr, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val38 = load i64, ptr %i.gc, align 8
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.s, ptr %.val37, i64 %.val38, ptr nonnull @22, i64 10)
          to label %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsfrMbUeuvm3s_18build_script_build.exit unwind label %bb.ex

_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsfrMbUeuvm3s_18build_script_build.exit: ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i = load ptr, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val2.i = load i64, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val3.i = load ptr, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val4.i = load i64, ptr %i.gg, align 8
  %i.gh = invoke ptr @_RNvNvNtCs5Xr050g3D4S_3std2fs5write5inner(ptr %.val.i, i64 %.val2.i, ptr %.val3.i, i64 %.val4.i)
          to label %bb.bc unwind label %bb.bb     ; 2 uses

bb.bb:                                            ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsfrMbUeuvm3s_18build_script_build.exit
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 %i.r) #19
          to label %.body.i unwind label %bb.bi

bb.bc:                                            ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsfrMbUeuvm3s_18build_script_build.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfrMbUeuvm3s_18build_script_build.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.r)
          to label %.body.i unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfrMbUeuvm3s_18build_script_build.exit.i.i: ; preds = %bb.bc
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit.i unwind label %bb.bf

.body.i:                                          ; preds = %bb.bf, %bb.bd, %bb.bb
  %.pn.i52 = phi { ptr, i32 } [ %i.gi, %bb.bb ], [ %i.gl, %bb.bf ], [ %i.gj, %bb.bd ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 %i.s) #19
          to label %.body49 unwind label %bb.bi

bb.bf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfrMbUeuvm3s_18build_script_build.exit.i.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfrMbUeuvm3s_18build_script_build.exit.i.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsfrMbUeuvm3s_18build_script_build.exit.i unwind label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.s)
          to label %.body49 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsfrMbUeuvm3s_18build_script_build.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsgkdYJAOlkeX_5gimli(ptr nonnull align 8 %i.s)
          to label %_RINvNtCs5Xr050g3D4S_3std2fs5writeNtNtB4_4path7PathBufNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit unwind label %.thread126

bb.bi:                                            ; preds = %.body.i, %bb.bb
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs5Xr050g3D4S_3std2fs5writeNtNtB4_4path7PathBufNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsfrMbUeuvm3s_18build_script_build.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i18 = icmp eq ptr %i.gh, null
  br i1 %.not.i18, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCs5Xr050g3D4S_3std2fs5writeNtNtB4_4path7PathBufNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit
  store ptr %i.gh, ptr %i.m, align 8
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr nonnull @53, i64 43, ptr nonnull %i.m, ptr nonnull align 8 @54, ptr nonnull align 8 @23) #25
          to label %bb.bl unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 %i.m) #19
          to label %.body49 unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bn:                                            ; preds = %_RINvNtCs5Xr050g3D4S_3std2fs5writeNtNtB4_4path7PathBufNtNtCsgCecv3eZDcN_5alloc6string6StringECsfrMbUeuvm3s_18build_script_build.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtNtNtCs5Xr050g3D4S_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull @12, i64 5)
          to label %.noexc63 unwind label %.thread126

.noexc63:                                         ; preds = %bb.bn
  %i.gr = load i64, ptr %i.i, align 8, !noalias !35 ; 2 uses
  %.not.i.i57 = icmp eq i64 %i.gr, -1
  br i1 %.not.i.i57, label %.thread130, label %bb.bo

bb.bo:                                            ; preds = %.noexc63
  %.sroa.4.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.226.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx23.i, i64 16, i1 false)
  store i64 %i.gr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val.i.i = load ptr, ptr %.sroa.226.0..sroa_idx.i, align 8, !noalias !36
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i.i = load i64, ptr %i.gs, align 8, !noalias !36
  invoke void @_RNvMs_NtNtNtNtCs5Xr050g3D4S_3std3sys7process4unix6commonNtB4_7Command3new(ptr nonnull sret([200 x i8]) align 8 %i.b, ptr %.val.i.i, i64 %.val1.i.i)
          to label %bb.bq unwind label %bb.bp, !noalias !36

bb.bp:                                            ; preds = %bb.bo
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsfrMbUeuvm3s_18build_script_build(ptr nonnull align 8 %i.e) #19
          to label %.body49 unwind label %bb.bt, !noalias !36

bb.bq:                                            ; preds = %bb.bo
end_hunk_0
