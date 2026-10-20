Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.05?download=true
inline.NumInlined: 720
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getBO_ECsa5QsYiPB8Gl_5image:bb.a
  %.val.i.i.i.i.fr = freeze i8 %.val.i.i.i.i      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.val1.i.i.i.i = load i32, ptr %i.m, align 1, !alias.scope !287
  %.not10 = icmp eq i8 %.val.i.i.i.i.fr, 11
  br i1 %.not10, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.b, %bb.c
  %.sroa.9.0.i.i.us = phi i64 [ %i.ad, %bb.c ], [ 0, %bb.b ]
  %.pn.i.us = phi i64 [ %i.ae, %bb.c ], [ %i.e, %bb.b ]
  %.sroa.01.0.i.i.us = and i64 %.pn.i.us, %i.i    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.us
  %.sroa.0.0.copyload.i25.i.us = load <16 x i8>, ptr %i.n, align 1, !noalias !290 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.us, %i.l
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not31.i.us = icmp eq i16 %i.p, 0
  br i1 %.not.i.not31.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.split.us, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i.us.us
  %.sroa.06.0.i32.i.us.us = phi i16 [ %i.z, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i.us.us ], [ %i.p, %.split.us ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.us.us, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.us, %i.r
  %i.t = and i64 %i.s, %i.i
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -24
  %.val2.i.i.us.us = load i8, ptr %i.w, align 1, !range !17, !alias.scope !291, !noalias !292, !noundef !6
  %i.x = icmp eq i8 %.val.i.i.i.i.fr, %.val2.i.i.us.us
  br i1 %i.x, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECsa5QsYiPB8Gl_5image.exit, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i.us.us, !prof !18

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i.us.us: ; preds = %.lr.ph.i.us.us
  %i.y = add i16 %.sroa.06.0.i32.i.us.us, -1
  %i.z = and i16 %i.y, %.sroa.06.0.i32.i.us.us    ; 2 uses
  %.not.i.not.i.us.us = icmp eq i16 %i.z, 0
  br i1 %.not.i.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i.us.us, %.split.us
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.us, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECsa5QsYiPB8Gl_5image.exit, !prof !8

bb.c:                                             ; preds = %._crit_edge.i.us
  %i.ad = add i64 %.sroa.9.0.i.i.us, 16           ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i.us, %i.ad
  br label %.split.us

.split:                                           ; preds = %bb.b, %bb.d
  %.sroa.9.0.i.i = phi i64 [ %i.ax, %bb.d ], [ 0, %bb.b ]
  %.pn.i = phi i64 [ %i.ay, %bb.d ], [ %i.e, %bb.b ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.i          ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i25.i = load <16 x i8>, ptr %i.af, align 1, !noalias !290 ; 2 uses
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, %i.l
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not.i.not31.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.not31.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i
  %.sroa.06.0.i32.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.ah, %.split ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.01.0.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -24
  %.val2.i.i = load i8, ptr %i.ao, align 1, !range !17, !alias.scope !291, !noalias !292, !noundef !6
  %i.ap = icmp eq i8 %.val2.i.i, 11
  br i1 %i.ap, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.i, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i, !prof !18

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.aq = getelementptr i8, ptr %i.an, i64 -23
  %.val3.i.i = load i32, ptr %i.aq, align 1, !noalias !292
  %i.ar = icmp eq i32 %.val1.i.i.i.i, %.val3.i.i
  br i1 %i.ar, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECsa5QsYiPB8Gl_5image.exit, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i, !prof !19

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i, %.split
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, splat (i8 -1)
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.d, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECsa5QsYiPB8Gl_5image.exit, !prof !8

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.av = add i16 %.sroa.06.0.i32.i, -1
  %i.aw = and i16 %i.av, %.sroa.06.0.i32.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.ax = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ay = add i64 %.sroa.01.0.i.i, %i.ax
  br label %.split

_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %._crit_edge.i.us, %.lr.ph.i.us.us, %._crit_edge.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.i
  %i.az = phi ptr [ null, %._crit_edge.i ], [ %i.an, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1J_E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %i.v, %.lr.ph.i.us.us ], [ null, %._crit_edge.i.us ] ; 2 uses
  %.not = icmp eq ptr %i.az, null
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -16
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %i.ba
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECsa5QsYiPB8Gl_5image.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB6_9BitReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB12_6cursor6CursorRShEEE9read_bitshECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1, i8 noundef range(i8 1, 9) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !noundef !6  ; 2 uses
  %i.d = icmp ult i8 %i.c, %2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs1_NtCsksn9slvsHfS_10image_webp8losslessINtB5_9BitReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 dereferenceable(40) %1)
  %i.e = load i8, ptr %i.a, align 8, !range !20, !noundef !6
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.e
  %i.f = phi i8 [ %i.c, %bb.a ], [ %.pre, %bb.e ] ; 2 uses
  %i.g = icmp ult i8 %i.f, %2
  br i1 %i.g, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i8, ptr %i.b, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.j = zext nneg i8 %2 to i64                   ; 2 uses
  %notmask = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask, -1
  %i.l = and i64 %i.i, %i.k
  %i.m = lshr i64 %i.i, %i.j
  store i64 %i.m, ptr %i.h, align 8
  %i.n = sub nuw i8 %i.f, %2
  store i8 %i.n, ptr %i.b, align 8
  %i.o = trunc nuw i64 %i.l to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.o, ptr %i.p, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  store i8 15, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodetNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryEE13new_uninit_inCsa5QsYiPB8Gl_5image() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 274
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3t_11VacantEntrytB1E_E12insert_entry0ECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i16 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.081 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.583 = alloca [6 x i8], align 2           ; 4 uses
  %.sroa.4.i.i38.sroa.0 = alloca [22 x i8], align 2 ; 4 uses
  %.sroa.4.i.i38.sroa.5 = alloca [6 x i8], align 2 ; 4 uses
  %.sroa.12.i.sroa.0 = alloca [22 x i8], align 2  ; 5 uses
  %.sroa.12.i.sroa.5 = alloca [6 x i8], align 2   ; 5 uses
  %.sroa.078 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.580 = alloca [6 x i8], align 2           ; 4 uses
  %.sroa.4.i.i.sroa.0 = alloca [22 x i8], align 2 ; 5 uses
  %.sroa.4.i.i.sroa.5 = alloca [6 x i8], align 2  ; 5 uses
  %.sroa.13.sroa.0 = alloca [22 x i8], align 2    ; 4 uses
  %.sroa.13.sroa.8 = alloca [6 x i8], align 2     ; 6 uses
  %.sroa.1362 = alloca [22 x i8], align 2         ; 5 uses
  %.sroa.1765 = alloca [6 x i8], align 2          ; 5 uses
  %.sroa.1344 = alloca [22 x i8], align 2         ; 5 uses
  %.sroa.17 = alloca [6 x i8], align 2            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1344)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.sroa.5)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !385, !nonnull !6, !noundef !6 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 274 ; 4 uses
  %i.c = load i16, ptr %i.b, align 2, !noalias !386, !noundef !6 ; 2 uses
  %i.d = icmp ult i16 %i.c, 11
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !385, !noundef !6 ; 6 uses
  %i.g = icmp ult i64 %i.f, 5
  br i1 %i.g, label %bb.h, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.h = zext nneg i16 %i.c to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.h, 1                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 276 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !388, !noundef !6 ; 6 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.l
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.k ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_inserttECsa5QsYiPB8Gl_5image.exit.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_inserttECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.c
  store i16 %2, ptr %i.m, align 2, !alias.scope !389, !noalias !390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  br label %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.l
  %i.o = sub nsw i64 %i.h, %i.k                   ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.n, ptr nonnull align 2 %i.m, i64 %i.p, i1 false), !alias.scope !389, !noalias !390
  store i16 %2, ptr %i.m, align 2, !alias.scope !389, !noalias !390
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.k
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.l
  %i.t = mul nuw nsw i64 %i.o, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.r, i64 %i.t, i1 false), !alias.scope !392, !noalias !390
  br label %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.thread

_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_inserttECsa5QsYiPB8Gl_5image.exit.i.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %7 = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !alias.scope !393, !noalias !394
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.b, align 2, !noalias !390
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !388, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.sroa.5)
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  switch i64 %i.f, label %bb.f [
    i64 5, label %bb.h
    i64 6, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = add i64 %i.f, -7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.e ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.g ], [ %i.x, %bb.f ], [ %i.f, %bb.b ], [ %i.f, %bb.e ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.g ], [ 6, %bb.f ], [ 4, %bb.b ], [ %i.f, %bb.e ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !385, !noundef !6 ; 3 uses
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodetNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryEE13new_uninit_inCsa5QsYiPB8Gl_5image(), !noalias !395 ; 8 uses
  store ptr null, ptr %i.aa, align 8, !noalias !395
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 274 ; 2 uses
  store i16 0, ptr %i.ab, align 2, !noalias !395
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.ac = load i16, ptr %i.b, align 2, !noalias !397, !noundef !6
  %i.ad = zext i16 %i.ac to i64
  %i.ae = xor i64 %.sroa.013.0.i, -1
  %i.af = add nsw i64 %i.ad, %i.ae                ; 5 uses
  %i.ag = trunc i64 %i.af to i16
  store i16 %i.ag, ptr %i.ab, align 2, !alias.scope !396, !noalias !395
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 276 ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %.sroa.013.0.i
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !397, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.078)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.580)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.sroa.013.0.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.078, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !noalias !397
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.479.0.copyload = load i16, ptr %.sroa.479.0..sroa_idx, align 8, !noalias !397 ; 3 uses
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.580, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.580.0..sroa_idx, i64 6, i1 false), !noalias !397
  %i.am = icmp ult i64 %i.af, 12
  br i1 %i.am, label %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.af, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #23
          to label %.noexc.i.i unwind label %bb.j, !noalias !395

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

common.resume:                                    ; preds = %bb.am, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.j ], [ %i.ge, %bb.am ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 304, i64 noundef 8) #28, !noalias !395
  br label %common.resume

_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.h
  %i.ao = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 276
  %i.ar = shl nuw nsw i64 %i.af, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr nonnull readonly align 2 %i.ap, i64 %i.ar, i1 false), !alias.scope !398, !noalias !399
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.au = mul nuw nsw i64 %i.af, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.at, ptr nonnull readonly align 8 %i.as, i64 %i.au, i1 false), !alias.scope !400, !noalias !399
  %i.av = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.av, ptr %i.b, align 2, !noalias !397
  %.sroa.4.i.i.sroa.0.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.sroa.0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.4.i.i.sroa.0.6..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.078, i64 16, i1 false), !noalias !386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i.sroa.5, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.580, i64 6, i1 false), !noalias !386
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.078)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.580)
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.z ; 3 uses
  %spec.select38.i = select i1 %.sroa.09.0.i, ptr %i.aa, ptr %i.a ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select38.i, i64 274 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !noalias !401, !noundef !6 ; 2 uses
  %i.ay = zext i16 %i.ax to i64                   ; 2 uses
  %9 = add i16 %i.ax, 1
  %i.az = getelementptr inbounds nuw i8, ptr %spec.select38.i, i64 276 ; 2 uses
  %.not.i14.not.i = icmp ult i64 %.sroa.510.0.i, %i.ay
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i14.not.i, label %bb.k, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_inserttECsa5QsYiPB8Gl_5image.exit.i15.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_inserttECsa5QsYiPB8Gl_5image.exit.i15.i: ; preds = %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i
  store i16 %2, ptr %i.ba, align 2, !alias.scope !402, !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  br label %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit

bb.k:                                             ; preds = %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i
  %i.bb = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bb
  %i.bd = sub nuw nsw i64 %i.ay, %.sroa.510.0.i   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bc, ptr nonnull align 2 %i.ba, i64 %i.be, i1 false), !alias.scope !402, !noalias !401
  store i16 %2, ptr %i.ba, align 2, !alias.scope !402, !noalias !401
  %i.bf = getelementptr inbounds nuw i8, ptr %spec.select38.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.sroa.510.0.i
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.bb
  %i.bi = mul nuw nsw i64 %i.bd, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr nonnull align 8 %i.bg, i64 %i.bi, i1 false), !alias.scope !404, !noalias !401
  br label %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit

_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_inserttECsa5QsYiPB8Gl_5image.exit.i15.i, %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select38.i, i64 8
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !alias.scope !405, !noalias !406
  store i16 %9, ptr %i.aw, align 2, !noalias !401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.1344, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.4.i.i.sroa.0, i64 22, i1 false), !noalias !407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.17, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i.sroa.5, i64 6, i1 false), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.sroa.5)
  %.not = icmp eq i16 %.sroa.479.0.copyload, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.13.sroa.0, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.1344, i64 22, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.13.sroa.8, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.17, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1344)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  %i.bl = load ptr, ptr %i.a, align 8, !noalias !408, !noundef !6 ; 2 uses
  %.not.i170 = icmp eq ptr %i.bl, null
  br i1 %.not.i170, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %.sroa.13.sroa.0.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.sroa.0, i64 6 ; 3 uses
  %.sroa.4.i.i38.sroa.0.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i38.sroa.0, i64 6
  %i.bm = icmp eq i64 %i.z, 0
  br label %bb.w

bb.m:                                             ; preds = %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.thread, %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit
  %.sink.i98 = phi i64 [ %i.k, %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.510.0.i, %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit ]
  %.sink45.i97 = phi i64 [ %i.w, %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.thread ], [ %spec.select.i, %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit ]
  %.sink46.i96 = phi ptr [ %i.a, %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.thread ], [ %spec.select38.i, %_RINvMsK_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit ]
  store ptr %.sink46.i96, ptr %0, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink45.i97, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i98, ptr %i.bo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1344)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  br label %bb.at

._crit_edge:                                      ; preds = %bb.as, %bb.l
  %.sroa.13.sroa.7.0.lcssa = phi i16 [ %.sroa.479.0.copyload, %bb.l ], [ %.sroa.482.0.copyload, %bb.as ]
  %.sroa.11.0.lcssa = phi i16 [ %i.aj, %bb.l ], [ %i.fk, %bb.as ]
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.l ], [ %i.cq, %bb.as ]
  %.sroa.7.0.lcssa = phi ptr [ %i.aa, %bb.l ], [ %i.fb, %bb.as ] ; 3 uses
  %.val = load ptr, ptr %4, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.bp = load ptr, ptr %.val, align 8, !noalias !409, !noundef !6 ; 4 uses
  %.not.i36 = icmp eq ptr %i.bp, null
  br i1 %.not.i36, label %bb.v, label %bb.n, !prof !8

bb.n:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !410, !noalias !409, !noundef !6 ; 2 uses
  %i.bs = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodetNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryEE13new_uninit_inCsa5QsYiPB8Gl_5image()
          to label %.noexc.i.i37 unwind label %bb.r, !noalias !411 ; 9 uses

.noexc.i.i37:                                     ; preds = %bb.n
  store ptr null, ptr %i.bs, align 8, !noalias !411
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 274 ; 3 uses
  store i16 0, ptr %i.bt, align 2, !noalias !411
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 304 ; 2 uses
  store ptr %i.bp, ptr %i.bu, align 8, !noalias !411
  %i.bv = add i64 %i.br, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa5QsYiPB8Gl_5image.exit.i, !prof !8

bb.o:                                             ; preds = %.noexc.i.i37
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #26
          to label %bb.p unwind label %bb.q, !noalias !411

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef 400, i64 noundef 8) #28, !noalias !411
  br label %.body.i.i

bb.r:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.r, %bb.q
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.noexc.i.i37
  store ptr %i.bs, ptr %i.bp, align 8, !noalias !412
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 272
  store i16 0, ptr %i.by, align 8, !noalias !413
  store ptr %i.bs, ptr %.val, align 8, !alias.scope !410, !noalias !409
  store i64 %i.bv, ptr %i.bq, align 8, !alias.scope !410, !noalias !409
  %i.bz = icmp eq i64 %.sroa.9.0.lcssa, %i.br
  br i1 %i.bz, label %bb.t, label %bb.s, !prof !21

bb.s:                                             ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa5QsYiPB8Gl_5image.exit.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #23, !noalias !414
  unreachable

bb.t:                                             ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedtNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsa5QsYiPB8Gl_5image.exit.i
  %i.ca = load i16, ptr %i.bt, align 2, !noalias !414, !noundef !6 ; 3 uses
  %i.cb = icmp ult i16 %i.ca, 11
  br i1 %i.cb, label %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntrytNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE12insert_entry0Csa5QsYiPB8Gl_5image.exit, label %bb.u, !prof !21

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #23, !noalias !414
  unreachable

bb.v:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #23, !noalias !409
  unreachable

_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntrytNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryE12insert_entry0Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.t
  %i.cc = zext nneg i16 %i.ca to i64              ; 3 uses
  %i.cd = add nuw nsw i16 %i.ca, 1
  store i16 %i.cd, ptr %i.bt, align 2, !noalias !414
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 276
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.cc
  store i16 %.sroa.11.0.lcssa, ptr %i.cf, align 2, !noalias !414
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.cc ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.13.sroa.0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 2 dereferenceable(16) %i.ci, i64 16, i1 false)
  %.sroa.1067.sroa.4.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i16 %.sroa.13.sroa.7.0.lcssa, ptr %.sroa.1067.sroa.4.6..sroa_idx, align 8
  %.sroa.1067.sroa.5.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1067.sroa.5.6..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.13.sroa.8, i64 6, i1 false)
  %i.cj = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cj
  store ptr %.sroa.7.0.lcssa, ptr %i.ck, align 8, !noalias !414
  store ptr %i.bs, ptr %.sroa.7.0.lcssa, align 8, !noalias !414
  %i.cl = trunc nuw nsw i64 %i.cj to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa, i64 272
  store i16 %i.cl, ptr %i.cm, align 8, !noalias !414
  store ptr %spec.select38.i, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.co, align 8
  br label %bb.at

bb.w:                                             ; preds = %.lr.ph, %bb.as
  %i.cp = phi ptr [ %i.bl, %.lr.ph ], [ %i.jn, %bb.as ] ; 16 uses
  %.sroa.0.0176 = phi ptr [ %i.a, %.lr.ph ], [ %i.cp, %bb.as ]
  %.sroa.6.0175 = phi i64 [ %i.z, %.lr.ph ], [ %i.cq, %bb.as ]
  %.sroa.7.0174 = phi ptr [ %i.aa, %.lr.ph ], [ %i.fb, %bb.as ] ; 2 uses
  %.sroa.9.0173 = phi i1 [ %i.bm, %.lr.ph ], [ true, %bb.as ]
  %.sroa.11.0172 = phi i16 [ %i.aj, %.lr.ph ], [ %i.fk, %bb.as ] ; 4 uses
  %.sroa.13.sroa.7.0171 = phi i16 [ %.sroa.479.0.copyload, %.lr.ph ], [ %.sroa.482.0.copyload, %bb.as ] ; 3 uses
  %i.cq = add i64 %.sroa.6.0175, 1                ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0176, i64 272
  %i.cs = load i16, ptr %i.cr, align 8, !noalias !408 ; 4 uses
  %i.ct = zext i16 %i.cs to i64                   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1362)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1765)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.sroa.5)
  br i1 %.sroa.9.0173, label %bb.y, label %bb.x, !prof !21

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23, !noalias !415
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 274 ; 4 uses
  %i.cv = load i16, ptr %i.cu, align 2, !noalias !415, !noundef !6 ; 5 uses
  %i.cw = icmp ult i16 %i.cv, 11
  br i1 %i.cw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = icmp ult i16 %i.cs, 5
  br i1 %i.cx, label %bb.ag, label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.cy = zext nneg i16 %i.cv to i64              ; 5 uses
  %i.cz = add nuw nsw i16 %i.cv, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 276 ; 2 uses
  %i.db = add nuw nsw i64 %i.ct, 1                ; 7 uses
  %10 = icmp ugt i16 %i.cv, %i.cs                 ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.ct ; 3 uses
  br i1 %10, label %bb.ab, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_inserttECsa5QsYiPB8Gl_5image.exit.i.i43

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_inserttECsa5QsYiPB8Gl_5image.exit.i.i43: ; preds = %bb.aa
  store i16 %.sroa.11.0172, ptr %i.dc, align 2, !alias.scope !416, !noalias !417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryECsa5QsYiPB8Gl_5image.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.db
  %i.de = sub nuw nsw i64 %i.cy, %i.ct            ; 2 uses
  %i.df = shl nuw nsw i64 %i.de, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dd, ptr nonnull align 2 %i.dc, i64 %i.df, i1 false), !alias.scope !416, !noalias !417
  store i16 %.sroa.11.0172, ptr %i.dc, align 2, !alias.scope !416, !noalias !417
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.ct
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.db
  %i.dj = mul nuw nsw i64 %i.de, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr nonnull align 8 %i.dh, i64 %i.dj, i1 false), !alias.scope !419, !noalias !417
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryECsa5QsYiPB8Gl_5image.exit.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.ab, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_inserttECsa5QsYiPB8Gl_5image.exit.i.i43
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.ct ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 2 dereferenceable(16) %.sroa.13.sroa.0.6..sroa_idx, i64 16, i1 false)
  %.sroa.670.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i16 %.sroa.13.sroa.7.0171, ptr %.sroa.670.0..sroa_idx73, align 8, !alias.scope !420, !noalias !421
  %.sroa.775.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.dl, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.775.0..sroa_idx77, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.13.sroa.8, i64 6, i1 false)
  %i.dm = add nuw nsw i64 %i.cy, 2                ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cp, i64 304 ; 8 uses
  br i1 %10, label %bb.ac, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodetNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryEEECsa5QsYiPB8Gl_5image.exit.i.i

bb.ac:                                            ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryECsa5QsYiPB8Gl_5image.exit.i.i
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.db
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ct
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = sub nuw nsw i64 %i.cy, %i.ct
  %i.ds = shl nuw nsw i64 %i.dr, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr nonnull align 8 %i.do, i64 %i.ds, i1 false), !alias.scope !422, !noalias !417
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodetNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryEEECsa5QsYiPB8Gl_5image.exit.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodetNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryEEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.ac, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryECsa5QsYiPB8Gl_5image.exit.i.i
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.db
  store ptr %.sroa.7.0174, ptr %i.dt, align 8, !alias.scope !422, !noalias !417
  store i16 %i.cz, ptr %i.cu, align 2, !noalias !417
  %i.du = icmp samesign ult i64 %i.db, %i.dm
  br i1 %i.du, label %.lr.ph.i.i.i.preheader, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.thread

.lr.ph.i.i.i.preheader:                           ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodetNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryEEECsa5QsYiPB8Gl_5image.exit.i.i
  %i.dv = add nuw nsw i64 %i.cy, 1
  %i.dw = sub nsw i64 %i.dv, %i.ct
  %i.dx = sub nsw i64 %i.cy, %i.ct
  %xtraiter525 = and i64 %i.dw, 3                 ; 2 uses
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
  br i1 %lcmp.mod526.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.dy, %.lr.ph.i.i.i.prol ], [ %i.db, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %prol.iter527 = phi i64 [ %prol.iter527.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.dy = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.dz = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.sroa.0.06.i.i.i.prol
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !417, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.cp, ptr %i.eb, align 8, !noalias !417
  %i.ec = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 272
  store i16 %i.ec, ptr %i.ed, align 8, !noalias !417
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter525
  br i1 %prol.iter527.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !353

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.db, %.lr.ph.i.i.i.preheader ], [ %i.dy, %.lr.ph.i.i.i.prol ]
  %i.ee = icmp ult i64 %i.dx, 3
  br i1 %i.ee, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.0.06.i.i.i = phi i64 [ %i.eu, %.lr.ph.i.i.i ], [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 7 uses
  %i.ef = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.sroa.0.06.i.i.i
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !417, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.cp, ptr %i.eh, align 8, !noalias !417
  %i.ei = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 272
  store i16 %i.ei, ptr %i.ej, align 8, !noalias !417
  %i.ek = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ef
  %i.em = load ptr, ptr %i.el, align 8, !noalias !417, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.cp, ptr %i.em, align 8, !noalias !417
  %i.en = trunc nuw nsw i64 %i.ef to i16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 272
  store i16 %i.en, ptr %i.eo, align 8, !noalias !417
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ek
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !417, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.cp, ptr %i.er, align 8, !noalias !417
  %i.es = trunc nuw nsw i64 %i.ek to i16
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 272
  store i16 %i.es, ptr %i.et, align 8, !noalias !417
  %i.eu = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.ev = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ep
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !417, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.cp, ptr %i.ex, align 8, !noalias !417
  %i.ey = trunc nuw nsw i64 %i.ep to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 272
  store i16 %i.ey, ptr %i.ez, align 8, !noalias !417
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.eu, %i.dm
  br i1 %exitcond.not.i.i.i.3, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MuttNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.thread, label %.lr.ph.i.i.i

bb.ad:                                            ; preds = %bb.z
  switch i16 %i.cs, label %bb.ae [
    i16 5, label %bb.ag
    i16 6, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.fa = add nsw i64 %i.ct, -7
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.z
  %.sroa.06.0.i = phi i64 [ 5, %bb.af ], [ 6, %bb.ae ], [ 4, %bb.z ], [ 5, %bb.ad ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.af ], [ %i.fa, %bb.ae ], [ %i.ct, %bb.z ], [ 5, %bb.ad ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.af ], [ true, %bb.ae ], [ false, %bb.z ], [ false, %bb.ad ]
  %i.fb = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodetNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryEE13new_uninit_inCsa5QsYiPB8Gl_5image(), !noalias !423 ; 14 uses
  store ptr null, ptr %i.fb, align 8, !noalias !423
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 274 ; 3 uses
  store i16 0, ptr %i.fc, align 2, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i38.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i38.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.fd = load i16, ptr %i.cu, align 2, !noalias !425, !noundef !6
  %i.fe = zext i16 %i.fd to i64
  %i.ff = xor i64 %.sroa.06.0.i, -1
  %i.fg = add nsw i64 %i.fe, %i.ff                ; 5 uses
  %i.fh = trunc i64 %i.fg to i16
  store i16 %i.fh, ptr %i.fc, align 2, !alias.scope !424, !noalias !423
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cp, i64 276 ; 2 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %.sroa.06.0.i
  %i.fk = load i16, ptr %i.fj, align 2, !noalias !425, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.081)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.583)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %.sroa.06.0.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.081, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !noalias !425
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %.sroa.482.0.copyload = load i16, ptr %.sroa.482.0..sroa_idx, align 8, !noalias !425 ; 3 uses
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.583, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.583.0..sroa_idx, i64 6, i1 false), !noalias !425
  %i.fn = icmp ult i64 %i.fg, 12
  br i1 %i.fn, label %bb.ai, label %bb.ah, !prof !10

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fg, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #23
          to label %.noexc.i.i39 unwind label %bb.am, !noalias !423

.noexc.i.i39:                                     ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.fo = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 276
  %i.fr = shl nuw nsw i64 %i.fg, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fq, ptr nonnull readonly align 2 %i.fp, i64 %i.fr, i1 false), !alias.scope !426, !noalias !427
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %i.fo
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fu = mul nuw nsw i64 %i.fg, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ft, ptr nonnull readonly align 8 %i.fs, i64 %i.fu, i1 false), !alias.scope !428, !noalias !427
  %i.fv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.fv, ptr %i.cu, align 2, !noalias !425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.4.i.i38.sroa.0.6..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.081, i64 16, i1 false), !noalias !429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.i.i38.sroa.5, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.583, i64 6, i1 false), !noalias !429
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.081)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.583)
  %i.fw = load i16, ptr %i.fc, align 2, !noalias !423, !noundef !6 ; 3 uses
  %i.fx = zext i16 %i.fw to i64
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 5 uses
  %i.fz = icmp ult i16 %i.fw, 12
  br i1 %i.fz, label %bb.aj, label %bb.al, !prof !10

bb.aj:                                            ; preds = %bb.ai
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fb, i64 304 ; 6 uses
  %i.gb = zext i16 %i.cv to i64
  %i.gc = sub nuw nsw i64 %i.gb, %.sroa.06.0.i
  %i.gd = icmp eq i64 %i.gc, %i.fy
  br i1 %i.gd, label %bb.an, label %bb.ak, !prof !21

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23
          to label %.noexc7.i.i unwind label %bb.am, !noalias !423

.noexc7.i.i:                                      ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fy, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26
          to label %bb.ap unwind label %bb.am, !noalias !423

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ah
  %i.ge = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fb, i64 noundef 400, i64 noundef 8) #28, !noalias !423
  br label %common.resume

bb.an:                                            ; preds = %bb.aj
  %i.gf = getelementptr i8, ptr %i.cp, i64 312
  %i.gg = getelementptr [8 x i8], ptr %i.gf, i64 %.sroa.06.0.i
  %i.gh = shl nuw nsw i64 %i.fy, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ga, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.gg, i64 %i.gh, i1 false), !alias.scope !430, !noalias !423
  %i.gi = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %i.gi)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %xtraiter = and i64 %i.fy, 3                    ; 3 uses
  %i.gj = icmp ult i16 %i.fw, 3
  br i1 %i.gj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.an
  %unroll_iter = and i64 %i.fy, 28
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.new
  %.sroa.0.09.i.i.i.i = phi i64 [ 0, %.new ], [ %i.gz, %bb.ao ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.ao ]
  %i.gk = or disjoint i64 %.sroa.0.09.i.i.i.i, 1  ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.sroa.0.09.i.i.i.i
end_hunk_0
