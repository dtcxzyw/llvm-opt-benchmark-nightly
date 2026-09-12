Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4toml2v34impl9formatterC2EPKNS0_4nodeEPKNS0_5tableERKNS1_19formatter_constantsERKNS1_16formatter_configE:bb.a
  %i.y = add <2 x i64> %i.w, %vec.phi15           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !696

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.y, %i.x
  %i.aa = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !126, !alias.scope !706, !noalias !705
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.aa, %middle.block ] ; 2 uses
  %i.ab = add i64 %i.p, %i.o                      ; 2 uses
  %.014.ph19 = ptrtoaddr ptr %.014.ph to i64      ; 2 uses
  %i.ac = sub i64 %i.ab, %.014.ph19
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader17, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.ai, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader17 ] ; 2 uses
  %i.ad = phi i64 [ %i.ah, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader17 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader17 ]
  %i.ae = load i8, ptr %.014.prol, align 1, !tbaa !69
  %i.af = icmp eq i8 %i.ae, 9
  %i.ag = select i1 %i.af, i64 4, i64 1
  %i.ah = add i64 %i.ag, %i.ad                    ; 3 uses
  store i64 %i.ah, ptr %i.k, align 8, !tbaa !126
  %i.ai = getelementptr inbounds nuw i8, ptr %.014.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !698

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader17
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader17 ], [ %i.ai, %.lr.ph.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.preheader17 ], [ %i.ah, %.lr.ph.prol ]
  %i.aj = sub i64 %.014.ph19, %i.ab
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.al = and i64 %i.j, 448
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.al, ptr %i.am, align 8, !tbaa !127
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.bh, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.an = phi i64 [ %i.bg, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.ao = load i8, ptr %.014, align 1, !tbaa !69
  %i.ap = icmp eq i8 %i.ao, 9
  %i.aq = select i1 %i.ap, i64 4, i64 1
  %i.ar = add i64 %i.aq, %i.an                    ; 2 uses
  store i64 %i.ar, ptr %i.k, align 8, !tbaa !126
  %i.as = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
  %i.au = icmp eq i8 %i.at, 9
  %i.av = select i1 %i.au, i64 4, i64 1
  %i.aw = add i64 %i.av, %i.ar                    ; 2 uses
  store i64 %i.aw, ptr %i.k, align 8, !tbaa !126
  %i.ax = getelementptr inbounds nuw i8, ptr %.014, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !69
  %i.az = icmp eq i8 %i.ay, 9
  %i.ba = select i1 %i.az, i64 4, i64 1
  %i.bb = add i64 %i.ba, %i.aw                    ; 2 uses
  store i64 %i.bb, ptr %i.k, align 8, !tbaa !126
  %i.bc = getelementptr inbounds nuw i8, ptr %.014, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !69
  %i.be = icmp eq i8 %i.bd, 9
  %i.bf = select i1 %i.be, i64 4, i64 1
  %i.bg = add i64 %i.bf, %i.bb                    ; 2 uses
  store i64 %i.bg, ptr %i.k, align 8, !tbaa !126
  %i.bh = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %.not12.3 = icmp eq ptr %i.bh, %i.q
  br i1 %.not12.3, label %._crit_edge, label %.lr.ph, !llvm.loop !699
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v34impl9formatter6attachERSo(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(69) initializes((56, 69)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.a, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 1, ptr %i.b, align 4, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.c, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v34impl9formatter6detachEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(69) initializes((56, 64)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.a, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter13print_newlineEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !129, !range !104, !noundef !105
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %or.cond = or i1 %1, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.a, align 4, !tbaa !129
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter12print_indentEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.02 = phi i32 [ 0, %.lr.ph ], [ %i.i, %bb.b ]
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !130
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !tbaa !123
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !124
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload) ; 0 uses
  store i8 0, ptr %i.f, align 4, !tbaa !129
  %i.i = add nuw nsw i32 %.02, 1                  ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !128
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !37
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter17print_unformattedEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, i8 noundef signext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef signext %1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.d, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter17print_unformattedESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.d, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) %0, i64 %1, ptr %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 16 uses
  %i.b = alloca [32 x i8], align 16               ; 16 uses
  %i.c = alloca [8 x i8], align 1                 ; 9 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !125
  %i.g = and i64 %i.f, 4
  %.not.i156.not = icmp eq i64 %i.g, 0
  %.sroa.3107.0 = select i1 %.not.i156.not, ptr @.str.23, ptr @.str.22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !130
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %.sroa.3107.0, i64 noundef 2) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.k, align 4, !tbaa !129
  br label %bb.cq

bb.c:                                             ; preds = %bb.a
  %spec.select301 = select i1 %4, i32 0, i32 16   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !125  ; 4 uses
  %6 = trunc i64 %i.m to i8
  %7 = lshr i8 %6, 5                              ; 4 uses
  %i.n = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 5 uses
  %i.p = and i64 %1, -16                          ; 2 uses
  %.not.i161 = icmp eq i64 %i.p, 0
  br i1 %.not.i161, label %bb.d, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.r = bitcast <2 x i64> %i.v to <16 x i8>
  %i.s = icmp slt <16 x i8> %i.r, zeroinitializer
  %i.t = bitcast <16 x i1> %i.s to i16
  %.not32.i = icmp eq i16 %i.t, 0
  br i1 %.not32.i, label %._crit_edge._crit_edge.i, label %.lr.ph.preheader

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.pre.i = ptrtoaddr ptr %i.w to i64
  br label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.02634.i = phi <2 x i64> [ %i.v, %.lr.ph.i ], [ zeroinitializer, %.lr.ph.preheader.i ]
  %.02733.i = phi ptr [ %i.w, %.lr.ph.i ], [ %2, %.lr.ph.preheader.i ] ; 2 uses
  %i.u = load <2 x i64>, ptr %.02733.i, align 1, !tbaa !69
  %i.v = or <2 x i64> %i.u, %.02634.i             ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02733.i, i64 16 ; 4 uses
  %i.x = icmp ult ptr %i.w, %i.q
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !28

bb.d:                                             ; preds = %._crit_edge._crit_edge.i, %bb.c
  %.22943.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge._crit_edge.i ], [ %i.n, %bb.c ]
  %.229.i = phi ptr [ %i.w, %._crit_edge._crit_edge.i ], [ %2, %bb.c ] ; 3 uses
  %i.y = icmp ult ptr %.229.i, %i.o
  br i1 %i.y, label %.lr.ph38.preheader.i, label %.lr.ph340.preheader

.lr.ph340.preheader:                              ; preds = %bb.e, %bb.d
  br label %.lr.ph340

.lr.ph38.preheader.i:                             ; preds = %bb.d
  %i.z = add i64 %1, %i.n
  %i.aa = sub i64 %i.z, %.22943.pre-phi.i
  %scevgep.i = getelementptr i8, ptr %.229.i, i64 %i.aa
  br label %.lr.ph38.i

bb.e:                                             ; preds = %.lr.ph38.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.33036.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ab, %scevgep.i
  br i1 %exitcond.not.i, label %.lr.ph340.preheader, label %.lr.ph38.i, !llvm.loop !29

.lr.ph38.i:                                       ; preds = %bb.e, %.lr.ph38.preheader.i
  %.33036.i = phi ptr [ %i.ab, %bb.e ], [ %.229.i, %.lr.ph38.preheader.i ] ; 2 uses
  %i.ac = load i8, ptr %.33036.i, align 1, !tbaa !69
  %i.ad = icmp sgt i8 %i.ac, -1
  br i1 %i.ad, label %bb.e, label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.0339, i64 1 ; 2 uses
  %.not122 = icmp eq ptr %i.ae, %i.o
  br i1 %.not122, label %_ZNK4toml2v34impl12utf8_decoder16needs_more_inputEv.exit.thread, label %.lr.ph340

.lr.ph340:                                        ; preds = %.lr.ph340.preheader, %bb.f
  %.0339 = phi ptr [ %i.ae, %bb.f ], [ %2, %.lr.ph340.preheader ] ; 2 uses
  %.1277338 = phi i32 [ %.3279, %bb.f ], [ %spec.select301, %.lr.ph340.preheader ] ; 5 uses
  %i.af = load i8, ptr %.0339, align 1, !tbaa !69 ; 4 uses
  %i.ag = sext i8 %i.af to i32                    ; 2 uses
  switch i8 %i.af, label %bb.j [
    i8 10, label %bb.g
    i8 9, label %bb.h
    i8 39, label %bb.i
  ]

bb.g:                                             ; preds = %.lr.ph340
  %i.ah = or i32 %.1277338, 1
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph340
  %i.ai = or i32 %.1277338, 2
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph340
  %i.aj = or i32 %.1277338, 8
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph340
  %i.ak = add i8 %i.af, -127
  %i.al = icmp ult i8 %i.ak, -95
  br i1 %i.al, label %bb.k, label %bb.l, !prof !155

bb.k:                                             ; preds = %bb.j
  %i.am = or i32 %.1277338, 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2278 = phi i32 [ %i.am, %bb.k ], [ %.1277338, %bb.j ] ; 2 uses
  %i.an = add nsw i32 %i.ag, -123
  %or.cond.i = icmp ult i32 %i.an, -78
  br i1 %or.cond.i, label %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread, label %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit

_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit: ; preds = %bb.l
  %i.ao = zext nneg i32 %i.ag to i64
  %i.ap = add nsw i64 %i.ao, -45
  %.not.i162 = icmp ugt i8 %i.af, 108
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = and i64 %i.aq, -3307330977390599
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = select i1 %.not.i162, i1 true, i1 %i.as
  br i1 %i.at, label %bb.m, label %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread

_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread: ; preds = %bb.l, %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit
  %i.au = or i32 %.2278, 16
  br label %bb.m

bb.m:                                             ; preds = %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit, %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread, %bb.i, %bb.h, %bb.g
  %.3279 = phi i32 [ %.2278, %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit ], [ %i.au, %_ZN4toml2v34impl27is_ascii_bare_key_characterEDi.exit.thread ], [ %i.ah, %bb.g ], [ %i.ai, %bb.h ], [ %i.aj, %bb.i ] ; 3 uses
  %.not123 = icmp eq i32 %.3279, 31
  br i1 %.not123, label %.thread289, label %bb.f

.lr.ph.preheader:                                 ; preds = %.lr.ph38.i, %._crit_edge.i
  %i.av = or disjoint i32 %spec.select301, 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %.0114335 = phi ptr [ %i.ci, %bb.w ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0224.0334 = phi i32 [ %i.bq, %bb.w ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.9.0333 = phi i32 [ %i.bk, %bb.w ], [ 0, %.lr.ph.preheader ]
  %.4280332 = phi i32 [ %.6.ph, %bb.w ], [ %i.av, %.lr.ph.preheader ] ; 7 uses
  %i.aw = load i8, ptr %.0114335, align 1, !tbaa !69 ; 3 uses
  %i.ax = icmp ne i32 %.sroa.0224.0334, 12
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = zext i8 %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !69  ; 2 uses
  %i.bb = icmp eq i32 %.sroa.0224.0334, 0
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bc = zext i8 %i.ba to i32                    ; 2 uses
  %i.bd = lshr i32 255, %i.bc
  %i.be = zext i8 %i.aw to i32
  %i.bf = and i32 %i.bd, %i.be
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bg = and i8 %i.aw, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = shl i32 %.sroa.9.0333, 6
  %i.bj = or disjoint i32 %i.bi, %i.bh
  %.pre.i163 = zext i8 %i.ba to i32
  br label %_ZN4toml2v34impl12utf8_decoderclEh.exit

_ZN4toml2v34impl12utf8_decoderclEh.exit:          ; preds = %bb.n, %bb.o
  %.pre-phi.i = phi i32 [ %.pre.i163, %bb.o ], [ %i.bc, %bb.n ]
  %i.bk = phi i32 [ %i.bj, %bb.o ], [ %i.bf, %bb.n ] ; 8 uses
  %i.bl = or disjoint i32 %.sroa.0224.0334, 256
  %i.bm = add nuw nsw i32 %i.bl, %.pre-phi.i
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZN4toml2v34impl12utf8_decoder11state_tableE, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !69  ; 3 uses
  %i.bq = zext i8 %i.bp to i32
  switch i8 %i.bp, label %bb.w [
    i8 12, label %.loopexit322.thread
    i8 0, label %bb.p
  ], !prof !708

bb.p:                                             ; preds = %_ZN4toml2v34impl12utf8_decoderclEh.exit
  switch i32 %i.bk, label %bb.t [
    i32 10, label %bb.q
    i32 9, label %bb.r
    i32 39, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.br = or i32 %.4280332, 1
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.bs = or i32 %.4280332, 2
  br label %bb.w

bb.s:                                             ; preds = %bb.p
  %i.bt = or i32 %.4280332, 8
  br label %bb.w

bb.t:                                             ; preds = %bb.p
  %i.bu = icmp ult i32 %i.bk, 32
  %i.bv = icmp eq i32 %i.bk, 127
  %i.bw = or i1 %i.bu, %i.bv
  br i1 %i.bw, label %.critedge, label %bb.u, !prof !155

bb.u:                                             ; preds = %bb.t
  switch i32 %i.bk, label %bb.v [
    i32 8233, label %.critedge
    i32 8232, label %.critedge
    i32 133, label %.critedge
  ], !prof !709

.critedge:                                        ; preds = %bb.u, %bb.u, %bb.u, %bb.t
  %i.bx = or i32 %.4280332, 4
  br label %bb.v
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_113error_builder6appendImEEvRKT_:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %3, label %bb.w [
    i32 16, label %bb.d
    i32 10, label %bb.h
    i32 8, label %bb.r
    i32 2, label %bb.v
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = sub nuw nsw i32 67, %i.d
  %i.f = lshr i32 %i.e, 2                         ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = zext nneg i32 %i.f to i64                ; 2 uses
  %i.k = icmp slt i64 %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.e, !prof !155

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %2, 255
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.m = add nsw i32 %i.f, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.031.i = phi i32 [ %i.aa, %.lr.ph.i ], [ %i.m, %.lr.ph.preheader.i ] ; 3 uses
  %.02830.i = phi i64 [ %i.u, %.lr.ph.i ], [ %2, %.lr.ph.preheader.i ] ; 4 uses
  %i.n = and i64 %.02830.i, 15
  %i.o = lshr i64 %.02830.i, 4
  %i.p = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !tbaa !69
  %i.r = zext i32 %.031.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  store i8 %i.q, ptr %i.s, align 1, !tbaa !69
  %i.t = and i64 %i.o, 15
  %i.u = lshr i64 %.02830.i, 8                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !tbaa !69
  %i.x = add nsw i32 %.031.i, -1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !69
  %i.aa = add nsw i32 %.031.i, -2
  %i.ab = icmp ugt i64 %.02830.i, 65535
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.028.lcssa.i = phi i64 [ %2, %bb.e ], [ %i.u, %.lr.ph.i ] ; 4 uses
  %i.ac = icmp samesign ugt i64 %.028.lcssa.i, 15
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.ad = and i64 %.028.lcssa.i, 15
  %i.ae = lshr i64 %.028.lcssa.i, 4
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.028.pn.i = phi i64 [ %i.ae, %bb.f ], [ %.028.lcssa.i, %._crit_edge.i ]
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.h:                                             ; preds = %bb.c
  %i.ai = icmp ult i64 %2, 10
  br i1 %i.ai, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.n
  %.029.i.i = phi i32 [ %i.aq, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.ap, %bb.n ], [ %2, %bb.h ] ; 5 uses
  %i.aj = icmp ult i64 %.02328.i.i, 100
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ak = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.al = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.l:                                             ; preds = %bb.j
  %i.an = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ap = udiv i64 %.02328.i.i, 10000
  %i.aq = add i32 %.029.i.i, 4                    ; 2 uses
  %i.ar = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.ar, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.h
  %.022.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ak, %bb.i ], [ %i.am, %bb.k ], [ 1, %bb.h ], [ %i.aq, %bb.n ] ; 2 uses
  %i.as = ptrtoint ptr %1 to i64
  %i.at = ptrtoint ptr %0 to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = zext i32 %.022.i.i to i64               ; 3 uses
  %i.aw = icmp slt i64 %i.au, %i.av
  br i1 %i.aw, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.o, !prof !155

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ax = icmp ugt i64 %2, 99
  br i1 %i.ax, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.o
  %i.ay = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bb, %.lr.ph.i9.i ], [ %2, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bl, %.lr.ph.i9.i ], [ %i.ay, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.az = urem i64 %.020.i.i, 100
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ba ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !69
  %i.bf = zext i32 %.01819.i.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !69
  %i.bh = load i8, ptr %i.bc, align 2, !tbaa !69
  %i.bi = add i32 %.01819.i.i, -1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !69
  %i.bl = add i32 %.01819.i.i, -2
  %i.bm = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bm, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !13

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.o
  %.0.lcssa.i.i = phi i64 [ %2, %bb.o ], [ %i.bb, %.lr.ph.i9.i ] ; 3 uses
  %i.bn = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !69
  %i.bt = load i8, ptr %i.bp, align 2, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.bu = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bv = or disjoint i8 %i.bu, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.r:                                             ; preds = %bb.c
  %i.bw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %.lhs.trunc.i = sub nuw nsw i8 66, %i.bx
  %i.by = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.bz = ptrtoint ptr %1 to i64
  %i.ca = ptrtoint ptr %0 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = zext nneg i8 %i.by to i64               ; 2 uses
  %i.cd = icmp slt i64 %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.s, !prof !155

bb.s:                                             ; preds = %bb.r
  %i.ce = icmp ugt i64 %2, 63
  br i1 %i.ce, label %.lr.ph.preheader.i37, label %._crit_edge.i29

.lr.ph.preheader.i37:                             ; preds = %bb.s
  %.zext.i = zext nneg i8 %i.by to i32
  %i.cf = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38, %.lr.ph.preheader.i37
  %.031.i39 = phi i32 [ %i.cr, %.lr.ph.i38 ], [ %i.cf, %.lr.ph.preheader.i37 ] ; 3 uses
  %.02830.i40 = phi i64 [ %i.cl, %.lr.ph.i38 ], [ %2, %.lr.ph.preheader.i37 ] ; 3 uses
  %i.cg = trunc i64 %.02830.i40 to i8             ; 2 uses
  %i.ch = and i8 %i.cg, 7
  %i.ci = or disjoint i8 %i.ch, 48
  %i.cj = zext i32 %.031.i39 to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !69
  %i.cl = lshr i64 %.02830.i40, 6                 ; 2 uses
  %4 = lshr i8 %i.cg, 3
  %i.cm = and i8 %4, 7
  %i.cn = or disjoint i8 %i.cm, 48
  %i.co = add nsw i32 %.031.i39, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %i.cp
  store i8 %i.cn, ptr %i.cq, align 1, !tbaa !69
  %i.cr = add nsw i32 %.031.i39, -2
  %i.cs = icmp ugt i64 %.02830.i40, 4095
  br i1 %i.cs, label %.lr.ph.i38, label %._crit_edge.i29, !llvm.loop !42

._crit_edge.i29:                                  ; preds = %.lr.ph.i38, %bb.s
  %.028.lcssa.i30 = phi i64 [ %2, %bb.s ], [ %i.cl, %.lr.ph.i38 ] ; 4 uses
  %i.ct = icmp samesign ugt i64 %.028.lcssa.i30, 7
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i29
  %i.cu = lshr i64 %.028.lcssa.i30, 3
  %i.cv = trunc nuw nsw i64 %.028.lcssa.i30 to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = or disjoint i8 %i.cw, 48
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !69
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i29
  %storemerge.in.in.i = phi i64 [ %i.cu, %bb.t ], [ %.028.lcssa.i30, %._crit_edge.i29 ]
  %storemerge.in.i31 = trunc nuw nsw i64 %storemerge.in.in.i to i8
  %storemerge.i32 = or disjoint i8 %storemerge.in.i31, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.v:                                             ; preds = %bb.c
  %i.cz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 5 uses
  %i.da = sub nuw nsw i64 64, %i.cz               ; 4 uses
  %i.db = ptrtoint ptr %1 to i64
  %i.dc = ptrtoint ptr %0 to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = icmp slt i64 %i.dd, %i.da
  br i1 %i.de, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.v
  %.not16.i = icmp eq i64 %i.cz, 63
  br i1 %.not16.i, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.preheader.i41

.lr.ph.preheader.i41:                             ; preds = %.preheader.i
  %.015.i = xor i64 %i.cz, 63                     ; 3 uses
  %i.df = trunc nuw nsw i64 %.015.i to i32
  %xtraiter = and i32 %i.df, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.preheader.i41
  %i.dg = trunc i64 %2 to i8
  %i.dh = and i8 %i.dg, 1
  %i.di = or disjoint i8 %i.dh, 48
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %.015.i
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !69
  %i.dk = lshr i64 %2, 1
  %indvars.iv.next.i.prol = sub nsw i64 62, %i.cz
  br label %.lr.ph.i42.prol.loopexit

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.preheader.i41
  %indvars.iv.i.unr = phi i64 [ %.015.i, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i.prol, %.lr.ph.i42.prol ]
  %.01317.i.unr = phi i64 [ %2, %.lr.ph.preheader.i41 ], [ %i.dk, %.lr.ph.i42.prol ]
  %i.dl = icmp eq i64 %i.cz, 62
  br i1 %i.dl, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i42 ], [ %indvars.iv.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %.01317.i = phi i64 [ %i.dw, %.lr.ph.i42 ], [ %.01317.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %i.dm = trunc i64 %.01317.i to i8
  %i.dn = and i8 %i.dm, 1
  %i.do = or disjoint i8 %i.dn, 48
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !69
  %i.dq = lshr i64 %.01317.i, 1
  %i.dr = trunc i64 %i.dq to i8
  %i.ds = and i8 %i.dr, 1
  %i.dt = or disjoint i8 %i.ds, 48
  %i.du = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.dv = getelementptr i8, ptr %i.du, i64 -1
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !69
  %i.dw = lshr i64 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.dx = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.1, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42, !llvm.loop !43

bb.w:                                             ; preds = %bb.c
  %i.dy = mul nsw i32 %3, %3                      ; 2 uses
  %i.dz = mul i32 %i.dy, %3                       ; 2 uses
  %i.ea = mul i32 %i.dz, %3
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = zext i32 %3 to i64                      ; 3 uses
  %i.ed = icmp ult i64 %2, %i.ec
  br i1 %i.ed, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.w
  %i.ee = zext nneg i32 %i.dy to i64
  %i.ef = zext i32 %i.dz to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.i.i48
  %.029.i.i49 = phi i32 [ 1, %.lr.ph.i.i48 ], [ %i.en, %bb.ad ] ; 4 uses
  %.02328.i.i50 = phi i64 [ %2, %.lr.ph.i.i48 ], [ %i.em, %bb.ad ] ; 4 uses
  %i.eg = icmp ult i64 %.02328.i.i50, %i.ee
  br i1 %i.eg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eh = add i32 %.029.i.i49, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.z:                                             ; preds = %bb.x
  %i.ei = icmp ult i64 %.02328.i.i50, %i.ef
  br i1 %i.ei, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ej = add i32 %.029.i.i49, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.ab:                                            ; preds = %bb.z
  %i.ek = icmp ult i64 %.02328.i.i50, %i.eb
  br i1 %i.ek, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.el = add i32 %.029.i.i49, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.ad:                                            ; preds = %bb.ab
  %i.em = udiv i64 %.02328.i.i50, %i.eb           ; 2 uses
  %i.en = add i32 %.029.i.i49, 4                  ; 2 uses
  %i.eo = icmp ult i64 %i.em, %i.ec
  br i1 %i.eo, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51, label %bb.x, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51:  ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y
  %.022.i.i52 = phi i32 [ %i.el, %bb.ac ], [ %i.eh, %bb.y ], [ %i.ej, %bb.aa ], [ %i.en, %bb.ad ] ; 2 uses
  %i.ep = ptrtoint ptr %1 to i64
  %i.eq = ptrtoint ptr %0 to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = zext i32 %.022.i.i52 to i64             ; 2 uses
  %i.et = icmp slt i64 %i.er, %i.es
  br i1 %i.et, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i53, !prof !155

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i: ; preds = %bb.w
  %i.eu = ptrtoint ptr %1 to i64
  %i.ev = ptrtoint ptr %0 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = icmp slt i64 %i.ew, 1
  br i1 %i.ex, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i56, !prof !155

.preheader.i53:                                   ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51
  %i.ey = sext i32 %3 to i64                      ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.preheader.i53
  %.0.in27.i = phi i32 [ %.022.i.i52, %.preheader.i53 ], [ %.0.i, %bb.ae ]
  %.02026.i = phi i64 [ %2, %.preheader.i53 ], [ %i.ez, %bb.ae ] ; 2 uses
  %.0.i = add i32 %.0.in27.i, -1                  ; 2 uses
  %i.ez = udiv i64 %.02026.i, %i.ey               ; 3 uses
  %i.fa = urem i64 %.02026.i, %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !69
  %i.fd = zext i32 %.0.i to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 %i.fd
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !69
  %.not.i55 = icmp ult i64 %i.ez, %i.ec
  br i1 %.not.i55, label %._crit_edge.i56, label %bb.ae, !llvm.loop !44

._crit_edge.i56:                                  ; preds = %bb.ae, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i
  %i.ff = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.es, %bb.ae ]
  %.020.lcssa.i = phi i64 [ %2, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.ez, %bb.ae ]
  %i.fg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %.020.lcssa.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split: ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %.preheader.i, %bb.p, %bb.q, %bb.b, %bb.g, %bb.u, %._crit_edge.i56
  %.sink109 = phi i8 [ %i.fh, %._crit_edge.i56 ], [ %i.bt, %bb.p ], [ %storemerge.i32, %bb.u ], [ 48, %bb.b ], [ %storemerge.i, %bb.g ], [ %i.bv, %bb.q ], [ 49, %.preheader.i ], [ 49, %.lr.ph.i42 ], [ 49, %.lr.ph.i42.prol.loopexit ]
  %.sink = phi i64 [ %i.ff, %._crit_edge.i56 ], [ %i.av, %bb.p ], [ %i.cc, %bb.u ], [ 1, %bb.b ], [ %i.j, %bb.g ], [ %i.av, %bb.q ], [ %i.da, %.preheader.i ], [ %i.da, %.lr.ph.i42 ], [ %i.da, %.lr.ph.i42.prol.loopexit ]
  store i8 %.sink109, ptr %0, align 1, !tbaa !69
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51, %bb.v, %bb.r, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, %bb.d, %bb.a
  %.pn63 = phi ptr [ %1, %bb.r ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ %1, %bb.v ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fi, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn61 = phi i32 [ 75, %bb.r ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ 75, %bb.v ], [ 75, %bb.a ], [ 75, %bb.d ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ 0, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn63, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn61, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #39

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4toml2v34impl7impl_ex6parser12parse_stringEv(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3496) %1) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239, !nonnull !105, !noundef !105
  %i.c = load i32, ptr %i.b, align 4, !tbaa !241  ; 4 uses
end_hunk_1
begin_hunk_2_@_ZSt12__to_chars_iIlENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i:bb.a
  %i.f = sub i64 0, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.026 = phi ptr [ %i.e, %bb.e ], [ %0, %bb.d ]  ; 29 uses
  %.0 = phi i64 [ %i.f, %bb.e ], [ %2, %bb.d ]    ; 21 uses
  switch i32 %3, label %bb.z [
    i32 16, label %bb.g
    i32 10, label %bb.k
    i32 8, label %bb.u
    i32 2, label %bb.y
  ]

bb.g:                                             ; preds = %bb.f
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0, i1 false)
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = sub nuw nsw i32 67, %i.h
  %i.j = lshr i32 %i.i, 2                         ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.026 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = zext nneg i32 %i.j to i64                ; 2 uses
  %i.o = icmp slt i64 %i.m, %i.n
  br i1 %i.o, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.h, !prof !155

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ugt i64 %.0, 255
  br i1 %i.p, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.q = add nsw i32 %i.j, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.031.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.q, %.lr.ph.preheader.i ] ; 3 uses
  %.02830.i = phi i64 [ %i.y, %.lr.ph.i ], [ %.0, %.lr.ph.preheader.i ] ; 4 uses
  %i.r = and i64 %.02830.i, 15
  %i.s = lshr i64 %.02830.i, 4
  %i.t = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !tbaa !69
  %i.v = zext i32 %.031.i to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 %i.v
  store i8 %i.u, ptr %i.w, align 1, !tbaa !69
  %i.x = and i64 %i.s, 15
  %i.y = lshr i64 %.02830.i, 8                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.x
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !69
  %i.ab = add nsw i32 %.031.i, -1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !69
  %i.ae = add nsw i32 %.031.i, -2
  %i.af = icmp ugt i64 %.02830.i, 65535
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.028.lcssa.i = phi i64 [ %.0, %bb.h ], [ %i.y, %.lr.ph.i ] ; 4 uses
  %i.ag = icmp samesign ugt i64 %.028.lcssa.i, 15
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.ah = and i64 %.028.lcssa.i, 15
  %i.ai = lshr i64 %.028.lcssa.i, 4
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.028.pn.i = phi i64 [ %i.ai, %bb.i ], [ %.028.lcssa.i, %._crit_edge.i ]
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  store i8 %storemerge.i, ptr %.026, align 1, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %.026, i64 %i.n
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.k:                                             ; preds = %bb.f
  %i.an = icmp ult i64 %.0, 10
  br i1 %i.an, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.q
  %.029.i.i = phi i32 [ %i.av, %bb.q ], [ 1, %bb.k ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.au, %bb.q ], [ %.0, %bb.k ] ; 5 uses
  %i.ao = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.aq = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.o:                                             ; preds = %bb.m
  %i.as = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.at = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.q:                                             ; preds = %bb.o
  %i.au = udiv i64 %.02328.i.i, 10000
  %i.av = add i32 %.029.i.i, 4                    ; 2 uses
  %i.aw = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.aw, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k
  %.022.i.i = phi i32 [ %i.at, %bb.p ], [ %i.ap, %bb.l ], [ %i.ar, %bb.n ], [ 1, %bb.k ], [ %i.av, %bb.q ] ; 2 uses
  %i.ax = ptrtoint ptr %1 to i64
  %i.ay = ptrtoint ptr %.026 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = zext i32 %.022.i.i to i64               ; 2 uses
  %i.bb = icmp slt i64 %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.r, !prof !155

bb.r:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bc = icmp ugt i64 %.0, 99
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %i.bd = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bg, %.lr.ph.i9.i ], [ %.0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bq, %.lr.ph.i9.i ], [ %i.bd, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.be = urem i64 %.020.i.i, 100
  %i.bf = shl nuw nsw i64 %i.be, 1
  %i.bg = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !69
  %i.bk = zext i32 %.01819.i.i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !69
  %i.bm = load i8, ptr %i.bh, align 2, !tbaa !69
  %i.bn = add i32 %.01819.i.i, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bo
  store i8 %i.bm, ptr %i.bp, align 1, !tbaa !69
  %i.bq = add i32 %.01819.i.i, -2
  %i.br = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.br, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !13

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.r
  %.0.lcssa.i.i = phi i64 [ %.0, %bb.r ], [ %i.bg, %.lr.ph.i9.i ] ; 3 uses
  %i.bs = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !69
  %i.by = load i8, ptr %i.bu, align 2, !tbaa !69
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.bz = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ca = or disjoint i8 %i.bz, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i: ; preds = %bb.t, %bb.s
  %storemerge.i.i = phi i8 [ %i.ca, %bb.t ], [ %i.by, %bb.s ]
  store i8 %storemerge.i.i, ptr %.026, align 1, !tbaa !69
  %i.cb = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ba
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.u:                                             ; preds = %bb.f
  %i.cc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0, i1 false)
  %i.cd = trunc nuw nsw i64 %i.cc to i8
  %.lhs.trunc.i = sub nuw nsw i8 66, %i.cd
  %i.ce = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.cf = ptrtoint ptr %1 to i64
  %i.cg = ptrtoint ptr %.026 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = zext nneg i8 %i.ce to i64               ; 2 uses
  %i.cj = icmp slt i64 %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.v, !prof !155

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp ugt i64 %.0, 63
  br i1 %i.ck, label %.lr.ph.preheader.i42, label %._crit_edge.i34

.lr.ph.preheader.i42:                             ; preds = %bb.v
  %.zext.i = zext nneg i8 %i.ce to i32
  %i.cl = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i42
  %.031.i44 = phi i32 [ %i.cx, %.lr.ph.i43 ], [ %i.cl, %.lr.ph.preheader.i42 ] ; 3 uses
  %.02830.i45 = phi i64 [ %i.cr, %.lr.ph.i43 ], [ %.0, %.lr.ph.preheader.i42 ] ; 3 uses
  %i.cm = trunc i64 %.02830.i45 to i8             ; 2 uses
  %i.cn = and i8 %i.cm, 7
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = zext i32 %.031.i44 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cp
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !69
  %i.cr = lshr i64 %.02830.i45, 6                 ; 2 uses
  %4 = lshr i8 %i.cm, 3
  %i.cs = and i8 %4, 7
  %i.ct = or disjoint i8 %i.cs, 48
  %i.cu = add nsw i32 %.031.i44, -1
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cv
  store i8 %i.ct, ptr %i.cw, align 1, !tbaa !69
  %i.cx = add nsw i32 %.031.i44, -2
  %i.cy = icmp ugt i64 %.02830.i45, 4095
  br i1 %i.cy, label %.lr.ph.i43, label %._crit_edge.i34, !llvm.loop !42

._crit_edge.i34:                                  ; preds = %.lr.ph.i43, %bb.v
  %.028.lcssa.i35 = phi i64 [ %.0, %bb.v ], [ %i.cr, %.lr.ph.i43 ] ; 4 uses
  %i.cz = icmp samesign ugt i64 %.028.lcssa.i35, 7
  br i1 %i.cz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i34
  %i.da = lshr i64 %.028.lcssa.i35, 3
  %i.db = trunc nuw nsw i64 %.028.lcssa.i35 to i8
  %i.dc = and i8 %i.db, 7
  %i.dd = or disjoint i8 %i.dc, 48
  %i.de = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !69
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i34
  %storemerge.in.in.i = phi i64 [ %i.da, %bb.w ], [ %.028.lcssa.i35, %._crit_edge.i34 ]
  %storemerge.in.i36 = trunc nuw nsw i64 %storemerge.in.in.i to i8
  %storemerge.i37 = or disjoint i8 %storemerge.in.i36, 48
  store i8 %storemerge.i37, ptr %.026, align 1, !tbaa !69
  %i.df = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ci
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.y:                                             ; preds = %bb.f
  %i.dg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0, i1 false) ; 6 uses
  %i.dh = sub nuw nsw i64 64, %i.dg               ; 2 uses
  %i.di = ptrtoint ptr %1 to i64
  %i.dj = ptrtoint ptr %.026 to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = icmp slt i64 %i.dk, %i.dh
  br i1 %i.dl, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.y
  %.not16.i = icmp eq i64 %i.dg, 63
  br i1 %.not16.i, label %._crit_edge.i48, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.preheader.i
  %.015.i = sub nuw nsw i64 63, %i.dg             ; 2 uses
  %i.dm = trunc nuw nsw i64 %i.dg to i32
  %i.dn = and i32 %i.dm, 1
  %lcmp.mod.not.not = icmp eq i32 %i.dn, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i47.prol, label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol:                                  ; preds = %.lr.ph.preheader.i46
  %i.do = trunc i64 %.0 to i8
  %i.dp = and i8 %i.do, 1
  %i.dq = or disjoint i8 %i.dp, 48
  %i.dr = getelementptr inbounds nuw i8, ptr %.026, i64 %.015.i
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !69
  %i.ds = lshr i64 %.0, 1
  %indvars.iv.next.i.prol = sub nsw i64 62, %i.dg
  br label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol.loopexit:                         ; preds = %.lr.ph.i47.prol, %.lr.ph.preheader.i46
  %indvars.iv.i.unr = phi i64 [ %.015.i, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i.prol, %.lr.ph.i47.prol ]
  %.01317.i.unr = phi i64 [ %.0, %.lr.ph.preheader.i46 ], [ %i.ds, %.lr.ph.i47.prol ]
  %i.dt = icmp eq i64 %i.dg, 62
  br i1 %i.dt, label %._crit_edge.i48, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i47 ], [ %indvars.iv.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %.01317.i = phi i64 [ %i.ee, %.lr.ph.i47 ], [ %.01317.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %i.du = trunc i64 %.01317.i to i8
  %i.dv = and i8 %i.du, 1
  %i.dw = or disjoint i8 %i.dv, 48
  %i.dx = getelementptr inbounds nuw i8, ptr %.026, i64 %indvars.iv.i
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !69
  %i.dy = lshr i64 %.01317.i, 1
  %i.dz = trunc i64 %i.dy to i8
  %i.ea = and i8 %i.dz, 1
  %i.eb = or disjoint i8 %i.ea, 48
  %i.ec = getelementptr i8, ptr %.026, i64 %indvars.iv.i
  %i.ed = getelementptr i8, ptr %i.ec, i64 -1
  store i8 %i.eb, ptr %i.ed, align 1, !tbaa !69
  %i.ee = lshr i64 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ef = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.1, label %._crit_edge.i48, label %.lr.ph.i47, !llvm.loop !43

._crit_edge.i48:                                  ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %.preheader.i
  store i8 49, ptr %.026, align 1, !tbaa !69
  %i.eg = getelementptr inbounds nuw i8, ptr %.026, i64 %i.dh
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.z:                                             ; preds = %bb.f
  %i.eh = mul nsw i32 %3, %3                      ; 2 uses
  %i.ei = mul i32 %i.eh, %3                       ; 2 uses
  %i.ej = mul i32 %i.ei, %3
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = zext i32 %3 to i64                      ; 3 uses
  %i.em = icmp ult i64 %.0, %i.el
  br i1 %i.em, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %bb.z
  %i.en = zext nneg i32 %i.eh to i64
  %i.eo = zext i32 %i.ei to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %.lr.ph.i.i53
  %.029.i.i54 = phi i32 [ 1, %.lr.ph.i.i53 ], [ %i.ew, %bb.ag ] ; 4 uses
  %.02328.i.i55 = phi i64 [ %.0, %.lr.ph.i.i53 ], [ %i.ev, %bb.ag ] ; 4 uses
  %i.ep = icmp ult i64 %.02328.i.i55, %i.en
  br i1 %i.ep, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = add i32 %.029.i.i54, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56

bb.ac:                                            ; preds = %bb.aa
  %i.er = icmp ult i64 %.02328.i.i55, %i.eo
  br i1 %i.er, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.es = add i32 %.029.i.i54, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56

bb.ae:                                            ; preds = %bb.ac
  %i.et = icmp ult i64 %.02328.i.i55, %i.ek
  br i1 %i.et, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eu = add i32 %.029.i.i54, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56

bb.ag:                                            ; preds = %bb.ae
  %i.ev = udiv i64 %.02328.i.i55, %i.ek           ; 2 uses
  %i.ew = add i32 %.029.i.i54, 4                  ; 2 uses
  %i.ex = icmp ult i64 %i.ev, %i.el
  br i1 %i.ex, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56, label %bb.aa, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56:  ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ab
  %.022.i.i57 = phi i32 [ %i.eu, %bb.af ], [ %i.eq, %bb.ab ], [ %i.es, %bb.ad ], [ %i.ew, %bb.ag ] ; 2 uses
  %i.ey = ptrtoint ptr %1 to i64
  %i.ez = ptrtoint ptr %.026 to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = zext i32 %.022.i.i57 to i64             ; 2 uses
  %i.fc = icmp slt i64 %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i58, !prof !155

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i: ; preds = %bb.z
  %i.fd = ptrtoint ptr %1 to i64
  %i.fe = ptrtoint ptr %.026 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = icmp slt i64 %i.ff, 1
  br i1 %i.fg, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i61, !prof !155

.preheader.i58:                                   ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56
  %i.fh = sext i32 %3 to i64                      ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.preheader.i58
  %.0.in27.i = phi i32 [ %.022.i.i57, %.preheader.i58 ], [ %.0.i, %bb.ah ]
  %.02026.i = phi i64 [ %.0, %.preheader.i58 ], [ %i.fi, %bb.ah ] ; 2 uses
  %.0.i = add i32 %.0.in27.i, -1                  ; 2 uses
  %i.fi = udiv i64 %.02026.i, %i.fh               ; 3 uses
  %i.fj = urem i64 %.02026.i, %i.fh
  %i.fk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !69
  %i.fm = zext i32 %.0.i to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fm
  store i8 %i.fl, ptr %i.fn, align 1, !tbaa !69
  %.not.i60 = icmp ult i64 %i.fi, %i.el
  br i1 %.not.i60, label %._crit_edge.i61, label %bb.ah, !llvm.loop !44

._crit_edge.i61:                                  ; preds = %bb.ah, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i
  %i.fo = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fb, %bb.ah ]
  %.020.lcssa.i = phi i64 [ %.0, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fi, %bb.ah ]
  %i.fp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %.020.lcssa.i
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !69
  store i8 %i.fq, ptr %.026, align 1, !tbaa !69
  %i.fr = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fo
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %._crit_edge.i61, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56, %._crit_edge.i48, %bb.y, %bb.x, %bb.u, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, %bb.j, %bb.g, %bb.a, %bb.c
  %.pn68 = phi ptr [ %1, %bb.u ], [ %i.c, %bb.c ], [ %1, %bb.y ], [ %1, %bb.a ], [ %1, %bb.g ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.am, %bb.j ], [ %i.cb, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i ], [ %i.df, %bb.x ], [ %i.eg, %._crit_edge.i48 ], [ %i.fr, %._crit_edge.i61 ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56 ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ]
  %.pn66 = phi i32 [ 75, %bb.u ], [ 0, %bb.c ], [ 75, %bb.y ], [ 75, %bb.a ], [ 75, %bb.g ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ 0, %bb.j ], [ 0, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i ], [ 0, %bb.x ], [ 0, %._crit_edge.i48 ], [ 0, %._crit_edge.i61 ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56 ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn68, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn66, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v34nodeD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v34nodeE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4toml2v313source_regionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@log10
declare double @log10(double noundef) local_unnamed_addr #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #43

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iIaENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = sext i8 %2 to i32                        ; 2 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %2, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 48, ptr %0, align 1, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp slt i8 %2, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !69
  %i.g = sub nsw i32 0, %i.a
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.026 = phi ptr [ %i.f, %bb.e ], [ %0, %bb.d ]  ; 27 uses
  %.0 = phi i32 [ %i.g, %bb.e ], [ %i.a, %bb.d ]  ; 22 uses
  switch i32 %3, label %bb.y [
    i32 16, label %bb.g
    i32 10, label %bb.j
    i32 8, label %bb.t
    i32 2, label %bb.x
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false)
  %i.i = sub nuw nsw i32 35, %i.h
  %i.j = lshr i32 %i.i, 2
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.026 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = zext nneg i32 %i.j to i64                ; 2 uses
  %i.o = icmp slt i64 %i.m, %i.n
  br i1 %i.o, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i, !prof !155

._crit_edge.i:                                    ; preds = %bb.g
  %i.p = icmp samesign ugt i32 %.0, 15
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.q = and i32 %.0, 15
  %i.r = lshr i32 %.0, 4
  %i.s = zext nneg i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !69
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %.pn.in.i = phi i32 [ %i.r, %bb.h ], [ %.0, %._crit_edge.i ]
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  store i8 %storemerge.i, ptr %.026, align 1, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 %i.n
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.j:                                             ; preds = %bb.f
  %i.x = icmp samesign ult i32 %.0, 10
  br i1 %i.x, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.p
  %.030.i.i = phi i32 [ %i.af, %bb.p ], [ 1, %bb.j ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.ae, %bb.p ], [ %.0, %bb.j ] ; 5 uses
  %i.y = icmp ult i32 %.02329.i.i, 100
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.z = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.aa = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ac = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ae = udiv i32 %.02329.i.i, 10000
  %i.af = add i32 %.030.i.i, 4                    ; 2 uses
  %i.ag = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.ag, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j
  %.022.i.i = phi i32 [ %i.ad, %bb.o ], [ %i.z, %bb.k ], [ %i.ab, %bb.m ], [ 1, %bb.j ], [ %i.af, %bb.p ] ; 2 uses
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = ptrtoint ptr %.026 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = zext i32 %.022.i.i to i64               ; 2 uses
  %i.al = icmp slt i64 %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.q, !prof !155

bb.q:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.am = icmp ugt i32 %.0, 99
  br i1 %i.am, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.q
  %i.an = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.aq, %.lr.ph.i9.i ], [ %.0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bb, %.lr.ph.i9.i ], [ %i.an, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ao = urem i32 %.020.i.i, 100
  %i.ap = shl nuw nsw i32 %i.ao, 1
  %i.aq = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ar = zext nneg i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69
  %i.av = zext i32 %.01819.i.i to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.026, i64 %i.av
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !69
  %i.ax = load i8, ptr %i.as, align 2, !tbaa !69
  %i.ay = add i32 %.01819.i.i, -1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.026, i64 %i.az
  store i8 %i.ax, ptr %i.ba, align 1, !tbaa !69
  %i.bb = add i32 %.01819.i.i, -2
  %i.bc = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.bc, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.q
  %.0.lcssa.i.i = phi i32 [ %.0, %bb.q ], [ %i.aq, %.lr.ph.i9.i ] ; 3 uses
  %i.bd = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.be = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !69
  %i.bj = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !69
  %i.bk = load i8, ptr %i.bg, align 2, !tbaa !69
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bl = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.bm = or disjoint i8 %i.bl, 48
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i

_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i: ; preds = %bb.s, %bb.r
  %storemerge.i.i = phi i8 [ %i.bm, %bb.s ], [ %i.bk, %bb.r ]
  store i8 %storemerge.i.i, ptr %.026, align 1, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ak
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.t:                                             ; preds = %bb.f
  %i.bo = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false)
  %i.bp = trunc nuw nsw i32 %i.bo to i8
  %.lhs.trunc.i = sub nuw nsw i8 34, %i.bp
  %i.bq = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.br = ptrtoint ptr %1 to i64
  %i.bs = ptrtoint ptr %.026 to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = zext nneg i8 %i.bq to i64               ; 2 uses
  %i.bv = icmp slt i64 %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.u, !prof !155

bb.u:                                             ; preds = %bb.t
  %i.bw = icmp samesign ugt i32 %.0, 63
  br i1 %i.bw, label %.lr.ph.preheader.i42, label %._crit_edge.i34

.lr.ph.preheader.i42:                             ; preds = %bb.u
  %.zext.i = zext nneg i8 %i.bq to i32
  %i.bx = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i42
  %.031.i44 = phi i32 [ %i.cj, %.lr.ph.i43 ], [ %i.bx, %.lr.ph.preheader.i42 ] ; 3 uses
  %.02830.i45 = phi i32 [ %i.cd, %.lr.ph.i43 ], [ %.0, %.lr.ph.preheader.i42 ] ; 3 uses
  %i.by = trunc i32 %.02830.i45 to i8             ; 2 uses
  %i.bz = and i8 %i.by, 7
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = zext i32 %.031.i44 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cb
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !69
  %i.cd = lshr i32 %.02830.i45, 6                 ; 2 uses
  %4 = lshr i8 %i.by, 3
  %i.ce = and i8 %4, 7
  %i.cf = or disjoint i8 %i.ce, 48
  %i.cg = add nsw i32 %.031.i44, -1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ch
  store i8 %i.cf, ptr %i.ci, align 1, !tbaa !69
  %i.cj = add nsw i32 %.031.i44, -2
  %i.ck = icmp ugt i32 %.02830.i45, 4095
  br i1 %i.ck, label %.lr.ph.i43, label %._crit_edge.i34, !llvm.loop !46

._crit_edge.i34:                                  ; preds = %.lr.ph.i43, %bb.u
  %.028.lcssa.i35 = phi i32 [ %.0, %bb.u ], [ %i.cd, %.lr.ph.i43 ] ; 4 uses
  %i.cl = icmp samesign ugt i32 %.028.lcssa.i35, 7
  br i1 %i.cl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i34
  %i.cm = lshr i32 %.028.lcssa.i35, 3
  %i.cn = trunc nuw nsw i32 %.028.lcssa.i35 to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = or disjoint i8 %i.co, 48
  %i.cq = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !69
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i34
  %storemerge.in.in.i = phi i32 [ %i.cm, %bb.v ], [ %.028.lcssa.i35, %._crit_edge.i34 ]
  %storemerge.in.i36 = trunc nuw nsw i32 %storemerge.in.in.i to i8
  %storemerge.i37 = or disjoint i8 %storemerge.in.i36, 48
  store i8 %storemerge.i37, ptr %.026, align 1, !tbaa !69
  %i.cr = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bu
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.x:                                             ; preds = %bb.f
  %i.cs = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false) ; 4 uses
  %i.ct = sub nuw nsw i32 32, %i.cs
  %i.cu = ptrtoint ptr %1 to i64
  %i.cv = ptrtoint ptr %.026 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cy = icmp slt i64 %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.x
  %.not16.i = icmp eq i32 %i.cs, 31
  br i1 %.not16.i, label %._crit_edge.i48, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.preheader.i
  %.015.i = sub nsw i32 31, %i.cs                 ; 2 uses
  %i.cz = zext i32 %.015.i to i64                 ; 3 uses
  %xtraiter = and i32 %.015.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i47.prol.loopexit, label %.lr.ph.i47.prol

.lr.ph.i47.prol:                                  ; preds = %.lr.ph.preheader.i46
  %i.da = trunc i32 %.0 to i8
  %i.db = and i8 %i.da, 1
  %i.dc = or disjoint i8 %i.db, 48
  %i.dd = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cz
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !69
  %i.de = lshr i32 %.0, 1
  %indvars.iv.next.i.prol = add nsw i64 %i.cz, -1
  br label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol.loopexit:                         ; preds = %.lr.ph.i47.prol, %.lr.ph.preheader.i46
  %indvars.iv.i.unr = phi i64 [ %i.cz, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i.prol, %.lr.ph.i47.prol ]
  %.01317.i.unr = phi i32 [ %.0, %.lr.ph.preheader.i46 ], [ %i.de, %.lr.ph.i47.prol ]
  %i.df = icmp eq i32 %i.cs, 30
  br i1 %i.df, label %._crit_edge.i48, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i47 ], [ %indvars.iv.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %.01317.i = phi i32 [ %i.dq, %.lr.ph.i47 ], [ %.01317.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %i.dg = trunc i32 %.01317.i to i8
  %i.dh = and i8 %i.dg, 1
  %i.di = or disjoint i8 %i.dh, 48
  %i.dj = getelementptr inbounds nuw i8, ptr %.026, i64 %indvars.iv.i
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !69
  %i.dk = lshr i32 %.01317.i, 1
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = and i8 %i.dl, 1
  %i.dn = or disjoint i8 %i.dm, 48
  %i.do = getelementptr i8, ptr %.026, i64 %indvars.iv.i
  %i.dp = getelementptr i8, ptr %i.do, i64 -1
  store i8 %i.dn, ptr %i.dp, align 1, !tbaa !69
  %i.dq = lshr i32 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.dr = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.dr, 0
  br i1 %.not.i.1, label %._crit_edge.i48, label %.lr.ph.i47, !llvm.loop !47

._crit_edge.i48:                                  ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %.preheader.i
  store i8 49, ptr %.026, align 1, !tbaa !69
  %i.ds = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cx
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.y:                                             ; preds = %bb.f
  %i.dt = mul nsw i32 %3, %3                      ; 2 uses
  %i.du = mul i32 %i.dt, %3                       ; 2 uses
  %i.dv = mul i32 %i.du, %3                       ; 2 uses
  %i.dw = icmp ult i32 %.0, %3
  br i1 %i.dw, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %bb.y, %bb.ae
  %.030.i.i54 = phi i32 [ %i.ee, %bb.ae ], [ 1, %bb.y ] ; 4 uses
  %.02329.i.i55 = phi i32 [ %i.ed, %bb.ae ], [ %.0, %bb.y ] ; 4 uses
  %i.dx = icmp ult i32 %.02329.i.i55, %i.dt
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i53
  %i.dy = add i32 %.030.i.i54, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.aa:                                            ; preds = %.lr.ph.i.i53
  %i.dz = icmp ult i32 %.02329.i.i55, %i.du
  br i1 %i.dz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ea = add i32 %.030.i.i54, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.ac:                                            ; preds = %bb.aa
  %i.eb = icmp ult i32 %.02329.i.i55, %i.dv
  br i1 %i.eb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ec = add i32 %.030.i.i54, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.ae:                                            ; preds = %bb.ac
  %i.ed = udiv i32 %.02329.i.i55, %i.dv           ; 2 uses
  %i.ee = add i32 %.030.i.i54, 4                  ; 2 uses
  %i.ef = icmp ult i32 %i.ed, %3
  br i1 %i.ef, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, label %.lr.ph.i.i53, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56:  ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.z
  %.022.i.i57 = phi i32 [ %i.ec, %bb.ad ], [ %i.dy, %bb.z ], [ %i.ea, %bb.ab ], [ %i.ee, %bb.ae ] ; 2 uses
  %i.eg = ptrtoint ptr %1 to i64
  %i.eh = ptrtoint ptr %.026 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = zext i32 %.022.i.i57 to i64             ; 2 uses
  %i.ek = icmp slt i64 %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.lr.ph.i59, !prof !155

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i: ; preds = %bb.y
  %i.el = ptrtoint ptr %1 to i64
  %i.em = ptrtoint ptr %.026 to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = icmp slt i64 %i.en, 1
  br i1 %i.eo, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i61, !prof !155

.lr.ph.i59:                                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, %.lr.ph.i59
  %.0.in28.i = phi i32 [ %.0.i, %.lr.ph.i59 ], [ %.022.i.i57, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ]
  %.02027.i = phi i32 [ %i.ep, %.lr.ph.i59 ], [ %.0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ] ; 2 uses
  %.0.i = add i32 %.0.in28.i, -1                  ; 2 uses
  %i.ep = udiv i32 %.02027.i, %3                  ; 3 uses
  %i.eq = urem i32 %.02027.i, %3
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !69
  %i.eu = zext i32 %.0.i to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.026, i64 %i.eu
  store i8 %i.et, ptr %i.ev, align 1, !tbaa !69
  %.not.i60 = icmp ult i32 %i.ep, %3
  br i1 %.not.i60, label %._crit_edge.i61, label %.lr.ph.i59, !llvm.loop !48

._crit_edge.i61:                                  ; preds = %.lr.ph.i59, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i
  %i.ew = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.ej, %.lr.ph.i59 ]
  %.020.lcssa.i = phi i32 [ %.0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.ep, %.lr.ph.i59 ]
  %i.ex = zext i32 %.020.lcssa.i to i64
  %i.ey = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !69
  store i8 %i.ez, ptr %.026, align 1, !tbaa !69
  %i.fa = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ew
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %._crit_edge.i61, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, %._crit_edge.i48, %bb.x, %bb.w, %bb.t, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, %bb.i, %bb.g, %bb.a, %bb.c
  %.pn68 = phi ptr [ %1, %bb.t ], [ %i.d, %bb.c ], [ %1, %bb.x ], [ %1, %bb.a ], [ %1, %bb.g ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %i.w, %bb.i ], [ %i.bn, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i ], [ %i.cr, %bb.w ], [ %i.ds, %._crit_edge.i48 ], [ %i.fa, %._crit_edge.i61 ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ]
  %.pn66 = phi i32 [ 75, %bb.t ], [ 0, %bb.c ], [ 75, %bb.x ], [ 75, %bb.a ], [ 75, %bb.g ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ 0, %bb.i ], [ 0, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i ], [ 0, %bb.w ], [ 0, %._crit_edge.i48 ], [ 0, %._crit_edge.i61 ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn68, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn66, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #39

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iIsENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = sext i16 %2 to i32                       ; 2 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %2, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 48, ptr %0, align 1, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit
end_hunk_3
begin_hunk_4_@_ZSt12__to_chars_iIsENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i:bb.a
  %.0 = phi i32 [ %i.g, %bb.e ], [ %i.a, %bb.d ]  ; 21 uses
  switch i32 %3, label %bb.z [
    i32 16, label %bb.g
    i32 10, label %bb.k
    i32 8, label %bb.u
    i32 2, label %bb.y
  ]

bb.g:                                             ; preds = %bb.f
  %i.h = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false)
  %i.i = sub nuw nsw i32 35, %i.h
  %i.j = lshr i32 %i.i, 2                         ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.026 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = zext nneg i32 %i.j to i64                ; 2 uses
  %i.o = icmp slt i64 %i.m, %i.n
  br i1 %i.o, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.h, !prof !155

bb.h:                                             ; preds = %bb.g
  %i.p = icmp samesign ugt i32 %.0, 255
  br i1 %i.p, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.q = add nsw i32 %i.j, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.031.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %i.q, %.lr.ph.preheader.i ] ; 3 uses
  %.02830.i = phi i32 [ %i.z, %.lr.ph.i ], [ %.0, %.lr.ph.preheader.i ] ; 4 uses
  %i.r = and i32 %.02830.i, 15
  %i.s = lshr i32 %.02830.i, 4
  %i.t = zext nneg i32 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !69
  %i.w = zext i32 %.031.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.026, i64 %i.w
  store i8 %i.v, ptr %i.x, align 1, !tbaa !69
  %i.y = and i32 %i.s, 15
  %i.z = lshr i32 %.02830.i, 8                    ; 2 uses
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !69
  %i.ad = add nsw i32 %.031.i, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ae
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !69
  %i.ag = add nsw i32 %.031.i, -2
  %i.ah = icmp ugt i32 %.02830.i, 65535
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.028.lcssa.i = phi i32 [ %.0, %bb.h ], [ %i.z, %.lr.ph.i ] ; 4 uses
  %i.ai = icmp samesign ugt i32 %.028.lcssa.i, 15
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.aj = and i32 %.028.lcssa.i, 15
  %i.ak = lshr i32 %.028.lcssa.i, 4
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.pn.in.i = phi i32 [ %i.ak, %bb.i ], [ %.028.lcssa.i, %._crit_edge.i ]
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  store i8 %storemerge.i, ptr %.026, align 1, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %.026, i64 %i.n
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.k:                                             ; preds = %bb.f
  %i.aq = icmp samesign ult i32 %.0, 10
  br i1 %i.aq, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.q
  %.030.i.i = phi i32 [ %i.ay, %bb.q ], [ 1, %bb.k ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.ax, %bb.q ], [ %.0, %bb.k ] ; 5 uses
  %i.ar = icmp ult i32 %.02329.i.i, 100
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.as = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.at = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.o:                                             ; preds = %bb.m
  %i.av = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ax = udiv i32 %.02329.i.i, 10000
  %i.ay = add i32 %.030.i.i, 4                    ; 2 uses
  %i.az = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.az, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k
  %.022.i.i = phi i32 [ %i.aw, %bb.p ], [ %i.as, %bb.l ], [ %i.au, %bb.n ], [ 1, %bb.k ], [ %i.ay, %bb.q ] ; 2 uses
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = ptrtoint ptr %.026 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = zext i32 %.022.i.i to i64               ; 2 uses
  %i.be = icmp slt i64 %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.r, !prof !155

bb.r:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.bf = icmp ugt i32 %.0, 99
  br i1 %i.bf, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %i.bg = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.bj, %.lr.ph.i9.i ], [ %.0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bu, %.lr.ph.i9.i ], [ %i.bg, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bh = urem i32 %.020.i.i, 100
  %i.bi = shl nuw nsw i32 %i.bh, 1
  %i.bj = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !69
  %i.bo = zext i32 %.01819.i.i to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !69
  %i.bq = load i8, ptr %i.bl, align 2, !tbaa !69
  %i.br = add i32 %.01819.i.i, -1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bs
  store i8 %i.bq, ptr %i.bt, align 1, !tbaa !69
  %i.bu = add i32 %.01819.i.i, -2
  %i.bv = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.bv, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.r
  %.0.lcssa.i.i = phi i32 [ %.0, %bb.r ], [ %i.bj, %.lr.ph.i9.i ] ; 3 uses
  %i.bw = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bx = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !69
  %i.cc = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !69
  %i.cd = load i8, ptr %i.bz, align 2, !tbaa !69
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.ce = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.cf = or disjoint i8 %i.ce, 48
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i

_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i: ; preds = %bb.t, %bb.s
  %storemerge.i.i = phi i8 [ %i.cf, %bb.t ], [ %i.cd, %bb.s ]
  store i8 %storemerge.i.i, ptr %.026, align 1, !tbaa !69
  %i.cg = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bd
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.u:                                             ; preds = %bb.f
  %i.ch = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false)
  %i.ci = trunc nuw nsw i32 %i.ch to i8
  %.lhs.trunc.i = sub nuw nsw i8 34, %i.ci
  %i.cj = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.ck = ptrtoint ptr %1 to i64
  %i.cl = ptrtoint ptr %.026 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = zext nneg i8 %i.cj to i64               ; 2 uses
  %i.co = icmp slt i64 %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.v, !prof !155

bb.v:                                             ; preds = %bb.u
  %i.cp = icmp samesign ugt i32 %.0, 63
  br i1 %i.cp, label %.lr.ph.preheader.i42, label %._crit_edge.i34

.lr.ph.preheader.i42:                             ; preds = %bb.v
  %.zext.i = zext nneg i8 %i.cj to i32
  %i.cq = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i42
  %.031.i44 = phi i32 [ %i.dc, %.lr.ph.i43 ], [ %i.cq, %.lr.ph.preheader.i42 ] ; 3 uses
  %.02830.i45 = phi i32 [ %i.cw, %.lr.ph.i43 ], [ %.0, %.lr.ph.preheader.i42 ] ; 3 uses
  %i.cr = trunc i32 %.02830.i45 to i8             ; 2 uses
  %i.cs = and i8 %i.cr, 7
  %i.ct = or disjoint i8 %i.cs, 48
  %i.cu = zext i32 %.031.i44 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cu
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !69
  %i.cw = lshr i32 %.02830.i45, 6                 ; 2 uses
  %4 = lshr i8 %i.cr, 3
  %i.cx = and i8 %4, 7
  %i.cy = or disjoint i8 %i.cx, 48
  %i.cz = add nsw i32 %.031.i44, -1
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.026, i64 %i.da
  store i8 %i.cy, ptr %i.db, align 1, !tbaa !69
  %i.dc = add nsw i32 %.031.i44, -2
  %i.dd = icmp ugt i32 %.02830.i45, 4095
  br i1 %i.dd, label %.lr.ph.i43, label %._crit_edge.i34, !llvm.loop !46

._crit_edge.i34:                                  ; preds = %.lr.ph.i43, %bb.v
  %.028.lcssa.i35 = phi i32 [ %.0, %bb.v ], [ %i.cw, %.lr.ph.i43 ] ; 4 uses
  %i.de = icmp samesign ugt i32 %.028.lcssa.i35, 7
  br i1 %i.de, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i34
  %i.df = lshr i32 %.028.lcssa.i35, 3
  %i.dg = trunc nuw nsw i32 %.028.lcssa.i35 to i8
  %i.dh = and i8 %i.dg, 7
  %i.di = or disjoint i8 %i.dh, 48
  %i.dj = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !69
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i34
  %storemerge.in.in.i = phi i32 [ %i.df, %bb.w ], [ %.028.lcssa.i35, %._crit_edge.i34 ]
  %storemerge.in.i36 = trunc nuw nsw i32 %storemerge.in.in.i to i8
  %storemerge.i37 = or disjoint i8 %storemerge.in.i36, 48
  store i8 %storemerge.i37, ptr %.026, align 1, !tbaa !69
  %i.dk = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cn
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.y:                                             ; preds = %bb.f
  %i.dl = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false) ; 4 uses
  %i.dm = sub nuw nsw i32 32, %i.dl
  %i.dn = ptrtoint ptr %1 to i64
  %i.do = ptrtoint ptr %.026 to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.dr = icmp slt i64 %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.y
  %.not16.i = icmp eq i32 %i.dl, 31
  br i1 %.not16.i, label %._crit_edge.i48, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.preheader.i
  %.015.i = sub nsw i32 31, %i.dl                 ; 2 uses
  %i.ds = zext i32 %.015.i to i64                 ; 3 uses
  %xtraiter = and i32 %.015.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i47.prol.loopexit, label %.lr.ph.i47.prol

.lr.ph.i47.prol:                                  ; preds = %.lr.ph.preheader.i46
  %i.dt = trunc i32 %.0 to i8
  %i.du = and i8 %i.dt, 1
  %i.dv = or disjoint i8 %i.du, 48
  %i.dw = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ds
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !69
  %i.dx = lshr i32 %.0, 1
  %indvars.iv.next.i.prol = add nsw i64 %i.ds, -1
  br label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol.loopexit:                         ; preds = %.lr.ph.i47.prol, %.lr.ph.preheader.i46
  %indvars.iv.i.unr = phi i64 [ %i.ds, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i.prol, %.lr.ph.i47.prol ]
  %.01317.i.unr = phi i32 [ %.0, %.lr.ph.preheader.i46 ], [ %i.dx, %.lr.ph.i47.prol ]
  %i.dy = icmp eq i32 %i.dl, 30
  br i1 %i.dy, label %._crit_edge.i48, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i47 ], [ %indvars.iv.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %.01317.i = phi i32 [ %i.ej, %.lr.ph.i47 ], [ %.01317.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %i.dz = trunc i32 %.01317.i to i8
  %i.ea = and i8 %i.dz, 1
  %i.eb = or disjoint i8 %i.ea, 48
  %i.ec = getelementptr inbounds nuw i8, ptr %.026, i64 %indvars.iv.i
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !69
  %i.ed = lshr i32 %.01317.i, 1
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = and i8 %i.ee, 1
  %i.eg = or disjoint i8 %i.ef, 48
  %i.eh = getelementptr i8, ptr %.026, i64 %indvars.iv.i
  %i.ei = getelementptr i8, ptr %i.eh, i64 -1
  store i8 %i.eg, ptr %i.ei, align 1, !tbaa !69
  %i.ej = lshr i32 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ek = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.1, label %._crit_edge.i48, label %.lr.ph.i47, !llvm.loop !47

._crit_edge.i48:                                  ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %.preheader.i
  store i8 49, ptr %.026, align 1, !tbaa !69
  %i.el = getelementptr inbounds nuw i8, ptr %.026, i64 %i.dq
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.z:                                             ; preds = %bb.f
  %i.em = mul nsw i32 %3, %3                      ; 2 uses
  %i.en = mul i32 %i.em, %3                       ; 2 uses
  %i.eo = mul i32 %i.en, %3                       ; 2 uses
  %i.ep = icmp ult i32 %.0, %3
  br i1 %i.ep, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %bb.z, %bb.af
  %.030.i.i54 = phi i32 [ %i.ex, %bb.af ], [ 1, %bb.z ] ; 4 uses
  %.02329.i.i55 = phi i32 [ %i.ew, %bb.af ], [ %.0, %bb.z ] ; 4 uses
  %i.eq = icmp ult i32 %.02329.i.i55, %i.em
  br i1 %i.eq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i53
  %i.er = add i32 %.030.i.i54, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.ab:                                            ; preds = %.lr.ph.i.i53
  %i.es = icmp ult i32 %.02329.i.i55, %i.en
  br i1 %i.es, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.et = add i32 %.030.i.i54, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.ad:                                            ; preds = %bb.ab
  %i.eu = icmp ult i32 %.02329.i.i55, %i.eo
  br i1 %i.eu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ev = add i32 %.030.i.i54, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.af:                                            ; preds = %bb.ad
  %i.ew = udiv i32 %.02329.i.i55, %i.eo           ; 2 uses
  %i.ex = add i32 %.030.i.i54, 4                  ; 2 uses
  %i.ey = icmp ult i32 %i.ew, %3
  br i1 %i.ey, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, label %.lr.ph.i.i53, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56:  ; preds = %bb.af, %bb.ae, %bb.ac, %bb.aa
  %.022.i.i57 = phi i32 [ %i.ev, %bb.ae ], [ %i.er, %bb.aa ], [ %i.et, %bb.ac ], [ %i.ex, %bb.af ] ; 2 uses
  %i.ez = ptrtoint ptr %1 to i64
  %i.fa = ptrtoint ptr %.026 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = zext i32 %.022.i.i57 to i64             ; 2 uses
  %i.fd = icmp slt i64 %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.lr.ph.i59, !prof !155

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i: ; preds = %bb.z
  %i.fe = ptrtoint ptr %1 to i64
  %i.ff = ptrtoint ptr %.026 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = icmp slt i64 %i.fg, 1
  br i1 %i.fh, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i61, !prof !155

.lr.ph.i59:                                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, %.lr.ph.i59
  %.0.in28.i = phi i32 [ %.0.i, %.lr.ph.i59 ], [ %.022.i.i57, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ]
  %.02027.i = phi i32 [ %i.fi, %.lr.ph.i59 ], [ %.0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ] ; 2 uses
  %.0.i = add i32 %.0.in28.i, -1                  ; 2 uses
  %i.fi = udiv i32 %.02027.i, %3                  ; 3 uses
  %i.fj = urem i32 %.02027.i, %3
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !69
  %i.fn = zext i32 %.0.i to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fn
  store i8 %i.fm, ptr %i.fo, align 1, !tbaa !69
  %.not.i60 = icmp ult i32 %i.fi, %3
  br i1 %.not.i60, label %._crit_edge.i61, label %.lr.ph.i59, !llvm.loop !48

._crit_edge.i61:                                  ; preds = %.lr.ph.i59, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i
  %i.fp = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fc, %.lr.ph.i59 ]
  %.020.lcssa.i = phi i32 [ %.0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fi, %.lr.ph.i59 ]
  %i.fq = zext i32 %.020.lcssa.i to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !69
  store i8 %i.fs, ptr %.026, align 1, !tbaa !69
  %i.ft = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fp
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %._crit_edge.i61, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, %._crit_edge.i48, %bb.y, %bb.x, %bb.u, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, %bb.j, %bb.g, %bb.a, %bb.c
  %.pn68 = phi ptr [ %1, %bb.u ], [ %i.d, %bb.c ], [ %1, %bb.y ], [ %1, %bb.a ], [ %1, %bb.g ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %i.ap, %bb.j ], [ %i.cg, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i ], [ %i.dk, %bb.x ], [ %i.el, %._crit_edge.i48 ], [ %i.ft, %._crit_edge.i61 ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ]
  %.pn66 = phi i32 [ 75, %bb.u ], [ 0, %bb.c ], [ 75, %bb.y ], [ 75, %bb.a ], [ 75, %bb.g ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ 0, %bb.j ], [ 0, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i ], [ 0, %bb.x ], [ 0, %._crit_edge.i48 ], [ 0, %._crit_edge.i61 ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn68, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn66, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iIiENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 48, ptr %0, align 1, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.d:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %bb.e, label %bb.f
end_hunk_4
begin_hunk_5_@_ZSt12__to_chars_iIiENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i:bb.a
  %.0 = phi i32 [ %i.f, %bb.e ], [ %2, %bb.d ]    ; 21 uses
  switch i32 %3, label %bb.z [
    i32 16, label %bb.g
    i32 10, label %bb.k
    i32 8, label %bb.u
    i32 2, label %bb.y
  ]

bb.g:                                             ; preds = %bb.f
  %i.g = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false)
  %i.h = sub nuw nsw i32 35, %i.g
  %i.i = lshr i32 %i.h, 2                         ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %.026 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = zext nneg i32 %i.i to i64                ; 2 uses
  %i.n = icmp slt i64 %i.l, %i.m
  br i1 %i.n, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.h, !prof !155

bb.h:                                             ; preds = %bb.g
  %i.o = icmp ugt i32 %.0, 255
  br i1 %i.o, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.p = add nsw i32 %i.i, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.031.i = phi i32 [ %i.af, %.lr.ph.i ], [ %i.p, %.lr.ph.preheader.i ] ; 3 uses
  %.02830.i = phi i32 [ %i.y, %.lr.ph.i ], [ %.0, %.lr.ph.preheader.i ] ; 4 uses
  %i.q = and i32 %.02830.i, 15
  %i.r = lshr i32 %.02830.i, 4
  %i.s = zext nneg i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !69
  %i.v = zext i32 %.031.i to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 %i.v
  store i8 %i.u, ptr %i.w, align 1, !tbaa !69
  %i.x = and i32 %i.r, 15
  %i.y = lshr i32 %.02830.i, 8                    ; 2 uses
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !69
  %i.ac = add nsw i32 %.031.i, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ad
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !69
  %i.af = add nsw i32 %.031.i, -2
  %i.ag = icmp ugt i32 %.02830.i, 65535
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.028.lcssa.i = phi i32 [ %.0, %bb.h ], [ %i.y, %.lr.ph.i ] ; 4 uses
  %i.ah = icmp samesign ugt i32 %.028.lcssa.i, 15
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.ai = and i32 %.028.lcssa.i, 15
  %i.aj = lshr i32 %.028.lcssa.i, 4
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.pn.in.i = phi i32 [ %i.aj, %bb.i ], [ %.028.lcssa.i, %._crit_edge.i ]
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  store i8 %storemerge.i, ptr %.026, align 1, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %.026, i64 %i.m
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.k:                                             ; preds = %bb.f
  %i.ap = icmp ult i32 %.0, 10
  br i1 %i.ap, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.q
  %.030.i.i = phi i32 [ %i.ax, %bb.q ], [ 1, %bb.k ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.aw, %bb.q ], [ %.0, %bb.k ] ; 5 uses
  %i.aq = icmp ult i32 %.02329.i.i, 100
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ar = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.as = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.o:                                             ; preds = %bb.m
  %i.au = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.q:                                             ; preds = %bb.o
  %i.aw = udiv i32 %.02329.i.i, 10000
  %i.ax = add i32 %.030.i.i, 4                    ; 2 uses
  %i.ay = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.ay, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k
  %.022.i.i = phi i32 [ %i.av, %bb.p ], [ %i.ar, %bb.l ], [ %i.at, %bb.n ], [ 1, %bb.k ], [ %i.ax, %bb.q ] ; 2 uses
  %i.az = ptrtoint ptr %1 to i64
  %i.ba = ptrtoint ptr %.026 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = zext i32 %.022.i.i to i64               ; 2 uses
  %i.bd = icmp slt i64 %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.r, !prof !155

bb.r:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.be = icmp ugt i32 %.0, 99
  br i1 %i.be, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %i.bf = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.bi, %.lr.ph.i9.i ], [ %.0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bt, %.lr.ph.i9.i ], [ %i.bf, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bg = urem i32 %.020.i.i, 100
  %i.bh = shl nuw nsw i32 %i.bg, 1
  %i.bi = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.bj = zext nneg i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !69
  %i.bn = zext i32 %.01819.i.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bn
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !69
  %i.bp = load i8, ptr %i.bk, align 2, !tbaa !69
  %i.bq = add i32 %.01819.i.i, -1
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.026, i64 %i.br
  store i8 %i.bp, ptr %i.bs, align 1, !tbaa !69
  %i.bt = add i32 %.01819.i.i, -2
  %i.bu = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.bu, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.r
  %.0.lcssa.i.i = phi i32 [ %.0, %bb.r ], [ %i.bi, %.lr.ph.i9.i ] ; 3 uses
  %i.bv = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bw = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !69
  %i.cb = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !69
  %i.cc = load i8, ptr %i.by, align 2, !tbaa !69
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.cd = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.ce = or disjoint i8 %i.cd, 48
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i

_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i: ; preds = %bb.t, %bb.s
  %storemerge.i.i = phi i8 [ %i.ce, %bb.t ], [ %i.cc, %bb.s ]
  store i8 %storemerge.i.i, ptr %.026, align 1, !tbaa !69
  %i.cf = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bc
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.u:                                             ; preds = %bb.f
  %i.cg = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false)
  %i.ch = trunc nuw nsw i32 %i.cg to i8
  %.lhs.trunc.i = sub nuw nsw i8 34, %i.ch
  %i.ci = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.cj = ptrtoint ptr %1 to i64
  %i.ck = ptrtoint ptr %.026 to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = zext nneg i8 %i.ci to i64               ; 2 uses
  %i.cn = icmp slt i64 %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.v, !prof !155

bb.v:                                             ; preds = %bb.u
  %i.co = icmp ugt i32 %.0, 63
  br i1 %i.co, label %.lr.ph.preheader.i42, label %._crit_edge.i34

.lr.ph.preheader.i42:                             ; preds = %bb.v
  %.zext.i = zext nneg i8 %i.ci to i32
  %i.cp = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i42
  %.031.i44 = phi i32 [ %i.db, %.lr.ph.i43 ], [ %i.cp, %.lr.ph.preheader.i42 ] ; 3 uses
  %.02830.i45 = phi i32 [ %i.cv, %.lr.ph.i43 ], [ %.0, %.lr.ph.preheader.i42 ] ; 3 uses
  %i.cq = trunc i32 %.02830.i45 to i8             ; 2 uses
  %i.cr = and i8 %i.cq, 7
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = zext i32 %.031.i44 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ct
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !69
  %i.cv = lshr i32 %.02830.i45, 6                 ; 2 uses
  %4 = lshr i8 %i.cq, 3
  %i.cw = and i8 %4, 7
  %i.cx = or disjoint i8 %i.cw, 48
  %i.cy = add nsw i32 %.031.i44, -1
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cz
  store i8 %i.cx, ptr %i.da, align 1, !tbaa !69
  %i.db = add nsw i32 %.031.i44, -2
  %i.dc = icmp ugt i32 %.02830.i45, 4095
  br i1 %i.dc, label %.lr.ph.i43, label %._crit_edge.i34, !llvm.loop !46

._crit_edge.i34:                                  ; preds = %.lr.ph.i43, %bb.v
  %.028.lcssa.i35 = phi i32 [ %.0, %bb.v ], [ %i.cv, %.lr.ph.i43 ] ; 4 uses
  %i.dd = icmp samesign ugt i32 %.028.lcssa.i35, 7
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i34
  %i.de = lshr i32 %.028.lcssa.i35, 3
  %i.df = trunc nuw nsw i32 %.028.lcssa.i35 to i8
  %i.dg = and i8 %i.df, 7
  %i.dh = or disjoint i8 %i.dg, 48
  %i.di = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !69
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i34
  %storemerge.in.in.i = phi i32 [ %i.de, %bb.w ], [ %.028.lcssa.i35, %._crit_edge.i34 ]
  %storemerge.in.i36 = trunc nuw nsw i32 %storemerge.in.in.i to i8
  %storemerge.i37 = or disjoint i8 %storemerge.in.i36, 48
  store i8 %storemerge.i37, ptr %.026, align 1, !tbaa !69
  %i.dj = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cm
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.y:                                             ; preds = %bb.f
  %i.dk = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0, i1 false) ; 4 uses
  %i.dl = sub nuw nsw i32 32, %i.dk
  %i.dm = ptrtoint ptr %1 to i64
  %i.dn = ptrtoint ptr %.026 to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dq = icmp slt i64 %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.y
  %.not16.i = icmp eq i32 %i.dk, 31
  br i1 %.not16.i, label %._crit_edge.i48, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.preheader.i
  %.015.i = sub nsw i32 31, %i.dk                 ; 2 uses
  %i.dr = zext nneg i32 %.015.i to i64            ; 3 uses
  %xtraiter = and i32 %.015.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i47.prol.loopexit, label %.lr.ph.i47.prol

.lr.ph.i47.prol:                                  ; preds = %.lr.ph.preheader.i46
  %i.ds = trunc i32 %.0 to i8
  %i.dt = and i8 %i.ds, 1
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = getelementptr inbounds nuw i8, ptr %.026, i64 %i.dr
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !69
  %i.dw = lshr i32 %.0, 1
  %indvars.iv.next.i.prol = add nsw i64 %i.dr, -1
  br label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol.loopexit:                         ; preds = %.lr.ph.i47.prol, %.lr.ph.preheader.i46
  %indvars.iv.i.unr = phi i64 [ %i.dr, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i.prol, %.lr.ph.i47.prol ]
  %.01317.i.unr = phi i32 [ %.0, %.lr.ph.preheader.i46 ], [ %i.dw, %.lr.ph.i47.prol ]
  %i.dx = icmp eq i32 %i.dk, 30
  br i1 %i.dx, label %._crit_edge.i48, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i47 ], [ %indvars.iv.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %.01317.i = phi i32 [ %i.ei, %.lr.ph.i47 ], [ %.01317.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %i.dy = trunc i32 %.01317.i to i8
  %i.dz = and i8 %i.dy, 1
  %i.ea = or disjoint i8 %i.dz, 48
  %i.eb = getelementptr inbounds nuw i8, ptr %.026, i64 %indvars.iv.i
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !69
  %i.ec = lshr i32 %.01317.i, 1
  %i.ed = trunc i32 %i.ec to i8
  %i.ee = and i8 %i.ed, 1
  %i.ef = or disjoint i8 %i.ee, 48
  %i.eg = getelementptr i8, ptr %.026, i64 %indvars.iv.i
  %i.eh = getelementptr i8, ptr %i.eg, i64 -1
  store i8 %i.ef, ptr %i.eh, align 1, !tbaa !69
  %i.ei = lshr i32 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ej = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.1, label %._crit_edge.i48, label %.lr.ph.i47, !llvm.loop !47

._crit_edge.i48:                                  ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %.preheader.i
  store i8 49, ptr %.026, align 1, !tbaa !69
  %i.ek = getelementptr inbounds nuw i8, ptr %.026, i64 %i.dp
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.z:                                             ; preds = %bb.f
  %i.el = mul nsw i32 %3, %3                      ; 2 uses
  %i.em = mul i32 %i.el, %3                       ; 2 uses
  %i.en = mul i32 %i.em, %3                       ; 2 uses
  %i.eo = icmp ult i32 %.0, %3
  br i1 %i.eo, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %bb.z, %bb.af
  %.030.i.i54 = phi i32 [ %i.ew, %bb.af ], [ 1, %bb.z ] ; 4 uses
  %.02329.i.i55 = phi i32 [ %i.ev, %bb.af ], [ %.0, %bb.z ] ; 4 uses
  %i.ep = icmp ult i32 %.02329.i.i55, %i.el
  br i1 %i.ep, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i53
  %i.eq = add i32 %.030.i.i54, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.ab:                                            ; preds = %.lr.ph.i.i53
  %i.er = icmp ult i32 %.02329.i.i55, %i.em
  br i1 %i.er, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.es = add i32 %.030.i.i54, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.ad:                                            ; preds = %bb.ab
  %i.et = icmp ult i32 %.02329.i.i55, %i.en
  br i1 %i.et, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eu = add i32 %.030.i.i54, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56

bb.af:                                            ; preds = %bb.ad
  %i.ev = udiv i32 %.02329.i.i55, %i.en           ; 2 uses
  %i.ew = add i32 %.030.i.i54, 4                  ; 2 uses
  %i.ex = icmp ult i32 %i.ev, %3
  br i1 %i.ex, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, label %.lr.ph.i.i53, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56:  ; preds = %bb.af, %bb.ae, %bb.ac, %bb.aa
  %.022.i.i57 = phi i32 [ %i.eu, %bb.ae ], [ %i.eq, %bb.aa ], [ %i.es, %bb.ac ], [ %i.ew, %bb.af ] ; 2 uses
  %i.ey = ptrtoint ptr %1 to i64
  %i.ez = ptrtoint ptr %.026 to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = zext i32 %.022.i.i57 to i64             ; 2 uses
  %i.fc = icmp slt i64 %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.lr.ph.i59, !prof !155

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i: ; preds = %bb.z
  %i.fd = ptrtoint ptr %1 to i64
  %i.fe = ptrtoint ptr %.026 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = icmp slt i64 %i.ff, 1
  br i1 %i.fg, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i61, !prof !155

.lr.ph.i59:                                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, %.lr.ph.i59
  %.0.in28.i = phi i32 [ %.0.i, %.lr.ph.i59 ], [ %.022.i.i57, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ]
  %.02027.i = phi i32 [ %i.fh, %.lr.ph.i59 ], [ %.0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ] ; 2 uses
  %.0.i = add i32 %.0.in28.i, -1                  ; 2 uses
  %i.fh = udiv i32 %.02027.i, %3                  ; 3 uses
  %i.fi = urem i32 %.02027.i, %3
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !69
  %i.fm = zext i32 %.0.i to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fm
  store i8 %i.fl, ptr %i.fn, align 1, !tbaa !69
  %.not.i60 = icmp ult i32 %i.fh, %3
  br i1 %.not.i60, label %._crit_edge.i61, label %.lr.ph.i59, !llvm.loop !48

._crit_edge.i61:                                  ; preds = %.lr.ph.i59, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i
  %i.fo = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fb, %.lr.ph.i59 ]
  %.020.lcssa.i = phi i32 [ %.0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fh, %.lr.ph.i59 ]
  %i.fp = zext i32 %.020.lcssa.i to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !69
  store i8 %i.fr, ptr %.026, align 1, !tbaa !69
  %i.fs = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fo
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %._crit_edge.i61, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56, %._crit_edge.i48, %bb.y, %bb.x, %bb.u, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, %bb.j, %bb.g, %bb.a, %bb.c
  %.pn68 = phi ptr [ %1, %bb.u ], [ %i.c, %bb.c ], [ %1, %bb.y ], [ %1, %bb.a ], [ %1, %bb.g ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %i.ao, %bb.j ], [ %i.cf, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i ], [ %i.dj, %bb.x ], [ %i.ek, %._crit_edge.i48 ], [ %i.fs, %._crit_edge.i61 ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ]
  %.pn66 = phi i32 [ 75, %bb.u ], [ 0, %bb.c ], [ 75, %bb.y ], [ 75, %bb.a ], [ 75, %bb.g ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ 0, %bb.j ], [ 0, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i ], [ 0, %bb.x ], [ 0, %._crit_edge.i48 ], [ 0, %._crit_edge.i61 ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i56 ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn68, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn66, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iIxENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 48, ptr %0, align 1, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.d:                                             ; preds = %bb.b
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.e, label %bb.f
end_hunk_5
begin_hunk_6_@_ZSt12__to_chars_iIxENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i:bb.a
  %i.f = sub i64 0, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.026 = phi ptr [ %i.e, %bb.e ], [ %0, %bb.d ]  ; 29 uses
  %.0 = phi i64 [ %i.f, %bb.e ], [ %2, %bb.d ]    ; 21 uses
  switch i32 %3, label %bb.z [
    i32 16, label %bb.g
    i32 10, label %bb.k
    i32 8, label %bb.u
    i32 2, label %bb.y
  ]

bb.g:                                             ; preds = %bb.f
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0, i1 false)
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = sub nuw nsw i32 67, %i.h
  %i.j = lshr i32 %i.i, 2                         ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.026 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = zext nneg i32 %i.j to i64                ; 2 uses
  %i.o = icmp slt i64 %i.m, %i.n
  br i1 %i.o, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.h, !prof !155

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ugt i64 %.0, 255
  br i1 %i.p, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.q = add nsw i32 %i.j, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.031.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.q, %.lr.ph.preheader.i ] ; 3 uses
  %.02830.i = phi i64 [ %i.y, %.lr.ph.i ], [ %.0, %.lr.ph.preheader.i ] ; 4 uses
  %i.r = and i64 %.02830.i, 15
  %i.s = lshr i64 %.02830.i, 4
  %i.t = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !tbaa !69
  %i.v = zext i32 %.031.i to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 %i.v
  store i8 %i.u, ptr %i.w, align 1, !tbaa !69
  %i.x = and i64 %i.s, 15
  %i.y = lshr i64 %.02830.i, 8                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.x
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !69
  %i.ab = add nsw i32 %.031.i, -1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !69
  %i.ae = add nsw i32 %.031.i, -2
  %i.af = icmp ugt i64 %.02830.i, 65535
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.028.lcssa.i = phi i64 [ %.0, %bb.h ], [ %i.y, %.lr.ph.i ] ; 4 uses
  %i.ag = icmp samesign ugt i64 %.028.lcssa.i, 15
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.ah = and i64 %.028.lcssa.i, 15
  %i.ai = lshr i64 %.028.lcssa.i, 4
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.028.pn.i = phi i64 [ %i.ai, %bb.i ], [ %.028.lcssa.i, %._crit_edge.i ]
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  store i8 %storemerge.i, ptr %.026, align 1, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %.026, i64 %i.n
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.k:                                             ; preds = %bb.f
  %i.an = icmp ult i64 %.0, 10
  br i1 %i.an, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.q
  %.029.i.i = phi i32 [ %i.av, %bb.q ], [ 1, %bb.k ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.au, %bb.q ], [ %.0, %bb.k ] ; 5 uses
  %i.ao = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.aq = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.o:                                             ; preds = %bb.m
  %i.as = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.at = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.q:                                             ; preds = %bb.o
  %i.au = udiv i64 %.02328.i.i, 10000
  %i.av = add i32 %.029.i.i, 4                    ; 2 uses
  %i.aw = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.aw, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k
  %.022.i.i = phi i32 [ %i.at, %bb.p ], [ %i.ap, %bb.l ], [ %i.ar, %bb.n ], [ 1, %bb.k ], [ %i.av, %bb.q ] ; 2 uses
  %i.ax = ptrtoint ptr %1 to i64
  %i.ay = ptrtoint ptr %.026 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = zext i32 %.022.i.i to i64               ; 2 uses
  %i.bb = icmp slt i64 %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.r, !prof !155

bb.r:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bc = icmp ugt i64 %.0, 99
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %i.bd = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bg, %.lr.ph.i9.i ], [ %.0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bq, %.lr.ph.i9.i ], [ %i.bd, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.be = urem i64 %.020.i.i, 100
  %i.bf = shl nuw nsw i64 %i.be, 1
  %i.bg = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !69
  %i.bk = zext i32 %.01819.i.i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !69
  %i.bm = load i8, ptr %i.bh, align 2, !tbaa !69
  %i.bn = add i32 %.01819.i.i, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.026, i64 %i.bo
  store i8 %i.bm, ptr %i.bp, align 1, !tbaa !69
  %i.bq = add i32 %.01819.i.i, -2
  %i.br = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.br, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !13

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.r
  %.0.lcssa.i.i = phi i64 [ %.0, %bb.r ], [ %i.bg, %.lr.ph.i9.i ] ; 3 uses
  %i.bs = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !69
  %i.by = load i8, ptr %i.bu, align 2, !tbaa !69
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.bz = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ca = or disjoint i8 %i.bz, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i: ; preds = %bb.t, %bb.s
  %storemerge.i.i = phi i8 [ %i.ca, %bb.t ], [ %i.by, %bb.s ]
  store i8 %storemerge.i.i, ptr %.026, align 1, !tbaa !69
  %i.cb = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ba
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.u:                                             ; preds = %bb.f
  %i.cc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0, i1 false)
  %i.cd = trunc nuw nsw i64 %i.cc to i8
  %.lhs.trunc.i = sub nuw nsw i8 66, %i.cd
  %i.ce = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.cf = ptrtoint ptr %1 to i64
  %i.cg = ptrtoint ptr %.026 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = zext nneg i8 %i.ce to i64               ; 2 uses
  %i.cj = icmp slt i64 %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.v, !prof !155

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp ugt i64 %.0, 63
  br i1 %i.ck, label %.lr.ph.preheader.i42, label %._crit_edge.i34

.lr.ph.preheader.i42:                             ; preds = %bb.v
  %.zext.i = zext nneg i8 %i.ce to i32
  %i.cl = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i42
  %.031.i44 = phi i32 [ %i.cx, %.lr.ph.i43 ], [ %i.cl, %.lr.ph.preheader.i42 ] ; 3 uses
  %.02830.i45 = phi i64 [ %i.cr, %.lr.ph.i43 ], [ %.0, %.lr.ph.preheader.i42 ] ; 3 uses
  %i.cm = trunc i64 %.02830.i45 to i8             ; 2 uses
  %i.cn = and i8 %i.cm, 7
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = zext i32 %.031.i44 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cp
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !69
  %i.cr = lshr i64 %.02830.i45, 6                 ; 2 uses
  %4 = lshr i8 %i.cm, 3
  %i.cs = and i8 %4, 7
  %i.ct = or disjoint i8 %i.cs, 48
  %i.cu = add nsw i32 %.031.i44, -1
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.026, i64 %i.cv
  store i8 %i.ct, ptr %i.cw, align 1, !tbaa !69
  %i.cx = add nsw i32 %.031.i44, -2
  %i.cy = icmp ugt i64 %.02830.i45, 4095
  br i1 %i.cy, label %.lr.ph.i43, label %._crit_edge.i34, !llvm.loop !42

._crit_edge.i34:                                  ; preds = %.lr.ph.i43, %bb.v
  %.028.lcssa.i35 = phi i64 [ %.0, %bb.v ], [ %i.cr, %.lr.ph.i43 ] ; 4 uses
  %i.cz = icmp samesign ugt i64 %.028.lcssa.i35, 7
  br i1 %i.cz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i34
  %i.da = lshr i64 %.028.lcssa.i35, 3
  %i.db = trunc nuw nsw i64 %.028.lcssa.i35 to i8
  %i.dc = and i8 %i.db, 7
  %i.dd = or disjoint i8 %i.dc, 48
  %i.de = getelementptr inbounds nuw i8, ptr %.026, i64 1
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !69
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i34
  %storemerge.in.in.i = phi i64 [ %i.da, %bb.w ], [ %.028.lcssa.i35, %._crit_edge.i34 ]
  %storemerge.in.i36 = trunc nuw nsw i64 %storemerge.in.in.i to i8
  %storemerge.i37 = or disjoint i8 %storemerge.in.i36, 48
  store i8 %storemerge.i37, ptr %.026, align 1, !tbaa !69
  %i.df = getelementptr inbounds nuw i8, ptr %.026, i64 %i.ci
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.y:                                             ; preds = %bb.f
  %i.dg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0, i1 false) ; 6 uses
  %i.dh = sub nuw nsw i64 64, %i.dg               ; 2 uses
  %i.di = ptrtoint ptr %1 to i64
  %i.dj = ptrtoint ptr %.026 to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = icmp slt i64 %i.dk, %i.dh
  br i1 %i.dl, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.y
  %.not16.i = icmp eq i64 %i.dg, 63
  br i1 %.not16.i, label %._crit_edge.i48, label %.lr.ph.preheader.i46

.lr.ph.preheader.i46:                             ; preds = %.preheader.i
  %.015.i = sub nuw nsw i64 63, %i.dg             ; 2 uses
  %i.dm = trunc nuw nsw i64 %i.dg to i32
  %i.dn = and i32 %i.dm, 1
  %lcmp.mod.not.not = icmp eq i32 %i.dn, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i47.prol, label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol:                                  ; preds = %.lr.ph.preheader.i46
  %i.do = trunc i64 %.0 to i8
  %i.dp = and i8 %i.do, 1
  %i.dq = or disjoint i8 %i.dp, 48
  %i.dr = getelementptr inbounds nuw i8, ptr %.026, i64 %.015.i
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !69
  %i.ds = lshr i64 %.0, 1
  %indvars.iv.next.i.prol = sub nsw i64 62, %i.dg
  br label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol.loopexit:                         ; preds = %.lr.ph.i47.prol, %.lr.ph.preheader.i46
  %indvars.iv.i.unr = phi i64 [ %.015.i, %.lr.ph.preheader.i46 ], [ %indvars.iv.next.i.prol, %.lr.ph.i47.prol ]
  %.01317.i.unr = phi i64 [ %.0, %.lr.ph.preheader.i46 ], [ %i.ds, %.lr.ph.i47.prol ]
  %i.dt = icmp eq i64 %i.dg, 62
  br i1 %i.dt, label %._crit_edge.i48, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i47 ], [ %indvars.iv.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %.01317.i = phi i64 [ %i.ee, %.lr.ph.i47 ], [ %.01317.i.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %i.du = trunc i64 %.01317.i to i8
  %i.dv = and i8 %i.du, 1
  %i.dw = or disjoint i8 %i.dv, 48
  %i.dx = getelementptr inbounds nuw i8, ptr %.026, i64 %indvars.iv.i
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !69
  %i.dy = lshr i64 %.01317.i, 1
  %i.dz = trunc i64 %i.dy to i8
  %i.ea = and i8 %i.dz, 1
  %i.eb = or disjoint i8 %i.ea, 48
  %i.ec = getelementptr i8, ptr %.026, i64 %indvars.iv.i
  %i.ed = getelementptr i8, ptr %i.ec, i64 -1
  store i8 %i.eb, ptr %i.ed, align 1, !tbaa !69
  %i.ee = lshr i64 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ef = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.1, label %._crit_edge.i48, label %.lr.ph.i47, !llvm.loop !43

._crit_edge.i48:                                  ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %.preheader.i
  store i8 49, ptr %.026, align 1, !tbaa !69
  %i.eg = getelementptr inbounds nuw i8, ptr %.026, i64 %i.dh
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

bb.z:                                             ; preds = %bb.f
  %i.eh = mul nsw i32 %3, %3                      ; 2 uses
  %i.ei = mul i32 %i.eh, %3                       ; 2 uses
  %i.ej = mul i32 %i.ei, %3
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = zext i32 %3 to i64                      ; 3 uses
  %i.em = icmp ult i64 %.0, %i.el
  br i1 %i.em, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, label %.lr.ph.i.i53

.lr.ph.i.i53:                                     ; preds = %bb.z
  %i.en = zext nneg i32 %i.eh to i64
  %i.eo = zext i32 %i.ei to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %.lr.ph.i.i53
  %.029.i.i54 = phi i32 [ 1, %.lr.ph.i.i53 ], [ %i.ew, %bb.ag ] ; 4 uses
  %.02328.i.i55 = phi i64 [ %.0, %.lr.ph.i.i53 ], [ %i.ev, %bb.ag ] ; 4 uses
  %i.ep = icmp ult i64 %.02328.i.i55, %i.en
  br i1 %i.ep, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = add i32 %.029.i.i54, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56

bb.ac:                                            ; preds = %bb.aa
  %i.er = icmp ult i64 %.02328.i.i55, %i.eo
  br i1 %i.er, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.es = add i32 %.029.i.i54, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56

bb.ae:                                            ; preds = %bb.ac
  %i.et = icmp ult i64 %.02328.i.i55, %i.ek
  br i1 %i.et, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eu = add i32 %.029.i.i54, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56

bb.ag:                                            ; preds = %bb.ae
  %i.ev = udiv i64 %.02328.i.i55, %i.ek           ; 2 uses
  %i.ew = add i32 %.029.i.i54, 4                  ; 2 uses
  %i.ex = icmp ult i64 %i.ev, %i.el
  br i1 %i.ex, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56, label %bb.aa, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56:  ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ab
  %.022.i.i57 = phi i32 [ %i.eu, %bb.af ], [ %i.eq, %bb.ab ], [ %i.es, %bb.ad ], [ %i.ew, %bb.ag ] ; 2 uses
  %i.ey = ptrtoint ptr %1 to i64
  %i.ez = ptrtoint ptr %.026 to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = zext i32 %.022.i.i57 to i64             ; 2 uses
  %i.fc = icmp slt i64 %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i58, !prof !155

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i: ; preds = %bb.z
  %i.fd = ptrtoint ptr %1 to i64
  %i.fe = ptrtoint ptr %.026 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = icmp slt i64 %i.ff, 1
  br i1 %i.fg, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i61, !prof !155

.preheader.i58:                                   ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56
  %i.fh = sext i32 %3 to i64                      ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.preheader.i58
  %.0.in27.i = phi i32 [ %.022.i.i57, %.preheader.i58 ], [ %.0.i, %bb.ah ]
  %.02026.i = phi i64 [ %.0, %.preheader.i58 ], [ %i.fi, %bb.ah ] ; 2 uses
  %.0.i = add i32 %.0.in27.i, -1                  ; 2 uses
  %i.fi = udiv i64 %.02026.i, %i.fh               ; 3 uses
  %i.fj = urem i64 %.02026.i, %i.fh
  %i.fk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !69
  %i.fm = zext i32 %.0.i to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fm
  store i8 %i.fl, ptr %i.fn, align 1, !tbaa !69
  %.not.i60 = icmp ult i64 %i.fi, %i.el
  br i1 %.not.i60, label %._crit_edge.i61, label %bb.ah, !llvm.loop !44

._crit_edge.i61:                                  ; preds = %bb.ah, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i
  %i.fo = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fb, %bb.ah ]
  %.020.lcssa.i = phi i64 [ %.0, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fi, %bb.ah ]
  %i.fp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %.020.lcssa.i
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !69
  store i8 %i.fq, ptr %.026, align 1, !tbaa !69
  %i.fr = getelementptr inbounds nuw i8, ptr %.026, i64 %i.fo
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %._crit_edge.i61, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56, %._crit_edge.i48, %bb.y, %bb.x, %bb.u, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, %bb.j, %bb.g, %bb.a, %bb.c
  %.pn68 = phi ptr [ %1, %bb.u ], [ %i.c, %bb.c ], [ %1, %bb.y ], [ %1, %bb.a ], [ %1, %bb.g ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.am, %bb.j ], [ %i.cb, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i ], [ %i.df, %bb.x ], [ %i.eg, %._crit_edge.i48 ], [ %i.fr, %._crit_edge.i61 ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56 ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ]
  %.pn66 = phi i32 [ 75, %bb.u ], [ 0, %bb.c ], [ 75, %bb.y ], [ 75, %bb.a ], [ 75, %bb.g ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ 0, %bb.j ], [ 0, %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit.i ], [ 0, %bb.x ], [ 0, %._crit_edge.i48 ], [ 0, %._crit_edge.i61 ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i56 ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn68, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn66, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iIhENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = zext i8 %2 to i32                        ; 10 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %2, 0
  br i1 %i.c, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %3, label %bb.p [
    i32 16, label %bb.d
    i32 10, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
    i32 8, label %bb.k
    i32 2, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = tail call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.e = sub nuw nsw i32 35, %i.d
  %i.f = lshr i32 %i.e, 2
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = zext nneg i32 %i.f to i64                ; 2 uses
  %i.k = icmp slt i64 %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.e, !prof !155

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i8 %2, 15
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = and i32 %i.a, 15
  %i.n = lshr i32 %i.a, 4
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.in.i = phi i32 [ %i.n, %bb.f ], [ %i.a, %bb.e ]
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.c
  %i.s = icmp ult i8 %2, 10
  %i.t = icmp ult i8 %2, 100
  %spec.select = select i1 %i.t, i32 2, i32 3     ; 3 uses
  %i.u = ptrtoint ptr %1 to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = zext nneg i32 %spec.select to i64
  %i.y = select i1 %i.s, i64 1, i64 %i.x          ; 3 uses
  %i.z = icmp slt i64 %i.w, %i.y
  br i1 %i.z, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.h, !prof !155

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.aa = icmp ugt i8 %2, 99
  br i1 %i.aa, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.h
  %i.ab = urem i8 %2, 100
  %i.ac = shl nuw i8 %i.ab, 1
  %i.ad = udiv i8 %2, 100
  %i.ae = zext i8 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !69
  %i.ai = zext nneg i32 %spec.select to i64
  %i.aj = getelementptr i8, ptr %0, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  store i8 %i.ah, ptr %i.ak, align 1, !tbaa !69
  %i.al = load i8, ptr %i.af, align 2, !tbaa !69
  %i.am = zext nneg i32 %spec.select to i64
  %i.an = getelementptr i8, ptr %0, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -2
  store i8 %i.al, ptr %i.ao, align 1, !tbaa !69
  br label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.h
  %i.ap = icmp ugt i8 %2, 9
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aq = shl nuw nsw i32 %i.a, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !69
  %i.aw = load i8, ptr %i.as, align 2, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.j:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %.0.lcssa.i.i79 = phi i8 [ %i.ad, %._crit_edge.i.i.thread ], [ %2, %._crit_edge.i.i ]
  %i.ax = or disjoint i8 %.0.lcssa.i.i79, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.k:                                             ; preds = %bb.c
  %i.ay = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %2, i1 true)
  %.lhs.trunc.i = sub nuw nsw i8 10, %i.ay
  %i.az = udiv i8 %.lhs.trunc.i, 3                ; 3 uses
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = ptrtoint ptr %0 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = zext nneg i8 %i.az to i64               ; 2 uses
  %i.be = icmp slt i64 %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.l, !prof !155

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp ugt i8 %2, 63
  br i1 %i.bf, label %._crit_edge.i.thread, label %._crit_edge.i

._crit_edge.i.thread:                             ; preds = %bb.l
  %.zext.i = zext nneg i8 %i.az to i64
  %i.bg = and i8 %2, 7
  %i.bh = or disjoint i8 %i.bg, 48
  %i.bi = zext nneg i8 %i.az to i64
  %i.bj = getelementptr i8, ptr %0, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !69
  %i.bl = lshr i8 %2, 6
  %4 = lshr i8 %2, 3
  %i.bm = add nuw nsw i64 %.zext.i, 4294967294
  %i.bn = and i64 %i.bm, 4294967295
  br label %.sink.split

._crit_edge.i:                                    ; preds = %bb.l
  %i.bo = icmp ugt i8 %2, 7
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i
  %i.bp = lshr i8 %2, 3
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %._crit_edge.i.thread
  %.sink88 = phi i64 [ %i.bn, %._crit_edge.i.thread ], [ 1, %bb.m ]
  %.sink.in.in = phi i8 [ %4, %._crit_edge.i.thread ], [ %2, %bb.m ]
  %storemerge.in.in.i.ph = phi i8 [ %i.bl, %._crit_edge.i.thread ], [ %i.bp, %bb.m ]
  %.sink.in = and i8 %.sink.in.in, 7
  %.sink = or disjoint i8 %.sink.in, 48
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink88
  store i8 %.sink, ptr %i.bq, align 1, !tbaa !69
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %._crit_edge.i
  %storemerge.in.in.i = phi i8 [ %2, %._crit_edge.i ], [ %storemerge.in.in.i.ph, %.sink.split ]
  %storemerge.i30 = or disjoint i8 %storemerge.in.in.i, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.o:                                             ; preds = %bb.c
  %i.br = tail call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 4 uses
  %i.bs = sub nuw nsw i32 32, %i.br
  %i.bt = ptrtoint ptr %1 to i64
  %i.bu = ptrtoint ptr %0 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = zext nneg i32 %i.bs to i64              ; 4 uses
  %i.bx = icmp slt i64 %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.o
  %.not16.i = icmp eq i32 %i.br, 31
  br i1 %.not16.i, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.preheader.i35

.lr.ph.preheader.i35:                             ; preds = %.preheader.i
  %.015.i = xor i32 %i.br, 31                     ; 2 uses
  %i.by = zext nneg i32 %.015.i to i64            ; 3 uses
  %xtraiter = and i32 %.015.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i36.prol.loopexit, label %.lr.ph.i36.prol

.lr.ph.i36.prol:                                  ; preds = %.lr.ph.preheader.i35
  %i.bz = and i8 %2, 1
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %i.by
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !69
  %i.cc = lshr i8 %2, 1
  %indvars.iv.next.i.prol = add nsw i64 %i.by, -1
  br label %.lr.ph.i36.prol.loopexit

.lr.ph.i36.prol.loopexit:                         ; preds = %.lr.ph.i36.prol, %.lr.ph.preheader.i35
  %indvars.iv.i.unr = phi i64 [ %i.by, %.lr.ph.preheader.i35 ], [ %indvars.iv.next.i.prol, %.lr.ph.i36.prol ]
  %.01317.i.unr = phi i8 [ %2, %.lr.ph.preheader.i35 ], [ %i.cc, %.lr.ph.i36.prol ]
  %i.cd = icmp eq i32 %i.br, 30
  br i1 %i.cd, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.prol.loopexit, %.lr.ph.i36
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i36 ], [ %indvars.iv.i.unr, %.lr.ph.i36.prol.loopexit ] ; 3 uses
  %.01317.i = phi i8 [ %i.cm, %.lr.ph.i36 ], [ %.01317.i.unr, %.lr.ph.i36.prol.loopexit ] ; 3 uses
  %i.ce = and i8 %.01317.i, 1
  %i.cf = or disjoint i8 %i.ce, 48
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !69
  %i.ch = lshr i8 %.01317.i, 1
  %i.ci = and i8 %i.ch, 1
  %i.cj = or disjoint i8 %i.ci, 48
  %i.ck = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.cl = getelementptr i8, ptr %i.ck, i64 -1
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !69
  %i.cm = lshr i8 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.cn = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.1, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i36, !llvm.loop !47

bb.p:                                             ; preds = %bb.c
  %i.co = mul nsw i32 %3, %3                      ; 2 uses
  %i.cp = mul i32 %i.co, %3                       ; 2 uses
  %i.cq = mul i32 %i.cp, %3                       ; 2 uses
  %i.cr = icmp ugt i32 %3, %i.a
  br i1 %i.cr, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, label %.lr.ph.i.i42

.lr.ph.i.i42:                                     ; preds = %bb.p, %bb.v
  %.030.i.i = phi i32 [ %i.cz, %bb.v ], [ 1, %bb.p ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.cy, %bb.v ], [ %i.a, %bb.p ] ; 4 uses
  %i.cs = icmp samesign ult i32 %.02329.i.i, %i.co
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i42
  %i.ct = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43

bb.r:                                             ; preds = %.lr.ph.i.i42
  %i.cu = icmp ult i32 %.02329.i.i, %i.cp
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cv = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43

bb.t:                                             ; preds = %bb.r
  %i.cw = icmp ult i32 %.02329.i.i, %i.cq
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43

bb.v:                                             ; preds = %bb.t
  %i.cy = udiv i32 %.02329.i.i, %i.cq             ; 2 uses
  %i.cz = add i32 %.030.i.i, 4                    ; 2 uses
  %i.da = icmp ult i32 %i.cy, %3
  br i1 %i.da, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43, label %.lr.ph.i.i42, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43:  ; preds = %bb.v, %bb.u, %bb.s, %bb.q
  %.022.i.i44 = phi i32 [ %i.cx, %bb.u ], [ %i.ct, %bb.q ], [ %i.cv, %bb.s ], [ %i.cz, %bb.v ] ; 2 uses
  %i.db = ptrtoint ptr %1 to i64
  %i.dc = ptrtoint ptr %0 to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = zext i32 %.022.i.i44 to i64             ; 2 uses
  %i.df = icmp slt i64 %i.dd, %i.de
  br i1 %i.df, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.lr.ph.i46, !prof !155

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i: ; preds = %bb.p
  %i.dg = ptrtoint ptr %1 to i64
  %i.dh = ptrtoint ptr %0 to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = icmp slt i64 %i.di, 1
  br i1 %i.dj, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i48, !prof !155

.lr.ph.i46:                                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43, %.lr.ph.i46
  %.0.in28.i = phi i32 [ %.0.i, %.lr.ph.i46 ], [ %.022.i.i44, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43 ]
  %.02027.i = phi i32 [ %i.dk, %.lr.ph.i46 ], [ %i.a, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43 ] ; 2 uses
  %.0.i = add i32 %.0.in28.i, -1                  ; 2 uses
  %i.dk = udiv i32 %.02027.i, %3                  ; 3 uses
  %i.dl = urem i32 %.02027.i, %3
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !69
  %i.dp = zext i32 %.0.i to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 %i.dp
  store i8 %i.do, ptr %i.dq, align 1, !tbaa !69
  %.not.i47 = icmp ult i32 %i.dk, %3
  br i1 %.not.i47, label %._crit_edge.i48, label %.lr.ph.i46, !llvm.loop !48

._crit_edge.i48:                                  ; preds = %.lr.ph.i46, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i
  %i.dr = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.de, %.lr.ph.i46 ]
  %.020.lcssa.i = phi i32 [ %i.a, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.dk, %.lr.ph.i46 ]
  %i.ds = zext nneg i32 %.020.lcssa.i to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split: ; preds = %.lr.ph.i36.prol.loopexit, %.lr.ph.i36, %.preheader.i, %bb.i, %bb.j, %bb.b, %bb.g, %bb.n, %._crit_edge.i48
  %.sink90 = phi i8 [ %i.du, %._crit_edge.i48 ], [ %i.aw, %bb.i ], [ %storemerge.i30, %bb.n ], [ 48, %bb.b ], [ %storemerge.i, %bb.g ], [ %i.ax, %bb.j ], [ 49, %.preheader.i ], [ 49, %.lr.ph.i36 ], [ 49, %.lr.ph.i36.prol.loopexit ]
  %.sink89 = phi i64 [ %i.dr, %._crit_edge.i48 ], [ %i.y, %bb.i ], [ %i.bd, %bb.n ], [ 1, %bb.b ], [ %i.j, %bb.g ], [ %i.y, %bb.j ], [ %i.bw, %.preheader.i ], [ %i.bw, %.lr.ph.i36 ], [ %i.bw, %.lr.ph.i36.prol.loopexit ]
  store i8 %.sink90, ptr %0, align 1, !tbaa !69
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %.sink89
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43, %bb.o, %bb.k, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, %bb.d, %bb.a
  %.pn55 = phi ptr [ %1, %bb.k ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43 ], [ %1, %bb.o ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.dv, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn53 = phi i32 [ 75, %bb.k ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i43 ], [ 75, %bb.o ], [ 75, %bb.a ], [ 75, %bb.d ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ 0, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn55, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn53, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iItENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = zext i16 %2 to i32                       ; 16 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %2, 0
  br i1 %i.c, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %3, label %bb.s [
    i32 16, label %bb.d
    i32 10, label %bb.h
    i32 8, label %bb.n
    i32 2, label %bb.r
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.e = sub nuw nsw i32 35, %i.d
  %i.f = lshr i32 %i.e, 2                         ; 3 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = zext nneg i32 %i.f to i64                ; 2 uses
  %i.k = icmp slt i64 %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.e, !prof !155

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i16 %2, 255
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.m = and i32 %i.a, 15
  %i.n = lshr i32 %i.a, 4
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !69
  %i.r = zext nneg i32 %i.f to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  store i8 %i.q, ptr %i.t, align 1, !tbaa !69
  %i.u = and i32 %i.n, 15
  %i.v = lshr i32 %i.a, 8
  %i.w = zext nneg i32 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !69
  %i.z = add nsw i32 %i.f, -2
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !69
  br label %._crit_edge.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.e
  %.028.lcssa.i = phi i32 [ %i.a, %bb.e ], [ %i.v, %.lr.ph.preheader.i ] ; 4 uses
  %i.ac = icmp samesign ugt i32 %.028.lcssa.i, 15
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.ad = and i32 %.028.lcssa.i, 15
  %i.ae = lshr i32 %.028.lcssa.i, 4
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.pn.in.i = phi i32 [ %i.ae, %bb.f ], [ %.028.lcssa.i, %._crit_edge.i ]
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.h:                                             ; preds = %bb.c
  %i.aj = icmp ult i16 %2, 10
  br i1 %i.aj, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.ak = icmp ult i16 %2, 100
  br i1 %i.ak, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.al = icmp ult i16 %2, 1000
  br i1 %i.al, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = icmp ult i16 %2, 10000
  %. = select i1 %i.am, i32 4, i32 5
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.j, %bb.i, %.lr.ph.i.i, %bb.h
  %.022.i.i = phi i32 [ %., %bb.j ], [ 3, %bb.i ], [ 2, %.lr.ph.i.i ], [ 1, %bb.h ] ; 2 uses
  %i.an = ptrtoint ptr %1 to i64
  %i.ao = ptrtoint ptr %0 to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = zext nneg i32 %.022.i.i to i64          ; 3 uses
  %i.ar = icmp slt i64 %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.k, !prof !155

bb.k:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.as = icmp ugt i16 %2, 99
  br i1 %i.as, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.at = add nsw i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.aw, %.lr.ph.i9.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bh, %.lr.ph.i9.i ], [ %i.at, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.au = urem i32 %.020.i.i, 100
  %i.av = shl nuw nsw i32 %i.au, 1
  %i.aw = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !69
  %i.bb = zext i32 %.01819.i.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !69
  %i.bd = load i8, ptr %i.ay, align 2, !tbaa !69
  %i.be = add i32 %.01819.i.i, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i8 %i.bd, ptr %i.bg, align 1, !tbaa !69
  %i.bh = add i32 %.01819.i.i, -2
  %i.bi = icmp samesign ugt i32 %.020.i.i, 9999
  br i1 %i.bi, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.k
  %.0.lcssa.i.i = phi i32 [ %i.a, %bb.k ], [ %i.aw, %.lr.ph.i9.i ] ; 3 uses
  %i.bj = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bk = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !69
  %i.bq = load i8, ptr %i.bm, align 2, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.br = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.bs = or disjoint i8 %i.br, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.n:                                             ; preds = %bb.c
  %i.bt = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.bu = trunc nuw nsw i32 %i.bt to i8
  %.lhs.trunc.i = sub nuw nsw i8 34, %i.bu
  %i.bv = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.bw = ptrtoint ptr %1 to i64
  %i.bx = ptrtoint ptr %0 to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = zext nneg i8 %i.bv to i64               ; 2 uses
  %i.ca = icmp slt i64 %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.o, !prof !155

bb.o:                                             ; preds = %bb.n
  %i.cb = icmp ugt i16 %2, 63
  br i1 %i.cb, label %.lr.ph.preheader.i37, label %._crit_edge.i29

.lr.ph.preheader.i37:                             ; preds = %bb.o
  %.zext.i = zext nneg i8 %i.bv to i32            ; 4 uses
  %i.cc = add nsw i32 %.zext.i, -1
  %i.cd = trunc i16 %2 to i8                      ; 2 uses
  %i.ce = and i8 %i.cd, 7
  %i.cf = or disjoint i8 %i.ce, 48
  %i.cg = zext i32 %i.cc to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %i.cg
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !69
  %i.ci = lshr i32 %i.a, 6                        ; 2 uses
  %4 = lshr i8 %i.cd, 3
  %i.cj = and i8 %4, 7
  %i.ck = or disjoint i8 %i.cj, 48
  %i.cl = add nsw i32 %.zext.i, -2
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %i.cm
  store i8 %i.ck, ptr %i.cn, align 1, !tbaa !69
  %i.co = icmp ugt i16 %2, 4095
  br i1 %i.co, label %.lr.ph.i38.1, label %._crit_edge.i29

.lr.ph.i38.1:                                     ; preds = %.lr.ph.preheader.i37
  %i.cp = add nsw i32 %.zext.i, -3
  %i.cq = trunc i32 %i.ci to i8                   ; 2 uses
  %i.cr = and i8 %i.cq, 7
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = zext i32 %i.cp to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ct
  store i8 %i.cs, ptr %i.cu, align 1, !tbaa !69
  %i.cv = lshr i32 %i.a, 12
  %5 = lshr i8 %i.cq, 3
  %i.cw = and i8 %5, 7
  %i.cx = or disjoint i8 %i.cw, 48
  %i.cy = add nsw i32 %.zext.i, -4
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %i.cz
  store i8 %i.cx, ptr %i.da, align 1, !tbaa !69
  br label %._crit_edge.i29

._crit_edge.i29:                                  ; preds = %.lr.ph.preheader.i37, %.lr.ph.i38.1, %bb.o
  %.028.lcssa.i30 = phi i32 [ %i.a, %bb.o ], [ %i.ci, %.lr.ph.preheader.i37 ], [ %i.cv, %.lr.ph.i38.1 ] ; 4 uses
  %i.db = icmp samesign ugt i32 %.028.lcssa.i30, 7
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i29
  %i.dc = lshr i32 %.028.lcssa.i30, 3
  %i.dd = trunc nuw nsw i32 %.028.lcssa.i30 to i8
  %i.de = and i8 %i.dd, 7
  %i.df = or disjoint i8 %i.de, 48
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !69
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i29
  %storemerge.in.in.i = phi i32 [ %i.dc, %bb.p ], [ %.028.lcssa.i30, %._crit_edge.i29 ]
  %storemerge.in.i31 = trunc nuw nsw i32 %storemerge.in.in.i to i8
  %storemerge.i32 = or disjoint i8 %storemerge.in.i31, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.r:                                             ; preds = %bb.c
  %i.dh = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 4 uses
  %i.di = sub nuw nsw i32 32, %i.dh
  %i.dj = ptrtoint ptr %1 to i64
  %i.dk = ptrtoint ptr %0 to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = zext nneg i32 %i.di to i64              ; 4 uses
  %i.dn = icmp slt i64 %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.r
  %.not16.i = icmp eq i32 %i.dh, 31
  br i1 %.not16.i, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.preheader.i41

.lr.ph.preheader.i41:                             ; preds = %.preheader.i
  %.015.i = xor i32 %i.dh, 31                     ; 2 uses
  %i.do = zext nneg i32 %.015.i to i64            ; 3 uses
  %xtraiter = and i32 %.015.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.preheader.i41
  %i.dp = trunc i16 %2 to i8
  %i.dq = and i8 %i.dp, 1
  %i.dr = or disjoint i8 %i.dq, 48
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 %i.do
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !69
  %i.dt = lshr i16 %2, 1
  %indvars.iv.next.i.prol = add nsw i64 %i.do, -1
  br label %.lr.ph.i42.prol.loopexit

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.preheader.i41
  %indvars.iv.i.unr = phi i64 [ %i.do, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i.prol, %.lr.ph.i42.prol ]
  %.01317.i.unr = phi i16 [ %2, %.lr.ph.preheader.i41 ], [ %i.dt, %.lr.ph.i42.prol ]
  %i.du = icmp eq i32 %i.dh, 30
  br i1 %i.du, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i42 ], [ %indvars.iv.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %.01317.i = phi i16 [ %i.ef, %.lr.ph.i42 ], [ %.01317.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %i.dv = trunc i16 %.01317.i to i8
  %i.dw = and i8 %i.dv, 1
  %i.dx = or disjoint i8 %i.dw, 48
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !69
  %i.dz = lshr i16 %.01317.i, 1
  %i.ea = trunc i16 %i.dz to i8
  %i.eb = and i8 %i.ea, 1
  %i.ec = or disjoint i8 %i.eb, 48
  %i.ed = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.ee = getelementptr i8, ptr %i.ed, i64 -1
  store i8 %i.ec, ptr %i.ee, align 1, !tbaa !69
  %i.ef = lshr i16 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.eg = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.1, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42, !llvm.loop !47

bb.s:                                             ; preds = %bb.c
  %i.eh = mul nsw i32 %3, %3                      ; 2 uses
  %i.ei = mul i32 %i.eh, %3                       ; 2 uses
  %i.ej = mul i32 %i.ei, %3                       ; 2 uses
  %i.ek = icmp ugt i32 %3, %i.a
  br i1 %i.ek, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.s, %bb.y
  %.030.i.i49 = phi i32 [ %i.es, %bb.y ], [ 1, %bb.s ] ; 4 uses
  %.02329.i.i50 = phi i32 [ %i.er, %bb.y ], [ %i.a, %bb.s ] ; 4 uses
  %i.el = icmp samesign ult i32 %.02329.i.i50, %i.eh
  br i1 %i.el, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i48
  %i.em = add i32 %.030.i.i49, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51

bb.u:                                             ; preds = %.lr.ph.i.i48
  %i.en = icmp ult i32 %.02329.i.i50, %i.ei
  br i1 %i.en, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eo = add i32 %.030.i.i49, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51

bb.w:                                             ; preds = %bb.u
  %i.ep = icmp ult i32 %.02329.i.i50, %i.ej
  br i1 %i.ep, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eq = add i32 %.030.i.i49, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51

bb.y:                                             ; preds = %bb.w
  %i.er = udiv i32 %.02329.i.i50, %i.ej           ; 2 uses
  %i.es = add i32 %.030.i.i49, 4                  ; 2 uses
  %i.et = icmp ult i32 %i.er, %3
  br i1 %i.et, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51, label %.lr.ph.i.i48, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51:  ; preds = %bb.y, %bb.x, %bb.v, %bb.t
  %.022.i.i52 = phi i32 [ %i.eq, %bb.x ], [ %i.em, %bb.t ], [ %i.eo, %bb.v ], [ %i.es, %bb.y ] ; 2 uses
  %i.eu = ptrtoint ptr %1 to i64
  %i.ev = ptrtoint ptr %0 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = zext i32 %.022.i.i52 to i64             ; 2 uses
  %i.ey = icmp slt i64 %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.lr.ph.i54, !prof !155

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i: ; preds = %bb.s
  %i.ez = ptrtoint ptr %1 to i64
  %i.fa = ptrtoint ptr %0 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = icmp slt i64 %i.fb, 1
  br i1 %i.fc, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i56, !prof !155

.lr.ph.i54:                                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51, %.lr.ph.i54
  %.0.in28.i = phi i32 [ %.0.i, %.lr.ph.i54 ], [ %.022.i.i52, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ]
  %.02027.i = phi i32 [ %i.fd, %.lr.ph.i54 ], [ %i.a, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ] ; 2 uses
  %.0.i = add i32 %.0.in28.i, -1                  ; 2 uses
  %i.fd = udiv i32 %.02027.i, %3                  ; 3 uses
  %i.fe = urem i32 %.02027.i, %3
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !69
  %i.fi = zext i32 %.0.i to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %i.fi
  store i8 %i.fh, ptr %i.fj, align 1, !tbaa !69
  %.not.i55 = icmp ult i32 %i.fd, %3
  br i1 %.not.i55, label %._crit_edge.i56, label %.lr.ph.i54, !llvm.loop !48

._crit_edge.i56:                                  ; preds = %.lr.ph.i54, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i
  %i.fk = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.ex, %.lr.ph.i54 ]
  %.020.lcssa.i = phi i32 [ %i.a, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fd, %.lr.ph.i54 ]
  %i.fl = zext nneg i32 %.020.lcssa.i to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split: ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %.preheader.i, %bb.l, %bb.m, %bb.b, %bb.g, %bb.q, %._crit_edge.i56
  %.sink96 = phi i8 [ %i.fn, %._crit_edge.i56 ], [ %i.bq, %bb.l ], [ %storemerge.i32, %bb.q ], [ 48, %bb.b ], [ %storemerge.i, %bb.g ], [ %i.bs, %bb.m ], [ 49, %.preheader.i ], [ 49, %.lr.ph.i42 ], [ 49, %.lr.ph.i42.prol.loopexit ]
  %.sink = phi i64 [ %i.fk, %._crit_edge.i56 ], [ %i.aq, %bb.l ], [ %i.bz, %bb.q ], [ 1, %bb.b ], [ %i.j, %bb.g ], [ %i.aq, %bb.m ], [ %i.dm, %.preheader.i ], [ %i.dm, %.lr.ph.i42 ], [ %i.dm, %.lr.ph.i42.prol.loopexit ]
  store i8 %.sink96, ptr %0, align 1, !tbaa !69
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51, %bb.r, %bb.n, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, %bb.d, %bb.a
  %.pn63 = phi ptr [ %1, %bb.n ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ], [ %1, %bb.r ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fo, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn61 = phi i32 [ 75, %bb.n ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ], [ 75, %bb.r ], [ 75, %bb.a ], [ 75, %bb.d ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ 0, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn63, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn61, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iIjENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %3, label %bb.w [
    i32 16, label %bb.d
    i32 10, label %bb.h
    i32 8, label %bb.r
    i32 2, label %bb.v
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %i.d = sub nuw nsw i32 35, %i.c
  %i.e = lshr i32 %i.d, 2                         ; 2 uses
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = zext nneg i32 %i.e to i64                ; 2 uses
  %i.j = icmp slt i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.e, !prof !155

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ugt i32 %2, 255
  br i1 %i.k, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.l = add nsw i32 %i.e, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.031.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.l, %.lr.ph.preheader.i ] ; 3 uses
  %.02830.i = phi i32 [ %i.u, %.lr.ph.i ], [ %2, %.lr.ph.preheader.i ] ; 4 uses
  %i.m = and i32 %.02830.i, 15
  %i.n = lshr i32 %.02830.i, 4
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !69
  %i.r = zext i32 %.031.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  store i8 %i.q, ptr %i.s, align 1, !tbaa !69
  %i.t = and i32 %i.n, 15
  %i.u = lshr i32 %.02830.i, 8                    ; 2 uses
  %i.v = zext nneg i32 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !69
  %i.y = add nsw i32 %.031.i, -1
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !69
  %i.ab = add nsw i32 %.031.i, -2
  %i.ac = icmp ugt i32 %.02830.i, 65535
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.028.lcssa.i = phi i32 [ %2, %bb.e ], [ %i.u, %.lr.ph.i ] ; 4 uses
  %i.ad = icmp samesign ugt i32 %.028.lcssa.i, 15
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.ae = and i32 %.028.lcssa.i, 15
  %i.af = lshr i32 %.028.lcssa.i, 4
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.pn.in.i = phi i32 [ %i.af, %bb.f ], [ %.028.lcssa.i, %._crit_edge.i ]
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.h:                                             ; preds = %bb.c
  %i.ak = icmp ult i32 %2, 10
  br i1 %i.ak, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.n
  %.030.i.i = phi i32 [ %i.as, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.ar, %bb.n ], [ %2, %bb.h ] ; 5 uses
  %i.al = icmp ult i32 %.02329.i.i, 100
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.am = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.an = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ar = udiv i32 %.02329.i.i, 10000
  %i.as = add i32 %.030.i.i, 4                    ; 2 uses
  %i.at = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.at, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.h
  %.022.i.i = phi i32 [ %i.aq, %bb.m ], [ %i.am, %bb.i ], [ %i.ao, %bb.k ], [ 1, %bb.h ], [ %i.as, %bb.n ] ; 2 uses
  %i.au = ptrtoint ptr %1 to i64
  %i.av = ptrtoint ptr %0 to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = zext i32 %.022.i.i to i64               ; 3 uses
  %i.ay = icmp slt i64 %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.o, !prof !155

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.az = icmp ugt i32 %2, 99
  br i1 %i.az, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.o
  %i.ba = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.bd, %.lr.ph.i9.i ], [ %2, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bo, %.lr.ph.i9.i ], [ %i.ba, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bb = urem i32 %.020.i.i, 100
  %i.bc = shl nuw nsw i32 %i.bb, 1
  %i.bd = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !69
  %i.bi = zext i32 %.01819.i.i to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !69
  %i.bk = load i8, ptr %i.bf, align 2, !tbaa !69
  %i.bl = add i32 %.01819.i.i, -1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bm
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !69
  %i.bo = add i32 %.01819.i.i, -2
  %i.bp = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.bp, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.o
  %.0.lcssa.i.i = phi i32 [ %2, %bb.o ], [ %i.bd, %.lr.ph.i9.i ] ; 3 uses
  %i.bq = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.br = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !69
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !69
  %i.bx = load i8, ptr %i.bt, align 2, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.by = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.bz = or disjoint i8 %i.by, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.r:                                             ; preds = %bb.c
  %i.ca = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %i.cb = trunc nuw nsw i32 %i.ca to i8
  %.lhs.trunc.i = sub nuw nsw i8 34, %i.cb
  %i.cc = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.cd = ptrtoint ptr %1 to i64
  %i.ce = ptrtoint ptr %0 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = zext nneg i8 %i.cc to i64               ; 2 uses
  %i.ch = icmp slt i64 %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.s, !prof !155

bb.s:                                             ; preds = %bb.r
  %i.ci = icmp ugt i32 %2, 63
  br i1 %i.ci, label %.lr.ph.preheader.i37, label %._crit_edge.i29

.lr.ph.preheader.i37:                             ; preds = %bb.s
  %.zext.i = zext nneg i8 %i.cc to i32
  %i.cj = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38, %.lr.ph.preheader.i37
  %.031.i39 = phi i32 [ %i.cv, %.lr.ph.i38 ], [ %i.cj, %.lr.ph.preheader.i37 ] ; 3 uses
  %.02830.i40 = phi i32 [ %i.cp, %.lr.ph.i38 ], [ %2, %.lr.ph.preheader.i37 ] ; 3 uses
  %i.ck = trunc i32 %.02830.i40 to i8             ; 2 uses
  %i.cl = and i8 %i.ck, 7
  %i.cm = or disjoint i8 %i.cl, 48
  %i.cn = zext i32 %.031.i39 to i64
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %i.cn
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !69
  %i.cp = lshr i32 %.02830.i40, 6                 ; 2 uses
  %4 = lshr i8 %i.ck, 3
  %i.cq = and i8 %4, 7
  %i.cr = or disjoint i8 %i.cq, 48
  %i.cs = add nsw i32 %.031.i39, -1
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ct
  store i8 %i.cr, ptr %i.cu, align 1, !tbaa !69
  %i.cv = add nsw i32 %.031.i39, -2
  %i.cw = icmp ugt i32 %.02830.i40, 4095
  br i1 %i.cw, label %.lr.ph.i38, label %._crit_edge.i29, !llvm.loop !46

._crit_edge.i29:                                  ; preds = %.lr.ph.i38, %bb.s
  %.028.lcssa.i30 = phi i32 [ %2, %bb.s ], [ %i.cp, %.lr.ph.i38 ] ; 4 uses
  %i.cx = icmp samesign ugt i32 %.028.lcssa.i30, 7
  br i1 %i.cx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i29
  %i.cy = lshr i32 %.028.lcssa.i30, 3
  %i.cz = trunc nuw nsw i32 %.028.lcssa.i30 to i8
  %i.da = and i8 %i.cz, 7
  %i.db = or disjoint i8 %i.da, 48
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !69
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i29
  %storemerge.in.in.i = phi i32 [ %i.cy, %bb.t ], [ %.028.lcssa.i30, %._crit_edge.i29 ]
  %storemerge.in.i31 = trunc nuw nsw i32 %storemerge.in.in.i to i8
  %storemerge.i32 = or disjoint i8 %storemerge.in.i31, 48
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.v:                                             ; preds = %bb.c
  %i.dd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 4 uses
  %i.de = sub nuw nsw i32 32, %i.dd
  %i.df = ptrtoint ptr %1 to i64
  %i.dg = ptrtoint ptr %0 to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = zext nneg i32 %i.de to i64              ; 4 uses
  %i.dj = icmp slt i64 %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.v
  %.not16.i = icmp eq i32 %i.dd, 31
  br i1 %.not16.i, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.preheader.i41

.lr.ph.preheader.i41:                             ; preds = %.preheader.i
  %.015.i = xor i32 %i.dd, 31                     ; 2 uses
  %i.dk = zext nneg i32 %.015.i to i64            ; 3 uses
  %xtraiter = and i32 %.015.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.preheader.i41
  %i.dl = trunc i32 %2 to i8
  %i.dm = and i8 %i.dl, 1
  %i.dn = or disjoint i8 %i.dm, 48
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %i.dk
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !69
  %i.dp = lshr i32 %2, 1
  %indvars.iv.next.i.prol = add nsw i64 %i.dk, -1
  br label %.lr.ph.i42.prol.loopexit

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.preheader.i41
  %indvars.iv.i.unr = phi i64 [ %i.dk, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i.prol, %.lr.ph.i42.prol ]
  %.01317.i.unr = phi i32 [ %2, %.lr.ph.preheader.i41 ], [ %i.dp, %.lr.ph.i42.prol ]
  %i.dq = icmp eq i32 %i.dd, 30
  br i1 %i.dq, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i42 ], [ %indvars.iv.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %.01317.i = phi i32 [ %i.eb, %.lr.ph.i42 ], [ %.01317.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %i.dr = trunc i32 %.01317.i to i8
  %i.ds = and i8 %i.dr, 1
  %i.dt = or disjoint i8 %i.ds, 48
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !69
  %i.dv = lshr i32 %.01317.i, 1
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = and i8 %i.dw, 1
  %i.dy = or disjoint i8 %i.dx, 48
  %i.dz = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 -1
  store i8 %i.dy, ptr %i.ea, align 1, !tbaa !69
  %i.eb = lshr i32 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ec = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.1, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42, !llvm.loop !47

bb.w:                                             ; preds = %bb.c
  %i.ed = mul nsw i32 %3, %3                      ; 2 uses
  %i.ee = mul i32 %i.ed, %3                       ; 2 uses
  %i.ef = mul i32 %i.ee, %3                       ; 2 uses
  %i.eg = icmp ult i32 %2, %3
  br i1 %i.eg, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.w, %bb.ac
  %.030.i.i49 = phi i32 [ %i.eo, %bb.ac ], [ 1, %bb.w ] ; 4 uses
  %.02329.i.i50 = phi i32 [ %i.en, %bb.ac ], [ %2, %bb.w ] ; 4 uses
  %i.eh = icmp ult i32 %.02329.i.i50, %i.ed
  br i1 %i.eh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i48
  %i.ei = add i32 %.030.i.i49, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51

bb.y:                                             ; preds = %.lr.ph.i.i48
  %i.ej = icmp ult i32 %.02329.i.i50, %i.ee
  br i1 %i.ej, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ek = add i32 %.030.i.i49, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51

bb.aa:                                            ; preds = %bb.y
  %i.el = icmp ult i32 %.02329.i.i50, %i.ef
  br i1 %i.el, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.em = add i32 %.030.i.i49, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51

bb.ac:                                            ; preds = %bb.aa
  %i.en = udiv i32 %.02329.i.i50, %i.ef           ; 2 uses
  %i.eo = add i32 %.030.i.i49, 4                  ; 2 uses
  %i.ep = icmp ult i32 %i.en, %3
  br i1 %i.ep, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51, label %.lr.ph.i.i48, !llvm.loop !4

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51:  ; preds = %bb.ac, %bb.ab, %bb.z, %bb.x
  %.022.i.i52 = phi i32 [ %i.em, %bb.ab ], [ %i.ei, %bb.x ], [ %i.ek, %bb.z ], [ %i.eo, %bb.ac ] ; 2 uses
  %i.eq = ptrtoint ptr %1 to i64
  %i.er = ptrtoint ptr %0 to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = zext i32 %.022.i.i52 to i64             ; 2 uses
  %i.eu = icmp slt i64 %i.es, %i.et
  br i1 %i.eu, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.lr.ph.i54, !prof !155

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i: ; preds = %bb.w
  %i.ev = ptrtoint ptr %1 to i64
  %i.ew = ptrtoint ptr %0 to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = icmp slt i64 %i.ex, 1
  br i1 %i.ey, label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i56, !prof !155

.lr.ph.i54:                                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51, %.lr.ph.i54
  %.0.in28.i = phi i32 [ %.0.i, %.lr.ph.i54 ], [ %.022.i.i52, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ]
  %.02027.i = phi i32 [ %i.ez, %.lr.ph.i54 ], [ %2, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ] ; 2 uses
  %.0.i = add i32 %.0.in28.i, -1                  ; 2 uses
  %i.ez = udiv i32 %.02027.i, %3                  ; 3 uses
  %i.fa = urem i32 %.02027.i, %3
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !69
  %i.fe = zext i32 %.0.i to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %i.fe
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !69
  %.not.i55 = icmp ult i32 %i.ez, %3
  br i1 %.not.i55, label %._crit_edge.i56, label %.lr.ph.i54, !llvm.loop !48

._crit_edge.i56:                                  ; preds = %.lr.ph.i54, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i
  %i.fg = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.et, %.lr.ph.i54 ]
  %.020.lcssa.i = phi i32 [ %2, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.ez, %.lr.ph.i54 ]
  %i.fh = zext i32 %.020.lcssa.i to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split: ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %.preheader.i, %bb.p, %bb.q, %bb.b, %bb.g, %bb.u, %._crit_edge.i56
  %.sink109 = phi i8 [ %i.fj, %._crit_edge.i56 ], [ %i.bx, %bb.p ], [ %storemerge.i32, %bb.u ], [ 48, %bb.b ], [ %storemerge.i, %bb.g ], [ %i.bz, %bb.q ], [ 49, %.preheader.i ], [ 49, %.lr.ph.i42 ], [ 49, %.lr.ph.i42.prol.loopexit ]
  %.sink = phi i64 [ %i.fg, %._crit_edge.i56 ], [ %i.ax, %bb.p ], [ %i.cg, %bb.u ], [ 1, %bb.b ], [ %i.i, %bb.g ], [ %i.ax, %bb.q ], [ %i.di, %.preheader.i ], [ %i.di, %.lr.ph.i42 ], [ %i.di, %.lr.ph.i42.prol.loopexit ]
  store i8 %.sink109, ptr %0, align 1, !tbaa !69
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  br label %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51, %bb.v, %bb.r, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, %bb.d, %bb.a
  %.pn63 = phi ptr [ %1, %bb.r ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ], [ %1, %bb.v ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %1, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ %i.fk, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn61 = phi i32 [ 75, %bb.r ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i51 ], [ 75, %bb.v ], [ 75, %bb.a ], [ 75, %bb.d ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ 75, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.thread.i ], [ 0, %_ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn63, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn61, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZSt12__to_chars_iIyENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %3, label %bb.w [
    i32 16, label %bb.d
    i32 10, label %bb.h
    i32 8, label %bb.r
    i32 2, label %bb.v
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = sub nuw nsw i32 67, %i.d
  %i.f = lshr i32 %i.e, 2                         ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = zext nneg i32 %i.f to i64                ; 2 uses
  %i.k = icmp slt i64 %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.e, !prof !155

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %2, 255
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.m = add nsw i32 %i.f, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.031.i = phi i32 [ %i.aa, %.lr.ph.i ], [ %i.m, %.lr.ph.preheader.i ] ; 3 uses
  %.02830.i = phi i64 [ %i.u, %.lr.ph.i ], [ %2, %.lr.ph.preheader.i ] ; 4 uses
  %i.n = and i64 %.02830.i, 15
  %i.o = lshr i64 %.02830.i, 4
  %i.p = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !tbaa !69
  %i.r = zext i32 %.031.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  store i8 %i.q, ptr %i.s, align 1, !tbaa !69
  %i.t = and i64 %i.o, 15
  %i.u = lshr i64 %.02830.i, 8                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !tbaa !69
  %i.x = add nsw i32 %.031.i, -1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !69
  %i.aa = add nsw i32 %.031.i, -2
  %i.ab = icmp ugt i64 %.02830.i, 65535
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.028.lcssa.i = phi i64 [ %2, %bb.e ], [ %i.u, %.lr.ph.i ] ; 4 uses
  %i.ac = icmp samesign ugt i64 %.028.lcssa.i, 15
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.ad = and i64 %.028.lcssa.i, 15
  %i.ae = lshr i64 %.028.lcssa.i, 4
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.028.pn.i = phi i64 [ %i.ae, %bb.f ], [ %.028.lcssa.i, %._crit_edge.i ]
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i
  %storemerge.i = load i8, ptr %storemerge.in.i, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.h:                                             ; preds = %bb.c
  %i.ai = icmp ult i64 %2, 10
  br i1 %i.ai, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.n
  %.029.i.i = phi i32 [ %i.aq, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.ap, %bb.n ], [ %2, %bb.h ] ; 5 uses
  %i.aj = icmp ult i64 %.02328.i.i, 100
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ak = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.al = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.l:                                             ; preds = %bb.j
  %i.an = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ap = udiv i64 %.02328.i.i, 10000
  %i.aq = add i32 %.029.i.i, 4                    ; 2 uses
  %i.ar = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.ar, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.h
  %.022.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ak, %bb.i ], [ %i.am, %bb.k ], [ 1, %bb.h ], [ %i.aq, %bb.n ] ; 2 uses
  %i.as = ptrtoint ptr %1 to i64
  %i.at = ptrtoint ptr %0 to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = zext i32 %.022.i.i to i64               ; 3 uses
  %i.aw = icmp slt i64 %i.au, %i.av
  br i1 %i.aw, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.o, !prof !155

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ax = icmp ugt i64 %2, 99
  br i1 %i.ax, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.o
  %i.ay = add i32 %.022.i.i, -1
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bb, %.lr.ph.i9.i ], [ %2, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bl, %.lr.ph.i9.i ], [ %i.ay, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.az = urem i64 %.020.i.i, 100
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ba ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !69
  %i.bf = zext i32 %.01819.i.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !69
  %i.bh = load i8, ptr %i.bc, align 2, !tbaa !69
  %i.bi = add i32 %.01819.i.i, -1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !69
  %i.bl = add i32 %.01819.i.i, -2
  %i.bm = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bm, label %.lr.ph.i9.i, label %._crit_edge.i.i, !llvm.loop !13

._crit_edge.i.i:                                  ; preds = %.lr.ph.i9.i, %bb.o
  %.0.lcssa.i.i = phi i64 [ %2, %bb.o ], [ %i.bb, %.lr.ph.i9.i ] ; 3 uses
  %i.bn = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !69
  %i.bt = load i8, ptr %i.bp, align 2, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.bu = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bv = or disjoint i8 %i.bu, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.r:                                             ; preds = %bb.c
  %i.bw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  %.lhs.trunc.i = sub nuw nsw i8 66, %i.bx
  %i.by = udiv i8 %.lhs.trunc.i, 3                ; 2 uses
  %i.bz = ptrtoint ptr %1 to i64
  %i.ca = ptrtoint ptr %0 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = zext nneg i8 %i.by to i64               ; 2 uses
  %i.cd = icmp slt i64 %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %bb.s, !prof !155

bb.s:                                             ; preds = %bb.r
  %i.ce = icmp ugt i64 %2, 63
  br i1 %i.ce, label %.lr.ph.preheader.i37, label %._crit_edge.i29

.lr.ph.preheader.i37:                             ; preds = %bb.s
  %.zext.i = zext nneg i8 %i.by to i32
  %i.cf = add nsw i32 %.zext.i, -1
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38, %.lr.ph.preheader.i37
  %.031.i39 = phi i32 [ %i.cr, %.lr.ph.i38 ], [ %i.cf, %.lr.ph.preheader.i37 ] ; 3 uses
  %.02830.i40 = phi i64 [ %i.cl, %.lr.ph.i38 ], [ %2, %.lr.ph.preheader.i37 ] ; 3 uses
  %i.cg = trunc i64 %.02830.i40 to i8             ; 2 uses
  %i.ch = and i8 %i.cg, 7
  %i.ci = or disjoint i8 %i.ch, 48
  %i.cj = zext i32 %.031.i39 to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.cj
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !69
  %i.cl = lshr i64 %.02830.i40, 6                 ; 2 uses
  %4 = lshr i8 %i.cg, 3
  %i.cm = and i8 %4, 7
  %i.cn = or disjoint i8 %i.cm, 48
  %i.co = add nsw i32 %.031.i39, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %i.cp
  store i8 %i.cn, ptr %i.cq, align 1, !tbaa !69
  %i.cr = add nsw i32 %.031.i39, -2
  %i.cs = icmp ugt i64 %.02830.i40, 4095
  br i1 %i.cs, label %.lr.ph.i38, label %._crit_edge.i29, !llvm.loop !42

._crit_edge.i29:                                  ; preds = %.lr.ph.i38, %bb.s
  %.028.lcssa.i30 = phi i64 [ %2, %bb.s ], [ %i.cl, %.lr.ph.i38 ] ; 4 uses
  %i.ct = icmp samesign ugt i64 %.028.lcssa.i30, 7
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i29
  %i.cu = lshr i64 %.028.lcssa.i30, 3
  %i.cv = trunc nuw nsw i64 %.028.lcssa.i30 to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = or disjoint i8 %i.cw, 48
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !69
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i29
  %storemerge.in.in.i = phi i64 [ %i.cu, %bb.t ], [ %.028.lcssa.i30, %._crit_edge.i29 ]
  %storemerge.in.i31 = trunc nuw nsw i64 %storemerge.in.in.i to i8
  %storemerge.i32 = or disjoint i8 %storemerge.in.i31, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.v:                                             ; preds = %bb.c
  %i.cz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 5 uses
  %i.da = sub nuw nsw i64 64, %i.cz               ; 4 uses
  %i.db = ptrtoint ptr %1 to i64
  %i.dc = ptrtoint ptr %0 to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = icmp slt i64 %i.dd, %i.da
  br i1 %i.de, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !155

.preheader.i:                                     ; preds = %bb.v
  %.not16.i = icmp eq i64 %i.cz, 63
  br i1 %.not16.i, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.preheader.i41

.lr.ph.preheader.i41:                             ; preds = %.preheader.i
  %.015.i = xor i64 %i.cz, 63                     ; 3 uses
  %i.df = trunc nuw nsw i64 %.015.i to i32
  %xtraiter = and i32 %i.df, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.preheader.i41
  %i.dg = trunc i64 %2 to i8
  %i.dh = and i8 %i.dg, 1
  %i.di = or disjoint i8 %i.dh, 48
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %.015.i
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !69
  %i.dk = lshr i64 %2, 1
  %indvars.iv.next.i.prol = sub nsw i64 62, %i.cz
  br label %.lr.ph.i42.prol.loopexit

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.preheader.i41
  %indvars.iv.i.unr = phi i64 [ %.015.i, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i.prol, %.lr.ph.i42.prol ]
  %.01317.i.unr = phi i64 [ %2, %.lr.ph.preheader.i41 ], [ %i.dk, %.lr.ph.i42.prol ]
  %i.dl = icmp eq i64 %i.cz, 62
  br i1 %i.dl, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i42 ], [ %indvars.iv.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %.01317.i = phi i64 [ %i.dw, %.lr.ph.i42 ], [ %.01317.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %i.dm = trunc i64 %.01317.i to i8
  %i.dn = and i8 %i.dm, 1
  %i.do = or disjoint i8 %i.dn, 48
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !69
  %i.dq = lshr i64 %.01317.i, 1
  %i.dr = trunc i64 %i.dq to i8
  %i.ds = and i8 %i.dr, 1
  %i.dt = or disjoint i8 %i.ds, 48
  %i.du = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.dv = getelementptr i8, ptr %i.du, i64 -1
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !69
  %i.dw = lshr i64 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.dx = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.1, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42, !llvm.loop !43

bb.w:                                             ; preds = %bb.c
  %i.dy = mul nsw i32 %3, %3                      ; 2 uses
  %i.dz = mul i32 %i.dy, %3                       ; 2 uses
  %i.ea = mul i32 %i.dz, %3
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = zext i32 %3 to i64                      ; 3 uses
  %i.ed = icmp ult i64 %2, %i.ec
  br i1 %i.ed, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.w
  %i.ee = zext nneg i32 %i.dy to i64
  %i.ef = zext i32 %i.dz to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.i.i48
  %.029.i.i49 = phi i32 [ 1, %.lr.ph.i.i48 ], [ %i.en, %bb.ad ] ; 4 uses
  %.02328.i.i50 = phi i64 [ %2, %.lr.ph.i.i48 ], [ %i.em, %bb.ad ] ; 4 uses
  %i.eg = icmp ult i64 %.02328.i.i50, %i.ee
  br i1 %i.eg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eh = add i32 %.029.i.i49, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.z:                                             ; preds = %bb.x
  %i.ei = icmp ult i64 %.02328.i.i50, %i.ef
  br i1 %i.ei, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ej = add i32 %.029.i.i49, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.ab:                                            ; preds = %bb.z
  %i.ek = icmp ult i64 %.02328.i.i50, %i.eb
  br i1 %i.ek, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.el = add i32 %.029.i.i49, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.ad:                                            ; preds = %bb.ab
  %i.em = udiv i64 %.02328.i.i50, %i.eb           ; 2 uses
  %i.en = add i32 %.029.i.i49, 4                  ; 2 uses
  %i.eo = icmp ult i64 %i.em, %i.ec
  br i1 %i.eo, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51, label %bb.x, !llvm.loop !12

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51:  ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y
  %.022.i.i52 = phi i32 [ %i.el, %bb.ac ], [ %i.eh, %bb.y ], [ %i.ej, %bb.aa ], [ %i.en, %bb.ad ] ; 2 uses
  %i.ep = ptrtoint ptr %1 to i64
  %i.eq = ptrtoint ptr %0 to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = zext i32 %.022.i.i52 to i64             ; 2 uses
  %i.et = icmp slt i64 %i.er, %i.es
  br i1 %i.et, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i53, !prof !155

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i: ; preds = %bb.w
  %i.eu = ptrtoint ptr %1 to i64
  %i.ev = ptrtoint ptr %0 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = icmp slt i64 %i.ew, 1
  br i1 %i.ex, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i56, !prof !155

.preheader.i53:                                   ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51
  %i.ey = sext i32 %3 to i64                      ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.preheader.i53
  %.0.in27.i = phi i32 [ %.022.i.i52, %.preheader.i53 ], [ %.0.i, %bb.ae ]
  %.02026.i = phi i64 [ %2, %.preheader.i53 ], [ %i.ez, %bb.ae ] ; 2 uses
  %.0.i = add i32 %.0.in27.i, -1                  ; 2 uses
  %i.ez = udiv i64 %.02026.i, %i.ey               ; 3 uses
  %i.fa = urem i64 %.02026.i, %i.ey
  %i.fb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !69
  %i.fd = zext i32 %.0.i to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 %i.fd
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !69
  %.not.i55 = icmp ult i64 %i.ez, %i.ec
  br i1 %.not.i55, label %._crit_edge.i56, label %bb.ae, !llvm.loop !44

._crit_edge.i56:                                  ; preds = %bb.ae, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i
  %i.ff = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.es, %bb.ae ]
  %.020.lcssa.i = phi i64 [ %2, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.ez, %bb.ae ]
  %i.fg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %.020.lcssa.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !69
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split: ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %.preheader.i, %bb.p, %bb.q, %bb.b, %bb.g, %bb.u, %._crit_edge.i56
  %.sink109 = phi i8 [ %i.fh, %._crit_edge.i56 ], [ %i.bt, %bb.p ], [ %storemerge.i32, %bb.u ], [ 48, %bb.b ], [ %storemerge.i, %bb.g ], [ %i.bv, %bb.q ], [ 49, %.preheader.i ], [ 49, %.lr.ph.i42 ], [ 49, %.lr.ph.i42.prol.loopexit ]
  %.sink = phi i64 [ %i.ff, %._crit_edge.i56 ], [ %i.av, %bb.p ], [ %i.cc, %bb.u ], [ 1, %bb.b ], [ %i.j, %bb.g ], [ %i.av, %bb.q ], [ %i.da, %.preheader.i ], [ %i.da, %.lr.ph.i42 ], [ %i.da, %.lr.ph.i42.prol.loopexit ]
  store i8 %.sink109, ptr %0, align 1, !tbaa !69
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51, %bb.v, %bb.r, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, %bb.d, %bb.a
  %.pn63 = phi ptr [ %1, %bb.r ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ %1, %bb.v ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fi, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn61 = phi i32 [ 75, %bb.r ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ 75, %bb.v ], [ 75, %bb.a ], [ 75, %bb.d ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ 0, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn63, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn61, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #43

end_hunk_6
