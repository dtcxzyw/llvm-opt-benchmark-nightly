Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ptx-f695fb62d915b013.uu_ptx.c0c590d8fc0ebb31-cgu.0?download=true
inline.NumInlined: 1812
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvCsgy7pbN39oAf_6uu_ptx15create_word_set:bb.a
  %i.gs = load i16, ptr %i.s, align 1
  %i.gt = load i16, ptr %i.ge, align 1
  %i.gu = xor i16 %i.gs, %i.gt
  %i.gv = getelementptr i8, ptr %i.s, i64 2
  %i.gw = getelementptr i8, ptr %i.ge, i64 2
  %i.gx = load i8, ptr %i.gv, align 1
  %i.gy = load i8, ptr %i.gw, align 1
  %i.gz = zext i8 %i.gx to i16
  %i.ha = zext i8 %i.gy to i16
  %i.hb = xor i16 %i.gz, %i.ha
  %i.hc = or i16 %i.gu, %i.hb
  %i.hd = icmp ne i16 %i.hc, 0
  %i.he = zext i1 %i.hd to i32
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit80, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit: ; preds = %bb.ak, %_RNvXCsgy7pbN39oAf_6uu_ptxNtB2_6ConfigNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ge, i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1816
  br label %bb.ap

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit80: ; preds = %bb.ak
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ge, i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1817
  %i.hg = load ptr, ptr %i.cz, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.hh = load i64, ptr %i.db, align 8, !noundef !7 ; 4 uses
  %i.hi = icmp ult i64 %.sroa.419.i.sink.i.sroa.speculated, %.pre-phi
  %i.hj = icmp ugt i64 %.sroa.419.i.sink.i.sroa.speculated, %i.hh
  %or.cond.i58 = or i1 %i.hi, %i.hj
  br i1 %or.cond.i58, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread349, label %bb.al, !prof !29

bb.al:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit80
  %i.hk = icmp eq i64 %i.hh, %.pre-phi
  br i1 %i.hk, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hl = icmp eq ptr %.sroa.8.2.ph.ph.i, null
  br i1 %i.hl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.ao, %bb.am
  %i.hm = icmp eq i64 %.sroa.419.i.sink.i.sroa.speculated, %i.hh
  br i1 %i.hm, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60

bb.ao:                                            ; preds = %bb.am
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.pre-phi
  %i.ho = load i8, ptr %i.hn, align 1, !alias.scope !1818, !noundef !7
  %i.hp = icmp sgt i8 %i.ho, -65
  br i1 %i.hp, label %bb.an, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread349, !prof !30

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60: ; preds = %bb.an
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sroa.419.i.sink.i.sroa.speculated
  %i.hr = load i8, ptr %i.hq, align 1, !alias.scope !1818, !noundef !7
  %i.hs = icmp sgt i8 %i.hr, -65
  br i1 %i.hs, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread349, !prof !27

bb.ap:                                            ; preds = %bb.au, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit
  %.sroa.051.0 = phi i64 [ %i.jr, %bb.au ], [ %.pre-phi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit ] ; 13 uses
  br i1 %i.bb, label %bb.ba, label %bb.av

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread349: ; preds = %bb.ao, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit80, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hg, i64 noundef %i.hh, i64 noundef %.pre-phi, i64 noundef %.sroa.419.i.sink.i.sroa.speculated, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #27
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread: ; preds = %bb.an, %bb.al, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sroa.419.i.sink.i.sroa.speculated ; 4 uses
  %i.hu = icmp eq i64 %.sroa.419.i.sink.i.sroa.speculated, %.pre-phi
  br i1 %i.hu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.backedge, label %.lr.ph.i.i.i.preheader

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.backedge: ; preds = %bb.at, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread, %bb.bm, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104, %bb.ba
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.pre-phi
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.at
  %i.hw = phi i64 [ %i.jl, %bb.at ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.hx = phi ptr [ %i.jh, %bb.at ], [ %i.hv, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 1 ; 3 uses
  %i.ia = load i8, ptr %i.hx, align 1, !alias.scope !1819, !noalias !1820, !noundef !7 ; 5 uses
  %i.ib = icmp sgt i8 %i.ia, -1
  br i1 %i.ib, label %bb.aq, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ic = and i8 %i.ia, 31
  %i.id = zext nneg i8 %i.ic to i32               ; 3 uses
  %i.ie = icmp ne ptr %i.hz, %i.ht
  call void @llvm.assume(i1 %i.ie)
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 2 ; 3 uses
  %i.ig = load i8, ptr %i.hz, align 1, !alias.scope !1819, !noalias !1820, !noundef !7
  %i.ih = shl nuw nsw i32 %i.id, 6
  %i.ii = and i8 %i.ig, 63
  %i.ij = zext nneg i8 %i.ii to i32               ; 2 uses
  %i.ik = or disjoint i32 %i.ih, %i.ij
  %i.il = icmp samesign ugt i8 %i.ia, -33
  br i1 %i.il, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i.i.i
  %i.im = zext nneg i8 %i.ia to i32
  br label %bb.ar

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i
  %i.in = icmp ne ptr %i.if, %i.ht
  call void @llvm.assume(i1 %i.in)
  %i.io = getelementptr inbounds nuw i8, ptr %i.hx, i64 3 ; 3 uses
  %i.ip = load i8, ptr %i.if, align 1, !alias.scope !1819, !noalias !1820, !noundef !7
  %i.iq = shl nuw nsw i32 %i.ij, 6
  %i.ir = and i8 %i.ip, 63
  %i.is = zext nneg i8 %i.ir to i32
  %i.it = or disjoint i32 %i.iq, %i.is            ; 2 uses
  %i.iu = shl nuw nsw i32 %i.id, 12
  %i.iv = or disjoint i32 %i.it, %i.iu
  %i.iw = icmp samesign ugt i8 %i.ia, -17
  br i1 %i.iw, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i, label %bb.ar

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i
  %i.ix = icmp ne ptr %i.io, %i.ht
  call void @llvm.assume(i1 %i.ix)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.iz = load i8, ptr %i.io, align 1, !alias.scope !1819, !noalias !1820, !noundef !7
  %i.ja = shl nuw nsw i32 %i.id, 18
  %i.jb = and i32 %i.ja, 1835008
  %i.jc = shl nuw nsw i32 %i.it, 6
  %i.jd = and i8 %i.iz, 63
  %i.je = zext nneg i8 %i.jd to i32
  %i.jf = or disjoint i32 %i.jc, %i.je
  %i.jg = or disjoint i32 %i.jf, %i.jb
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i, %bb.aq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i
  %i.jh = phi ptr [ %i.io, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i ], [ %i.iy, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i ], [ %i.if, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i ], [ %i.hz, %bb.aq ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.iv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i ], [ %i.jg, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i ], [ %i.ik, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i ], [ %i.im, %bb.aq ] ; 4 uses
  %i.ji = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ji)
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.hw, %i.hy
  %i.jl = add i64 %i.jk, %i.jj
  %i.jm = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 2097119
  %i.jn = add nsw i32 %i.jm, -65
  %or.cond3.i.i.i.i.i.i = icmp ult i32 %i.jn, 26
  br i1 %or.cond3.i.i.i.i.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 170
  br i1 %i.jo, label %bb.at, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNCNvCsgy7pbN39oAf_6uu_ptx15create_word_set0NtB5_11MultiCharEq7matchesBI_.exit.i.i.i.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNCNvCsgy7pbN39oAf_6uu_ptx15create_word_set0NtB5_11MultiCharEq7matchesBI_.exit.i.i.i.i: ; preds = %bb.as
  %i.jp = call noundef zeroext i1 @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i.i.i.i.i) #31, !noalias !1821
  br i1 %i.jp, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNCNvCsgy7pbN39oAf_6uu_ptx15create_word_set0NtB5_11MultiCharEq7matchesBI_.exit.i.i.i.i, %bb.as
  %i.jq = icmp eq ptr %i.jh, %i.ht
  br i1 %i.jq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.backedge, label %.lr.ph.i.i.i

bb.au:                                            ; preds = %bb.ar, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNCNvCsgy7pbN39oAf_6uu_ptx15create_word_set0NtB5_11MultiCharEq7matchesBI_.exit.i.i.i.i
  %i.jr = add i64 %i.hw, %.pre-phi
  br label %bb.ap

bb.av:                                            ; preds = %bb.ba, %bb.ap
  %i.js = load ptr, ptr %i.cz, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.jt = load i64, ptr %i.db, align 8, !noundef !7 ; 4 uses
  %i.ju = icmp ugt i64 %.sroa.051.0, %.sroa.419.i.sink.i.sroa.speculated
  %i.jv = icmp ugt i64 %.sroa.419.i.sink.i.sroa.speculated, %i.jt
  %or.cond.i = or i1 %i.ju, %i.jv
  br i1 %or.cond.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread354, label %bb.aw, !prof !29

bb.aw:                                            ; preds = %bb.av
  %i.jw = icmp eq i64 %.sroa.051.0, %i.jt
  br i1 %i.jw, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jx = icmp eq i64 %.sroa.051.0, 0
  br i1 %i.jx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %i.jy = icmp eq i64 %.sroa.419.i.sink.i.sroa.speculated, %i.jt
  br i1 %i.jy, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit

bb.az:                                            ; preds = %bb.ax
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 %.sroa.051.0
  %i.ka = load i8, ptr %i.jz, align 1, !alias.scope !1822, !noundef !7
  %i.kb = icmp sgt i8 %i.ka, -65
  br i1 %i.kb, label %bb.ay, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread354, !prof !30

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit: ; preds = %bb.ay
  %i.kc = getelementptr inbounds nuw i8, ptr %i.js, i64 %.sroa.419.i.sink.i.sroa.speculated
  %i.kd = load i8, ptr %i.kc, align 1, !alias.scope !1822, !noundef !7
  %i.ke = icmp sgt i8 %i.kd, -65
  br i1 %i.ke, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread354, !prof !27

bb.ba:                                            ; preds = %bb.ap
  %i.kf = icmp eq i64 %.sroa.051.0, %.sroa.049.0
  %i.kg = icmp eq i64 %.sroa.419.i.sink.i.sroa.speculated, %.sroa.050.0
  %or.cond = and i1 %i.kg, %i.kf
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.backedge, label %bb.av

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread354: ; preds = %bb.az, %bb.av, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.js, i64 noundef %i.jt, i64 noundef %.sroa.051.0, i64 noundef %.sroa.419.i.sink.i.sroa.speculated, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #27
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread: ; preds = %bb.ay, %bb.aw, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit
  %i.kh = sub nuw i64 %.sroa.419.i.sink.i.sroa.speculated, %.sroa.051.0 ; 24 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.js, i64 %.sroa.051.0
  %.not.i81 = icmp slt i64 %i.kh, 0
  br i1 %.not.i81, label %bb.bc, label %bb.bb, !prof !13

bb.bb:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread
  %i.kj = icmp eq i64 %i.kh, 0                    ; 3 uses
  br i1 %i.kj, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread361, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.bb
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1823
  %i.kk = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.kh, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1823 ; 3 uses
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4271.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4271.0.ph, i64 %i.kh) #30
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread361: ; preds = %bb.bb, %bb.bd
  %i.km = phi ptr [ %i.kk, %bb.bd ], [ inttoptr (i64 1 to ptr), %bb.bb ] ; 14 uses
  br i1 %i.be, label %bb.be, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit

bb.bd:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kk, ptr nonnull align 1 %i.ki, i64 %i.kh, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread361

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread361
  br i1 %brmerge.not, label %bb.bn, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread

bb.be:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread361
  br i1 %i.bi, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kn = and i64 %i.kh, 7                        ; 7 uses
  %i.ko = and i64 %i.kh, 9223372036854775800      ; 2 uses
  %.not373 = icmp eq i64 %i.ko, 0
  br i1 %.not373, label %._crit_edge.i164, label %.lr.ph.i157

._crit_edge.i164.loopexit:                        ; preds = %.lr.ph.i157
  %i.kp = and i64 %i.kh, 9223372036854775800
  br label %._crit_edge.i164

._crit_edge.i164:                                 ; preds = %._crit_edge.i164.loopexit, %bb.bf
  %.sroa.32294.4 = phi i64 [ %i.bo, %bb.bf ], [ %i.lv, %._crit_edge.i164.loopexit ] ; 4 uses
  %.sroa.22289.4 = phi i64 [ %i.bm, %bb.bf ], [ %i.lt, %._crit_edge.i164.loopexit ] ; 6 uses
  %.sroa.12.4 = phi i64 [ %i.bn, %bb.bf ], [ %i.lw, %._crit_edge.i164.loopexit ] ; 4 uses
  %.sroa.0280.4 = phi i64 [ %i.bl, %bb.bf ], [ %i.lx, %._crit_edge.i164.loopexit ] ; 4 uses
  %.sroa.0.1.lcssa.i147 = phi i64 [ 0, %bb.bf ], [ %i.kp, %._crit_edge.i164.loopexit ] ; 3 uses
  %i.kq = icmp samesign ugt i64 %i.kn, 3
  br i1 %i.kq, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %._crit_edge.i164
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sroa.0.1.lcssa.i147
  %.sroa.014.0.copyload.i16.i156 = load i32, ptr %i.kr, align 1, !alias.scope !1824, !noalias !1825
  %i.ks = zext i32 %.sroa.014.0.copyload.i16.i156 to i64
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %._crit_edge.i164
  %.sroa.03.0.i10.i148 = phi i64 [ 4, %bb.bg ], [ 0, %._crit_edge.i164 ] ; 5 uses
  %.sroa.0.0.i11.i149 = phi i64 [ %i.ks, %bb.bg ], [ 0, %._crit_edge.i164 ] ; 2 uses
  %i.kt = or disjoint i64 %.sroa.03.0.i10.i148, 1
  %i.ku = icmp samesign ult i64 %i.kt, %i.kn
  br i1 %i.ku, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.kv = getelementptr i8, ptr %i.km, i64 %.sroa.0.1.lcssa.i147
  %i.kw = getelementptr i8, ptr %i.kv, i64 %.sroa.03.0.i10.i148
  %.sroa.015.0.copyload.i15.i155 = load i16, ptr %i.kw, align 1, !alias.scope !1824, !noalias !1825
  %i.kx = zext i16 %.sroa.015.0.copyload.i15.i155 to i64
  %i.ky = shl nuw nsw i64 %.sroa.03.0.i10.i148, 3
  %i.kz = shl nuw nsw i64 %i.kx, %i.ky
  %i.la = or i64 %i.kz, %.sroa.0.0.i11.i149
  %i.lb = or disjoint i64 %.sroa.03.0.i10.i148, 2
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.03.1.i12.i150 = phi i64 [ %i.lb, %bb.bi ], [ %.sroa.03.0.i10.i148, %bb.bh ] ; 3 uses
  %.sroa.0.1.i13.i151 = phi i64 [ %i.la, %bb.bi ], [ %.sroa.0.0.i11.i149, %bb.bh ] ; 2 uses
  %i.lc = icmp samesign ult i64 %.sroa.03.1.i12.i150, %i.kn
  br i1 %i.lc, label %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166

.lr.ph.i157:                                      ; preds = %bb.bf, %.lr.ph.i157
  %i.ld = phi i64 [ %i.lw, %.lr.ph.i157 ], [ %i.bn, %bb.bf ]
  %i.le = phi i64 [ %i.lt, %.lr.ph.i157 ], [ %i.bm, %bb.bf ] ; 3 uses
  %i.lf = phi i64 [ %i.lv, %.lr.ph.i157 ], [ %i.bo, %bb.bf ]
  %.sroa.0.118.i162 = phi i64 [ %i.ly, %.lr.ph.i157 ], [ 0, %bb.bf ] ; 2 uses
  %i.lg = phi i64 [ %i.lx, %.lr.ph.i157 ], [ %i.bl, %bb.bf ]
  %i.lh = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sroa.0.118.i162
  %.sroa.07.0.copyload.i163 = load i64, ptr %i.lh, align 1, !alias.scope !1826, !noalias !1825 ; 2 uses
  %i.li = xor i64 %.sroa.07.0.copyload.i163, %i.lf ; 3 uses
  %i.lj = add i64 %i.lg, %i.le                    ; 3 uses
  %i.lk = add i64 %i.li, %i.ld                    ; 2 uses
  %i.ll = call noundef i64 @llvm.fshl.i64(i64 %i.le, i64 %i.le, i64 13)
  %i.lm = xor i64 %i.lj, %i.ll                    ; 3 uses
  %i.ln = call noundef i64 @llvm.fshl.i64(i64 %i.li, i64 %i.li, i64 16)
  %i.lo = xor i64 %i.lk, %i.ln                    ; 3 uses
  %i.lp = call noundef i64 @llvm.fshl.i64(i64 %i.lj, i64 %i.lj, i64 32)
  %i.lq = add i64 %i.lk, %i.lm                    ; 3 uses
  %i.lr = add i64 %i.lo, %i.lp                    ; 2 uses
  %i.ls = call noundef i64 @llvm.fshl.i64(i64 %i.lm, i64 %i.lm, i64 17)
  %i.lt = xor i64 %i.lq, %i.ls                    ; 2 uses
  %i.lu = call noundef i64 @llvm.fshl.i64(i64 %i.lo, i64 %i.lo, i64 21)
  %i.lv = xor i64 %i.lu, %i.lr                    ; 2 uses
  %i.lw = call noundef i64 @llvm.fshl.i64(i64 %i.lq, i64 %i.lq, i64 32) ; 2 uses
  %i.lx = xor i64 %i.lr, %.sroa.07.0.copyload.i163 ; 2 uses
  %i.ly = add nuw nsw i64 %.sroa.0.118.i162, 8    ; 2 uses
  %i.lz = icmp samesign ult i64 %i.ly, %i.ko
  br i1 %i.lz, label %.lr.ph.i157, label %._crit_edge.i164.loopexit

_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166: ; preds = %bb.bj
  %4 = icmp eq i64 %i.kn, 0
  br i1 %4, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166.a

_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166.a: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166
  %5 = shl nuw nsw i64 %i.kn, 3
  %6 = shl nuw nsw i64 255, %5
  %7 = or i64 %6, %.sroa.0.1.i13.i151
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit

_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.bj
  %8 = add nuw nsw i64 %.sroa.03.1.i12.i150, %.sroa.0.1.lcssa.i147 ; 2 uses
  %9 = icmp samesign ult i64 %8, %i.kh
  call void @llvm.assume(i1 %9), !noalias !1827
  %10 = getelementptr inbounds nuw i8, ptr %i.km, i64 %8
  %11 = load i8, ptr %10, align 1, !alias.scope !1824, !noalias !1825, !noundef !7
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %.sroa.03.1.i12.i150, 3
  %14 = shl nuw nsw i64 %12, %13
  %i.ma = shl nuw nsw i64 %i.kn, 3
  %i.mb = shl nuw i64 255, %i.ma
  %15 = or i64 %14, %i.mb
  %i.mc = or i64 %15, %.sroa.0.1.i13.i151         ; 3 uses
  %.not374 = icmp eq i64 %i.kn, 7
  br i1 %.not374, label %.thread, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit

.thread:                                          ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i
  %i.md = xor i64 %i.mc, %.sroa.32294.4           ; 3 uses
  %i.me = add i64 %.sroa.0280.4, %.sroa.22289.4   ; 3 uses
  %i.mf = add i64 %i.md, %.sroa.12.4              ; 2 uses
  %i.mg = call noundef i64 @llvm.fshl.i64(i64 %.sroa.22289.4, i64 %.sroa.22289.4, i64 13)
  %i.mh = xor i64 %i.me, %i.mg                    ; 3 uses
  %i.mi = call noundef i64 @llvm.fshl.i64(i64 %i.md, i64 %i.md, i64 16)
  %i.mj = xor i64 %i.mf, %i.mi                    ; 3 uses
  %i.mk = call noundef i64 @llvm.fshl.i64(i64 %i.me, i64 %i.me, i64 32)
  %i.ml = add i64 %i.mf, %i.mh                    ; 3 uses
  %i.mm = add i64 %i.mj, %i.mk                    ; 2 uses
  %i.mn = call noundef i64 @llvm.fshl.i64(i64 %i.mh, i64 %i.mh, i64 17)
  %i.mo = xor i64 %i.ml, %i.mn
  %i.mp = call noundef i64 @llvm.fshl.i64(i64 %i.mj, i64 %i.mj, i64 21)
  %i.mq = xor i64 %i.mp, %i.mm
  %i.mr = call noundef i64 @llvm.fshl.i64(i64 %i.ml, i64 %i.ml, i64 32)
  %i.ms = xor i64 %i.mm, %i.mc
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit

_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166, %.thread, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166.a, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i
  %.sroa.50.0 = phi i64 [ %i.mc, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i ], [ %7, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166.a ], [ 0, %.thread ], [ 255, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166 ]
  %.sroa.32294.2 = phi i64 [ %.sroa.32294.4, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.32294.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166.a ], [ %i.mq, %.thread ], [ %.sroa.32294.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166 ]
  %.sroa.22289.2 = phi i64 [ %.sroa.22289.4, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.22289.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166.a ], [ %i.mo, %.thread ], [ %.sroa.22289.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166 ] ; 3 uses
  %.sroa.12.2 = phi i64 [ %.sroa.12.4, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.12.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166.a ], [ %i.mr, %.thread ], [ %.sroa.12.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166 ]
  %.sroa.0280.2 = phi i64 [ %.sroa.0280.4, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.0280.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166.a ], [ %i.ms, %.thread ], [ %.sroa.0280.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166 ]
  %16 = shl i64 %i.kh, 56
  %17 = add i64 %16, 72057594037927936
  %i.mt = or i64 %17, %.sroa.50.0                 ; 2 uses
  %i.mu = xor i64 %i.mt, %.sroa.32294.2           ; 3 uses
  %i.mv = add i64 %.sroa.0280.2, %.sroa.22289.2   ; 3 uses
  %i.mw = add i64 %.sroa.12.2, %i.mu              ; 2 uses
  %i.mx = call noundef i64 @llvm.fshl.i64(i64 %.sroa.22289.2, i64 %.sroa.22289.2, i64 13)
  %i.my = xor i64 %i.mv, %i.mx                    ; 3 uses
  %i.mz = call noundef i64 @llvm.fshl.i64(i64 %i.mu, i64 %i.mu, i64 16)
  %i.na = xor i64 %i.mw, %i.mz                    ; 3 uses
  %i.nb = call noundef i64 @llvm.fshl.i64(i64 %i.mv, i64 %i.mv, i64 32)
  %i.nc = add i64 %i.my, %i.mw                    ; 3 uses
  %i.nd = add i64 %i.nb, %i.na                    ; 2 uses
  %i.ne = call noundef i64 @llvm.fshl.i64(i64 %i.my, i64 %i.my, i64 17)
  %i.nf = xor i64 %i.nc, %i.ne                    ; 3 uses
  %i.ng = call noundef i64 @llvm.fshl.i64(i64 %i.na, i64 %i.na, i64 21)
  %i.nh = xor i64 %i.nd, %i.ng                    ; 3 uses
  %i.ni = call noundef i64 @llvm.fshl.i64(i64 %i.nc, i64 %i.nc, i64 32)
  %i.nj = xor i64 %i.nd, %i.mt
  %i.nk = xor i64 %i.ni, 255
  %i.nl = add i64 %i.nj, %i.nf                    ; 3 uses
  %i.nm = add i64 %i.nk, %i.nh                    ; 2 uses
  %i.nn = call noundef i64 @llvm.fshl.i64(i64 %i.nf, i64 %i.nf, i64 13)
  %i.no = xor i64 %i.nl, %i.nn                    ; 3 uses
  %i.np = call noundef i64 @llvm.fshl.i64(i64 %i.nh, i64 %i.nh, i64 16)
  %i.nq = xor i64 %i.nm, %i.np                    ; 3 uses
  %i.nr = call noundef i64 @llvm.fshl.i64(i64 %i.nl, i64 %i.nl, i64 32)
  %i.ns = add i64 %i.no, %i.nm                    ; 3 uses
  %i.nt = add i64 %i.nq, %i.nr                    ; 2 uses
  %i.nu = call noundef i64 @llvm.fshl.i64(i64 %i.no, i64 %i.no, i64 17)
  %i.nv = xor i64 %i.ns, %i.nu                    ; 3 uses
  %i.nw = call noundef i64 @llvm.fshl.i64(i64 %i.nq, i64 %i.nq, i64 21)
  %i.nx = xor i64 %i.nw, %i.nt                    ; 3 uses
  %i.ny = call noundef i64 @llvm.fshl.i64(i64 %i.ns, i64 %i.ns, i64 32)
  %i.nz = add i64 %i.nv, %i.nt                    ; 3 uses
  %i.oa = add i64 %i.nx, %i.ny                    ; 2 uses
  %i.ob = call noundef i64 @llvm.fshl.i64(i64 %i.nv, i64 %i.nv, i64 13)
  %i.oc = xor i64 %i.ob, %i.nz                    ; 3 uses
  %i.od = call noundef i64 @llvm.fshl.i64(i64 %i.nx, i64 %i.nx, i64 16)
  %i.oe = xor i64 %i.od, %i.oa                    ; 3 uses
  %i.of = call noundef i64 @llvm.fshl.i64(i64 %i.nz, i64 %i.nz, i64 32)
  %i.og = add i64 %i.oc, %i.oa                    ; 3 uses
  %i.oh = add i64 %i.oe, %i.of                    ; 2 uses
  %i.oi = call noundef i64 @llvm.fshl.i64(i64 %i.oc, i64 %i.oc, i64 17)
  %i.oj = xor i64 %i.oi, %i.og                    ; 3 uses
  %i.ok = call noundef i64 @llvm.fshl.i64(i64 %i.oe, i64 %i.oe, i64 21)
  %i.ol = xor i64 %i.ok, %i.oh                    ; 3 uses
  %i.om = call noundef i64 @llvm.fshl.i64(i64 %i.og, i64 %i.og, i64 32)
  %i.on = add i64 %i.oj, %i.oh
  %i.oo = add i64 %i.ol, %i.om                    ; 2 uses
  %i.op = call noundef i64 @llvm.fshl.i64(i64 %i.oj, i64 %i.oj, i64 13)
  %i.oq = xor i64 %i.op, %i.on                    ; 3 uses
  %i.or = call noundef i64 @llvm.fshl.i64(i64 %i.ol, i64 %i.ol, i64 16)
  %i.os = xor i64 %i.or, %i.oo                    ; 2 uses
  %i.ot = add i64 %i.oq, %i.oo                    ; 3 uses
  %i.ou = call noundef i64 @llvm.fshl.i64(i64 %i.oq, i64 %i.oq, i64 17)
  %i.ov = call noundef i64 @llvm.fshl.i64(i64 %i.os, i64 %i.os, i64 21)
  %i.ow = call noundef i64 @llvm.fshl.i64(i64 %i.ot, i64 %i.ot, i64 32)
  %i.ox = xor i64 %i.ou, %i.ov
  %i.oy = xor i64 %i.ox, %i.ow
  %i.oz = xor i64 %i.oy, %i.ot                    ; 2 uses
  %i.pa = lshr i64 %i.oz, 57
  %i.pb = trunc nuw nsw i64 %i.pa to i8
  %i.pc = insertelement <16 x i8> poison, i8 %i.pb, i64 0
  %i.pd = shufflevector <16 x i8> %i.pc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit
  %.sroa.9.0.i.i.i = phi i64 [ 0, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit ], [ %i.pw, %bb.bl ]
  %.pn.i.i = phi i64 [ %i.oz, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit ], [ %i.px, %bb.bl ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.bq     ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i25.i.i = load <16 x i8>, ptr %i.pe, align 1, !noalias !1828 ; 2 uses
  %i.pf = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i, %i.pd
  %i.pg = bitcast <16 x i1> %i.pf to i16          ; 2 uses
  %.not.i.not31.i.i = icmp eq i16 %i.pg, 0
  br i1 %.not.i.not31.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bk, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i
  %.sroa.06.0.i32.i.i = phi i16 [ %i.pv, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i ], [ %i.pg, %bb.bk ] ; 3 uses
  %i.ph = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.i, i1 true)
  %i.pi = zext nneg i16 %i.ph to i64
  %i.pj = add i64 %.sroa.01.0.i.i.i, %i.pi
  %i.pk = and i64 %i.pj, %i.bq
  %i.pl = sub nsw i64 0, %i.pk
  %i.pm = getelementptr inbounds [24 x i8], ptr %i.br, i64 %i.pl ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 -8
  %.val3.i.i.i = load i64, ptr %i.pn, align 8, !noalias !1829, !noundef !7
  %i.po = icmp eq i64 %i.kh, %.val3.i.i.i
  br i1 %i.po, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i, !prof !30

_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i: ; preds = %.lr.ph.i.i
  %i.pp = getelementptr i8, ptr %i.pm, i64 -16
  %.val2.i.i.i = load ptr, ptr %i.pp, align 8, !noalias !1829, !nonnull !7, !noundef !7
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.km, ptr nonnull readonly %.val2.i.i.i, i64 %i.kh), !noalias !1829
  %i.pq = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.pq, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i, !prof !27

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i, %bb.bk
  %i.pr = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i, splat (i8 -1)
  %i.ps = bitcast <16 x i1> %i.pr to i16
  %i.pt = icmp eq i16 %i.ps, 0
  br i1 %i.pt, label %bb.bl, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104, !prof !12

_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i, %.lr.ph.i.i
  %i.pu = add i16 %.sroa.06.0.i32.i.i, -1
  %i.pv = and i16 %i.pu, %.sroa.06.0.i32.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.pv, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.bl:                                            ; preds = %._crit_edge.i.i
  %i.pw = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.px = add i64 %.sroa.01.0.i.i.i, %i.pw
  br label %bb.bk

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104: ; preds = %._crit_edge.i.i, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i101, %bb.be
  br i1 %i.kj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.backedge, label %bb.bm

bb.bm:                                            ; preds = %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.km, i64 noundef %i.kh, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1830
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.backedge

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread: ; preds = %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit, %._crit_edge.i.i99
  br i1 %i.ck, label %bb.dp, label %bb.bu

bb.bn:                                            ; preds = %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit
  %i.py = and i64 %i.kh, 7                        ; 7 uses
  %i.pz = and i64 %i.kh, 9223372036854775800      ; 2 uses
  %.not376 = icmp eq i64 %i.pz, 0
  br i1 %.not376, label %._crit_edge.i221, label %.lr.ph.i214

._crit_edge.i221.loopexit:                        ; preds = %.lr.ph.i214
  %i.qa = and i64 %i.kh, 9223372036854775800
  br label %._crit_edge.i221

._crit_edge.i221:                                 ; preds = %._crit_edge.i221.loopexit, %bb.bn
  %.sroa.32323.4 = phi i64 [ %i.ce, %bb.bn ], [ %i.rg, %._crit_edge.i221.loopexit ] ; 4 uses
  %.sroa.22318.4 = phi i64 [ %i.cc, %bb.bn ], [ %i.re, %._crit_edge.i221.loopexit ] ; 6 uses
  %.sroa.12313.4 = phi i64 [ %i.cd, %bb.bn ], [ %i.rh, %._crit_edge.i221.loopexit ] ; 4 uses
  %.sroa.0308.4 = phi i64 [ %i.cb, %bb.bn ], [ %i.ri, %._crit_edge.i221.loopexit ] ; 4 uses
  %.sroa.0.1.lcssa.i204 = phi i64 [ 0, %bb.bn ], [ %i.qa, %._crit_edge.i221.loopexit ] ; 3 uses
  %i.qb = icmp samesign ugt i64 %i.py, 3
  br i1 %i.qb, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %._crit_edge.i221
  %i.qc = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sroa.0.1.lcssa.i204
  %.sroa.014.0.copyload.i16.i213 = load i32, ptr %i.qc, align 1, !alias.scope !1831, !noalias !1832
  %i.qd = zext i32 %.sroa.014.0.copyload.i16.i213 to i64
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge.i221
  %.sroa.03.0.i10.i205 = phi i64 [ 4, %bb.bo ], [ 0, %._crit_edge.i221 ] ; 5 uses
  %.sroa.0.0.i11.i206 = phi i64 [ %i.qd, %bb.bo ], [ 0, %._crit_edge.i221 ] ; 2 uses
  %i.qe = or disjoint i64 %.sroa.03.0.i10.i205, 1
  %i.qf = icmp samesign ult i64 %i.qe, %i.py
  br i1 %i.qf, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.qg = getelementptr i8, ptr %i.km, i64 %.sroa.0.1.lcssa.i204
  %i.qh = getelementptr i8, ptr %i.qg, i64 %.sroa.03.0.i10.i205
  %.sroa.015.0.copyload.i15.i212 = load i16, ptr %i.qh, align 1, !alias.scope !1831, !noalias !1832
  %i.qi = zext i16 %.sroa.015.0.copyload.i15.i212 to i64
  %i.qj = shl nuw nsw i64 %.sroa.03.0.i10.i205, 3
  %i.qk = shl nuw nsw i64 %i.qi, %i.qj
  %i.ql = or i64 %i.qk, %.sroa.0.0.i11.i206
  %i.qm = or disjoint i64 %.sroa.03.0.i10.i205, 2
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sroa.03.1.i12.i207 = phi i64 [ %i.qm, %bb.bq ], [ %.sroa.03.0.i10.i205, %bb.bp ] ; 3 uses
  %.sroa.0.1.i13.i208 = phi i64 [ %i.ql, %bb.bq ], [ %.sroa.0.0.i11.i206, %bb.bp ] ; 2 uses
  %i.qn = icmp samesign ult i64 %.sroa.03.1.i12.i207, %i.py
  br i1 %i.qn, label %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i172, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224

.lr.ph.i214:                                      ; preds = %bb.bn, %.lr.ph.i214
  %i.qo = phi i64 [ %i.rh, %.lr.ph.i214 ], [ %i.cd, %bb.bn ]
  %i.qp = phi i64 [ %i.re, %.lr.ph.i214 ], [ %i.cc, %bb.bn ] ; 3 uses
  %i.qq = phi i64 [ %i.rg, %.lr.ph.i214 ], [ %i.ce, %bb.bn ]
  %.sroa.0.118.i219 = phi i64 [ %i.rj, %.lr.ph.i214 ], [ 0, %bb.bn ] ; 2 uses
  %i.qr = phi i64 [ %i.ri, %.lr.ph.i214 ], [ %i.cb, %bb.bn ]
  %i.qs = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sroa.0.118.i219
  %.sroa.07.0.copyload.i220 = load i64, ptr %i.qs, align 1, !alias.scope !1833, !noalias !1832 ; 2 uses
  %i.qt = xor i64 %.sroa.07.0.copyload.i220, %i.qq ; 3 uses
  %i.qu = add i64 %i.qr, %i.qp                    ; 3 uses
  %i.qv = add i64 %i.qt, %i.qo                    ; 2 uses
  %i.qw = call noundef i64 @llvm.fshl.i64(i64 %i.qp, i64 %i.qp, i64 13)
  %i.qx = xor i64 %i.qu, %i.qw                    ; 3 uses
  %i.qy = call noundef i64 @llvm.fshl.i64(i64 %i.qt, i64 %i.qt, i64 16)
  %i.qz = xor i64 %i.qv, %i.qy                    ; 3 uses
  %i.ra = call noundef i64 @llvm.fshl.i64(i64 %i.qu, i64 %i.qu, i64 32)
  %i.rb = add i64 %i.qv, %i.qx                    ; 3 uses
  %i.rc = add i64 %i.qz, %i.ra                    ; 2 uses
  %i.rd = call noundef i64 @llvm.fshl.i64(i64 %i.qx, i64 %i.qx, i64 17)
  %i.re = xor i64 %i.rb, %i.rd                    ; 2 uses
  %i.rf = call noundef i64 @llvm.fshl.i64(i64 %i.qz, i64 %i.qz, i64 21)
  %i.rg = xor i64 %i.rf, %i.rc                    ; 2 uses
  %i.rh = call noundef i64 @llvm.fshl.i64(i64 %i.rb, i64 %i.rb, i64 32) ; 2 uses
  %i.ri = xor i64 %i.rc, %.sroa.07.0.copyload.i220 ; 2 uses
  %i.rj = add nuw nsw i64 %.sroa.0.118.i219, 8    ; 2 uses
  %i.rk = icmp samesign ult i64 %i.rj, %i.pz
  br i1 %i.rk, label %.lr.ph.i214, label %._crit_edge.i221.loopexit

_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224: ; preds = %bb.br
  %18 = icmp eq i64 %i.py, 0
  br i1 %18, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit195, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224.a

_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224.a: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224
  %19 = shl nuw nsw i64 %i.py, 3
  %20 = shl nuw nsw i64 255, %19
  %21 = or i64 %20, %.sroa.0.1.i13.i208
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit195

_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i172: ; preds = %bb.br
  %22 = add nuw nsw i64 %.sroa.03.1.i12.i207, %.sroa.0.1.lcssa.i204 ; 2 uses
  %23 = icmp ult i64 %22, %i.kh
  call void @llvm.assume(i1 %23), !noalias !1834
  %24 = getelementptr inbounds nuw i8, ptr %i.km, i64 %22
  %25 = load i8, ptr %24, align 1, !alias.scope !1831, !noalias !1832, !noundef !7
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %.sroa.03.1.i12.i207, 3
  %28 = shl nuw nsw i64 %26, %27
  %i.rl = shl nuw nsw i64 %i.py, 3
  %i.rm = shl nuw i64 255, %i.rl
  %29 = or i64 %28, %i.rm
  %i.rn = or i64 %29, %.sroa.0.1.i13.i208         ; 3 uses
  %.not377 = icmp eq i64 %i.py, 7
  br i1 %.not377, label %.thread1024, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit195

.thread1024:                                      ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i172
  %i.ro = xor i64 %i.rn, %.sroa.32323.4           ; 3 uses
  %i.rp = add i64 %.sroa.0308.4, %.sroa.22318.4   ; 3 uses
  %i.rq = add i64 %i.ro, %.sroa.12313.4           ; 2 uses
  %i.rr = call noundef i64 @llvm.fshl.i64(i64 %.sroa.22318.4, i64 %.sroa.22318.4, i64 13)
  %i.rs = xor i64 %i.rp, %i.rr                    ; 3 uses
  %i.rt = call noundef i64 @llvm.fshl.i64(i64 %i.ro, i64 %i.ro, i64 16)
  %i.ru = xor i64 %i.rq, %i.rt                    ; 3 uses
  %i.rv = call noundef i64 @llvm.fshl.i64(i64 %i.rp, i64 %i.rp, i64 32)
  %i.rw = add i64 %i.rq, %i.rs                    ; 3 uses
  %i.rx = add i64 %i.ru, %i.rv                    ; 2 uses
  %i.ry = call noundef i64 @llvm.fshl.i64(i64 %i.rs, i64 %i.rs, i64 17)
  %i.rz = xor i64 %i.rw, %i.ry
  %i.sa = call noundef i64 @llvm.fshl.i64(i64 %i.ru, i64 %i.ru, i64 21)
  %i.sb = xor i64 %i.sa, %i.rx
  %i.sc = call noundef i64 @llvm.fshl.i64(i64 %i.rw, i64 %i.rw, i64 32)
  %i.sd = xor i64 %i.rx, %i.rn
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit195

_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit195: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224, %.thread1024, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224.a, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i172
  %.sroa.32323.2 = phi i64 [ %.sroa.32323.4, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i172 ], [ %.sroa.32323.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224.a ], [ %i.sb, %.thread1024 ], [ %.sroa.32323.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224 ]
  %.sroa.22318.2 = phi i64 [ %.sroa.22318.4, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i172 ], [ %.sroa.22318.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224.a ], [ %i.rz, %.thread1024 ], [ %.sroa.22318.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224 ] ; 3 uses
  %.sroa.12313.2 = phi i64 [ %.sroa.12313.4, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i172 ], [ %.sroa.12313.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224.a ], [ %i.sc, %.thread1024 ], [ %.sroa.12313.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224 ]
  %.sroa.0308.2 = phi i64 [ %.sroa.0308.4, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i172 ], [ %.sroa.0308.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224.a ], [ %i.sd, %.thread1024 ], [ %.sroa.0308.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224 ]
  %.sroa.50333.0 = phi i64 [ %i.rn, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i172 ], [ %21, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224.a ], [ 0, %.thread1024 ], [ 255, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit224 ]
  %30 = shl i64 %i.kh, 56
  %31 = add i64 %30, 72057594037927936
  %i.se = or i64 %.sroa.50333.0, %31              ; 2 uses
  %i.sf = xor i64 %i.se, %.sroa.32323.2           ; 3 uses
  %i.sg = add i64 %.sroa.0308.2, %.sroa.22318.2   ; 3 uses
  %i.sh = add i64 %i.sf, %.sroa.12313.2           ; 2 uses
  %i.si = call noundef i64 @llvm.fshl.i64(i64 %.sroa.22318.2, i64 %.sroa.22318.2, i64 13)
  %i.sj = xor i64 %i.sg, %i.si                    ; 3 uses
  %i.sk = call noundef i64 @llvm.fshl.i64(i64 %i.sf, i64 %i.sf, i64 16)
  %i.sl = xor i64 %i.sk, %i.sh                    ; 3 uses
  %i.sm = call noundef i64 @llvm.fshl.i64(i64 %i.sg, i64 %i.sg, i64 32)
  %i.sn = add i64 %i.sh, %i.sj                    ; 3 uses
  %i.so = add i64 %i.sl, %i.sm                    ; 2 uses
  %i.sp = call noundef i64 @llvm.fshl.i64(i64 %i.sj, i64 %i.sj, i64 17)
  %i.sq = xor i64 %i.sn, %i.sp                    ; 3 uses
  %i.sr = call noundef i64 @llvm.fshl.i64(i64 %i.sl, i64 %i.sl, i64 21)
  %i.ss = xor i64 %i.sr, %i.so                    ; 3 uses
  %i.st = call noundef i64 @llvm.fshl.i64(i64 %i.sn, i64 %i.sn, i64 32)
  %i.su = xor i64 %i.so, %i.se
  %i.sv = xor i64 %i.st, 255
  %i.sw = add i64 %i.su, %i.sq                    ; 3 uses
  %i.sx = add i64 %i.ss, %i.sv                    ; 2 uses
  %i.sy = call noundef i64 @llvm.fshl.i64(i64 %i.sq, i64 %i.sq, i64 13)
  %i.sz = xor i64 %i.sw, %i.sy                    ; 3 uses
  %i.ta = call noundef i64 @llvm.fshl.i64(i64 %i.ss, i64 %i.ss, i64 16)
  %i.tb = xor i64 %i.ta, %i.sx                    ; 3 uses
  %i.tc = call noundef i64 @llvm.fshl.i64(i64 %i.sw, i64 %i.sw, i64 32)
  %i.td = add i64 %i.sz, %i.sx                    ; 3 uses
  %i.te = add i64 %i.tb, %i.tc                    ; 2 uses
  %i.tf = call noundef i64 @llvm.fshl.i64(i64 %i.sz, i64 %i.sz, i64 17)
  %i.tg = xor i64 %i.td, %i.tf                    ; 3 uses
  %i.th = call noundef i64 @llvm.fshl.i64(i64 %i.tb, i64 %i.tb, i64 21)
  %i.ti = xor i64 %i.th, %i.te                    ; 3 uses
  %i.tj = call noundef i64 @llvm.fshl.i64(i64 %i.td, i64 %i.td, i64 32)
  %i.tk = add i64 %i.tg, %i.te                    ; 3 uses
  %i.tl = add i64 %i.ti, %i.tj                    ; 2 uses
  %i.tm = call noundef i64 @llvm.fshl.i64(i64 %i.tg, i64 %i.tg, i64 13)
  %i.tn = xor i64 %i.tm, %i.tk                    ; 3 uses
  %i.to = call noundef i64 @llvm.fshl.i64(i64 %i.ti, i64 %i.ti, i64 16)
  %i.tp = xor i64 %i.to, %i.tl                    ; 3 uses
  %i.tq = call noundef i64 @llvm.fshl.i64(i64 %i.tk, i64 %i.tk, i64 32)
  %i.tr = add i64 %i.tn, %i.tl                    ; 3 uses
  %i.ts = add i64 %i.tp, %i.tq                    ; 2 uses
  %i.tt = call noundef i64 @llvm.fshl.i64(i64 %i.tn, i64 %i.tn, i64 17)
  %i.tu = xor i64 %i.tt, %i.tr                    ; 3 uses
  %i.tv = call noundef i64 @llvm.fshl.i64(i64 %i.tp, i64 %i.tp, i64 21)
  %i.tw = xor i64 %i.tv, %i.ts                    ; 3 uses
  %i.tx = call noundef i64 @llvm.fshl.i64(i64 %i.tr, i64 %i.tr, i64 32)
  %i.ty = add i64 %i.tu, %i.ts
  %i.tz = add i64 %i.tw, %i.tx                    ; 2 uses
  %i.ua = call noundef i64 @llvm.fshl.i64(i64 %i.tu, i64 %i.tu, i64 13)
  %i.ub = xor i64 %i.ua, %i.ty                    ; 3 uses
  %i.uc = call noundef i64 @llvm.fshl.i64(i64 %i.tw, i64 %i.tw, i64 16)
  %i.ud = xor i64 %i.uc, %i.tz                    ; 2 uses
  %i.ue = add i64 %i.ub, %i.tz                    ; 3 uses
  %i.uf = call noundef i64 @llvm.fshl.i64(i64 %i.ub, i64 %i.ub, i64 17)
  %i.ug = call noundef i64 @llvm.fshl.i64(i64 %i.ud, i64 %i.ud, i64 21)
  %i.uh = call noundef i64 @llvm.fshl.i64(i64 %i.ue, i64 %i.ue, i64 32)
  %i.ui = xor i64 %i.ug, %i.uf
  %i.uj = xor i64 %i.ui, %i.uh
  %i.uk = xor i64 %i.uj, %i.ue                    ; 2 uses
  %i.ul = lshr i64 %i.uk, 57
  %i.um = trunc nuw nsw i64 %i.ul to i8
  %i.un = insertelement <16 x i8> poison, i8 %i.um, i64 0
  %i.uo = shufflevector <16 x i8> %i.un, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit195
  %.sroa.9.0.i.i.i89 = phi i64 [ 0, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit195 ], [ %i.vh, %bb.bt ]
  %.pn.i.i90 = phi i64 [ %i.uk, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit195 ], [ %i.vi, %bb.bt ]
  %.sroa.01.0.i.i.i91 = and i64 %.pn.i.i90, %i.cg ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.01.0.i.i.i91
  %.sroa.0.0.copyload.i25.i.i92 = load <16 x i8>, ptr %i.up, align 1, !noalias !1835 ; 2 uses
  %i.uq = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i92, %i.uo
  %i.ur = bitcast <16 x i1> %i.uq to i16          ; 2 uses
  %.not.i.not31.i.i93 = icmp eq i16 %i.ur, 0
  br i1 %.not.i.not31.i.i93, label %._crit_edge.i.i99, label %.lr.ph.i.i94

.lr.ph.i.i94:                                     ; preds = %bb.bs, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i97
  %.sroa.06.0.i32.i.i95 = phi i16 [ %i.vg, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i97 ], [ %i.ur, %bb.bs ] ; 3 uses
  %i.us = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.i95, i1 true)
  %i.ut = zext nneg i16 %i.us to i64
  %i.uu = add i64 %.sroa.01.0.i.i.i91, %i.ut
  %i.uv = and i64 %i.uu, %i.cg
  %i.uw = sub nsw i64 0, %i.uv
  %i.ux = getelementptr inbounds [24 x i8], ptr %i.ch, i64 %i.uw ; 2 uses
  %i.uy = getelementptr i8, ptr %i.ux, i64 -8
  %.val3.i.i.i96 = load i64, ptr %i.uy, align 8, !noalias !1836, !noundef !7
  %i.uz = icmp eq i64 %i.kh, %.val3.i.i.i96
  br i1 %i.uz, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i101, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i97, !prof !30

_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i101: ; preds = %.lr.ph.i.i94
  %i.va = getelementptr i8, ptr %i.ux, i64 -16
  %.val2.i.i.i102 = load ptr, ptr %i.va, align 8, !noalias !1836, !nonnull !7, !noundef !7
  %bcmp.i.i.i.i.i.i.i.i103 = call i32 @bcmp(ptr nonnull readonly %i.km, ptr nonnull readonly %.val2.i.i.i102, i64 %i.kh), !noalias !1836
  %i.vb = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i103, 0
  br i1 %i.vb, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i97, !prof !27

._crit_edge.i.i99:                                ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i97, %bb.bs
  %i.vc = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i92, splat (i8 -1)
  %i.vd = bitcast <16 x i1> %i.vc to i16
  %i.ve = icmp eq i16 %i.vd, 0
  br i1 %i.ve, label %bb.bt, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread, !prof !12

_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i97: ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i101, %.lr.ph.i.i94
  %i.vf = add i16 %.sroa.06.0.i32.i.i95, -1
  %i.vg = and i16 %i.vf, %.sroa.06.0.i32.i.i95    ; 2 uses
  %.not.i.not.i.i98 = icmp eq i16 %i.vg, 0
  br i1 %.not.i.not.i.i98, label %._crit_edge.i.i99, label %.lr.ph.i.i94

bb.bt:                                            ; preds = %._crit_edge.i.i99
  %i.vh = add i64 %.sroa.9.0.i.i.i89, 16          ; 2 uses
  %i.vi = add i64 %.sroa.01.0.i.i.i91, %i.vh
  br label %bb.bs

bb.bu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit114, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread
  %.sroa.16236.0 = phi i64 [ %.sroa.16236.0.copyload238, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit114 ], [ %i.kh, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread ] ; 5 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload235, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit114 ], [ %i.km, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread ] ; 5 uses
  %.sroa.0232.0 = phi i64 [ %.sroa.0232.0.copyload233, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit114 ], [ %i.kh, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread ] ; 7 uses
  %.sroa.0.0.val = load ptr, ptr %i.cw, align 8, !nonnull !7, !noundef !7
  %.sroa.0.0.val61 = load i64, ptr %i.cx, align 8, !noundef !7 ; 13 uses
  %i.vj = icmp eq i64 %.sroa.0.0.val61, 0         ; 2 uses
  br i1 %i.vj, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.bu
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1837
  %i.vk = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.val61, i64 noundef range(i64 1, 9) 1) #28, !noalias !1837 ; 3 uses
  %i.vl = icmp eq ptr %i.vk, null
  br i1 %i.vl, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val61) #30, !noalias !1838
  unreachable

bb.bw:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vk, ptr nonnull readonly align 1 %.sroa.0.0.val, i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val61, i1 false), !noalias !1839
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.bu, %bb.bw
  %.sroa.5278.0 = phi ptr [ %i.vk, %bb.bw ], [ inttoptr (i64 1 to ptr), %bb.bu ] ; 5 uses
  br i1 %.not.i.i105, label %_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_.exit.thread69.i, label %.preheader

.preheader:                                       ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit, %bb.ce
  %.sroa.3.0.i.i.i = phi i64 [ %i.xg, %bb.ce ], [ %.sroa.7.2.ph.ph, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit ] ; 2 uses
  %.sroa.0.0.i.i.i106 = phi ptr [ %i.xf, %bb.ce ], [ %.sroa.0.2.ph.ph, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit ] ; 11 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i106, i64 890
  %i.vn = load i16, ptr %i.vm, align 2, !noalias !1840, !noundef !7 ; 4 uses
  %i.vo = zext i16 %i.vn to i64                   ; 5 uses
  %.idx1477 = mul nuw nsw i64 %i.vo, 80
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i106, i64 %.idx1477
  %i.vq = icmp eq i16 %i.vn, 0
  br i1 %i.vq, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.i.i.i.i

bb.bx:                                            ; preds = %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i
  %i.vr = icmp eq ptr %i.vs, %i.vp
  br i1 %i.vr, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.i.i.i.i: ; preds = %.preheader, %bb.bx
  %.sroa.0.01.i.i.i.i1474 = phi ptr [ %i.vs, %bb.bx ], [ %.sroa.0.0.i.i.i106, %.preheader ] ; 9 uses
  %.sroa.8.0.i.i.i.i1473 = phi i64 [ %i.vt, %bb.bx ], [ 0, %.preheader ] ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 80 ; 2 uses
  %i.vt = add nuw nsw i64 %.sroa.8.0.i.i.i.i1473, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 8
  %i.vv = load ptr, ptr %i.vu, align 8, !alias.scope !1841, !noalias !1842, !nonnull !7, !noundef !7
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 16
  %i.vx = load i64, ptr %i.vw, align 8, !alias.scope !1841, !noalias !1842, !noundef !7 ; 2 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.16236.0, i64 %i.vx)
  %i.vy = call i32 @memcmp(ptr nonnull %.sroa.8.0, ptr nonnull %i.vv, i64 %spec.store.select.i.i.i.i.i), !noalias !1843 ; 2 uses
  %i.vz = sext i32 %i.vy to i64
  %i.wa = icmp eq i32 %i.vy, 0
  %i.wb = sub i64 %.sroa.16236.0, %i.vx
  %spec.select.i.i.i.i.i = select i1 %i.wa, i64 %i.wb, i64 %i.vz ; 2 uses
  %i.wc = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i, i64 0)
  %i.wd = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.wd, label %bb.by, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.by:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.i.i.i.i
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 48
  %i.wf = load i64, ptr %i.we, align 8, !alias.scope !1841, !noalias !1842, !noundef !7 ; 2 uses
  %i.wg = call i8 @llvm.ucmp.i8.i64(i64 %i.dr, i64 %i.wf)
  %i.wh = icmp eq i64 %i.dr, %i.wf
  br i1 %i.wh, label %bb.bz, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 56
  %i.wj = load i64, ptr %i.wi, align 8, !alias.scope !1841, !noalias !1842, !noundef !7 ; 2 uses
  %i.wk = call i8 @llvm.ucmp.i8.i64(i64 %.sroa.04.0730, i64 %i.wj)
  %i.wl = icmp eq i64 %.sroa.04.0730, %i.wj
  br i1 %i.wl, label %bb.ca, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 64
  %i.wn = load i64, ptr %i.wm, align 8, !alias.scope !1841, !noalias !1842, !noundef !7 ; 2 uses
  %i.wo = call i8 @llvm.ucmp.i8.i64(i64 %.sroa.051.0, i64 %i.wn)
  %i.wp = icmp eq i64 %.sroa.051.0, %i.wn
  br i1 %i.wp, label %bb.cb, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.wq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 72
  %i.wr = load i64, ptr %i.wq, align 8, !alias.scope !1841, !noalias !1842, !noundef !7 ; 2 uses
  %i.ws = call i8 @llvm.ucmp.i8.i64(i64 %.sroa.419.i.sink.i.sroa.speculated, i64 %i.wr)
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!1626 = distinct !{!1626, !"_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx"}
!1627 = distinct !{!1627, !1626, !"_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx: argument 1"}
!1628 = distinct !{!1628, !"_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le"}
!1629 = distinct !{!1629, !1628, !"_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le: argument 0"}
!1630 = distinct !{!1630, !"_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx"}
!1631 = distinct !{!1631, !1630, !"_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1632 = distinct !{!1632, !"_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx"}
!1633 = distinct !{!1633, !1632, !"_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1634 = distinct !{!1634, !1626, !"_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1635 = distinct !{!1635, !1630, !"_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx: argument 1"}
!1636 = distinct !{!1636, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsgy7pbN39oAf_6uu_ptx"}
!1637 = distinct !{!1637, !1636, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsgy7pbN39oAf_6uu_ptx: argument 1"}
!1638 = distinct !{!1638, !1636, !"_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1639 = distinct !{!1639, !"_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!1640 = distinct !{!1640, !1639, !"_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!1641 = distinct !{!1641, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128"}
!1642 = distinct !{!1642, !1641, !"_RNvNtNtNtCs6JMX4GRUq9U_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!1643 = distinct !{!1643, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx"}
!1644 = distinct !{!1644, !1643, !"_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx: argument 0"}
!1645 = distinct !{!1645, !"_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx"}
!1646 = distinct !{!1646, !1645, !"_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1647 = distinct !{!1647, !"_RINvXs_NvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsgy7pbN39oAf_6uu_ptx"}
!1648 = distinct !{!1648, !1647, !"_RINvXs_NvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsgy7pbN39oAf_6uu_ptx: argument 1"}
!1649 = distinct !{!1649, !1647, !"_RINvXs_NvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1650 = distinct !{!1650, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx"}
!1651 = distinct !{!1651, !1650, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1652 = distinct !{!1652, !"_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE6insertB19_"}
!1653 = distinct !{!1653, !1652, !"_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE6insertB19_: argument 1"}
!1654 = distinct !{!1654, !1652, !"_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE6insertB19_: argument 0"}
!1655 = distinct !{!1655, !"_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_"}
!1656 = distinct !{!1656, !1655, !"_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_: argument 2"}
!1657 = distinct !{!1657, !1655, !"_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_: argument 1"}
!1658 = distinct !{!1658, !1655, !"_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_: argument 0"}
!1659 = distinct !{!1659, !"_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_EB1A_"}
!1660 = distinct !{!1660, !1659, !"_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_EB1A_: argument 1"}
!1661 = distinct !{!1661, !1659, !"_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_EB1A_: argument 0"}
!1662 = distinct !{!1662, !"_RINvMs0_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1j_14LeafOrInternalE14find_key_indexB1z_EB1B_"}
!1663 = distinct !{!1663, !1662, !"_RINvMs0_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBZ_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1j_14LeafOrInternalE14find_key_indexB1z_EB1B_: argument 0"}
!1664 = distinct !{!1664, !"_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp"}
!1665 = distinct !{!1665, !1664, !"_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp: argument 1"}
!1666 = distinct !{!1666, !1664, !"_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp: argument 0"}
!1667 = distinct !{!1667, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx7WordRefEBD_"}
!1668 = distinct !{!1668, !1667, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx7WordRefEBD_: argument 0"}
!1669 = distinct !{!1669, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx"}
!1670 = distinct !{!1670, !1669, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1671 = distinct !{!1671, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_"}
!1672 = distinct !{!1672, !1671, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_: argument 1"}
!1673 = distinct !{!1673, !1671, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_: argument 0"}
!1674 = distinct !{!1674, !"_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_"}
!1675 = distinct !{!1675, !1674, !"_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_: argument 1"}
!1676 = distinct !{!1676, !1674, !"_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_: argument 0"}
!1677 = distinct !{!1677, !"_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_"}
!1678 = distinct !{!1678, !1677, !"_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_: argument 2"}
!1679 = distinct !{!1679, !1677, !"_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_: argument 1"}
!1680 = distinct !{!1680, !1677, !"_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_: argument 0"}
!1681 = distinct !{!1681, !"_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_"}
!1682 = distinct !{!1682, !1681, !"_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_: argument 2"}
!1683 = distinct !{!1683, !1681, !"_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_: argument 1"}
!1684 = distinct !{!1684, !1681, !"_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_: argument 0"}
!1685 = distinct !{!1685, !"_RNvMsJ_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1E_"}
!1686 = distinct !{!1686, !1685, !"_RNvMsJ_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1E_: argument 2"}
!1687 = distinct !{!1687, !1685, !"_RNvMsJ_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1E_: argument 1"}
!1688 = distinct !{!1688, !1685, !"_RNvMsJ_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1E_: argument 0"}
!1689 = distinct !{!1689, !"_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_"}
!1690 = distinct !{!1690, !1689, !"_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_: argument 1"}
!1691 = distinct !{!1691, !1689, !"_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_: argument 0"}
!1692 = distinct !{!1692, !"_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE15split_leaf_dataB1E_"}
!1693 = distinct !{!1693, !1692, !"_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE15split_leaf_dataB1E_: argument 1"}
!1694 = distinct !{!1694, !1692, !"_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE15split_leaf_dataB1E_: argument 0"}
!1695 = distinct !{!1695, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceNtCsgy7pbN39oAf_6uu_ptx7WordRefEB17_"}
!1696 = distinct !{!1696, !1695, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceNtCsgy7pbN39oAf_6uu_ptx7WordRefEB17_: argument 1"}
!1697 = distinct !{!1697, !1695, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceNtCsgy7pbN39oAf_6uu_ptx7WordRefEB17_: argument 0"}
!1698 = distinct !{!1698, !"_RNvMsJ_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1E_"}
!1699 = distinct !{!1699, !1698, !"_RNvMsJ_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1E_: argument 2"}
!1700 = distinct !{!1700, !1698, !"_RNvMsJ_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1E_: argument 1"}
!1701 = distinct !{!1701, !1698, !"_RNvMsJ_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE10insert_fitB1E_: argument 0"}
!1702 = distinct !{!1702, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_"}
!1703 = distinct !{!1703, !1702, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_: argument 1"}
!1704 = distinct !{!1704, !1702, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_: argument 0"}
!1705 = distinct !{!1705, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendB1r_"}
!1706 = distinct !{!1706, !1705, !"_RNvMse_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendB1r_: argument 0"}
!1707 = distinct !{!1707, !"_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBb_7set_val9SetValZSTE12insert_entry0B1n_"}
!1708 = distinct !{!1708, !1707, !"_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBb_7set_val9SetValZSTE12insert_entry0B1n_: argument 0"}
!1709 = distinct !{!1709, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1F_"}
!1710 = distinct !{!1710, !1709, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1F_: argument 0"}
!1711 = distinct !{!1711, !"_RINvMs9_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalEB1u_"}
!1712 = distinct !{!1712, !1711, !"_RINvMs9_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalEB1u_: argument 0"}
!1713 = distinct !{!1713, !"_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusivejEEB1s_"}
!1714 = distinct !{!1714, !1713, !"_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusivejEEB1s_: argument 0"}
!1715 = distinct !{!1715, !"_RNvMsv_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_8InternalE4pushB1r_"}
!1716 = distinct !{!1716, !1715, !"_RNvMsv_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_8InternalE4pushB1r_: argument 0"}
!1717 = distinct !{!1717, !"_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_"}
!1718 = distinct !{!1718, !1717, !"_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_: argument 2"}
!1719 = distinct !{!1719, !1717, !"_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_: argument 1"}
!1720 = distinct !{!1720, !1717, !"_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_: argument 0"}
!1721 = distinct !{!1721, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_"}
!1722 = distinct !{!1722, !1721, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_: argument 1"}
!1723 = distinct !{!1723, !1721, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_: argument 0"}
!1724 = distinct !{!1724, !"_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1E_"}
!1725 = distinct !{!1725, !1724, !"_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1E_: argument 0"}
!1726 = distinct !{!1726, !1724, !"_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1E_: argument 1"}
!1727 = distinct !{!1727, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_"}
!1728 = distinct !{!1728, !1727, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_: argument 0"}
!1729 = distinct !{!1729, !31}
!1730 = distinct !{!1730, !"_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_"}
!1731 = distinct !{!1731, !1730, !"_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_: argument 1"}
!1732 = distinct !{!1732, !1730, !"_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_: argument 0"}
!1733 = distinct !{!1733, !"_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1E_"}
!1734 = distinct !{!1734, !1733, !"_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1E_: argument 1"}
!1735 = distinct !{!1735, !1733, !"_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataB1E_: argument 0"}
!1736 = distinct !{!1736, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceNtCsgy7pbN39oAf_6uu_ptx7WordRefEB17_"}
!1737 = distinct !{!1737, !1736, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceNtCsgy7pbN39oAf_6uu_ptx7WordRefEB17_: argument 1"}
!1738 = distinct !{!1738, !1736, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceNtCsgy7pbN39oAf_6uu_ptx7WordRefEB17_: argument 0"}
!1739 = distinct !{!1739, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_"}
!1740 = distinct !{!1740, !1739, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_: argument 0"}
!1741 = distinct !{!1741, !1739, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_: argument 1"}
!1742 = distinct !{!1742, !"_RINvMs9_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalEB1u_"}
!1743 = distinct !{!1743, !1742, !"_RINvMs9_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalEB1u_: argument 0"}
!1744 = distinct !{!1744, !"_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusivejEEB1s_"}
!1745 = distinct !{!1745, !1744, !"_RINvMsp_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusivejEEB1s_: argument 0"}
!1746 = distinct !{!1746, !31}
!1747 = distinct !{!1747, !"_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1E_"}
!1748 = distinct !{!1748, !1747, !"_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1E_: argument 1"}
!1749 = distinct !{!1749, !1747, !"_RNvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1E_: argument 0"}
!1750 = distinct !{!1750, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_"}
!1751 = distinct !{!1751, !1750, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_: argument 1"}
!1752 = distinct !{!1752, !1750, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_: argument 0"}
!1753 = distinct !{!1753, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_"}
!1754 = distinct !{!1754, !1753, !"_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_: argument 0"}
!1755 = distinct !{!1755, !31}
!1756 = distinct !{!1756, !"_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleB1r_"}
!1757 = distinct !{!1757, !1756, !"_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleB1r_: argument 1"}
!1758 = distinct !{!1758, !1756, !"_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleB1r_: argument 0"}
!1759 = distinct !{!1759, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx"}
!1760 = distinct !{!1760, !1759, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1761 = distinct !{!1761, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx"}
!1762 = distinct !{!1762, !1761, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1763 = distinct !{!1763, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsipSpXIjCLRi_5regex5error5ErrorECsgy7pbN39oAf_6uu_ptx"}
!1764 = distinct !{!1764, !1763, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsipSpXIjCLRi_5regex5error5ErrorECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1765 = distinct !{!1765, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx"}
!1766 = distinct !{!1766, !1765, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1767 = distinct !{!1767, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx"}
!1768 = distinct !{!1768, !1767, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1769 = distinct !{!1769, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsipSpXIjCLRi_5regex5error5ErrorECsgy7pbN39oAf_6uu_ptx"}
!1770 = distinct !{!1770, !1769, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsipSpXIjCLRi_5regex5error5ErrorECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1771 = distinct !{!1771, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx"}
!1772 = distinct !{!1772, !1771, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1773 = !{!1524}
!1774 = !{!1530, !1528, !1526, !1524}
!1775 = !{!1532, !1524}
!1776 = !{!1534}
!1777 = !{!1535}
!1778 = !{!1536}
!1779 = !{!1538}
!1780 = !{!1539}
!1781 = !{!1540}
!1782 = !{!1541, !1534, !1535, !1536}
!1783 = !{!1543}
!1784 = !{!1540, !1536}
!1785 = !{!1545, !1543, !1544, !1538, !1539, !1541, !1534, !1535}
!1786 = !{!1539, !1535}
!1787 = !{!1545, !1543, !1544, !1538, !1540, !1541, !1534, !1536}
!1788 = !{!1547}
!1789 = !{!1549, !1548, !1547, !1545, !1543, !1544, !1538, !1539, !1540, !1541, !1534, !1535, !1536}
!1790 = !{!1551}
!1791 = !{!1551, !1547, !1543, !1538, !1534}
!1792 = !{!1552, !1549, !1548, !1545, !1544, !1539, !1540, !1541, !1535, !1536}
!1793 = !{!1552, !1551, !1549, !1548, !1547, !1545, !1543, !1544, !1538, !1539, !1540, !1541, !1534, !1535, !1536}
!1794 = !{!1544, !1539, !1540, !1541, !1535, !1536}
!1795 = !{!1544, !1538, !1539, !1540, !1541, !1534, !1535, !1536}
!1796 = !{!1555}
!1797 = !{!1555, !1544, !1538, !1539, !1540, !1541, !1534, !1535, !1536}
!1798 = !{!1555, !1544, !1539, !1540, !1541, !1535, !1536}
!1799 = !{!1555, !1538, !1534}
!1800 = !{!1538, !1534}
!1801 = !{!"branch_weights", i32 1, i32 4001}
!1802 = !{!1544, !1541}
!1803 = !{!1541}
!1804 = !{!1559, !1557}
!1805 = !{!1561, !1557}
!1806 = !{!1563, !1557}
!1807 = !{!1557}
!1808 = !{!1565}
!1809 = !{!1567}
!1810 = !{!1569}
!1811 = !{!1571}
!1812 = !{!1573}
!1813 = !{!1575}
!1814 = !{!1575, !1573, !1571, !1569, !1567, !1565}
!1815 = !{!1573, !1571, !1569, !1567, !1565}
!1816 = !{!1579, !1577}
!1817 = !{!1583, !1581}
!1818 = !{!1585}
!1819 = !{!1587}
!1820 = !{!1600, !1598, !1596, !1595, !1593, !1592, !1590, !1589}
!1821 = !{!1596, !1595, !1593, !1592, !1590, !1589}
!1822 = !{!1602}
!1823 = !{!1604}
!1824 = !{!1608, !1606}
!1825 = !{!1613, !1612, !1610}
!1826 = !{!1606}
!1827 = !{!1612, !1610}
!1828 = !{!1621, !1619, !1617, !1616, !1610, !1614}
!1829 = !{!1623, !1619, !1617, !1616, !1610, !1614}
!1830 = !{!1625}
!1831 = !{!1629, !1627}
!1832 = !{!1634, !1633, !1631}
!1833 = !{!1627}
!1834 = !{!1633, !1631}
!1835 = !{!1642, !1640, !1638, !1637, !1631, !1635}
!1836 = !{!1644, !1640, !1638, !1637, !1631, !1635}
!1837 = !{!1651, !1649, !1648, !1646}
!1838 = !{!1649, !1648, !1646}
!1839 = !{!1649, !1646}
!1840 = !{!1663, !1661, !1660, !1658, !1657, !1656, !1654, !1653}
!1841 = !{!1665}
!1842 = !{!1666, !1663, !1661, !1660, !1658, !1657, !1656, !1654, !1653}
!1843 = !{!1666, !1665, !1663, !1661, !1660, !1658, !1657, !1656, !1654, !1653}
!1844 = !{!1661, !1660, !1658, !1657, !1656, !1654, !1653}
!1845 = !{!1670, !1668, !1658, !1656, !1654, !1653}
!1846 = !{!1668, !1658, !1656, !1654, !1653}
!1847 = !{!1672}
!1848 = !{!1673}
!1849 = !{!1672, !1688, !1687, !1686, !1684, !1683, !1682, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1850 = !{!1673, !1672}
!1851 = !{!1688, !1687, !1684, !1683, !1680, !1679, !1676, !1654, !1653}
!1852 = !{!1654}
!1853 = !{!1688, !1687, !1686, !1684, !1683, !1682, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1854 = !{!1691, !1690, !1684, !1683, !1682, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1855 = !{!1693}
!1856 = !{!1694, !1693, !1691, !1690, !1684, !1683, !1682, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1857 = !{!1694, !1691, !1690, !1684, !1683, !1682, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1858 = !{!"branch_weights", i32 4000000, i32 4001}
!1859 = !{!1697, !1696}
!1860 = !{!1684, !1683, !1682, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1861 = !{!1701, !1700, !1699, !1684, !1683, !1682, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1862 = !{!1703}
!1863 = !{!1704}
!1864 = !{!1703, !1701, !1700, !1699, !1684, !1683, !1682, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1865 = !{!1704, !1703}
!1866 = !{!1701, !1700, !1684, !1683, !1680, !1679, !1676, !1654, !1653}
!1867 = !{!1683, !1682, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1868 = !{!1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1869 = !{!1706, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1870 = !{!1710, !1708, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1871 = !{!1714, !1712, !1710, !1708, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1872 = !{!1714, !1710, !1708, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1873 = !{!1716, !1708, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1874 = !{!1720, !1719, !1718, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1875 = !{!1722}
!1876 = !{!1723, !1722}
!1877 = !{!1725, !1720, !1719, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1878 = !{!1723}
!1879 = !{!1722, !1725, !1726, !1720, !1719, !1718, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1880 = !{!1728}
!1881 = !{!1725, !1726, !1720, !1719, !1718, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1882 = !{!1732, !1731, !1720, !1719, !1718, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1883 = !{!1734}
!1884 = !{!1735, !1734, !1732, !1731, !1720, !1719, !1718, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1885 = !{!1735, !1732, !1731, !1720, !1719, !1718, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1886 = !{!1738, !1737}
!1887 = !{!1740}
!1888 = !{!1741}
!1889 = !{!1740, !1741, !1732, !1731, !1720, !1719, !1718, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1890 = !{!1740, !1741}
!1891 = !{!1743}
!1892 = !{!1745, !1732, !1731, !1720, !1719, !1718, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1893 = !{!1745, !1743, !1732, !1731, !1720, !1719, !1718, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1894 = !{!1749, !1748, !1720, !1719, !1718, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1895 = !{!1751}
!1896 = !{!1752, !1751}
!1897 = !{!1749, !1720, !1719, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1898 = !{!1752}
!1899 = !{!1751, !1749, !1748, !1720, !1719, !1718, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1900 = !{!1754}
!1901 = !{!1719, !1718, !1680, !1679, !1678, !1676, !1675, !1654, !1653}
!1902 = !{!1676, !1675, !1654, !1653}
!1903 = !{!1758, !1757, !1676, !1675, !1654, !1653}
!1904 = !{!1758, !1676, !1654, !1653}
!1905 = !{!1760}
!1906 = !{!1762}
!1907 = !{!1764}
!1908 = !{!1764, !1762}
!1909 = !{!1766}
!1910 = !{!1766, !1764, !1762}
!1911 = !{!1768}
!1912 = !{!1770}
!1913 = !{!1770, !1768}
!1914 = !{!1772}
!1915 = !{!1772, !1770, !1768}
!1916 = distinct !{!1916, !"_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtNtB20_3str4iter5CharsNvCsgy7pbN39oAf_6uu_ptx10tex_mapperEE9from_iterB36_"}
!1917 = distinct !{!1917, !1916, !"_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtNtB20_3str4iter5CharsNvCsgy7pbN39oAf_6uu_ptx10tex_mapperEE9from_iterB36_: argument 0"}
!1918 = distinct !{!1918, !"_RNvXs2I_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCsgy7pbN39oAf_6uu_ptx"}
!1919 = distinct !{!1919, !1918, !"_RNvXs2I_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1920 = distinct !{!1920, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx"}
!1921 = distinct !{!1921, !1920, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1922 = distinct !{!1922, !"_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtNtB1H_3str4iter5CharsNvCsgy7pbN39oAf_6uu_ptx10tex_mapperEE11spec_extendB2N_"}
!1923 = distinct !{!1923, !1922, !"_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtNtB1H_3str4iter5CharsNvCsgy7pbN39oAf_6uu_ptx10tex_mapperEE11spec_extendB2N_: argument 0"}
!1924 = distinct !{!1924, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtNtB1t_3str4iter5CharsNvCsgy7pbN39oAf_6uu_ptx10tex_mapperEEB2z_"}
!1925 = distinct !{!1925, !1924, !"_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtNtB1t_3str4iter5CharsNvCsgy7pbN39oAf_6uu_ptx10tex_mapperEEB2z_: argument 0"}
!1926 = distinct !{!1926, !"_RNvXs2I_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCsgy7pbN39oAf_6uu_ptx"}
!1927 = distinct !{!1927, !1926, !"_RNvXs2I_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1928 = distinct !{!1928, !"_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsgy7pbN39oAf_6uu_ptx"}
!1929 = distinct !{!1929, !1928, !"_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsgy7pbN39oAf_6uu_ptx: argument 1"}
!1930 = distinct !{!1930, !1928, !"_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1931 = distinct !{!1931, !"_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsgy7pbN39oAf_6uu_ptx"}
!1932 = distinct !{!1932, !1931, !"_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1933 = distinct !{!1933, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx"}
!1934 = distinct !{!1934, !1933, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1935 = distinct !{!1935, !"_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgy7pbN39oAf_6uu_ptx"}
!1936 = distinct !{!1936, !1935, !"_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1937 = distinct !{!1937, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx"}
!1938 = distinct !{!1938, !1937, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1939 = distinct !{!1939, !"_RNvMNtCs6JMX4GRUq9U_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsgy7pbN39oAf_6uu_ptx"}
!1940 = distinct !{!1940, !1939, !"_RNvMNtCs6JMX4GRUq9U_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsgy7pbN39oAf_6uu_ptx: argument 1"}
!1941 = distinct !{!1941, !1939, !"_RNvMNtCs6JMX4GRUq9U_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1942 = distinct !{!1942, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgy7pbN39oAf_6uu_ptx"}
!1943 = distinct !{!1943, !1942, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgy7pbN39oAf_6uu_ptx: argument 1"}
!1944 = distinct !{!1944, !1942, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1945 = distinct !{!1945, !1942, !"_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsgy7pbN39oAf_6uu_ptx: argument 2"}
!1946 = distinct !{!1946, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx"}
!1947 = distinct !{!1947, !1946, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1948 = distinct !{!1948, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx"}
!1949 = distinct !{!1949, !1948, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1950 = distinct !{!1950, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsgy7pbN39oAf_6uu_ptx"}
!1951 = distinct !{!1951, !1950, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1952 = !{!1917}
!1953 = !{!1919}
!1954 = !{!1921, !1917}
!1955 = !{!1923}
!1956 = !{!1925}
!1957 = !{!1923, !1917}
!1958 = !{!1925, !1923, !1917}
!1959 = !{!1927}
!1960 = !{!1925, !1923}
!1961 = !{!1929}
!1962 = !{!1930}
!1963 = !{!1932, !1930}
!1964 = !{!1930, !1929}
!1965 = !{!1934, !1930, !1929}
!1966 = !{!1936}
!1967 = !{!1938}
!1968 = !{!1938, !1936}
!1969 = !{!1938, !1936, !1930, !1929}
!1970 = !{!1941, !1940, !1930, !1929}
!1971 = !{!1944, !1943}
!1972 = !{!1945, !1930, !1929}
!1973 = !{!1947}
!1974 = !{!1949}
!1975 = !{!1949, !1947}
!1976 = !{!1951}
!1977 = !{!1949, !1947, !1951}
!1978 = distinct !{!1978, !"_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replacecECsgy7pbN39oAf_6uu_ptx"}
!1979 = distinct !{!1979, !1978, !"_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replacecECsgy7pbN39oAf_6uu_ptx: argument 1"}
!1980 = distinct !{!1980, !1978, !"_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replacecECsgy7pbN39oAf_6uu_ptx: argument 2"}
!1981 = distinct !{!1981, !1978, !"_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replacecECsgy7pbN39oAf_6uu_ptx: argument 0"}
!1982 = distinct !{!1982, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx"}
!1983 = distinct !{!1983, !1982, !"_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1984 = distinct !{!1984, !"_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!1985 = distinct !{!1985, !1984, !"_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!1986 = distinct !{!1986, !1984, !"_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!1987 = distinct !{!1987, !"_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr"}
!1988 = distinct !{!1988, !1987, !"_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr: argument 0"}
!1989 = distinct !{!1989, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx"}
!1990 = distinct !{!1990, !1989, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1991 = distinct !{!1991, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx"}
!1992 = distinct !{!1992, !1991, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1993 = distinct !{!1993, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx"}
!1994 = distinct !{!1994, !1993, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1995 = distinct !{!1995, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx"}
!1996 = distinct !{!1996, !1995, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1997 = distinct !{!1997, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx"}
!1998 = distinct !{!1998, !1997, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx: argument 0"}
!1999 = distinct !{!1999, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx"}
!2000 = distinct !{!2000, !1999, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx: argument 0"}
!2001 = !{!1979}
!2002 = !{!1981, !1979, !1980}
!2003 = !{!1983, !1981, !1979, !1980}
!2004 = !{!1986, !1985, !1981, !1980}
!2005 = !{!1988, !1979}
!2006 = !{!1981, !1980}
!2007 = !{!1990}
!2008 = !{!1992, !1990}
!2009 = !{!1996, !1994}
!2010 = !{!1990, !1981, !1980}
!2011 = !{!1994}
!2012 = !{!1994, !1981, !1980}
!2013 = !{!1998}
!2014 = !{!2000, !1998}
!2015 = !{!1998, !1981, !1980}
!2016 = !{!1979, !1980}
!2017 = distinct !{!2017, !"_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!2018 = distinct !{!2018, !2017, !"_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!2019 = distinct !{!2019, !"_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range"}
!2020 = distinct !{!2020, !2019, !"_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range: argument 0"}
!2021 = distinct !{!2021, !"_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!2022 = distinct !{!2022, !2021, !"_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!2023 = distinct !{!2023, !"_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range"}
!2024 = distinct !{!2024, !2023, !"_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range: argument 0"}
!2025 = distinct !{!2025, !"_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesReECsgy7pbN39oAf_6uu_ptx"}
!2026 = distinct !{!2026, !2025, !"_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesReECsgy7pbN39oAf_6uu_ptx: argument 1"}
!2027 = distinct !{!2027, !2025, !"_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesReECsgy7pbN39oAf_6uu_ptx: argument 0"}
!2028 = distinct !{!2028, !"_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsgy7pbN39oAf_6uu_ptx"}
!2029 = distinct !{!2029, !2028, !"_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsgy7pbN39oAf_6uu_ptx: argument 1"}
!2030 = distinct !{!2030, !2028, !"_RNvYNtNtNtCs6JMX4GRUq9U_4core3str7pattern11StrSearcherNtB4_8Searcher11next_rejectCsgy7pbN39oAf_6uu_ptx: argument 0"}
!2031 = distinct !{!2031, !"_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgy7pbN39oAf_6uu_ptx"}
!2032 = distinct !{!2032, !2031, !"_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgy7pbN39oAf_6uu_ptx: argument 0"}
!2033 = distinct !{!2033, !"_RNvXso_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsgy7pbN39oAf_6uu_ptx"}
!2034 = distinct !{!2034, !2033, !"_RNvXso_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsgy7pbN39oAf_6uu_ptx: argument 1"}
end_hunk_1
