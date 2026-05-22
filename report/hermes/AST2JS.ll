inline.NumInlined: 2172
inline.NumDeleted: 1204
begin_hunk_0_@_ZN6hermes12_GLOBAL__N_15GenJS5visitEPNS_6ESTree15IfStatementNodeE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.a, ptr noundef nonnull @.str.306, i64 noundef 2) #13 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i16 26217, ptr %i.e, align 1
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store ptr %i.l, ptr %i.d, align 8, !tbaa !17
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val14 = load i8, ptr %i.m, align 8
  %i.n = trunc nuw i8 %.val14 to i1
  br i1 %i.n, label %bb.d, label %_ZN6hermes12_GLOBAL__N_15GenJS5spaceEb.exit

bb.d:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.val13 = load ptr, ptr %0, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %.val13, i8 noundef zeroext 32) #13 ; 0 uses
  br label %_ZN6hermes12_GLOBAL__N_15GenJS5spaceEb.exit

_ZN6hermes12_GLOBAL__N_15GenJS5spaceEb.exit:      ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit, %bb.d
  %i.p = load ptr, ptr %0, align 8, !tbaa !14, !nonnull !15, !align !16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %.not.i = icmp ult ptr %i.r, %i.t
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes12_GLOBAL__N_15GenJS5spaceEb.exit
  %i.u = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.p, i8 noundef zeroext 40) #13 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.f:                                             ; preds = %_ZN6hermes12_GLOBAL__N_15GenJS5spaceEb.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.v, ptr %i.q, align 8, !tbaa !17
  store i8 40, ptr %i.r, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.e, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !219
  tail call fastcc void @_ZN6hermes6ESTree24RecursiveVisitorDispatchINS_12_GLOBAL__N_15GenJSELb1EE5visitERS3_PNS0_4NodeES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.x)
  %i.y = load ptr, ptr %0, align 8, !tbaa !14, !nonnull !15, !align !16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %.not.i15 = icmp ult ptr %i.aa, %i.ac
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.y, i8 noundef zeroext 41) #13 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit17

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !17
  store i8 41, ptr %i.aa, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit17

_ZN4llvh11raw_ostreamlsEc.exit17:                 ; preds = %bb.g, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !150
  %.not = icmp eq ptr %i.ag, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !220 ; 6 uses
  br i1 %.not, label %_ZN6hermes12_GLOBAL__N_15GenJS15isIfWithoutElseEPNS_6ESTree4NodeE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit17
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN6hermes12_GLOBAL__N_15GenJS15isIfWithoutElseEPNS_6ESTree4NodeE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !23
  %i.aj = icmp eq i32 %i.ai, 32
  br i1 %i.aj, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6ESTree15IfStatementNodeENS2_4NodeEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i, label %_ZN6hermes12_GLOBAL__N_15GenJS15isIfWithoutElseEPNS_6ESTree4NodeE.exit

_ZN4llvh16dyn_cast_or_nullIN6hermes6ESTree15IfStatementNodeENS2_4NodeEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i: ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !150
  %.not3.i = icmp eq ptr %i.al, null
  br label %_ZN6hermes12_GLOBAL__N_15GenJS15isIfWithoutElseEPNS_6ESTree4NodeE.exit

_ZN6hermes12_GLOBAL__N_15GenJS15isIfWithoutElseEPNS_6ESTree4NodeE.exit: ; preds = %_ZN4llvh11raw_ostreamlsEc.exit17, %_ZN4llvh16dyn_cast_or_nullIN6hermes6ESTree15IfStatementNodeENS2_4NodeEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i, %bb.j, %bb.i
  %i.am = phi ptr [ %.pre, %bb.j ], [ %.pre, %_ZN4llvh16dyn_cast_or_nullIN6hermes6ESTree15IfStatementNodeENS2_4NodeEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ null, %bb.i ], [ %.pre, %_ZN4llvh11raw_ostreamlsEc.exit17 ]
  %i.an = phi i1 [ false, %bb.j ], [ %.not3.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes6ESTree15IfStatementNodeENS2_4NodeEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ false, %bb.i ], [ false, %_ZN4llvh11raw_ostreamlsEc.exit17 ]
  %i.ao = tail call fastcc noundef zeroext i1 @_ZN6hermes12_GLOBAL__N_15GenJS16visitStmtOrBlockEPNS_6ESTree4NodeEbS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.am, i1 noundef zeroext %i.an)
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !150
  %.not11 = icmp eq ptr %i.ap, null
  br i1 %.not11, label %bb.t, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes12_GLOBAL__N_15GenJS15isIfWithoutElseEPNS_6ESTree4NodeE.exit
  br i1 %i.ao, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %0, align 8, !tbaa !14, !nonnull !15, !align !16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !17 ; 2 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.aq, ptr noundef nonnull @.str.260, i64 noundef 1) #13 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit20

bb.n:                                             ; preds = %bb.l
  store i8 59, ptr %i.au, align 1
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !17
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit20

_ZN4llvh11raw_ostreamlsEPKc.exit20:               ; preds = %bb.m, %bb.n
  %i.az = load i8, ptr %i.m, align 8, !tbaa !10, !range !42, !noundef !15
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.o, label %_ZN6hermes12_GLOBAL__N_15GenJS7newlineEv.exit

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit20
  %i.bb = load ptr, ptr %0, align 8, !tbaa !14, !nonnull !15, !align !16
  %i.bc = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.bb, i8 noundef zeroext 10) #13
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !13
  %i.bf = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(36) %i.bc, i32 noundef %i.be) #13 ; 0 uses
  br label %_ZN6hermes12_GLOBAL__N_15GenJS7newlineEv.exit

bb.p:                                             ; preds = %bb.k
  %.val12 = load i8, ptr %i.m, align 8
  %i.bg = trunc nuw i8 %.val12 to i1
  br i1 %i.bg, label %bb.q, label %_ZN6hermes12_GLOBAL__N_15GenJS7newlineEv.exit

bb.q:                                             ; preds = %bb.p
  %.val = load ptr, ptr %0, align 8
  %i.bh = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %.val, i8 noundef zeroext 32) #13 ; 0 uses
  br label %_ZN6hermes12_GLOBAL__N_15GenJS7newlineEv.exit

_ZN6hermes12_GLOBAL__N_15GenJS7newlineEv.exit:    ; preds = %bb.q, %bb.p, %bb.o, %_ZN4llvh11raw_ostreamlsEPKc.exit20
  %i.bi = load ptr, ptr %0, align 8, !tbaa !14, !nonnull !15, !align !16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !17 ; 2 uses
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ult i64 %i.bp, 4
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN6hermes12_GLOBAL__N_15GenJS7newlineEv.exit
  %i.br = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bi, ptr noundef nonnull @.str.307, i64 noundef 4) #13 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit24

bb.s:                                             ; preds = %_ZN6hermes12_GLOBAL__N_15GenJS7newlineEv.exit
  store i32 1702063205, ptr %i.bm, align 1
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store ptr %i.bt, ptr %i.bl, align 8, !tbaa !17
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit24

_ZN4llvh11raw_ostreamlsEPKc.exit24:               ; preds = %bb.r, %bb.s
  %i.bu = load ptr, ptr %i.af, align 8, !tbaa !150
  %i.bv = tail call fastcc noundef zeroext i1 @_ZN6hermes12_GLOBAL__N_15GenJS16visitStmtOrBlockEPNS_6ESTree4NodeEbS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.bu, i1 noundef zeroext false) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZN6hermes12_GLOBAL__N_15GenJS15isIfWithoutElseEPNS_6ESTree4NodeE.exit, %_ZN4llvh11raw_ostreamlsEPKc.exit24
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(23)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2097152) i32 @"_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_12_GLOBAL__N_15GenJS26printEscapedStringContentsEN4llvh9StringRefEcS4_E3$_0EEjRPKcT0_"(ptr noundef nonnull align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 3 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 3 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !89     ; 10 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22    ; 2 uses
  %i.e = sext i8 %i.d to i32                      ; 6 uses
  %i.f = and i32 %i.e, 224
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %bb.b, label %bb.d, !prof !117

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 192
  %.not77 = icmp eq i32 %i.k, 128
  br i1 %.not77, label %bb.c, label %7, !prof !117

7:                                                ; preds = %bb.b
  store ptr %i.h, ptr %0, align 8, !tbaa !89
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store ptr %i.l, ptr %0, align 8, !tbaa !89
  %i.m = shl nsw i32 %i.e, 6
  %i.n = and i32 %i.m, 1984                       ; 2 uses
  %i.o = and i32 %i.j, 63
  %i.p = or disjoint i32 %i.o, %i.n
  %i.q = icmp samesign ult i32 %i.n, 128
  br i1 %i.q, label %.thread, label %.thread126, !prof !221

.thread:                                          ; preds = %bb.g, %7, %bb.c
  br label %.thread126

bb.d:                                             ; preds = %bb.a
  %i.r = and i32 %i.e, 240
  %i.s = icmp eq i32 %i.r, 224
  br i1 %i.s, label %bb.e, label %bb.h, !prof !117

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22    ; 2 uses
  %.not75 = icmp slt i8 %i.u, -64
  br i1 %.not75, label %bb.f, label %8, !prof !117

8:                                                ; preds = %bb.e
  store ptr %i.t, ptr %0, align 8, !tbaa !89
  br label %.thread126

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22    ; 2 uses
  %.not76 = icmp slt i8 %i.w, -64
  br i1 %.not76, label %bb.g, label %9, !prof !117

9:                                                ; preds = %bb.f
  store ptr %i.v, ptr %0, align 8, !tbaa !89
  br label %.thread126

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store ptr %i.x, ptr %0, align 8, !tbaa !89
  %i.y = shl nsw i32 %i.e, 12
  %i.z = and i32 %i.y, 61440
  %i.aa = and i8 %i.u, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 6
  %i.ad = or disjoint i32 %i.ac, %i.z             ; 2 uses
  %i.ae = and i8 %i.w, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ult i32 %i.ad, 2048
  br i1 %i.ah, label %.thread, label %.thread126, !prof !221

bb.h:                                             ; preds = %bb.d
  %i.ai = and i32 %i.e, 248
  %i.aj = icmp eq i32 %i.ai, 240
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  br i1 %i.aj, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !22  ; 2 uses
  %.not = icmp slt i8 %i.al, -64
  br i1 %.not, label %bb.k, label %bb.j, !prof !117

bb.j:                                             ; preds = %bb.i
  store ptr %i.ak, ptr %0, align 8, !tbaa !89
  br label %.thread126

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !22  ; 2 uses
  %.not73 = icmp slt i8 %i.an, -64
  br i1 %.not73, label %bb.m, label %bb.l, !prof !117

bb.l:                                             ; preds = %bb.k
  store ptr %i.am, ptr %0, align 8, !tbaa !89
  br label %.thread126

bb.m:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !22  ; 2 uses
  %.not74 = icmp slt i8 %i.ap, -64
  br i1 %.not74, label %bb.o, label %bb.n, !prof !117

bb.n:                                             ; preds = %bb.m
  store ptr %i.ao, ptr %0, align 8, !tbaa !89
  br label %.thread126

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.aq, ptr %0, align 8, !tbaa !89
  %i.ar = shl nsw i32 %i.e, 18
  %i.as = and i32 %i.ar, 1835008
  %i.at = and i8 %i.al, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 12
  %i.aw = or disjoint i32 %i.av, %i.as            ; 3 uses
  %i.ax = and i8 %i.an, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 6
  %i.ba = and i8 %i.ap, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.aw            ; 2 uses
  %i.be = icmp samesign ult i32 %i.aw, 65536
  br i1 %i.be, label %.thread126, label %bb.p, !prof !221

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp samesign ugt i32 %i.aw, 1114111
  br i1 %i.bf, label %bb.q, label %.thread126, !prof !221

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.bh, align 1, !tbaa !222
  store ptr @.str.322, ptr %2, align 8, !tbaa !22
  store i8 3, ptr %i.bg, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bi = zext nneg i32 %i.bd to i64
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !90
  store ptr %i.a, ptr %3, align 8, !tbaa !22, !alias.scope !226
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.bj, align 8, !tbaa !22, !alias.scope !226
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 15, ptr %i.bk, align 8, !tbaa !225, !alias.scope !226
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.bl, align 1, !tbaa !222, !alias.scope !226
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %1, ptr noundef nonnull align 8 dereferenceable(18) %2, ptr noundef nonnull align 8 dereferenceable(18) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %.thread126

bb.r:                                             ; preds = %bb.h
  store ptr %i.ak, ptr %0, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.bn, align 1, !tbaa !222
  store ptr @.str.323, ptr %5, align 8, !tbaa !22
  store i8 3, ptr %i.bm, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.bo = zext i8 %i.d to i64
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !90
  store ptr %i.b, ptr %6, align 8, !tbaa !22, !alias.scope !229
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.bp, align 8, !tbaa !22, !alias.scope !229
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 15, ptr %i.bq, align 8, !tbaa !225, !alias.scope !229
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.br, align 1, !tbaa !222, !alias.scope !229
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %4, ptr noundef nonnull align 8 dereferenceable(18) %5, ptr noundef nonnull align 8 dereferenceable(18) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.thread126

.thread126:                                       ; preds = %bb.o, %.thread, %bb.c, %bb.j, %bb.l, %bb.n, %bb.q, %8, %9, %bb.g, %bb.p, %bb.r
  %.6 = phi i32 [ 65533, %bb.r ], [ 65533, %bb.l ], [ 65533, %bb.j ], [ 65533, %8 ], [ %i.ag, %bb.g ], [ %i.bd, %bb.p ], [ 65533, %bb.o ], [ 65533, %9 ], [ 65533, %bb.q ], [ %i.p, %bb.c ], [ 65533, %bb.n ], [ 65533, %.thread ]
  ret i32 %.6
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind noalias writable sret(%"class.llvh::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #10 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !225, !noalias !232 ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !225, !noalias !232 ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.g, align 8, !tbaa !225, !alias.scope !232
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 1, ptr %i.h, align 1, !tbaa !222, !alias.scope !232
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !235
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i8 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !235
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.l = load i8, ptr %i.k, align 1, !tbaa !222, !noalias !232
  %i.m = icmp eq i8 %i.l, 1                       ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !noalias !232
  %spec.select.i = select i1 %i.m, i8 %i.b, i8 2
  %spec.select14.i = select i1 %i.m, ptr %.sroa.04.0.copyload.i, ptr %1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.o = load i8, ptr %i.n, align 1, !tbaa !222, !noalias !232
  %i.p = icmp eq i8 %i.o, 1                       ; 2 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %2, align 8, !noalias !232
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.03.0.i = select i1 %i.p, ptr %.sroa.03.0.copyload.i, ptr %2
  store ptr %spec.select14.i, ptr %0, align 8, !tbaa !22, !alias.scope !232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.i, ptr %i.q, align 8, !tbaa !22, !alias.scope !232
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %spec.select.i, ptr %i.r, align 8, !tbaa !225, !alias.scope !232
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !222, !alias.scope !232
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

_ZNK4llvh5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

declare noundef i64 @_ZN6hermes14numberToStringEdPcm(double noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes12_GLOBAL__N_15GenJS5visitEPNS_6ESTree22SequenceExpressionNodeE(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.08.012 = load ptr, ptr %i.b, align 8, !tbaa !142 ; 6 uses
  %.not1113 = icmp eq ptr %.sroa.08.012, %i.a
  br i1 %.not1113, label %._crit_edge, label %_ZN6hermes12_GLOBAL__N_15GenJS5commaEv.exit.peel

_ZN6hermes12_GLOBAL__N_15GenJS5commaEv.exit.peel: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.peel = icmp eq ptr %.sroa.08.012, null
  br i1 %.not.i.peel, label %_ZN6hermes12_GLOBAL__N_15GenJS10printChildEPNS_6ESTree4NodeES4_NS0_8ChildPosE.exit.peel, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes12_GLOBAL__N_15GenJS5commaEv.exit.peel
  %i.d = tail call fastcc noundef i32 @_ZN6hermes12_GLOBAL__N_15GenJS10needParensEPNS_6ESTree4NodeES4_NS0_8ChildPosE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %.sroa.08.012, i32 noundef range(i32 0, 3) 0), !inline_history !158
  switch i32 %i.d, label %_ZN4llvh11raw_ostreamlsEc.exit.i.thread.peel [
    i32 1, label %bb.f
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !14, !nonnull !15, !align !16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %.not.i5.i.peel = icmp ult ptr %i.g, %i.i
  br i1 %.not.i5.i.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.e, i8 noundef zeroext 32) #13, !inline_history !159 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i.thread.peel

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.k, ptr %i.f, align 8, !tbaa !17
  store i8 32, ptr %i.g, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i.thread.peel

bb.f:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !14, !nonnull !15, !align !16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %.not.i.i.peel = icmp ult ptr %i.n, %i.p
  br i1 %.not.i.i.peel, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.l, i8 noundef zeroext 40) #13, !inline_history !159 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.r, ptr %i.m, align 8, !tbaa !17
  store i8 40, ptr %i.n, align 1, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call fastcc void @_ZN6hermes6ESTree24RecursiveVisitorDispatchINS_12_GLOBAL__N_15GenJSELb1EE5visitERS3_PNS0_4NodeES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.sroa.08.012)
  %i.s = load ptr, ptr %0, align 8, !tbaa !14, !nonnull !15, !align !16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %.not.i8.i.peel = icmp ult ptr %i.u, %i.w
  br i1 %.not.i8.i.peel, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.s, i8 noundef zeroext 41) #13, !inline_history !159 ; 0 uses
  br label %_ZN6hermes12_GLOBAL__N_15GenJS10printChildEPNS_6ESTree4NodeES4_NS0_8ChildPosE.exit.peel

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.y, ptr %i.t, align 8, !tbaa !17
  store i8 41, ptr %i.u, align 1, !tbaa !22
  br label %_ZN6hermes12_GLOBAL__N_15GenJS10printChildEPNS_6ESTree4NodeES4_NS0_8ChildPosE.exit.peel

_ZN4llvh11raw_ostreamlsEc.exit.i.thread.peel:     ; preds = %bb.e, %bb.d, %bb.b
  tail call fastcc void @_ZN6hermes6ESTree24RecursiveVisitorDispatchINS_12_GLOBAL__N_15GenJSELb1EE5visitERS3_PNS0_4NodeES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.sroa.08.012)
  br label %_ZN6hermes12_GLOBAL__N_15GenJS10printChildEPNS_6ESTree4NodeES4_NS0_8ChildPosE.exit.peel

_ZN6hermes12_GLOBAL__N_15GenJS10printChildEPNS_6ESTree4NodeES4_NS0_8ChildPosE.exit.peel: ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i.thread.peel, %bb.k, %bb.j, %_ZN6hermes12_GLOBAL__N_15GenJS5commaEv.exit.peel
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8
  %.sroa.08.0.peel = load ptr, ptr %i.z, align 8, !tbaa !142 ; 2 uses
  %.not11.peel = icmp eq ptr %.sroa.08.0.peel, %i.a
  br i1 %.not11.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZN6hermes12_GLOBAL__N_15GenJS10printChildEPNS_6ESTree4NodeES4_NS0_8ChildPosE.exit, %_ZN6hermes12_GLOBAL__N_15GenJS10printChildEPNS_6ESTree4NodeES4_NS0_8ChildPosE.exit.peel, %bb.a
  ret void

.peel.next:                                       ; preds = %_ZN6hermes12_GLOBAL__N_15GenJS10printChildEPNS_6ESTree4NodeES4_NS0_8ChildPosE.exit.peel, %_ZN6hermes12_GLOBAL__N_15GenJS10printChildEPNS_6ESTree4NodeES4_NS0_8ChildPosE.exit
  %.sroa.08.015 = phi ptr [ %.sroa.08.0, %_ZN6hermes12_GLOBAL__N_15GenJS10printChildEPNS_6ESTree4NodeES4_NS0_8ChildPosE.exit ], [ %.sroa.08.0.peel, %_ZN6hermes12_GLOBAL__N_15GenJS10printChildEPNS_6ESTree4NodeES4_NS0_8ChildPosE.exit.peel ] ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %.val7 = load i8, ptr %i.c, align 8, !tbaa !10, !range !42, !noundef !15
  %i.aa = trunc nuw i8 %.val7 to i1               ; 2 uses
  %i.ab = select i1 %i.aa, ptr @.str.263, ptr @.str.264 ; 2 uses
  %i.ac = select i1 %i.aa, i64 2, i64 1           ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ugt i64 %i.ac, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.peel.next
  %i.al = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.val, ptr noundef nonnull %i.ab, i64 noundef %i.ac) #13 ; 0 uses
  br label %_ZN6hermes12_GLOBAL__N_15GenJS5commaEv.exit

bb.m:                                             ; preds = %.peel.next
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i64 %i.ac, i1 false)
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ac
  store ptr %i.an, ptr %i.af, align 8, !tbaa !17
  br label %_ZN6hermes12_GLOBAL__N_15GenJS5commaEv.exit

_ZN6hermes12_GLOBAL__N_15GenJS5commaEv.exit:      ; preds = %bb.m, %bb.l
  %.not.i = icmp eq ptr %.sroa.08.015, null
  br i1 %.not.i, label %_ZN6hermes12_GLOBAL__N_15GenJS10printChildEPNS_6ESTree4NodeES4_NS0_8ChildPosE.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes12_GLOBAL__N_15GenJS5commaEv.exit
  %i.ao = tail call fastcc noundef i32 @_ZN6hermes12_GLOBAL__N_15GenJS10needParensEPNS_6ESTree4NodeES4_NS0_8ChildPosE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %.sroa.08.015, i32 noundef range(i32 0, 3) 2), !inline_history !158
  switch i32 %i.ao, label %_ZN4llvh11raw_ostreamlsEc.exit.i.thread [
    i32 1, label %bb.o
    i32 2, label %bb.r
  ]

end_hunk_0
