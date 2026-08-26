Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mlme?download=true
inline.NumInlined: 873
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@ieee80211_mgd_setup_link_sta:bb.a

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr i8, ptr %0, i64 8
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %i.bv, i32 noundef %i.bx) #21 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bz = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %i.bv) #21 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q
  %i.ca = getelementptr i8, ptr %0, i64 1056
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr i8, ptr %i.cb, i64 72
  store i32 %.051, ptr %i.cc, align 8
  %i.cd = getelementptr i8, ptr %i.p, i64 16
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = select i1 %i.cf, i8 %.14961, i8 0
  %i.ch = getelementptr i8, ptr %0, i64 104
  store i8 %i.cg, ptr %i.ch, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.i, %bb.j, %bb.u, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.u ], [ -22, %bb.j ], [ -22, %bb.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ieee80211_get_dtim(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 29         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext range(i8 5, 86) 5, ptr noundef %i.a, i32 noundef %i.c, ptr noundef null, i32 noundef 0, i32 noundef 0) #19 ; 3 uses
  %i.e = load i32, ptr %i.b, align 8
  %i.f = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext range(i8 5, 86) 85, ptr noundef %i.a, i32 noundef %i.e, ptr noundef null, i32 noundef 0, i32 noundef 0) #19 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread36, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %.fr = freeze i8 %i.h
  %i.i = icmp ugt i8 %.fr, 1                      ; 3 uses
  %i.j = getelementptr i8, ptr %i.d, i64 2        ; 3 uses
  %spec.select = select i1 %i.i, ptr %i.j, ptr null
  %.not32 = icmp eq ptr %1, null
  br i1 %.not32, label %bb.e, label %bb.c

.thread36:                                        ; preds = %bb.a
  %.not3237 = icmp eq ptr %1, null
  br i1 %.not3237, label %.thread43, label %.thread40

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.d, label %.thread40

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.j, align 1
  br label %.thread40

.thread40:                                        ; preds = %.thread36, %bb.c, %bb.d
  %i.l = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %.thread36 ]
  %i.m = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ], [ null, %.thread36 ]
  %i.n = phi i8 [ %i.k, %bb.d ], [ 0, %bb.c ], [ 0, %.thread36 ]
  store i8 %i.n, ptr %1, align 1
  br label %bb.e

bb.e:                                             ; preds = %.thread40, %bb.b
  %.not3239 = phi i1 [ true, %bb.b ], [ false, %.thread40 ] ; 3 uses
  %i.o = phi ptr [ %spec.select, %bb.b ], [ %i.m, %.thread40 ]
  %i.p = phi i1 [ %i.i, %bb.b ], [ %i.l, %.thread40 ]
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %bb.h, label %bb.f

.thread43:                                        ; preds = %.thread36
  %.not3345 = icmp eq ptr %2, null
  br i1 %.not3345, label %bb.h, label %.thread50

bb.f:                                             ; preds = %bb.e
  br i1 %i.p, label %bb.g, label %.thread50

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.o, i64 1
  %i.r = load i8, ptr %i.q, align 1
  br label %.thread50

.thread50:                                        ; preds = %.thread43, %bb.f, %bb.g
  %.not32394654 = phi i1 [ %.not3239, %bb.g ], [ %.not3239, %bb.f ], [ true, %.thread43 ]
  %i.s = phi i8 [ %i.r, %bb.g ], [ 0, %bb.f ], [ 0, %.thread43 ]
  store i8 %i.s, ptr %2, align 1
  br label %bb.h

bb.h:                                             ; preds = %.thread43, %.thread50, %bb.e
  %.not3349 = phi i1 [ true, %.thread43 ], [ false, %.thread50 ], [ true, %bb.e ]
  %.not323947 = phi i1 [ true, %.thread43 ], [ %.not32394654, %.thread50 ], [ %.not3239, %bb.e ]
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %i.f, i64 1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp ult i8 %i.u, 3
  br i1 %i.v, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not323947, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr i8, ptr %i.f, i64 4
  %i.x = load i8, ptr %i.w, align 1
  store i8 %i.x, ptr %1, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not3349, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %i.f, i64 3
  %i.z = load i8, ptr %i.y, align 1
  store i8 %i.z, ptr %2, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.h, %bb.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @sta_info_pre_move_state(ptr noundef nonnull %0) unnamed_addr #4 align 16 {
test_sta_flag.exit:
  %i.a = getelementptr i8, ptr %0, i64 216
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 1048576
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.a, !prof !12

bb.a:                                             ; preds = %test_sta_flag.exit
  tail call void asm sideeffect "897: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 897b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 897) #20, !srcloc !423
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.107, i32 857, i32 2307, i64 16) #20, !srcloc !424
  tail call void asm sideeffect "898: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 898b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 898) #20, !srcloc !425
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %test_sta_flag.exit
  %i.d = tail call i32 @sta_info_move_state(ptr noundef nonnull %0, i32 noundef 2) #19
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.d, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "899: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 899b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 899) #20, !srcloc !426
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.107, i32 860, i32 2307, i64 16) #20, !srcloc !427
  tail call void asm sideeffect "900: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 900b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 900) #20, !srcloc !428
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sta_info_insert(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_scan_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__sta_info_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_s1g_sta_rate_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ieee802_11_parse_elems_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 7) i32 @ieee80211_determine_ap_chan(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 align 16 prefalign(16) {
_ieee80211_hw_check.exit:
  %3 = alloca %struct.cfg80211_chan_def, align 8  ; 9 uses
  %4 = alloca %struct.cfg80211_chan_def, align 8  ; 6 uses
  %5 = alloca %struct.ieee80211_vht_operation, align 1 ; 6 uses
  %6 = alloca %struct.cfg80211_chan_def, align 8  ; 9 uses
  %7 = alloca %struct.cfg80211_chan_def, align 8  ; 7 uses
  %8 = alloca %struct.cfg80211_chan_def, align 8  ; 8 uses
  %i.a = getelementptr i8, ptr %1, i64 28
  %i.b = load i8, ptr %i.a, align 4, !range !28, !noundef !29
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 16 uses
  %i.e = getelementptr i8, ptr %i.d, i64 136
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr i8, ptr %i.d, i64 152
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 176      ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 6 uses
  %i.k = getelementptr i8, ptr %i.d, i64 440
  %i.l = load ptr, ptr %i.k, align 8              ; 6 uses
  %i.m = getelementptr i8, ptr %i.d, i64 504
  %i.n = load ptr, ptr %i.m, align 8              ; 6 uses
  %i.o = getelementptr i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 5 uses
  %i.q = load ptr, ptr %1, align 8                ; 6 uses
  %i.r = getelementptr i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 26 uses
  %i.t = getelementptr i8, ptr %0, i64 1856       ; 10 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 304
  %i.y = load i32, ptr %i.q, align 8
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr [8 x i8], ptr %i.x, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false), !annotation !57
  store i64 0, ptr %2, align 4
  %i.ac = load ptr, ptr %i.t, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 104
  %i.ae = load volatile i64, ptr %i.ad, align 8
  %.in.i.in = and i64 %i.ae, 72057594037927936
  %.in.i.not = icmp eq i64 %.in.i.in, 0
  %i.af = getelementptr i8, ptr %i.q, i64 4       ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr i8, ptr %i.q, i64 8
  %i.ai = load i16, ptr %i.ah, align 8
  store ptr %i.q, ptr %i.s, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  store i32 0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i16 %i.ai, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 38
  %.sroa.10.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.s, i64 42
  %i.aj = getelementptr i8, ptr %i.ab, i64 16     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.8.0..sroa_idx, i8 0, i64 10, i1 false)
  %i.ak = load i32, ptr %i.aj, align 8
  switch i32 %i.ak, label %bb.n [
    i32 4, label %bb.a
    i32 3, label %bb.c
  ]

bb.a:                                             ; preds = %_ieee80211_hw_check.exit
  %i.al = load ptr, ptr %i.t, align 8
  %i.am = getelementptr i8, ptr %i.d, i64 408
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call zeroext i1 @ieee80211_chandef_s1g_oper(ptr noundef %i.al, ptr noundef %i.an, ptr noundef %i.s) #19
  br i1 %i.ao, label %.thread272, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 8, ptr %.sroa.3.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.10.0..sroa_idx.a, align 2
  br label %.thread272

bb.c:                                             ; preds = %_ieee80211_hw_check.exit
  %i.ap = load i32, ptr %i.p, align 4
  %i.aq = icmp ult i32 %i.ap, 4
  br i1 %i.aq, label %.thread272, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %i.d, i64 200
  %i.as = load ptr, ptr %i.ar, align 8
  %.not217 = icmp eq ptr %i.as, null
  br i1 %.not217, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr i8, ptr %i.d, i64 168
  %i.au = load ptr, ptr %i.at, align 8
  %.not218 = icmp eq ptr %i.au, null
  br i1 %.not218, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.av = getelementptr i8, ptr %0, i64 1880
  %i.aw = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %i.av) #21 ; 0 uses
  br label %.thread272

bb.g:                                             ; preds = %bb.e
  %.not219 = icmp eq ptr %i.l, null
  br i1 %.not219, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr i8, ptr %i.d, i64 432
  %i.ay = load ptr, ptr %i.ax, align 8
  %.not220 = icmp eq ptr %i.ay, null
  br i1 %.not220, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.t, align 8
  %i.ba = tail call zeroext i1 @ieee80211_chandef_he_6ghz_oper(ptr noundef %i.az, ptr noundef %i.j, ptr noundef nonnull %i.l, ptr noundef %i.s) #19
  br i1 %i.ba, label %_ieee80211_hw_check.exit248, label %bb.j

.thread:                                          ; preds = %bb.g, %bb.h
  %i.bb = load ptr, ptr %i.t, align 8
  %i.bc = tail call zeroext i1 @ieee80211_chandef_he_6ghz_oper(ptr noundef %i.bb, ptr noundef %i.j, ptr noundef null, ptr noundef %i.s) #19
  br i1 %i.bc, label %.thread272, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.bd = getelementptr i8, ptr %0, i64 1880
  %i.be = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %i.bd) #21 ; 0 uses
  br label %.thread272

_ieee80211_hw_check.exit248:                      ; preds = %bb.i
  %i.bf = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 104
  %i.bh = load volatile i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 72057594037927936
  %.not297 = icmp eq i64 %i.bi, 0
  br i1 %.not297, label %bb.ap, label %bb.k

bb.k:                                             ; preds = %_ieee80211_hw_check.exit248
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  %i.bj = call zeroext i1 @ieee80211_chandef_he_6ghz_oper(ptr noundef %i.bf, ptr noundef %i.j, ptr noundef null, ptr noundef nonnull %4) #19
  br i1 %i.bj, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bk = call ptr @cfg80211_chandef_compatible(ptr noundef %i.s, ptr noundef nonnull %4) #19
  %.not222 = icmp eq ptr %i.bk, null
  br i1 %.not222, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ap

.critedge:                                        ; preds = %bb.l, %bb.k
  %.str.137.sink = phi ptr [ @.str.136, %bb.k ], [ @.str.137, %bb.l ]
  %i.bl = getelementptr i8, ptr %0, i64 1880
  %i.bm = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.137.sink, ptr noundef %i.bl) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.thread272

bb.n:                                             ; preds = %_ieee80211_hw_check.exit
  %i.bn = load i32, ptr %i.p, align 4
  %i.bo = icmp ult i32 %i.bn, 2
  %.not = icmp eq ptr %i.f, null
  %or.cond243 = select i1 %i.bo, i1 true, i1 %.not
  br i1 %or.cond243, label %.thread272, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr i8, ptr %i.d, i64 128
  %i.bq = load ptr, ptr %i.bp, align 8
  %.not206 = icmp eq ptr %i.bq, null
  br i1 %.not206, label %.thread272, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %.sroa.3.0..sroa_idx, align 8
  %i.br = load i8, ptr %i.f, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = load i32, ptr %i.q, align 8
  %i.bu = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef range(i32 0, 256) %i.bs, i32 noundef %i.bt) #19
  %i.bv = udiv i32 %i.bu, 1000                    ; 2 uses
  %i.bw = trunc nuw i8 %i.b to i1
  %i.bx = and i1 %.in.i.not, %i.bw
  br i1 %i.bx, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = load i32, ptr %i.af, align 4            ; 2 uses
  %.not207 = icmp eq i32 %i.by, %i.bv
  br i1 %.not207, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr i8, ptr %0, i64 1880
  %i.ca = load i8, ptr %i.f, align 1
  %i.cb = zext i8 %i.ca to i32
  %i.cc = load i32, ptr %i.q, align 8
  %i.cd = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %i.bz, i32 noundef %i.by, i32 noundef %i.bv, i32 noundef %i.cb, i32 noundef %i.cc) #21 ; 0 uses
  br label %.thread272

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.ce = tail call zeroext i1 @ieee80211_chandef_ht_oper(ptr noundef nonnull %i.f, ptr noundef %i.s) #19 ; 0 uses
  %i.cf = load i32, ptr %i.p, align 4
  %i.cg = icmp ult i32 %i.cf, 3
  br i1 %i.cg, label %.thread272, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  %i.ch = getelementptr i8, ptr %i.d, i64 168     ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = icmp ne ptr %i.ci, null
  %i.ck = icmp ne ptr %i.j, null
  %or.cond = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cl = load i32, ptr %i.j, align 1
  %i.cm = and i32 %i.cl, 16384
  %.not208 = icmp eq i32 %i.cm, 0
  br i1 %.not208, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.cn = getelementptr i8, ptr %i.j, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef align 1 dereferenceable(3) %i.cn, i64 3, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i16 0, ptr %i.co, align 1
  %i.cp = load ptr, ptr %i.t, align 8
  %i.cq = getelementptr i8, ptr %1, i64 24
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = call zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef %i.cp, i32 noundef %i.cr, ptr noundef nonnull %5, ptr noundef nonnull %i.f, ptr noundef nonnull %3) #19
  br i1 %i.cs, label %.critedge239, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr i8, ptr %0, i64 1880
  %i.cu = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %i.ct) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.thread272

bb.x:                                             ; preds = %bb.u, %bb.t
  %.not209 = icmp eq ptr %i.h, null
  br i1 %.not209, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr i8, ptr %i.d, i64 144
  %i.cw = load ptr, ptr %i.cv, align 8
  %.not210 = icmp eq ptr %i.cw, null
  br i1 %.not210, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cx = load i32, ptr %i.aj, align 8
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %.thread272, label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.cz = load i32, ptr %i.aj, align 8
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = load ptr, ptr %i.t, align 8
  %i.dc = getelementptr i8, ptr %1, i64 24
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = call zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef %i.db, i32 noundef %i.dd, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef nonnull %3) #19
  br i1 %i.de, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr i8, ptr %0, i64 1880
  %i.dg = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %i.df) #21 ; 0 uses
  br label %.thread272

.critedge239:                                     ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.z, %.critedge239, %bb.ab
  %.0184 = phi i32 [ 2, %bb.aa ], [ 2, %bb.z ], [ 3, %bb.ab ], [ 3, %.critedge239 ] ; 3 uses
  %i.dh = call ptr @cfg80211_chandef_compatible(ptr noundef %i.s, ptr noundef nonnull %3) #19
  %.not211 = icmp eq ptr %i.dh, null
  br i1 %.not211, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.di = getelementptr i8, ptr %0, i64 1880
  %i.dj = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %i.di) #21 ; 0 uses
  br label %.thread272

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.dk = load i32, ptr %i.p, align 4             ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 4
  br i1 %i.dl, label %.thread272, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dm = load ptr, ptr %i.i, align 8
  %.not212 = icmp eq ptr %i.dm, null
  br i1 %.not212, label %.thread272, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = load ptr, ptr %i.ch, align 8
  %.not213 = icmp eq ptr %i.dn, null
  br i1 %.not213, label %.thread272, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.do = icmp ne i32 %i.dk, 4
  %i.dp = icmp ne ptr %i.l, null
  %or.cond9 = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond9, label %bb.aj, label %.thread272

bb.aj:                                            ; preds = %bb.ai
  %i.dq = getelementptr i8, ptr %i.d, i64 432
  %i.dr = load ptr, ptr %i.dq, align 8
  %.not214 = icmp eq ptr %i.dr, null
  br i1 %.not214, label %.thread272, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = load i8, ptr %i.l, align 1
  %i.dt = and i8 %i.ds, 1
  %.not215 = icmp eq i8 %i.dt, 0
  br i1 %.not215, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.du = getelementptr i8, ptr %i.l, i64 5       ; 2 uses
  call void @ieee80211_chandef_eht_oper(ptr noundef %i.du, ptr noundef nonnull %6) #19
  %i.dv = load i8, ptr %i.l, align 1              ; 2 uses
  %i.dw = and i8 %i.dv, 1
  %.not.i.i = icmp eq i8 %i.dw, 0
  %.0.i.i = select i1 %.not.i.i, ptr null, ptr %i.du ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  %i.dx = and i8 %i.dv, 2
  %.not5.i = icmp eq i8 %i.dx, 0
  %or.cond.i249 = or i1 %.not5.i, %.not.i
  br i1 %or.cond.i249, label %ieee80211_eht_oper_dis_subchan_bitmap.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dy = getelementptr i8, ptr %.0.i.i, i64 3
  %.val.i = load i16, ptr %i.dy, align 1
  br label %ieee80211_eht_oper_dis_subchan_bitmap.exit

ieee80211_eht_oper_dis_subchan_bitmap.exit:       ; preds = %bb.al, %bb.am
  %.0.i = phi i16 [ %.val.i, %bb.am ], [ 0, %bb.al ]
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 38
  store i16 %.0.i, ptr %i.dz, align 2
  %i.ea = call zeroext i1 @cfg80211_chandef_valid(ptr noundef nonnull %6) #19
  br i1 %i.ea, label %bb.an, label %.thread276

bb.an:                                            ; preds = %ieee80211_eht_oper_dis_subchan_bitmap.exit
  %i.eb = call ptr @cfg80211_chandef_compatible(ptr noundef %i.s, ptr noundef nonnull %6) #19
  %.not216 = icmp eq ptr %i.eb, null
  br i1 %.not216, label %.thread276, label %bb.ao

.thread276:                                       ; preds = %bb.an, %ieee80211_eht_oper_dis_subchan_bitmap.exit
  %.str.143.sink = phi ptr [ @.str.142, %ieee80211_eht_oper_dis_subchan_bitmap.exit ], [ @.str.143, %bb.an ]
  %i.ec = getelementptr i8, ptr %0, i64 1880
  %i.ed = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.143.sink, ptr noundef %i.ec) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.thread272

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ieee80211_hw_check.exit248, %bb.m, %bb.ak
  %i.ee = load i32, ptr %i.p, align 4
  %i.ef = icmp ugt i32 %i.ee, 5
  %i.eg = icmp ne ptr %i.n, null
  %or.cond11 = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond11, label %bb.aq, label %.thread272

bb.aq:                                            ; preds = %bb.ap
  %i.eh = getelementptr i8, ptr %i.d, i64 448
  %i.ei = load ptr, ptr %i.eh, align 8
  %.not223 = icmp eq ptr %i.ei, null
  br i1 %.not223, label %.thread272, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ej = getelementptr i8, ptr %i.d, i64 20
  %i.ek = load i8, ptr %i.ej, align 4
  %.not224 = icmp eq i8 %i.ek, -128
  br i1 %.not224, label %bb.bt, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false), !annotation !57
  %i.el = getelementptr i8, ptr %i.d, i64 496     ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %.not227 = icmp eq ptr %i.em, null
  br i1 %.not227, label %.thread285, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.en = load i16, ptr %i.n, align 1
  %i.eo = zext i16 %i.en to i32                   ; 2 uses
  %i.ep = and i32 %i.eo, 2
  %.not.i250 = icmp eq i32 %i.ep, 0
  %i.eq = and i32 %i.eo, 1
  %.not7.i = icmp eq i32 %i.eq, 0
  %spec.select.v.i = select i1 %.not7.i, i64 6, i64 10
  %spec.select.i = getelementptr i8, ptr %i.n, i64 %spec.select.v.i
  %.06.i = select i1 %.not.i250, ptr null, ptr %spec.select.i ; 3 uses
  %.not228 = icmp eq ptr %.06.i, null
  br i1 %.not228, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.er = load i8, ptr %i.em, align 1
  %i.es = and i8 %i.er, 16
  %.not229 = icmp eq i8 %i.es, 0
  br i1 %.not229, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.et = getelementptr i8, ptr %0, i64 1880
  %i.eu = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %i.et) #21 ; 0 uses
  br label %.thread285

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.ev = load ptr, ptr %i.t, align 8
  %i.ew = getelementptr i8, ptr %i.ev, i64 80
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = call zeroext i1 @cfg80211_chandef_npca_valid(ptr noundef %i.ex, ptr noundef nonnull %7, ptr noundef %.06.i) #19
  br i1 %i.ey, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ez = load ptr, ptr %i.t, align 8
  %i.fa = getelementptr i8, ptr %i.ez, i64 80
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = call i32 @cfg80211_chandef_add_npca(ptr noundef %i.fb, ptr noundef nonnull %7, ptr noundef %.06.i) #19
  %.not230 = icmp eq i32 %i.fc, 0
  br i1 %.not230, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fd = getelementptr i8, ptr %0, i64 1880
  %i.fe = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %i.fd) #21 ; 0 uses
  br label %.thread285

bb.az:                                            ; preds = %bb.ax
  %i.ff = getelementptr i8, ptr %0, i64 5072
  %.val244 = load i32, ptr %i.ff, align 8
  %i.fg = getelementptr i8, ptr %0, i64 7209
  %.val245 = load i8, ptr %i.fg, align 1, !range !28, !noundef !29
  %i.fh = call fastcc ptr @ieee80211_get_uhr_iftype_cap_vif(ptr noundef %i.ab, i32 %.val244, i8 %.val245) #22 ; 3 uses
  %.not231 = icmp eq ptr %i.fh, null
  br i1 %.not231, label %bb.ba, label %.critedge242, !prof !11

bb.ba:                                            ; preds = %bb.az
  call void asm sideeffect "2207: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2207b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2207) #20, !srcloc !429
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 439, i32 2305, i64 16) #20, !srcloc !430
  call void asm sideeffect "2208: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2208b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2208) #20, !srcloc !431
  br label %.thread285

.critedge242:                                     ; preds = %bb.az
  %i.fi = getelementptr i8, ptr %i.fh, i64 1
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = and i8 %i.fj, 16
end_hunk_0
