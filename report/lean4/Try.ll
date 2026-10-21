Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Try?download=true
inline.NumInlined: 9001
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__1_spec__1:bb.a
  br label %bb.bv

bb.e:                                             ; preds = %.lr.ph, %lean_dec_ref.exit117
  %.066171 = phi i64 [ %4, %.lr.ph ], [ %i.cz, %lean_dec_ref.exit117 ] ; 2 uses
  %.068170 = phi ptr [ %5, %.lr.ph ], [ %.275156, %lean_dec_ref.exit117 ] ; 2 uses
  %.val129 = load i64, ptr %i.a, align 8, !tbaa !13
  %i.i = shl i64 %.val129, 1
  %i.j = or disjoint i64 %i.i, 1
  %i.k = inttoptr i64 %i.j to ptr
  %.val.i.i = load i32, ptr %0, align 8, !tbaa !11 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i, 0
  br i1 %i.l, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i32 %.val.i.i, 1
  store i32 %i.m, ptr %0, align 8, !tbaa !11
  br label %lean_inc_ref.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  %i.o = tail call ptr @l_Array_toSubarray___redArg(ptr noundef nonnull %0, ptr noundef nonnull inttoptr (i64 3 to ptr), ptr noundef nonnull %i.k) #10 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15   ; 14 uses
  %.val.i.i130 = load i32, ptr %i.q, align 4, !tbaa !11 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i130, 0
  br i1 %i.r, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %lean_inc_ref.exit
  %i.s = add nuw i32 %.val.i.i130, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !11
  br label %lean_inc_ref.exit132

bb.j:                                             ; preds = %lean_inc_ref.exit
  %.not.i.i131 = icmp eq i32 %.val.i.i130, 0
  br i1 %.not.i.i131, label %lean_inc_ref.exit132, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = atomicrmw sub ptr %i.q, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit132

lean_inc_ref.exit132:                             ; preds = %bb.i, %bb.j, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15   ; 18 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 3 uses
  %.not.i80 = trunc i64 %i.w to i1                ; 5 uses
  br i1 %.not.i80, label %lean_inc.exit81, label %bb.l

bb.l:                                             ; preds = %lean_inc_ref.exit132
  %.val.i.i133 = load i32, ptr %i.v, align 4, !tbaa !11 ; 3 uses
  %i.x = icmp sgt i32 %.val.i.i133, 0
  br i1 %i.x, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.y = add nuw i32 %.val.i.i133, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !11
  br label %lean_inc.exit81

bb.n:                                             ; preds = %bb.l
  %.not.i.i134 = icmp eq i32 %.val.i.i133, 0
  br i1 %.not.i.i134, label %lean_inc.exit81, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit81

lean_inc.exit81:                                  ; preds = %bb.o, %bb.n, %bb.m, %lean_inc_ref.exit132
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15 ; 16 uses
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = and i64 %i.ac, 1
  %.not.i78 = icmp eq i64 %i.ad, 0                ; 3 uses
  br i1 %.not.i78, label %bb.p, label %lean_inc.exit79

bb.p:                                             ; preds = %lean_inc.exit81
  %.val.i.i136 = load i32, ptr %i.ab, align 4, !tbaa !11 ; 3 uses
  %i.ae = icmp sgt i32 %.val.i.i136, 0
  br i1 %i.ae, label %bb.q, label %bb.r, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.af = add nuw i32 %.val.i.i136, 1
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !11
  br label %lean_inc.exit79

bb.r:                                             ; preds = %bb.p
  %.not.i.i137 = icmp eq i32 %.val.i.i136, 0
  br i1 %.not.i.i137, label %lean_inc.exit79, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = atomicrmw sub ptr %i.ab, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit79

lean_inc.exit79:                                  ; preds = %bb.s, %bb.r, %bb.q, %lean_inc.exit81
  %i.ah = load i32, ptr %i.o, align 8, !tbaa !11  ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.t, label %bb.u, !prof !16

bb.t:                                             ; preds = %lean_inc.exit79
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !11
  br label %lean_dec_ref.exit115

bb.u:                                             ; preds = %lean_inc.exit79
  %.not.i114 = icmp eq i32 %i.ah, 0
  br i1 %.not.i114, label %lean_dec_ref.exit115, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #10
  br label %lean_dec_ref.exit115

lean_dec_ref.exit115:                             ; preds = %bb.t, %bb.u, %bb.v
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.066171
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15 ; 10 uses
  %i.am = and i64 %i.w, 1                         ; 2 uses
  %i.an = and i64 %i.am, %i.ac
  %or.cond.not = icmp eq i64 %i.an, 0
  br i1 %or.cond.not, label %lean_nat_lt.exit, label %.split, !prof !23

.split:                                           ; preds = %lean_dec_ref.exit115
  %i.ao = icmp ult ptr %i.v, %i.ab
  br i1 %i.ao, label %bb.ai, label %bb.w

lean_nat_lt.exit:                                 ; preds = %lean_dec_ref.exit115
  %i.ap = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.v, ptr noundef %i.ab) #10
  br i1 %i.ap, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %.split, %lean_nat_lt.exit
  br i1 %.not.i78, label %bb.x, label %lean_dec.exit94

bb.x:                                             ; preds = %bb.w
  %i.aq = load i32, ptr %i.ab, align 4, !tbaa !11 ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %bb.y, label %bb.z, !prof !16

bb.y:                                             ; preds = %bb.x
  %i.as = add nsw i32 %i.aq, -1
  store i32 %i.as, ptr %i.ab, align 4, !tbaa !11
  br label %lean_dec.exit94

bb.z:                                             ; preds = %bb.x
  %.not.i95 = icmp eq i32 %i.aq, 0
  br i1 %.not.i95, label %lean_dec.exit94, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #10
  br label %lean_dec.exit94

lean_dec.exit94:                                  ; preds = %bb.aa, %bb.z, %bb.y, %bb.w
  br i1 %.not.i80, label %lean_dec.exit92, label %bb.ab

bb.ab:                                            ; preds = %lean_dec.exit94
  %i.at = load i32, ptr %i.v, align 4, !tbaa !11  ; 3 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %bb.ab
  %i.av = add nsw i32 %i.at, -1
  store i32 %i.av, ptr %i.v, align 4, !tbaa !11
  br label %lean_dec.exit92

bb.ad:                                            ; preds = %bb.ab
  %.not.i96 = icmp eq i32 %i.at, 0
  br i1 %.not.i96, label %lean_dec.exit92, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #10
  br label %lean_dec.exit92

lean_dec.exit92:                                  ; preds = %bb.ae, %bb.ad, %bb.ac, %lean_dec.exit94
  %i.aw = load i32, ptr %i.q, align 4, !tbaa !11  ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %lean_dec.exit92
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %i.q, align 4, !tbaa !11
  br label %lean_dec_ref.exit113

bb.ag:                                            ; preds = %lean_dec.exit92
  %.not.i112 = icmp eq i32 %i.aw, 0
  br i1 %.not.i112, label %lean_dec_ref.exit113, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #10
  br label %lean_dec_ref.exit113

bb.ai:                                            ; preds = %.split, %lean_nat_lt.exit
  br i1 %.not.i126, label %.critedge.i127, label %lean_nat_eq.exit, !prof !9

.critedge.i127:                                   ; preds = %bb.ai
  %i.az = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %1, ptr noundef nonnull inttoptr (i64 1 to ptr)) #10
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.ai, %.critedge.i127
  %.0.i128 = phi i1 [ %i.az, %.critedge.i127 ], [ %i.e, %bb.ai ]
  %i.ba = getelementptr i8, ptr %i.q, i64 8
  %.val = load i64, ptr %i.ba, align 8, !tbaa !13
  %i.bb = shl i64 %.val, 1
  %i.bc = or disjoint i64 %i.bb, 1
  %i.bd = inttoptr i64 %i.bc to ptr               ; 6 uses
  br i1 %.not.i78, label %lean_nat_le.exit, label %lean_nat_le.exit.thread, !prof !9

lean_nat_le.exit:                                 ; preds = %lean_nat_eq.exit
  %i.be = tail call zeroext i1 @lean_nat_big_le(ptr noundef %i.ab, ptr noundef nonnull %i.bd) #10
  br i1 %i.be, label %lean_dec.exit90, label %bb.aj

lean_nat_le.exit.thread:                          ; preds = %lean_nat_eq.exit
  %.not168 = icmp ugt ptr %i.ab, %i.bd
  %spec.select = select i1 %.not168, ptr %i.bd, ptr %i.ab
  br label %lean_dec.exit90

bb.aj:                                            ; preds = %lean_nat_le.exit
  %i.bf = load i32, ptr %i.ab, align 4, !tbaa !11 ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.ak, label %bb.al, !prof !16

bb.ak:                                            ; preds = %bb.aj
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %i.ab, align 4, !tbaa !11
  br label %lean_dec.exit90

bb.al:                                            ; preds = %bb.aj
  %.not.i98 = icmp eq i32 %i.bf, 0
  br i1 %.not.i98, label %lean_dec.exit90, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #10
  br label %lean_dec.exit90

lean_dec.exit90:                                  ; preds = %lean_nat_le.exit.thread, %bb.ak, %bb.al, %bb.am, %lean_nat_le.exit
  %.070 = phi ptr [ %spec.select, %lean_nat_le.exit.thread ], [ %i.ab, %lean_nat_le.exit ], [ %i.bd, %bb.am ], [ %i.bd, %bb.al ], [ %i.bd, %bb.ak ] ; 10 uses
  %i.bi = ptrtoint ptr %.070 to i64               ; 4 uses
  %i.bj = trunc i64 %i.bi to i1
  %or.cond166 = select i1 %.not.i80, i1 %i.bj, i1 false, !prof !24
  br i1 %or.cond166, label %.split197, label %lean_nat_lt.exit122, !prof !24

.split197:                                        ; preds = %lean_dec.exit90
  %i.bk = icmp ult ptr %i.v, %.070
  br i1 %i.bk, label %bb.az, label %bb.an

lean_nat_lt.exit122:                              ; preds = %lean_dec.exit90
  %i.bl = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.v, ptr noundef %.070) #10
  br i1 %i.bl, label %bb.az, label %bb.an

bb.an:                                            ; preds = %.split197, %lean_nat_lt.exit122
  %i.bm = and i64 %i.bi, 1
  %.not.i87 = icmp eq i64 %i.bm, 0
  br i1 %.not.i87, label %bb.ao, label %lean_dec.exit88

bb.ao:                                            ; preds = %bb.an
  %i.bn = load i32, ptr %.070, align 4, !tbaa !11 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.ap, label %bb.aq, !prof !16

bb.ap:                                            ; preds = %bb.ao
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %.070, align 4, !tbaa !11
  br label %lean_dec.exit88

bb.aq:                                            ; preds = %bb.ao
  %.not.i100 = icmp eq i32 %i.bn, 0
  br i1 %.not.i100, label %lean_dec.exit88, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.070) #10
  br label %lean_dec.exit88

lean_dec.exit88:                                  ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an
  br i1 %.not.i80, label %lean_dec.exit86, label %bb.as

bb.as:                                            ; preds = %lean_dec.exit88
  %i.bq = load i32, ptr %i.v, align 4, !tbaa !11  ; 3 uses
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %bb.at, label %bb.au, !prof !16

bb.at:                                            ; preds = %bb.as
  %i.bs = add nsw i32 %i.bq, -1
  store i32 %i.bs, ptr %i.v, align 4, !tbaa !11
  br label %lean_dec.exit86

bb.au:                                            ; preds = %bb.as
  %.not.i102 = icmp eq i32 %i.bq, 0
  br i1 %.not.i102, label %lean_dec.exit86, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #10
  br label %lean_dec.exit86

lean_dec.exit86:                                  ; preds = %bb.av, %bb.au, %bb.at, %lean_dec.exit88
  %i.bt = load i32, ptr %i.q, align 8, !tbaa !11  ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.aw, label %bb.ax, !prof !16

bb.aw:                                            ; preds = %lean_dec.exit86
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !11
  br label %lean_dec_ref.exit113

bb.ax:                                            ; preds = %lean_dec.exit86
  %.not.i110 = icmp eq i32 %i.bt, 0
  br i1 %.not.i110, label %lean_dec_ref.exit113, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #10
  br label %lean_dec_ref.exit113

bb.az:                                            ; preds = %.split197, %lean_nat_lt.exit122
  %.not.i139 = icmp eq i64 %i.am, 0
  br i1 %.not.i139, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bw = lshr i64 %i.w, 1
  br label %lean_usize_of_nat.exit

bb.bb:                                            ; preds = %bb.az
  %i.bx = tail call i64 @lean_usize_of_big_nat(ptr noundef %i.v) #10
  br label %lean_usize_of_nat.exit

lean_usize_of_nat.exit:                           ; preds = %bb.ba, %bb.bb
  %i.by = phi i64 [ %i.bw, %bb.ba ], [ %i.bx, %bb.bb ]
  br i1 %.not.i80, label %lean_dec.exit84, label %bb.bc

bb.bc:                                            ; preds = %lean_usize_of_nat.exit
  %i.bz = load i32, ptr %i.v, align 4, !tbaa !11  ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.bd, label %bb.be, !prof !16

bb.bd:                                            ; preds = %bb.bc
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.v, align 4, !tbaa !11
  br label %lean_dec.exit84

bb.be:                                            ; preds = %bb.bc
  %.not.i104 = icmp eq i32 %i.bz, 0
  br i1 %.not.i104, label %lean_dec.exit84, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #10
  br label %lean_dec.exit84

lean_dec.exit84:                                  ; preds = %bb.bf, %bb.be, %bb.bd, %lean_usize_of_nat.exit
  %i.cc = and i64 %i.bi, 1
  %.not.i140 = icmp eq i64 %i.cc, 0
  br i1 %.not.i140, label %bb.bg, label %lean_usize_of_nat.exit141

lean_usize_of_nat.exit141:                        ; preds = %lean_dec.exit84
  %i.cd = lshr i64 %i.bi, 1
  br label %lean_dec.exit

bb.bg:                                            ; preds = %lean_dec.exit84
  %i.ce = tail call i64 @lean_usize_of_big_nat(ptr noundef %.070) #10 ; 3 uses
  %i.cf = load i32, ptr %.070, align 4, !tbaa !11 ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.bh, label %bb.bi, !prof !16

bb.bh:                                            ; preds = %bb.bg
  %i.ch = add nsw i32 %i.cf, -1
  store i32 %i.ch, ptr %.070, align 4, !tbaa !11
  br label %lean_dec.exit

bb.bi:                                            ; preds = %bb.bg
  %.not.i106 = icmp eq i32 %i.cf, 0
  br i1 %.not.i106, label %lean_dec.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.070) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_usize_of_nat.exit141, %bb.bj, %bb.bi, %bb.bh
  %i.ci = phi i64 [ %i.ce, %bb.bj ], [ %i.ce, %bb.bi ], [ %i.ce, %bb.bh ], [ %i.cd, %lean_usize_of_nat.exit141 ]
  %i.cj = ptrtoint ptr %i.al to i64
  %i.ck = and i64 %i.cj, 1
  %.not.i76 = icmp eq i64 %i.ck, 0
  br i1 %.not.i76, label %bb.bk, label %lean_inc.exit77

bb.bk:                                            ; preds = %lean_dec.exit
  %.val.i.i142 = load i32, ptr %i.al, align 4, !tbaa !11 ; 3 uses
  %i.cl = icmp sgt i32 %.val.i.i142, 0
  br i1 %i.cl, label %bb.bl, label %bb.bm, !prof !16

bb.bl:                                            ; preds = %bb.bk
  %i.cm = add nuw i32 %.val.i.i142, 1
  store i32 %i.cm, ptr %i.al, align 4, !tbaa !11
  br label %lean_inc.exit77

bb.bm:                                            ; preds = %bb.bk
  %.not.i.i143 = icmp eq i32 %.val.i.i142, 0
  br i1 %.not.i.i143, label %lean_inc.exit77, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.cn = atomicrmw sub ptr %i.al, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit77

lean_inc.exit77:                                  ; preds = %bb.bn, %bb.bm, %bb.bl, %lean_dec.exit
  %i.co = tail call zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__0(ptr noundef %i.al, ptr noundef %1, ptr noundef nonnull %i.q, i64 noundef %i.by, i64 noundef %i.ci)
  %i.cp = load i32, ptr %i.q, align 8, !tbaa !11  ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %bb.bo, label %bb.bp, !prof !16

bb.bo:                                            ; preds = %lean_inc.exit77
  %i.cr = add nsw i32 %i.cp, -1
  store i32 %i.cr, ptr %i.q, align 8, !tbaa !11
  br label %lean_dec_ref.exit109

bb.bp:                                            ; preds = %lean_inc.exit77
  %.not.i108 = icmp eq i32 %i.cp, 0
  br i1 %.not.i108, label %lean_dec_ref.exit109, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #10
  br label %lean_dec_ref.exit109

lean_dec_ref.exit109:                             ; preds = %bb.bo, %bb.bp, %bb.bq
  %i.cs = icmp eq i8 %i.co, 0
  %or.cond167 = select i1 %i.cs, i1 true, i1 %.0.i128
  br i1 %or.cond167, label %lean_dec_ref.exit113, label %lean_dec_ref.exit117

lean_dec_ref.exit113:                             ; preds = %lean_dec_ref.exit109, %bb.ay, %bb.ax, %bb.aw, %bb.ah, %bb.ag, %bb.af
  %i.ct = ptrtoint ptr %i.al to i64
  %i.cu = and i64 %i.ct, 1
  %.not.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i, label %bb.br, label %.thread152

bb.br:                                            ; preds = %lean_dec_ref.exit113
  %.val.i.i145 = load i32, ptr %i.al, align 4, !tbaa !11 ; 3 uses
  %i.cv = icmp sgt i32 %.val.i.i145, 0
  br i1 %i.cv, label %bb.bs, label %bb.bt, !prof !16

bb.bs:                                            ; preds = %bb.br
  %i.cw = add nuw i32 %.val.i.i145, 1
  store i32 %i.cw, ptr %i.al, align 4, !tbaa !11
  br label %.thread152

bb.bt:                                            ; preds = %bb.br
  %.not.i.i146 = icmp eq i32 %.val.i.i145, 0
  br i1 %.not.i.i146, label %.thread152, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.cx = atomicrmw sub ptr %i.al, i32 1 monotonic, align 4 ; 0 uses
  br label %.thread152

.thread152:                                       ; preds = %lean_dec_ref.exit113, %bb.bs, %bb.bt, %bb.bu
  %i.cy = tail call ptr @lean_array_push(ptr noundef %.068170, ptr noundef %i.al) #10
  br label %lean_dec_ref.exit117

lean_dec_ref.exit117:                             ; preds = %lean_dec_ref.exit109, %.thread152
  %.275156 = phi ptr [ %i.cy, %.thread152 ], [ %.068170, %lean_dec_ref.exit109 ] ; 2 uses
  %i.cz = add nuw i64 %.066171, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cz, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.e

bb.bv:                                            ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %.068.lcssa
}

declare ptr @l_Array_toSubarray___redArg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__1_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8
  %.val23 = load i64, ptr %i.a, align 8, !tbaa !13
  %i.b = load i32, ptr %3, align 8, !tbaa !11     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %3, align 8, !tbaa !11
  br label %lean_dec.exit15

bb.c:                                             ; preds = %bb.a
  %.not.i16 = icmp eq i32 %i.b, 0
  br i1 %.not.i16, label %lean_dec.exit15, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec.exit15

lean_dec.exit15:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %4, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !13
  %i.f = load i32, ptr %4, align 8, !tbaa !11     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %lean_dec.exit15
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 8, !tbaa !11
  br label %lean_dec.exit13

bb.f:                                             ; preds = %lean_dec.exit15
  %.not.i17 = icmp eq i32 %i.f, 0
  br i1 %.not.i17, label %lean_dec.exit13, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #10
  br label %lean_dec.exit13

lean_dec.exit13:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__1_spec__1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.val23, i64 noundef %.val, ptr noundef %5)
  %i.j = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %lean_dec.exit13
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit22

bb.i:                                             ; preds = %lean_dec.exit13
  %.not.i21 = icmp eq i32 %i.j, 0
  br i1 %.not.i21, label %lean_dec_ref.exit22, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec_ref.exit22

lean_dec_ref.exit22:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.m = ptrtoint ptr %1 to i64
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.k, label %lean_dec.exit

bb.k:                                             ; preds = %lean_dec_ref.exit22
  %i.o = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit

bb.m:                                             ; preds = %bb.k
  %.not.i19 = icmp eq i32 %i.o, 0
  br i1 %.not.i19, label %lean_dec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.m, %bb.l, %lean_dec_ref.exit22
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_Tactic_Try_0__Lean_Elab_Tactic_Try_getTacsSolvedAll_spec__1(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %.not = icmp ult i64 %4, %3
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %i.a, -1
  store i32 %i.c, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit116

bb.d:                                             ; preds = %bb.b
  %.not.i115 = icmp eq i32 %i.a, 0
  br i1 %.not.i115, label %lean_dec_ref.exit116, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec_ref.exit116

bb.f:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val128 = load i64, ptr %i.d, align 8, !tbaa !13
  %i.e = shl i64 %.val128, 1
  %i.f = or disjoint i64 %i.e, 1
  %i.g = inttoptr i64 %i.f to ptr
  %.val.i.i = load i32, ptr %1, align 8, !tbaa !11 ; 3 uses
  %i.h = icmp sgt i32 %.val.i.i, 0
  br i1 %i.h, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.i = add nuw i32 %.val.i.i, 1
  store i32 %i.i, ptr %1, align 8, !tbaa !11
  br label %lean_inc_ref.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.g, %bb.h, %bb.i
  %i.k = tail call ptr @l_Array_toSubarray___redArg(ptr noundef nonnull %1, ptr noundef nonnull inttoptr (i64 3 to ptr), ptr noundef nonnull %i.g) #10 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15   ; 14 uses
  %.val.i.i129 = load i32, ptr %i.m, align 4, !tbaa !11 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i129, 0
  br i1 %i.n, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %lean_inc_ref.exit
  %i.o = add nuw i32 %.val.i.i129, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !11
  br label %lean_inc_ref.exit131

bb.k:                                             ; preds = %lean_inc_ref.exit
  %.not.i.i130 = icmp eq i32 %.val.i.i129, 0
  br i1 %.not.i.i130, label %lean_inc_ref.exit131, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit131

lean_inc_ref.exit131:                             ; preds = %bb.j, %bb.k, %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 18 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 3 uses
  %.not.i79 = trunc i64 %i.s to i1                ; 5 uses
  br i1 %.not.i79, label %lean_inc.exit80, label %bb.m

bb.m:                                             ; preds = %lean_inc_ref.exit131
  %.val.i.i132 = load i32, ptr %i.r, align 4, !tbaa !11 ; 3 uses
  %i.t = icmp sgt i32 %.val.i.i132, 0
  br i1 %i.t, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.u = add nuw i32 %.val.i.i132, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !11
  br label %lean_inc.exit80

bb.o:                                             ; preds = %bb.m
  %.not.i.i133 = icmp eq i32 %.val.i.i132, 0
  br i1 %.not.i.i133, label %lean_inc.exit80, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = atomicrmw sub ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit80

lean_inc.exit80:                                  ; preds = %bb.p, %bb.o, %bb.n, %lean_inc_ref.exit131
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15   ; 16 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = and i64 %i.y, 1
  %.not.i77 = icmp eq i64 %i.z, 0                 ; 3 uses
  br i1 %.not.i77, label %bb.q, label %lean_inc.exit78

end_hunk_0
