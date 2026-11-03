Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/build_script_build-552fd8e678804572.build_script_build.d2a6dff4d87ebaa0-cgu.0?download=true
inline.NumInlined: 88
inline.NumDeleted: 42
begin_hunk_0_@_RNvCsi5ihwcwNrfo_18build_script_build4main:bb.a
.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.31121.0.copyload, null ; 4 uses
  %i.ab = icmp eq i64 %.sroa.2112.0.copyload, 0
  br i1 %i.ab, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.i.peel, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.i.i.peel = icmp ult i64 %.sroa.2112.0.copyload, %.sroa.33.0.copyload
  br i1 %.not.i.i.i.i.i.peel, label %bb.l, label %.split.i.i.i.i.i.peel

.split.i.i.i.i.i.peel:                            ; preds = %bb.k
  %i.ac = icmp ne i64 %.sroa.2112.0.copyload, %.sroa.33.0.copyload
  %or.cond.i.i.i.i.peel = select i1 %i.ac, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i.peel, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread.i.i.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread81.i.i.i.i.peel

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.31121.0.copyload, i64 %.sroa.2112.0.copyload
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !20
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread81.i.i.i.i.peel, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread.i.i.i.i

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.i.peel: ; preds = %.lr.ph.i.i.i
  br i1 %.not.i.i.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread.i.i.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread81.i.i.i.i.peel

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread81.i.i.i.i.peel: ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.i.peel, %bb.l, %.split.i.i.i.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.31121.0.copyload, i64 %.sroa.2112.0.copyload ; 4 uses
  %i.ah = icmp samesign eq i64 %.sroa.2112.0.copyload, %.sroa.33.0.copyload
  br i1 %i.ah, label %.loopexit483, label %bb.m

bb.m:                                             ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread81.i.i.i.i.peel
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !20 ; 5 uses
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = and i8 %i.aj, 31
  %i.am = zext nneg i8 %i.al to i32               ; 3 uses
  %i.an = add nuw nsw i64 %.sroa.2112.0.copyload, 1
  %i.ao = icmp samesign eq i64 %i.an, %.sroa.33.0.copyload
  br i1 %i.ao, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsi5ihwcwNrfo_18build_script_build.exit15.thread.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.aq = load i8, ptr %i.ai, align 1, !noalias !20
  %i.ar = shl nuw nsw i32 %i.am, 6
  %i.as = and i8 %i.aq, 63
  %i.at = zext nneg i8 %i.as to i32               ; 2 uses
  %i.au = or disjoint i32 %i.ar, %i.at
  %i.av = icmp samesign ugt i8 %i.aj, -33
  br i1 %i.av, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.aw = add nuw nsw i64 %.sroa.2112.0.copyload, 2
  %i.ax = icmp samesign eq i64 %i.aw, %.sroa.33.0.copyload
  br i1 %i.ax, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsi5ihwcwNrfo_18build_script_build.exit17.thread.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.az = load i8, ptr %i.ap, align 1, !noalias !20
  %i.ba = shl nuw nsw i32 %i.at, 6
  %i.bb = and i8 %i.az, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc            ; 2 uses
  %i.be = shl nuw nsw i32 %i.am, 12
  %i.bf = or disjoint i32 %i.bd, %i.be
  %i.bg = icmp samesign ugt i8 %i.aj, -17
  br i1 %i.bg, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bh = add nuw nsw i64 %.sroa.2112.0.copyload, 3
  %i.bi = icmp samesign eq i64 %i.bh, %.sroa.33.0.copyload
  br i1 %i.bi, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsi5ihwcwNrfo_18build_script_build.exit19.thread.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = load i8, ptr %i.ay, align 1, !noalias !20
  %i.bk = shl nuw nsw i32 %i.am, 18
  %i.bl = and i32 %i.bk, 1835008
  %i.bm = shl nuw nsw i32 %i.bd, 6
  %i.bn = and i8 %i.bj, 63
  %i.bo = zext nneg i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bm, %i.bo
  %i.bq = or disjoint i32 %i.bp, %i.bl
  br label %bb.u

bb.t:                                             ; preds = %bb.m
  %i.br = zext nneg i8 %i.aj to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.o
  %.sroa.4.0.i.ph.i.i.i.i.peel = phi i32 [ %i.au, %bb.o ], [ %i.bf, %bb.q ], [ %i.bq, %bb.s ], [ %i.br, %bb.t ] ; 3 uses
  br i1 %.sroa.6114.sroa.0.0.extract.trunc, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 128
  br i1 %i.bs, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.peel, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 2048
  br i1 %i.bt, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.peel, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.peel, 65536
  %..i.i.i.i.peel = select i1 %i.bu, i64 3, i64 4
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.peel

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.peel: ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.01.0.i.i.i.i.peel = phi i64 [ 2, %bb.w ], [ %..i.i.i.i.peel, %bb.x ], [ 1, %bb.v ]
  %i.bv = add i64 %.sroa.01.0.i.i.i.i.peel, %.sroa.2112.0.copyload ; 15 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %.not.i.i.i.i.i = icmp ult i64 %i.bv, %.sroa.33.0.copyload
  %i.bx = icmp ne i64 %i.bv, %.sroa.33.0.copyload
  %or.cond.i.i.i.i = select i1 %i.bx, i1 true, i1 %.not.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.31121.0.copyload, i64 %i.bv
  %i.bz = icmp samesign eq i64 %i.bv, %.sroa.33.0.copyload
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.31121.0.copyload, i64 %i.bv
  %i.cb = add nuw nsw i64 %i.bv, 1
  %i.cc = icmp samesign eq i64 %i.cb, %.sroa.33.0.copyload
  %i.cd = add nuw nsw i64 %i.bv, 2
  %i.ce = icmp samesign eq i64 %i.cd, %.sroa.33.0.copyload
  %i.cf = add nuw nsw i64 %i.bv, 3
  %i.cg = icmp samesign eq i64 %i.cf, %.sroa.33.0.copyload
  br i1 %i.bw, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.i, label %bb.z

bb.y:                                             ; preds = %bb.j
  %i.ch = icmp eq i64 %.sroa.26118.0.copyload, -1
  %i.ci = add i64 %.sroa.35.0.copyload, -1        ; 3 uses
  %i.cj = add i64 %i.ci, %.sroa.14.0.copyload     ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %.sroa.33.0.copyload ; 2 uses
  br i1 %i.ch, label %bb.ag, label %bb.ap

bb.z:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.peel
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.z
  br i1 %or.cond.i.i.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread.i.i.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread81.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cl = load i8, ptr %i.by, align 1, !noalias !20
  %i.cm = icmp sgt i8 %i.cl, -65
  br i1 %i.cm, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread81.i.i.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread.i.i.i.i

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.i: ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.peel
  br i1 %.not.i.i.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread.i.i.i.i, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread81.i.i.i.i

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread81.i.i.i.i: ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.i, %bb.aa, %.split.i.i.i.i.i
  br i1 %i.bz, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread81.i.i.i.i
  %i.cn = load i8, ptr %i.ca, align 1, !noalias !20 ; 3 uses
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsi5ihwcwNrfo_18build_script_build.exit15.thread.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cp = icmp samesign ugt i8 %i.cn, -33
  br i1 %i.cp, label %bb.ae, label %.loopexit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsi5ihwcwNrfo_18build_script_build.exit15.thread.i.i.i.i.i: ; preds = %bb.ac, %bb.n
  call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsi5ihwcwNrfo_18build_script_build(ptr nonnull align 8 @6) #18, !noalias !20
  unreachable

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ce, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsi5ihwcwNrfo_18build_script_build.exit17.thread.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = icmp samesign ugt i8 %i.cn, -17
  %.not498 = xor i1 %i.cq, true
  %.not499 = xor i1 %i.cg, true
  %brmerge = select i1 %.not498, i1 true, i1 %.not499
  br i1 %brmerge, label %.loopexit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsi5ihwcwNrfo_18build_script_build.exit19.thread.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsi5ihwcwNrfo_18build_script_build.exit17.thread.i.i.i.i.i: ; preds = %bb.ae, %bb.p
  call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsi5ihwcwNrfo_18build_script_build(ptr nonnull align 8 @7) #18, !noalias !20
  unreachable

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsi5ihwcwNrfo_18build_script_build.exit19.thread.i.i.i.i.i: ; preds = %bb.af, %bb.r
  call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsi5ihwcwNrfo_18build_script_build(ptr nonnull align 8 @8) #18, !noalias !20
  unreachable

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread.i.i.i.i: ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.i, %bb.aa, %.split.i.i.i.i.i, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.i.peel, %bb.l, %.split.i.i.i.i.i.peel
  %.lcssa476 = phi i64 [ %.sroa.2112.0.copyload, %.split.i.i.i.i.i.peel ], [ %.sroa.2112.0.copyload, %bb.l ], [ %.sroa.2112.0.copyload, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.i.peel ], [ %i.bv, %.split.i.i.i.i.i ], [ %i.bv, %bb.aa ], [ %i.bv, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.i.i.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr %.sroa.31121.0.copyload, i64 %.sroa.33.0.copyload, i64 %.lcssa476, i64 %.sroa.33.0.copyload, ptr nonnull align 8 @28) #21
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread.i.i.i.i
  unreachable

.loopexit483:                                     ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread81.i.i.i.i.peel
  br i1 %.sroa.6114.sroa.0.0.extract.trunc, label %.loopexit, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit483, %.preheader.i.i.i
  br label %.loopexit

bb.ag:                                            ; preds = %bb.y
  br i1 %i.ck, label %.lr.ph.i99.preheader, label %.loopexit

.lr.ph.i99.preheader:                             ; preds = %bb.ag
  %umax48.i100 = call i64 @llvm.umax.i64(i64 %.sroa.2112.0.copyload, i64 %.sroa.35.0.copyload)
  %i.cr = add i64 %.sroa.2112.0.copyload, -1      ; 2 uses
  %.first_iter = icmp ult i64 %i.cr, %.sroa.35.0.copyload
  %.first_iter.fr = freeze i1 %.first_iter
  %exitcond.not.i102438.not = icmp ult i64 %.sroa.2112.0.copyload, %.sroa.35.0.copyload
  %invariant.op497 = sub i64 1, %.sroa.2112.0.copyload
  %.not441 = icmp eq i64 %.sroa.2112.0.copyload, 0 ; 2 uses
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99.preheader, %bb.ai
  %i.cs = phi i64 [ %i.dd, %bb.ai ], [ %i.cj, %.lr.ph.i99.preheader ]
  %i.ct = phi i64 [ %i.dc, %bb.ai ], [ %.sroa.14.0.copyload, %.lr.ph.i99.preheader ] ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.31121.0.copyload, i64 %i.cs
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !21
  %i.cw = and i8 %i.cv, 63
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cy, %.sroa.12.0.copyload
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.ah, label %.preheader285.preheader

.preheader285.preheader:                          ; preds = %.lr.ph.i99
  br i1 %exitcond.not.i102438.not, label %.lr.ph445, label %.preheader.preheader

bb.ah:                                            ; preds = %.lr.ph.i99
  %i.db = add i64 %i.ct, %.sroa.35.0.copyload
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %bb.al, %bb.ah
  %i.dc = phi i64 [ %i.dv, %bb.ao ], [ %i.dm, %bb.al ], [ %i.db, %bb.ah ] ; 2 uses
  %i.dd = add i64 %i.dc, %i.ci                    ; 2 uses
  %i.de = icmp ult i64 %i.dd, %.sroa.33.0.copyload
  br i1 %i.de, label %.lr.ph.i99, label %.loopexit

.preheader285:                                    ; preds = %bb.am
  %i.df = add nuw i64 %.sroa.02.0.i101444, 1      ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %i.df, %umax48.i100
  br i1 %exitcond.not.i102, label %.preheader.preheader, label %.lr.ph445

.preheader.preheader:                             ; preds = %.preheader285, %.preheader285.preheader
  br i1 %.first_iter.fr, label %.lr.ph440, label %.preheader.preheader.split

.lr.ph440:                                        ; preds = %.preheader.preheader
  br i1 %.not441, label %.loopexit, label %bb.aj

.preheader:                                       ; preds = %bb.ak
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph440, %.preheader
  %.sroa.2.0.i105.us447 = phi i64 [ %0, %.preheader ], [ %.sroa.2112.0.copyload, %.lr.ph440 ]
  %0 = add i64 %.sroa.2.0.i105.us447, -1          ; 4 uses
  %i.dg = add i64 %0, %i.ct                       ; 3 uses
  %i.dh = icmp ult i64 %i.dg, %.sroa.33.0.copyload
  br i1 %i.dh, label %bb.ak, label %.invoke

bb.ak:                                            ; preds = %bb.aj
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.34.0.copyload, i64 %0
  %i.dj = load i8, ptr %i.di, align 1, !noalias !21
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.31121.0.copyload, i64 %i.dg
  %i.dl = load i8, ptr %i.dk, align 1, !noalias !21
  %.not.i106 = icmp eq i8 %i.dj, %i.dl
  br i1 %.not.i106, label %.preheader, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dm = add i64 %i.ct, %.sroa.6114.0.copyload
  br label %bb.ai

.preheader.preheader.split:                       ; preds = %.preheader.preheader
  br i1 %.not441, label %.loopexit, label %.invoke

.lr.ph445:                                        ; preds = %.preheader285.preheader, %.preheader285
  %.sroa.02.0.i101444 = phi i64 [ %i.df, %.preheader285 ], [ %.sroa.2112.0.copyload, %.preheader285.preheader ] ; 4 uses
  %1 = add i64 %.sroa.02.0.i101444, %i.ct         ; 2 uses
  %2 = icmp ult i64 %1, %.sroa.33.0.copyload
  br i1 %2, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph445
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.34.0.copyload, i64 %.sroa.02.0.i101444
  %i.do = load i8, ptr %i.dn, align 1, !noalias !21
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.31121.0.copyload, i64 %1
  %i.dq = load i8, ptr %i.dp, align 1, !noalias !21
  %.not21.i104 = icmp eq i8 %i.do, %i.dq
  br i1 %.not21.i104, label %.preheader285, label %bb.ao

bb.an:                                            ; preds = %.lr.ph445
  %i.dr = add i64 %i.ct, %.sroa.2112.0.copyload
  %umax.i103 = call i64 @llvm.umax.i64(i64 %.sroa.33.0.copyload, i64 %i.dr)
  br label %.invoke

.invoke:                                          ; preds = %bb.at, %.lr.ph436, %bb.aj, %.preheader.preheader.split, %bb.ax, %bb.an
  %i.ds = phi i64 [ %umax.i103, %bb.an ], [ %i.cr, %.preheader.preheader.split ], [ %i.dg, %bb.aj ], [ %umax.i, %bb.ax ], [ %i.eo, %.lr.ph436 ], [ %i.eq, %bb.at ]
  %i.dt = phi i64 [ %.sroa.33.0.copyload, %bb.an ], [ %.sroa.35.0.copyload, %.preheader.preheader.split ], [ %.sroa.33.0.copyload, %bb.aj ], [ %.sroa.33.0.copyload, %bb.ax ], [ %.sroa.35.0.copyload, %.lr.ph436 ], [ %.sroa.33.0.copyload, %bb.at ]
  %i.du = phi ptr [ @3, %bb.an ], [ @1, %.preheader.preheader.split ], [ @2, %bb.aj ], [ @3, %bb.ax ], [ @1, %.lr.ph436 ], [ @2, %bb.at ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.ds, i64 %i.dt, ptr nonnull align 8 %i.du) #21
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.ao:                                            ; preds = %bb.am
  %.reass396.reass = add i64 %i.ct, %invariant.op497
  %i.dv = add i64 %.reass396.reass, %.sroa.02.0.i101444
  br label %bb.ai

bb.ap:                                            ; preds = %bb.y
  br i1 %i.ck, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.ap
  %i.dw = sub i64 %.sroa.35.0.copyload, %.sroa.6114.0.copyload
  %invariant.op = sub i64 1, %.sroa.2112.0.copyload
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.sink.split.i
  %.sroa.26118.0 = phi i64 [ %.sink.i, %.sink.split.i ], [ %.sroa.26118.0.copyload, %.lr.ph.i.preheader ] ; 3 uses
  %i.dx = phi i64 [ %i.eh, %.sink.split.i ], [ %i.cj, %.lr.ph.i.preheader ]
  %i.dy = phi i64 [ %.ph.i, %.sink.split.i ], [ %.sroa.14.0.copyload, %.lr.ph.i.preheader ] ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.31121.0.copyload, i64 %i.dx
  %i.ea = load i8, ptr %i.dz, align 1, !noalias !22
  %i.eb = and i8 %i.ea, 63
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = and i64 %i.ed, %.sroa.12.0.copyload
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i
  %i.eg = add i64 %i.dy, %.sroa.35.0.copyload
  br label %.sink.split.i

bb.ar:                                            ; preds = %.lr.ph.i
  %.sroa.0.0.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %.sroa.26118.0, i64 %.sroa.2112.0.copyload) ; 4 uses
  %umax48.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.sroa.speculated.i.i, i64 %.sroa.35.0.copyload)
  %exitcond.not.i433.not = icmp ult i64 %.sroa.0.0.sroa.speculated.i.i, %.sroa.35.0.copyload
  br i1 %exitcond.not.i433.not, label %.lr.ph, label %.preheader242.preheader

.sink.split.i:                                    ; preds = %bb.ay, %bb.av, %bb.aq
  %.sink.i = phi i64 [ 0, %bb.ay ], [ %i.dw, %bb.av ], [ 0, %bb.aq ]
  %.ph.i = phi i64 [ %i.fc, %bb.ay ], [ %i.ew, %bb.av ], [ %i.eg, %bb.aq ] ; 2 uses
  %i.eh = add i64 %.ph.i, %i.ci                   ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %.sroa.33.0.copyload
  br i1 %i.ei, label %.lr.ph.i, label %.loopexit

bb.as:                                            ; preds = %bb.aw
  %i.ej = add nuw i64 %.sroa.02.0.i434, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ej, %umax48.i
  br i1 %exitcond.not.i, label %.preheader242.preheader, label %.lr.ph

.preheader242.preheader:                          ; preds = %bb.as, %bb.ar
  %i.ek = icmp ult i64 %.sroa.26118.0, %.sroa.2112.0.copyload
  br i1 %i.ek, label %.lr.ph436, label %.loopexit

.lr.ph:                                           ; preds = %bb.ar, %bb.as
  %.sroa.02.0.i434 = phi i64 [ %i.ej, %bb.as ], [ %.sroa.0.0.sroa.speculated.i.i, %bb.ar ] ; 4 uses
  %i.el = add i64 %.sroa.02.0.i434, %i.dy         ; 2 uses
  %i.em = icmp ult i64 %i.el, %.sroa.33.0.copyload
  br i1 %i.em, label %bb.aw, label %bb.ax

.preheader242:                                    ; preds = %bb.au
  %i.en = icmp ult i64 %.sroa.26118.0, %i.eo
  br i1 %i.en, label %.lr.ph436, label %.loopexit

.lr.ph436:                                        ; preds = %.preheader242.preheader, %.preheader242
  %.sroa.2.0.i435 = phi i64 [ %i.eo, %.preheader242 ], [ %.sroa.2112.0.copyload, %.preheader242.preheader ]
  %i.eo = add i64 %.sroa.2.0.i435, -1             ; 6 uses
  %i.ep = icmp ult i64 %i.eo, %.sroa.35.0.copyload
  br i1 %i.ep, label %bb.at, label %.invoke

bb.at:                                            ; preds = %.lr.ph436
  %i.eq = add i64 %i.eo, %i.dy                    ; 3 uses
  %i.er = icmp ult i64 %i.eq, %.sroa.33.0.copyload
  br i1 %i.er, label %bb.au, label %.invoke

bb.au:                                            ; preds = %bb.at
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.34.0.copyload, i64 %i.eo
  %i.et = load i8, ptr %i.es, align 1, !noalias !22
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.31121.0.copyload, i64 %i.eq
  %i.ev = load i8, ptr %i.eu, align 1, !noalias !22
  %.not.i92 = icmp eq i8 %i.et, %i.ev
  br i1 %.not.i92, label %.preheader242, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ew = add i64 %i.dy, %.sroa.6114.0.copyload
  br label %.sink.split.i

bb.aw:                                            ; preds = %.lr.ph
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.34.0.copyload, i64 %.sroa.02.0.i434
  %i.ey = load i8, ptr %i.ex, align 1, !noalias !22
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.31121.0.copyload, i64 %i.el
  %i.fa = load i8, ptr %i.ez, align 1, !noalias !22
  %.not21.i = icmp eq i8 %i.ey, %i.fa
  br i1 %.not21.i, label %bb.as, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph
  %i.fb = add i64 %i.dy, %.sroa.0.0.sroa.speculated.i.i
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.33.0.copyload, i64 %i.fb)
  br label %.invoke

bb.ay:                                            ; preds = %bb.aw
  %.reass.reass = add i64 %i.dy, %invariant.op
  %i.fc = add i64 %.reass.reass, %.sroa.02.0.i434
  br label %.sink.split.i

.loopexit:                                        ; preds = %bb.af, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread81.i.i.i.i, %bb.u, %bb.ad, %bb.ab, %.sink.split.i, %.preheader242.preheader, %.preheader242, %bb.ai, %.lr.ph440, %.preheader, %.preheader.preheader.split, %.loopexit483, %bb.ap, %.loopexit.i.i.i, %bb.ag
  %.sroa.4.0.i.i = phi i64 [ %.sroa.33.0.copyload, %.loopexit483 ], [ %i.dy, %.preheader242 ], [ %.val23, %bb.ag ], [ %i.ct, %.preheader ], [ %.val23, %bb.ap ], [ %i.ct, %.lr.ph440 ], [ %.sroa.33.0.copyload, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsi5ihwcwNrfo_18build_script_build.exit.thread81.i.i.i.i ], [ %.val23, %.loopexit.i.i.i ], [ %i.ct, %.preheader.preheader.split ], [ %i.dy, %.preheader242.preheader ], [ %.val23, %bb.ai ], [ %.val23, %.sink.split.i ], [ %.sroa.2112.0.copyload, %bb.u ], [ %i.bv, %bb.ad ], [ %i.bv, %bb.af ], [ %i.bv, %bb.ab ]
  %.val18 = load ptr, ptr %i.o, align 8
  %.val19 = load i64, ptr %i.p, align 8
  %.not.i = icmp eq ptr %.sroa.31121.0.copyload, null ; 2 uses
  %..i = select i1 %.not.i, ptr %.val18, ptr %.sroa.31121.0.copyload ; 27 uses
  %.5.i = select i1 %.not.i, i64 %.val19, i64 %.sroa.4.0.i.i ; 5 uses
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env4__var(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull @11, i64 21)
          to label %bb.az unwind label %bb.f

bb.az:                                            ; preds = %.loopexit
  %i.fd = load i64, ptr %i.c, align 8, !noalias !23
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ff = trunc nuw i64 %i.fd to i1
  br i1 %i.ff, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.fg = call align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 24, i64 8) #18 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.bb, label %bb.bu

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 8, i64 24) #21
          to label %.noexc.i.i27 unwind label %bb.bc

.noexc.i.i27:                                     ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env8VarErrorECsi5ihwcwNrfo_18build_script_build(ptr nonnull align 8 %i.a) #20
          to label %.body unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.be:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  switch i64 %.5.i, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit76.thread.thread352 [
    i64 7, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit31
    i64 4, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit34
    i64 6, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit37
    i64 11, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit43
    i64 9, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit46
    i64 8, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit49
    i64 13, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit52
    i64 5, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit64
    i64 10, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit76
  ]

bb.bf:                                            ; preds = %bb.bp, %bb.bm, %bb.bk, %bb.bi, %bb.bh
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsi5ihwcwNrfo_18build_script_build(ptr align 8 %i.d) #20
          to label %.body unwind label %bb.bt

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit31: ; preds = %bb.be
  %i.fl = load i32, ptr %..i, align 1
  %i.fm = xor i32 %i.fl, 1986884193
  %i.fn = getelementptr i8, ptr %..i, i64 3
  %i.fo = load i32, ptr %i.fn, align 1
  %i.fp = xor i32 %i.fo, 1702114678
  %i.fq = or i32 %i.fm, %i.fp
  %i.fr = icmp ne i32 %i.fq, 0
  %i.fs = zext i1 %i.fr to i32
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit79.thread, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit40

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit34: ; preds = %bb.be
  %i.fu = load i32, ptr %..i, align 1
  %i.fv = icmp ne i32 %i.fu, 1936746861
  %i.fw = zext i1 %i.fv to i32
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit79.thread, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit76.thread.thread352

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit37: ; preds = %bb.be
  %i.fy = load i32, ptr %..i, align 1
  %i.fz = xor i32 %i.fy, 1936746861
  %i.ga = getelementptr i8, ptr %..i, i64 4
  %i.gb = load i16, ptr %i.ga, align 1
  %i.gc = zext i16 %i.gb to i32
  %i.gd = xor i32 %i.gc, 27749
  %i.ge = or i32 %i.fz, %i.gd
  %i.gf = icmp ne i32 %i.ge, 0
  %i.gg = zext i1 %i.gf to i32
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit79.thread, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit61

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit40: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit31
  %i.gi = load i32, ptr %..i, align 1
  %i.gj = xor i32 %i.gi, 1702326128
  %i.gk = getelementptr i8, ptr %..i, i64 3
  %i.gl = load i32, ptr %i.gk, align 1
  %i.gm = xor i32 %i.gl, 1668313701
  %i.gn = or i32 %i.gj, %i.gm
  %i.go = icmp ne i32 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit79.thread, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit76.thread.thread352

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit43: ; preds = %bb.be
  %i.gr = load i64, ptr %..i, align 1
  %i.gs = xor i64 %i.gr, 7580177706385631602
  %i.gt = getelementptr i8, ptr %..i, i64 3
  %i.gu = load i64, ptr %i.gt, align 1
  %i.gv = xor i64 %i.gu, 7161125181077026403
  %i.gw = or i64 %i.gs, %i.gv
  %i.gx = icmp ne i64 %i.gw, 0
  %i.gy = zext i1 %i.gx to i32
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit79.thread, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit76.thread.thread352

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit46: ; preds = %bb.be
  %i.ha = load i64, ptr %..i, align 1
  %i.hb = xor i64 %i.ha, 7293428286665091188
  %i.hc = getelementptr i8, ptr %..i, i64 8
  %i.hd = load i8, ptr %i.hc, align 1
  %i.he = zext i8 %i.hd to i64
  %i.hf = xor i64 %i.he, 109
  %i.hg = or i64 %i.hb, %i.hf
  %i.hh = icmp ne i64 %i.hg, 0
  %i.hi = zext i1 %i.hh to i32
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit79.thread, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit76.thread.thread352

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit49: ; preds = %bb.be
  %i.hk = load i64, ptr %..i, align 1
  %i.hl = icmp ne i64 %i.hk, 7869889038968514676
  %i.hm = zext i1 %i.hl to i32
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit79.thread, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit58

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit52: ; preds = %bb.be
  %i.ho = load i64, ptr %..i, align 1
  %i.hp = xor i64 %i.ho, 7870170513945225332
  %i.hq = getelementptr i8, ptr %..i, i64 5
  %i.hr = load i64, ptr %i.hq, align 1
  %i.hs = xor i64 %i.hr, 7310293694466046070
  %i.ht = or i64 %i.hp, %i.hs
  %i.hu = icmp ne i64 %i.ht, 0
  %i.hv = zext i1 %i.hu to i32
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit79.thread, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit55

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit55: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit52
  %i.hx = load i64, ptr %..i, align 1
  %i.hy = xor i64 %i.hx, 7870170513945225332
  %i.hz = getelementptr i8, ptr %..i, i64 5
  %i.ia = load i64, ptr %i.hz, align 1
  %i.ib = xor i64 %i.ia, 7955997338284931190
  %i.ic = or i64 %i.hy, %i.ib
  %i.id = icmp ne i64 %i.ic, 0
  %i.ie = zext i1 %i.id to i32
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit79.thread, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit76.thread.thread352

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit58: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit49
  %i.ig = load i64, ptr %..i, align 1
  %i.ih = icmp ne i64 %i.ig, 8230177009023414881
  %i.ii = zext i1 %i.ih to i32
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit79.thread, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit73

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit61: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit37
  %i.ik = load i32, ptr %..i, align 1
  %i.il = xor i32 %i.ik, 1986884193
  %i.im = getelementptr i8, ptr %..i, i64 4
  %i.in = load i16, ptr %i.im, align 1
  %i.io = zext i16 %i.in to i32
  %i.ip = xor i32 %i.io, 29239
  %i.iq = or i32 %i.il, %i.ip
  %i.ir = icmp ne i32 %i.iq, 0
  %i.is = zext i1 %i.ir to i32
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit79.thread, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit67

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit64: ; preds = %bb.be
  %i.iu = load i32, ptr %..i, align 1
  %i.iv = xor i32 %i.iu, 1986884193
  %i.iw = getelementptr i8, ptr %..i, i64 4
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = zext i8 %i.ix to i32
  %i.iz = xor i32 %i.iy, 55
  %i.ja = or i32 %i.iv, %i.iz
  %i.jb = icmp ne i32 %i.ja, 0
  %i.jc = zext i1 %i.jb to i32
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit79.thread, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit76.thread.thread352

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit67: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit61
  %bcmp.i66 = call i32 @bcmp(ptr nonnull readonly %..i, ptr nonnull @12, i64 %.5.i)
  %i.je = icmp eq i32 %bcmp.i66, 0
  br i1 %i.je, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit79.thread, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit70

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit70: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsi5ihwcwNrfo_18build_script_build.exit67
end_hunk_0
