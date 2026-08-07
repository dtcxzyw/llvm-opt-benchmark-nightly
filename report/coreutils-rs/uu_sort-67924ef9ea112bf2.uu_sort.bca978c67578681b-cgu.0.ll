inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RNvCsgcf5BHVXlUt_7uu_sort4exec:bb.a
  %.val.i.i.i.i.i.i.i.i7 = load ptr, ptr %.sroa.30.0..sroa_idx.i.i, align 8, !alias.scope !11762, !nonnull !5, !noundef !5
  %i.xy = mul nuw nsw i64 %.val1.i.i.i.i.i.i.i.i6, 232
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i7, i64 noundef %i.xy, i64 noundef 8) #34, !noalias !11762
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2s_.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2s_.exit.i.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %bb.gs
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %.sroa.1047.0..sroa_idx.i.i) #34
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %.sroa.2057.0..sroa_idx.i.i) #34
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ts, i64 noundef 640, i64 noundef 128) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc10SyncSenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1q_.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc10SyncSenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1q_.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2s_.exit.i.i.i.i.i, %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BU_.exit.i.i.i.i.i, %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11654
  %i.xz = call fastcc noundef ptr @_RNvMsg_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4recvBU_(i64 %i.ty, ptr %i.ua) #34 ; 2 uses
  store ptr %i.xz, ptr %i.n, align 8, !noalias !11654
  %.not79222.i = icmp eq ptr %i.xz, null
  br i1 %.not79222.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkNtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9RecvErrorEEB11_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkNtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9RecvErrorEEB11_.exit108.i

bb.gt:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !11654
  store ptr %i.xm, ptr %i.s, align 8, !noalias !11654
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xm, i64 40
  %i.yb = load i64, ptr %i.ya, align 8, !noundef !5 ; 2 uses
  %.not70.i = icmp eq i64 %i.yb, 0
  br i1 %.not70.i, label %bb.gu, label %bb.gv, !prof !82

bb.gu:                                            ; preds = %bb.gt
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @457) #40
  unreachable

bb.gv:                                            ; preds = %bb.gt
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xl, i64 40
  %i.yd = load i64, ptr %i.yc, align 8, !noundef !5
  %.not71.i = icmp eq i64 %i.yd, 0
  br i1 %.not71.i, label %bb.gw, label %bb.gx, !prof !82

bb.gw:                                            ; preds = %bb.gv
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @458) #40
  unreachable

bb.gx:                                            ; preds = %bb.gv
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xl, i64 32
  %i.yf = load ptr, ptr %i.ye, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xm, i64 32
  %i.yh = load ptr, ptr %i.yg, align 8, !nonnull !5, !noundef !5
  %i.yi = getelementptr [24 x i8], ptr %i.yh, i64 %i.yb
  %i.yj = getelementptr i8, ptr %i.yi, i64 -24
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xm, i64 48
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xl, i64 48
  %i.ym = call fastcc noundef i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.yk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.yl) #34
  %i.yn = icmp sgt i8 %i.ym, %..i
  br i1 %i.yn, label %bb.ha, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !11654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11654
  call fastcc void @_RNvMs_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB4_5Chunk7recycle(ptr noalias nofree noundef align 8 captures(none) dereferenceable(224) %i.p, ptr noundef nonnull %i.xm) #34
  call fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(224) %i.q, i64 0, ptr nonnull %i.ts, ptr noalias nofree noundef align 8 captures(address) dereferenceable(224) %i.p) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11654
  %i.yo = load i64, ptr %i.q, align 8, !range !4, !alias.scope !11763, !noalias !11654, !noundef !5
  %i.yp = icmp eq i64 %i.yo, -1
  br i1 %i.yp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1L_.exit100.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(224) %i.q) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1L_.exit100.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1L_.exit100.i: ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11654
  br label %.peel.begin.i

bb.ha:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11654
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %i.sy, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #34
  %i.yq = load i64, ptr %i.k, align 8, !range !540, !noalias !11654, !noundef !5
  %i.yr = trunc nuw i64 %i.yq to i1
  %i.ys = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.yt = load i64, ptr %i.ys, align 8, !range !7697, !noalias !11654, !noundef !5 ; 3 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.yr, label %bb.hc, label %bb.hd, !prof !82

.peel.begin.i:                                    ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1L_.exit100.i, %.lr.ph.i
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xl, i64 32
  %i.yw = load ptr, ptr %i.yv, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xl, i64 40
  %i.yy = load i64, ptr %i.yx, align 8, !noundef !5 ; 3 uses
  %.idx.i4 = mul nuw nsw i64 %i.yy, 24
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 %.idx.i4
  %i.za = getelementptr inbounds nuw i8, ptr %i.xl, i64 48 ; 4 uses
  %switch = icmp ult i64 %i.yy, 2
  br i1 %switch, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB11_.exit.i, label %bb.hb

bb.hb:                                            ; preds = %.peel.begin.i
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yw, i64 24 ; 3 uses
  %i.zc = add i64 %.sroa.07.0221.i, 2             ; 3 uses
  %i.zd = call fastcc noundef i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.za, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.za) #34
  %i.ze = icmp sgt i8 %i.zd, %..i
  br i1 %i.ze, label %.loopexit234.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.hb
  %i.zf = icmp eq i64 %i.yy, 2
  br i1 %i.zf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB11_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.peel.next.i.preheader
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yw, i64 48
  br label %bb.hm

bb.hc:                                            ; preds = %bb.ha
  %i.zh = load i64, ptr %i.yu, align 8, !noalias !11654
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.yt, i64 %i.zh) #37
  unreachable

bb.hd:                                            ; preds = %bb.ha
  %i.zi = load ptr, ptr %i.yu, align 8, !noalias !11654, !nonnull !5, !noundef !5 ; 2 uses
  %i.zj = icmp ule i64 %i.sy, %i.yt
  call void @llvm.assume(i1 %i.zj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11654
  %.not76.i = icmp eq i64 %i.sy, 0
  br i1 %.not76.i, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hf, %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11654
  %i.zk = load ptr, ptr %i.yf, align 8, !nonnull !5, !noundef !5
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  %i.zm = load i64, ptr %i.zl, align 8, !noundef !5
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.zk, i64 noundef %i.zm) #34
  %i.zn = load i64, ptr %i.r, align 8, !range !4, !noalias !11654, !noundef !5 ; 2 uses
  %.not77.i = icmp eq i64 %i.zn, -1
  %i.zo = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.zp = load ptr, ptr %i.zo, align 8, !noalias !11654 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.zr = load i64, ptr %i.zq, align 8, !noalias !11654 ; 6 uses
  br i1 %.not77.i, label %bb.hg, label %bb.hk

bb.hf:                                            ; preds = %bb.hd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zi, ptr nonnull readonly align 1 %i.sw, i64 %i.sy, i1 false)
  br label %bb.he

bb.hg:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11654
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.zr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #34
  %i.zs = load i64, ptr %i.j, align 8, !range !540, !noalias !11654, !noundef !5
  %i.zt = trunc nuw i64 %i.zs to i1
  %i.zu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.zv = load i64, ptr %i.zu, align 8, !range !7697, !noalias !11654, !noundef !5 ; 4 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.zt, label %bb.hh, label %bb.hi, !prof !82

bb.hh:                                            ; preds = %bb.hg
  %i.zx = load i64, ptr %i.zw, align 8, !noalias !11654
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.zv, i64 %i.zx) #37
  unreachable

bb.hi:                                            ; preds = %bb.hg
  %i.zy = load ptr, ptr %i.zw, align 8, !noalias !11654, !nonnull !5, !noundef !5 ; 3 uses
  %i.zz = icmp ule i64 %i.zr, %i.zv
  call void @llvm.assume(i1 %i.zz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11654
  %.not78.i = icmp eq i64 %i.zr, 0
  br i1 %.not78.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zy, ptr nonnull align 1 %i.zp, i64 %i.zr, i1 false)
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi, %bb.he
  %.sroa.037.0.i = phi i64 [ %i.zv, %bb.hi ], [ %i.zv, %bb.hj ], [ %i.zn, %bb.he ]
  %.sroa.539.0.i = phi ptr [ %i.zy, %bb.hi ], [ %i.zy, %bb.hj ], [ %i.zp, %bb.he ]
  %.sroa.642.0.i = phi i64 [ 0, %bb.hi ], [ %i.zr, %bb.hj ], [ %i.zr, %bb.he ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11654
  %i.aaa = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.aab = load i8, ptr %i.aaa, align 8, !range !69, !alias.scope !11591, !noalias !11588, !noundef !5
  %i.aac = call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 64) #38, !noalias !11766 ; 9 uses
  store i64 %i.yt, ptr %i.aac, align 8
  %.sroa.4120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  store ptr %i.zi, ptr %.sroa.4120.0..sroa_idx.i, align 8
  %.sroa.5121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  store i64 %i.sy, ptr %.sroa.5121.0..sroa_idx.i, align 8
  %.sroa.6122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aac, i64 24
  store i64 %.sroa.037.0.i, ptr %.sroa.6122.0..sroa_idx.i, align 8
  %.sroa.7123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aac, i64 32
  store ptr %.sroa.539.0.i, ptr %.sroa.7123.0..sroa_idx.i, align 8
  %.sroa.8124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aac, i64 40
  store i64 %.sroa.642.0.i, ptr %.sroa.8124.0..sroa_idx.i, align 8
  %.sroa.9125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aac, i64 48
  store i64 %i.xn, ptr %.sroa.9125.0..sroa_idx.i, align 8
  %.sroa.10126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aac, i64 56
  store i8 %i.aab, ptr %.sroa.10126.0..sroa_idx.i, align 8
  call void @_RNvXs2_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_5ChunkNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.s) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11654
  br label %bb.hl

bb.hl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsgcf5BHVXlUt_7uu_sort.exit.i, %bb.hk
  %.sroa.0116.1.i = phi ptr [ %i.aba, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsgcf5BHVXlUt_7uu_sort.exit.i ], [ %i.aac, %bb.hk ]
  call void @_RNvXs2_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_5ChunkNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.t) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11654
  br label %.loopexit.i

.peel.next.i:                                     ; preds = %bb.hm
  %i.aad = getelementptr i8, ptr %.sroa.0127.0.i561, i64 24 ; 2 uses
  %i.aae = icmp eq ptr %i.aad, %i.yz
  br i1 %i.aae, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB11_.exit.i, label %bb.hm, !llvm.loop !11769

bb.hm:                                            ; preds = %.lr.ph, %.peel.next.i
  %.sroa.07.1.i563 = phi i64 [ %i.zc, %.lr.ph ], [ %i.aaf, %.peel.next.i ]
  %.sroa.13.1.i562 = phi ptr [ %i.zb, %.lr.ph ], [ %.sroa.0127.0.i561, %.peel.next.i ]
  %.sroa.0127.0.i561 = phi ptr [ %i.zg, %.lr.ph ], [ %i.aad, %.peel.next.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0127.0.i561) ]
  %i.aaf = add i64 %.sroa.07.1.i563, 1            ; 3 uses
  %i.aag = call fastcc noundef i8 @_RNvCsgcf5BHVXlUt_7uu_sort10compare_by(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.13.1.i562, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0127.0.i561, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.za, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.za) #34
  %i.aah = icmp sgt i8 %i.aag, %..i
  br i1 %i.aah, label %.loopexit234.i, label %.peel.next.i, !llvm.loop !11769

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB11_.exit.i: ; preds = %.peel.next.i, %.peel.next.i.preheader, %.peel.begin.i
  %.sroa.07.1.lcssa.i = phi i64 [ %i.xn, %.peel.begin.i ], [ %i.zc, %.peel.next.i.preheader ], [ %i.aaf, %.peel.next.i ]
  store ptr %i.xl, ptr %i.u, align 8, !noalias !11654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !11654
  %i.aai = call fastcc noundef ptr @_RNvMsg_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4recvBU_(i64 %i.ty, ptr %i.ua) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.aai, null
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i

.loopexit234.i:                                   ; preds = %bb.hb, %bb.hm
  %.sroa.13.2.lcssa.i = phi ptr [ %.sroa.0127.0.i561, %bb.hm ], [ %i.zb, %bb.hb ] ; 2 uses
  %.lcssa.i = phi i64 [ %i.aaf, %bb.hm ], [ %i.zc, %bb.hb ]
  %.not.i.i5 = icmp slt i64 %i.sy, 0
  br i1 %.not.i.i5, label %bb.hp, label %bb.hn, !prof !6

bb.hn:                                            ; preds = %.loopexit234.i
  %i.aaj = icmp eq i64 %i.sy, 0
  br i1 %i.aaj, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit.thread187.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !11771
  %i.aak = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.sy, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !11771 ; 3 uses
  %i.aal = icmp eq ptr %i.aak, null
  br i1 %i.aal, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho, %.loopexit234.i
  %.sroa.4149.0.ph.i = phi i64 [ 1, %bb.ho ], [ 0, %.loopexit234.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4149.0.ph.i, i64 %i.sy) #37
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit.thread187.i: ; preds = %bb.hq, %bb.hn
  %i.aam = phi ptr [ %i.aak, %bb.hq ], [ inttoptr (i64 1 to ptr), %bb.hn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11654
  %i.aan = load ptr, ptr %.sroa.13.2.lcssa.i, align 8, !nonnull !5, !noundef !5
  %i.aao = getelementptr inbounds nuw i8, ptr %.sroa.13.2.lcssa.i, i64 8
  %i.aap = load i64, ptr %i.aao, align 8, !noundef !5
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aan, i64 noundef %i.aap) #34
  %i.aaq = load i64, ptr %i.o, align 8, !range !4, !noalias !11654, !noundef !5 ; 2 uses
  %.not74.i = icmp eq i64 %i.aaq, -1
  %i.aar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8, !noalias !11654 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aau = load i64, ptr %i.aat, align 8, !noalias !11654 ; 8 uses
  br i1 %.not74.i, label %bb.hr, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit104.thread198.i

bb.hq:                                            ; preds = %bb.ho
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aak, ptr nonnull readonly align 1 %i.sw, i64 %i.sy, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit.thread187.i

bb.hr:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit.thread187.i
  %.not.i102.i = icmp slt i64 %i.aau, 0
  br i1 %.not.i102.i, label %bb.hu, label %bb.hs, !prof !6

bb.hs:                                            ; preds = %bb.hr
  %i.aav = icmp eq i64 %i.aau, 0
  br i1 %i.aav, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit104.thread198.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !11774
  %i.aaw = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.aau, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !11774 ; 3 uses
  %i.aax = icmp eq ptr %i.aaw, null
  br i1 %i.aax, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht, %bb.hr
  %.sroa.4153.0.ph.i = phi i64 [ 1, %bb.ht ], [ 0, %bb.hr ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4153.0.ph.i, i64 %i.aau) #37
  unreachable

bb.hv:                                            ; preds = %bb.ht
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aaw, ptr nonnull align 1 %i.aas, i64 %i.aau, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit104.thread198.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit104.thread198.i: ; preds = %bb.hv, %bb.hs, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit.thread187.i
  %.sroa.057.0.i = phi i64 [ 0, %bb.hs ], [ %i.aau, %bb.hv ], [ %i.aaq, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit.thread187.i ]
  %.sroa.559.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.hs ], [ %i.aaw, %bb.hv ], [ %i.aas, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit.thread187.i ]
  %.sroa.662.0.i = phi i64 [ 0, %bb.hs ], [ %i.aau, %bb.hv ], [ %i.aau, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit.thread187.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11654
  %i.aay = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.aaz = load i8, ptr %i.aay, align 8, !range !69, !alias.scope !11591, !noalias !11588, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !11777
  %i.aba = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !11777 ; 10 uses
  %i.abb = icmp eq ptr %i.aba, null
  br i1 %i.abb, label %bb.hw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsgcf5BHVXlUt_7uu_sort.exit.i, !prof !24

bb.hw:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit104.thread198.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #37, !noalias !11777
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit104.thread198.i
  store i64 %i.sy, ptr %i.aba, align 8
  %.sroa.4131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  store ptr %i.aam, ptr %.sroa.4131.0..sroa_idx.i, align 8
  %.sroa.5132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  store i64 %i.sy, ptr %.sroa.5132.0..sroa_idx.i, align 8
  %.sroa.6133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aba, i64 24
  store i64 %.sroa.057.0.i, ptr %.sroa.6133.0..sroa_idx.i, align 8
  %.sroa.7134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aba, i64 32
  store ptr %.sroa.559.0.i, ptr %.sroa.7134.0..sroa_idx.i, align 8
  %.sroa.8135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aba, i64 40
  store i64 %.sroa.662.0.i, ptr %.sroa.8135.0..sroa_idx.i, align 8
  %.sroa.9136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aba, i64 48
  store i64 %.lcssa.i, ptr %.sroa.9136.0..sroa_idx.i, align 8
  %.sroa.10137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aba, i64 56
  store i8 %i.aaz, ptr %.sroa.10137.0..sroa_idx.i, align 8
  br label %bb.hl

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkNtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9RecvErrorEEB11_.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkNtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9RecvErrorEEB11_.exit108.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc10SyncSenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1q_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11654
  br i1 %i.xo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB11_.exit106.i, label %bb.hx

bb.hx:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkNtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9RecvErrorEEB11_.exit.i
  call void @_RNvXs2_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_5ChunkNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.u) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB11_.exit106.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB11_.exit106.i: ; preds = %bb.hx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkNtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9RecvErrorEEB11_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11654
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_(i64 %i.ty, ptr %i.ua) #34
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort5check5check.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkNtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9RecvErrorEEB11_.exit108.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc10SyncSenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1q_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkNtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9RecvErrorEEB11_.exit108.i
  call void @_RNvXs2_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_5ChunkNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11654
  %i.abc = call fastcc noundef ptr @_RNvMsg_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4recvBU_(i64 %i.ty, ptr %i.ua) #34 ; 2 uses
  store ptr %i.abc, ptr %i.n, align 8, !noalias !11654
  %.not79.i = icmp eq ptr %i.abc, null
  br i1 %.not79.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkNtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9RecvErrorEEB11_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkNtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9RecvErrorEEB11_.exit108.i

_RNvNtCsgcf5BHVXlUt_7uu_sort5check5check.exit:    ; preds = %bb.fg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB11_.exit106.i
  %.sroa.0.0.i = phi ptr [ %i.tk, %bb.fg ], [ %.sroa.0116.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB11_.exit106.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.hy

bb.hy:                                            ; preds = %_RNvNtCsgcf5BHVXlUt_7uu_sort5check5check.exit, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.pn12 = phi ptr [ %i.st, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.0.0.i, %_RNvNtCsgcf5BHVXlUt_7uu_sort5check5check.exit ]
  %.pn10 = phi ptr [ @220, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ @6, %_RNvNtCsgcf5BHVXlUt_7uu_sort5check5check.exit ]
  %.pn = insertvalue { ptr, ptr } poison, ptr %.pn12, 0
  %.merged2 = insertvalue { ptr, ptr } %.pn, ptr %.pn10, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11780)
  call void @llvm.experimental.noalias.scope.decl(metadata !11783)
  %i.abd = load i64, ptr %3, align 8, !range !4, !alias.scope !11786, !noundef !5 ; 3 uses
  %i.abe = icmp eq i64 %i.abd, -1
  br i1 %i.abe, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort6OutputEBD_.exit, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.experimental.noalias.scope.decl(metadata !11787)
  call void @llvm.experimental.noalias.scope.decl(metadata !11790)
  %i.abf = icmp eq i64 %i.abd, 0
  br i1 %i.abf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.abg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.abg, align 8, !alias.scope !11793, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.abd, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !11794
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.ia, %bb.hz
  %i.abh = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !11797)
  %.val.i1.i.i.i = load i32, ptr %i.abh, align 8, !range !28, !alias.scope !11800, !noundef !5
  %i.abi = call noundef i32 @close(i32 noundef %.val.i1.i.i.i) #34, !noalias !11800 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort6OutputEBD_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort6OutputEBD_.exit: ; preds = %_RINvNtCsgcf5BHVXlUt_7uu_sort5merge21merge_with_file_limitINtB2_15PlainMergeInputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB1l_2io4read4ReadNtNtCs6JMX4GRUq9U_4core6marker4SendEL_EEINtNtNtNtB2h_4iter8adapters3map3MapINtNtNtB2h_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB2_5merge0ENtB2_21WriteablePlainTmpFileEB4_.exit.i, %_RINvNtCsgcf5BHVXlUt_7uu_sort5merge21merge_with_file_limitINtB2_15PlainMergeInputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB1l_2io4read4ReadNtNtCs6JMX4GRUq9U_4core6marker4SendEL_EEINtNtNtNtB2h_4iter8adapters3map3MapINtNtNtB2h_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB2_5merge0ENtB2_26WriteableCompressedTmpFileEB4_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i, %bb.hy, %bb.er
  %.merged = phi { ptr, ptr } [ %.merged2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i ], [ %i.sq, %bb.er ], [ %.merged2, %bb.hy ], [ %.merged.i.i, %_RINvNtCsgcf5BHVXlUt_7uu_sort5merge21merge_with_file_limitINtB2_15PlainMergeInputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB1l_2io4read4ReadNtNtCs6JMX4GRUq9U_4core6marker4SendEL_EEINtNtNtNtB2h_4iter8adapters3map3MapINtNtNtB2h_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB2_5merge0ENtB2_26WriteableCompressedTmpFileEB4_.exit.i ], [ %.merged.i20.i, %_RINvNtCsgcf5BHVXlUt_7uu_sort5merge21merge_with_file_limitINtB2_15PlainMergeInputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB1l_2io4read4ReadNtNtCs6JMX4GRUq9U_4core6marker4SendEL_EEINtNtNtNtB2h_4iter8adapters3map3MapINtNtNtB2h_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCNvB2_5merge0ENtB2_21WriteablePlainTmpFileEB4_.exit.i ], [ %i.hm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i ]
  ret { ptr, ptr } %.merged
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsgcf5BHVXlUt_7uu_sort6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort.exit:
  %i.a = alloca [640 x i8], align 8               ; 52 uses
  %i.b = alloca [640 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [640 x i8], align 8               ; 53 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [640 x i8], align 8               ; 57 uses
  %i.g = alloca [640 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [640 x i8], align 8               ; 57 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [640 x i8], align 8               ; 57 uses
  %i.l = alloca [640 x i8], align 8               ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [640 x i8], align 8               ; 57 uses
  %i.o = alloca [640 x i8], align 8               ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [640 x i8], align 8               ; 57 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [640 x i8], align 8               ; 59 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [640 x i8], align 8               ; 53 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [640 x i8], align 8               ; 55 uses
end_hunk_0
