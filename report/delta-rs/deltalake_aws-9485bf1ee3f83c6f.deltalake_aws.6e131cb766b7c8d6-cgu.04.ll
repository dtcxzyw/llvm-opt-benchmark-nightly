inline.NumInlined: 1357
inline.NumDeleted: 731
begin_hunk_0_@_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs9rVkZwOUgsI_13deltalake_aws
define hidden void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1, i8 noundef range(i8 0, 27) %2, i8 %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [30 x i8], align 2            ; 4 uses
  %i.a = alloca [2 x i8], align 1                 ; 4 uses
  store i8 %2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %3, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !1884, !noalias !1887, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.e, align 8, !alias.scope !1884, !noalias !1887, !noundef !3 ; 3 uses
  %i.f = lshr i64 %i.d, 57
  %i.g = trunc nuw nsw i64 %i.f to i8             ; 3 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.noexc
  %.pn.i.i = phi i64 [ %i.d, %.noexc ], [ %i.ai, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %.noexc ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %.noexc ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.j = phi i64 [ 0, %.noexc ], [ %i.ah, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.k, align 1, !noalias !1890 ; 3 uses
  %i.l = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.i
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.m, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.x, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.n = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = add i64 %.sroa.0.017.i.i, %i.o
  %i.q = and i64 %i.p, %.val7.i
  %i.r = load ptr, ptr %1, align 8, !alias.scope !1884, !noalias !1893, !nonnull !3, !noundef !3
  %i.s = sub nsw i64 0, %i.q                      ; 2 uses
  %i.t = getelementptr inbounds [32 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32
  %i.v = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyINtB2_10EquivalentBq_E10equivalentCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.v, label %bb.i, label %bb.d, !prof !20

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.e, !prof !21

bb.d:                                             ; preds = %.noexc6
  %i.w = add i16 %.sroa.01.029.i.i, -1
  %i.x = and i16 %i.w, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.y = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !21

.thread24.i.i:                                    ; preds = %bb.e
  %i.aa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.z, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.0.017.i.i, %i.ab
  %i.ad = and i64 %i.ac, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ad, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ae = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.g, !prof !21

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ah = add i64 %i.j, 16                        ; 2 uses
  %i.ai = add i64 %i.ah, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !3
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.h, label %bb.k, !prof !21

bb.h:                                             ; preds = %bb.g
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.am = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.an, 0
  %i.ao = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.an, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  call void @llvm.assume(i1 %.not.i24.i.i)
  br label %bb.k

bb.i:                                             ; preds = %.noexc6
  %i.aq = load ptr, ptr %1, align 8, !alias.scope !1884, !noalias !1887, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds [32 x i8], ptr %i.aq, i64 %i.s
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ap, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.5.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  %i.at = load ptr, ptr %1, align 8, !alias.scope !1896, !noalias !1899, !nonnull !3, !noundef !3 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !noalias !1901, !noundef !3
  %i.aw = and i8 %i.av, 1
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ba = load i64, ptr %i.e, align 8, !alias.scope !1896, !noalias !1899, !noundef !3
  %i.bb = and i64 %i.ba, %i.az
  store i8 %i.g, ptr %i.au, align 1, !noalias !1901
  %i.bc = getelementptr i8, ptr %i.at, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  store i8 %i.g, ptr %i.bd, align 1, !noalias !1901
  %i.be = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !1896, !noalias !1899
  %i.bf = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ax, i64 0
  %i.bg = sub <2 x i64> %i.be, %i.bf
  store <2 x i64> %i.bg, ptr %i.ay, align 8, !alias.scope !1896, !noalias !1899
  %i.bh = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bi = getelementptr inbounds [32 x i8], ptr %i.at, i64 %i.bh ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -32
  store i8 %2, ptr %i.bj, align 8, !noalias !1896
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bi, i64 -31
  store i8 %3, ptr %.sroa.4.0..sroa_idx, align 1, !noalias !1896
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bi, i64 -30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5, i64 30, i1 false), !noalias !1896
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.b, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %4) #25
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3popCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [80 x i8], align 8      ; 6 uses
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [72 x i8], align 8            ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1902, !noalias !1905 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  %i.b = icmp eq i64 %.pre, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.c = phi i64 [ %2, %.thread ], [ %.pre, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = add nsw i64 %i.c, -1                     ; 9 uses
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !1902, !noalias !1905
  %i.f = load i64, ptr %1, align 8, !range !138, !alias.scope !1902, !noalias !1905, !noundef !3
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1902, !noalias !1905, !nonnull !3, !noundef !3 ; 13 uses
  %i.j = icmp ult i64 %i.c, 115292150460684699
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !1907 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1907
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, i64 72, i1 false), !noalias !1907
  store i64 %.sroa.05.0.copyload.i, ptr %i.a, align 8, !noalias !1907
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3pop0Cs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull %i.i, i64 noundef 10)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.e, !noalias !1908

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #23, !noalias !1908
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !1911
  %3 = call i64 @llvm.usub.sat.i64(i64 %i.e, i64 2)
  %.not.not8.i.i.i = icmp samesign ult i64 %i.c, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.ai, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.am, %.lr.ph.i.i.i ] ; 4 uses
  %i.n = add nsw i64 %i.c, -2
  %i.o = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.n
  br i1 %i.o, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i ; 3 uses
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false), !noalias !1911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !1911
  %i.r = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.r)
  %.sroa.416.0..sroa_idx.i.i6.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.416.0.copyload.i.i7.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i, align 8, !noalias !1911
  br label %.lr.ph.i.i.preheader.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !1911
  %i.t = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.t)
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.416.0.copyload.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1911 ; 2 uses
  %.not18.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, 0
  br i1 %.not18.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.f, %.thread.i.i
  %.sroa.416.0.copyload.i.i10.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i, %.thread.i.i ], [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ] ; 3 uses
  %.sroa.12.1.i9.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %.thread.i.i ], [ %.sroa.12.0.lcssa.i.i.i, %bb.f ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.preheader.i.i
  %.sroa.13.019.i.i.i.i = phi i64 [ %i.v, %bb.g ], [ %.sroa.12.1.i9.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.u = add nsw i64 %.sroa.13.019.i.i.i.i, -1
  %i.v = lshr i64 %i.u, 1                         ; 4 uses
  %i.w = icmp samesign ult i64 %i.v, %i.e
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 72
  %.val1.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !1911, !noundef !3
  %.not17.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i
  br i1 %.not17.i.i.i.i, label %bb.g, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.019.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(80) %i.x, i64 80, i1 false), !noalias !1911
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.010.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.e
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.aa, i64 72
  %.val.i.i.i = load i64, ptr %i.ae, align 8, !noalias !1911, !noundef !3
  %i.af = getelementptr i8, ptr %i.ad, i64 72
  %.val17.i.i.i = load i64, ptr %i.af, align 8, !noalias !1911, !noundef !3
  %i.ag = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ah = zext i1 %i.ag to i64
  %i.ai = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.09.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i64 80, i1 false), !noalias !1911
  %i.al = shl nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.al, %3
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i, %bb.f
  %.sroa.416.0.copyload.i.i11.i.i = phi i64 [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ], [ %.sroa.416.0.copyload.i.i10.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.416.0.copyload.i.i10.i.i, %bb.g ]
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.13.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i.i, i64 72, i1 false), !noalias !1911
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store i64 %.sroa.416.0.copyload.i.i11.i.i, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 8, !noalias !1911
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.sroa.012.0.copyload13.pre = load i64, ptr %i.a, align 8, !noalias !1902
  br label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3pop0Cs9rVkZwOUgsI_13deltalake_aws.exit.i

_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3pop0Cs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.012.0.copyload13 = phi i64 [ %.sroa.012.0.copyload13.pre, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE19sift_down_to_bottomCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.05.0.copyload.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i, i64 72, i1 false), !noalias !1902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1907
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3pop0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.012.0 = phi i64 [ %.sroa.012.0.copyload13, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3pop0Cs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ -9223372036854775789, %bb.b ] ; 2 uses
  %i.ao = icmp ne i64 %.sroa.012.0, -9223372036854775789
  call void @llvm.assume(i1 %i.ao)
  store i64 %.sroa.012.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [80 x i8], align 8      ; 6 uses
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [72 x i8], align 8            ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1913, !noalias !1916 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  %i.b = icmp eq i64 %.pre, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.c = phi i64 [ %2, %.thread ], [ %.pre, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = add nsw i64 %i.c, -1                     ; 9 uses
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !1913, !noalias !1916
  %i.f = load i64, ptr %1, align 8, !range !138, !alias.scope !1913, !noalias !1916, !noundef !3
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1913, !noalias !1916, !nonnull !3, !noundef !3 ; 13 uses
  %i.j = icmp ult i64 %i.c, 115292150460684699
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !1918 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, i64 72, i1 false), !noalias !1918
  store i64 %.sroa.05.0.copyload.i, ptr %i.a, align 8, !noalias !1918
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0Cs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull %i.i, i64 noundef 10)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.e, !noalias !1919

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #23, !noalias !1919
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !1922
  %3 = call i64 @llvm.usub.sat.i64(i64 %i.e, i64 2)
  %.not.not8.i.i.i = icmp samesign ult i64 %i.c, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.ai, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.am, %.lr.ph.i.i.i ] ; 4 uses
  %i.n = add nsw i64 %i.c, -2
  %i.o = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.n
  br i1 %i.o, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i ; 3 uses
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false), !noalias !1922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !1922
  %i.r = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.r)
  %.sroa.416.0..sroa_idx.i.i6.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.416.0.copyload.i.i7.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i, align 8, !noalias !1922
  br label %.lr.ph.i.i.preheader.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !1922
  %i.t = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.t)
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.416.0.copyload.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1922 ; 2 uses
  %.not18.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, 0
  br i1 %.not18.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.f, %.thread.i.i
  %.sroa.416.0.copyload.i.i10.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i, %.thread.i.i ], [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ] ; 3 uses
  %.sroa.12.1.i9.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %.thread.i.i ], [ %.sroa.12.0.lcssa.i.i.i, %bb.f ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.preheader.i.i
  %.sroa.13.019.i.i.i.i = phi i64 [ %i.v, %bb.g ], [ %.sroa.12.1.i9.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.u = add nsw i64 %.sroa.13.019.i.i.i.i, -1
  %i.v = lshr i64 %i.u, 1                         ; 4 uses
  %i.w = icmp samesign ult i64 %i.v, %i.e
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 72
  %.val1.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !1922, !noundef !3
  %.not17.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i
  br i1 %.not17.i.i.i.i, label %bb.g, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.019.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(80) %i.x, i64 80, i1 false), !noalias !1922
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ]
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.010.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.e
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.aa, i64 72
  %.val.i.i.i = load i64, ptr %i.ae, align 8, !noalias !1922, !noundef !3
  %i.af = getelementptr i8, ptr %i.ad, i64 72
  %.val17.i.i.i = load i64, ptr %i.af, align 8, !noalias !1922, !noundef !3
  %i.ag = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ah = zext i1 %i.ag to i64
  %i.ai = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.09.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i64 80, i1 false), !noalias !1922
  %i.al = shl nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.al, %3
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i, %bb.f
  %.sroa.416.0.copyload.i.i11.i.i = phi i64 [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ], [ %.sroa.416.0.copyload.i.i10.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.416.0.copyload.i.i10.i.i, %bb.g ]
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.13.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i.i, i64 72, i1 false), !noalias !1922
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store i64 %.sroa.416.0.copyload.i.i11.i.i, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 8, !noalias !1922
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.sroa.012.0.copyload13.pre = load i64, ptr %i.a, align 8, !noalias !1913
  br label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0Cs9rVkZwOUgsI_13deltalake_aws.exit.i

_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0Cs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.c
  %.sroa.012.0.copyload13 = phi i64 [ %.sroa.012.0.copyload13.pre, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %.sroa.05.0.copyload.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i, i64 72, i1 false), !noalias !1913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1918
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.012.0 = phi i64 [ %.sroa.012.0.copyload13, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0Cs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ -9223372036854775789, %bb.b ] ; 2 uses
  %i.ao = icmp ne i64 %.sroa.012.0, -9223372036854775789
  call void @llvm.assume(i1 %i.ao)
  store i64 %.sroa.012.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE4pushCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [72 x i8], align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 8 uses
  %i.c = icmp ult i64 %i.b, 115292150460684698
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !138, !alias.scope !1924, !noalias !1927, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8grow_oneB3b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c, !noalias !1927

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(80) %1) #25
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1924, !noalias !1927, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.k = add nuw nsw i64 %i.b, 1
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !1924, !noalias !1927
  %.val = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.b ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false)
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.416.0.copyload.i = load i64, ptr %.sroa.416.0..sroa_idx.i, align 8 ; 2 uses
  %.not18.i = icmp eq i64 %i.b, 0
  br i1 %.not18.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE7sift_upCs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit, %bb.f
  %.sroa.13.019.i = phi i64 [ %i.n, %bb.f ], [ %i.b, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit ] ; 3 uses
  %i.m = add nsw i64 %.sroa.13.019.i, -1
  %i.n = lshr i64 %i.m, 1                         ; 4 uses
  %i.o = icmp samesign ule i64 %i.n, %i.b
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.n ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 72
  %.val1.i = load i64, ptr %i.q, align 8, !noundef !3
  %.not17.i = icmp sgt i64 %.val1.i, %.sroa.416.0.copyload.i
  br i1 %.not17.i, label %bb.f, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE7sift_upCs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.13.019.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false)
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE7sift_upCs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE7sift_upCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.lr.ph.i, %bb.f, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit
  %.sroa.13.0.lcssa.i = phi i64 [ 0, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit ], [ 0, %bb.f ], [ %.sroa.13.019.i, %.lr.ph.i ]
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.13.0.lcssa.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, i64 72, i1 false)
  %.sroa.5.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store i64 %.sroa.416.0.copyload.i, ptr %.sroa.5.0..sroa_idx1.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE4pushCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [72 x i8], align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 8 uses
  %i.c = icmp ult i64 %i.b, 115292150460684698
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !138, !alias.scope !1929, !noalias !1932, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2D_5ErrorEEE8grow_oneB2D_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c, !noalias !1932

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(80) %1) #25
end_hunk_0
