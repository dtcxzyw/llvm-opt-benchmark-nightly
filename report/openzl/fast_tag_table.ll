Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/fast_tag_table?download=true
inline.NumInlined: 40
inline.NumDeleted: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @ZS_FastTagTable_tableSize(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 16, %0
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZS_FastTagTable_init(ptr nofree noundef captures(none) initializes((0, 16)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !13
  tail call fastcc void @ZS_FastTagTable_clear(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ZS_FastTagTable_clear(ptr nofree noundef captures(none) initializes((8, 16)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = shl i64 16, %i.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.c, i8 0, i64 %i.b, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = zext i32 %2 to i64
  %4 = shl nuw i64 %3, 32
  %5 = or disjoint i64 %4, %i.a
  store i64 %5, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @ZS_FastTagTable_getAndUpdate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 11 uses
  switch i32 %i.b, label %bb.l [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 12, label %bb.j
    i32 16, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  br label %ZL_hashPtr.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i16, ptr %1, align 1
  %i.f = zext i16 %.val.i to i32
  %i.g = mul i32 %i.f, -1480785920
  %i.h = sub i32 32, %i.d
  %i.i = lshr i32 %i.g, %i.h
  %i.j = zext i32 %i.i to i64
  br label %ZL_hashPtr.exit

bb.d:                                             ; preds = %bb.a
  %.val22.i = load i32, ptr %1, align 1
  %i.k = mul i32 %.val22.i, 900185344
  %i.l = sub i32 32, %i.d
  %i.m = lshr i32 %i.k, %i.l
  %i.n = zext i32 %i.m to i64
  br label %ZL_hashPtr.exit

bb.e:                                             ; preds = %bb.a
  %.val23.i = load i32, ptr %1, align 1
  %i.o = mul i32 %.val23.i, -1640531535
  %i.p = sub i32 32, %i.d
  %i.q = lshr i32 %i.o, %i.p
  %i.r = zext i32 %i.q to i64
  br label %ZL_hashPtr.exit

bb.f:                                             ; preds = %bb.a
  %.val24.i = load i64, ptr %1, align 1
  %i.s = mul i64 %.val24.i, -3523014627271114752
  %i.t = sub i32 64, %i.d
  %i.u = zext nneg i32 %i.t to i64
  %i.v = lshr i64 %i.s, %i.u
  br label %ZL_hashPtr.exit

bb.g:                                             ; preds = %bb.a
  %.val25.i = load i64, ptr %1, align 1
  %i.w = mul i64 %.val25.i, -3523014627193847808
  %i.x = sub i32 64, %i.d
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 %i.w, %i.y
  br label %ZL_hashPtr.exit

bb.h:                                             ; preds = %bb.a
  %.val26.i = load i64, ptr %1, align 1
  %i.aa = mul i64 %.val26.i, -3523014627193167104
  %i.ab = sub i32 64, %i.d
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 %i.aa, %i.ac
  br label %ZL_hashPtr.exit

bb.i:                                             ; preds = %bb.a
  %.val28.i = load i64, ptr %1, align 1
  %i.ae = mul i64 %.val28.i, -3523014627327384477
  %i.af = sub i32 64, %i.d
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = lshr i64 %i.ae, %i.ag
  br label %ZL_hashPtr.exit

bb.j:                                             ; preds = %bb.a
  %.val29.i = load i64, ptr %1, align 1
  %i.ai = getelementptr i8, ptr %1, i64 8
  %.val30.i = load i32, ptr %i.ai, align 1
  %i.aj = zext i32 %.val30.i to i64
  %i.ak = xor i64 %.val29.i, %i.aj
  %i.al = mul i64 %i.ak, -3523014627327384477
  %i.am = sub i32 64, %i.d
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = lshr i64 %i.al, %i.an
  br label %ZL_hashPtr.exit

bb.k:                                             ; preds = %bb.a
  %.val31.i = load i64, ptr %1, align 1
  %i.ap = getelementptr i8, ptr %1, i64 8
  %.val32.i = load i64, ptr %i.ap, align 1
  %i.aq = xor i64 %.val32.i, %.val31.i
  %i.ar = mul i64 %i.aq, -3523014627327384477
  %i.as = sub i32 64, %i.d
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 %i.ar, %i.at
  br label %ZL_hashPtr.exit

bb.l:                                             ; preds = %bb.a
  %.val27.i = load i64, ptr %1, align 1
  %i.av = mul i64 %.val27.i, -3523014627327384477
  %i.aw = sub i32 64, %i.d
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = lshr i64 %i.av, %i.ax
  br label %ZL_hashPtr.exit

ZL_hashPtr.exit:                                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi i64 [ %i.ay, %bb.l ], [ %i.e, %bb.b ], [ %i.j, %bb.c ], [ %i.n, %bb.d ], [ %i.r, %bb.e ], [ %i.v, %bb.f ], [ %i.z, %bb.g ], [ %i.ad, %bb.h ], [ %i.ah, %bb.i ], [ %i.ao, %bb.j ], [ %i.au, %bb.k ]
  %i.az = load ptr, ptr %0, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.0.i ; 3 uses
  %.sroa.08.0.copyload.i = load i64, ptr %i.ba, align 4, !tbaa !16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 1
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i3 = load i32, ptr %.sroa.2.0..0..sroa_idx.i, align 1
  %.sroa.2.0.insert.ext.i = zext i32 %.sroa.2.0.copyload.i3 to i64
  %.sroa.2.12.insert.ext.i = zext i32 %2 to i64
  %.sroa.2.12.insert.shift.i = shl nuw i64 %.sroa.2.12.insert.ext.i, 32
  %.sroa.2.12.insert.insert.i = or disjoint i64 %.sroa.2.12.insert.shift.i, %.sroa.2.0.insert.ext.i
  store i64 %.sroa.0.0.copyload.i, ptr %i.ba, align 4, !tbaa !16
  store i64 %.sroa.2.12.insert.insert.i, ptr %.sroa.2.0..sroa_idx.i, align 4
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.08.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.2.0.copyload.i, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZS_FastTagTable_put(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 11 uses
  switch i32 %i.b, label %bb.l [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 12, label %bb.j
    i32 16, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  br label %ZL_hashPtr.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i16, ptr %1, align 1
  %i.f = zext i16 %.val.i to i32
  %i.g = mul i32 %i.f, -1480785920
  %i.h = sub i32 32, %i.d
  %i.i = lshr i32 %i.g, %i.h
  %i.j = zext i32 %i.i to i64
  br label %ZL_hashPtr.exit

bb.d:                                             ; preds = %bb.a
  %.val22.i = load i32, ptr %1, align 1
  %i.k = mul i32 %.val22.i, 900185344
  %i.l = sub i32 32, %i.d
  %i.m = lshr i32 %i.k, %i.l
  %i.n = zext i32 %i.m to i64
  br label %ZL_hashPtr.exit

bb.e:                                             ; preds = %bb.a
  %.val23.i = load i32, ptr %1, align 1
  %i.o = mul i32 %.val23.i, -1640531535
  %i.p = sub i32 32, %i.d
  %i.q = lshr i32 %i.o, %i.p
  %i.r = zext i32 %i.q to i64
  br label %ZL_hashPtr.exit

bb.f:                                             ; preds = %bb.a
  %.val24.i = load i64, ptr %1, align 1
  %i.s = mul i64 %.val24.i, -3523014627271114752
  %i.t = sub i32 64, %i.d
  %i.u = zext nneg i32 %i.t to i64
  %i.v = lshr i64 %i.s, %i.u
  br label %ZL_hashPtr.exit

bb.g:                                             ; preds = %bb.a
  %.val25.i = load i64, ptr %1, align 1
  %i.w = mul i64 %.val25.i, -3523014627193847808
  %i.x = sub i32 64, %i.d
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 %i.w, %i.y
  br label %ZL_hashPtr.exit

bb.h:                                             ; preds = %bb.a
  %.val26.i = load i64, ptr %1, align 1
  %i.aa = mul i64 %.val26.i, -3523014627193167104
  %i.ab = sub i32 64, %i.d
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 %i.aa, %i.ac
  br label %ZL_hashPtr.exit

bb.i:                                             ; preds = %bb.a
  %.val28.i = load i64, ptr %1, align 1
  %i.ae = mul i64 %.val28.i, -3523014627327384477
  %i.af = sub i32 64, %i.d
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = lshr i64 %i.ae, %i.ag
  br label %ZL_hashPtr.exit

bb.j:                                             ; preds = %bb.a
  %.val29.i = load i64, ptr %1, align 1
  %i.ai = getelementptr i8, ptr %1, i64 8
  %.val30.i = load i32, ptr %i.ai, align 1
  %i.aj = zext i32 %.val30.i to i64
  %i.ak = xor i64 %.val29.i, %i.aj
  %i.al = mul i64 %i.ak, -3523014627327384477
  %i.am = sub i32 64, %i.d
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = lshr i64 %i.al, %i.an
  br label %ZL_hashPtr.exit

bb.k:                                             ; preds = %bb.a
  %.val31.i = load i64, ptr %1, align 1
  %i.ap = getelementptr i8, ptr %1, i64 8
  %.val32.i = load i64, ptr %i.ap, align 1
  %i.aq = xor i64 %.val32.i, %.val31.i
  %i.ar = mul i64 %i.aq, -3523014627327384477
  %i.as = sub i32 64, %i.d
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 %i.ar, %i.at
  br label %ZL_hashPtr.exit

bb.l:                                             ; preds = %bb.a
  %.val27.i = load i64, ptr %1, align 1
  %i.av = mul i64 %.val27.i, -3523014627327384477
  %i.aw = sub i32 64, %i.d
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = lshr i64 %i.av, %i.ax
  br label %ZL_hashPtr.exit

ZL_hashPtr.exit:                                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi i64 [ %i.ay, %bb.l ], [ %i.e, %bb.b ], [ %i.j, %bb.c ], [ %i.n, %bb.d ], [ %i.r, %bb.e ], [ %i.v, %bb.f ], [ %i.z, %bb.g ], [ %i.ad, %bb.h ], [ %i.ah, %bb.i ], [ %i.ao, %bb.j ], [ %i.au, %bb.k ]
  %i.az = load ptr, ptr %0, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.0.i ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 1
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..0..sroa_idx.i, align 1
  %.sroa.2.0.insert.ext.i = zext i32 %.sroa.2.0.copyload.i to i64
  %.sroa.2.12.insert.ext.i = zext i32 %2 to i64
  %.sroa.2.12.insert.shift.i = shl nuw i64 %.sroa.2.12.insert.ext.i, 32
  %.sroa.2.12.insert.insert.i = or disjoint i64 %.sroa.2.12.insert.shift.i, %.sroa.2.0.insert.ext.i
  store i64 %.sroa.0.0.copyload.i, ptr %i.ba, align 4, !tbaa !16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %.sroa.2.12.insert.insert.i, ptr %.sroa.4.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @ZS_FastTagTable_get(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 11 uses
  switch i32 %i.b, label %bb.l [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 12, label %bb.j
    i32 16, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  br label %ZL_hashPtr.exit

bb.c:                                             ; preds = %bb.a
  %.val.i = load i16, ptr %1, align 1
  %i.f = zext i16 %.val.i to i32
  %i.g = mul i32 %i.f, -1480785920
  %i.h = sub i32 32, %i.d
  %i.i = lshr i32 %i.g, %i.h
  %i.j = zext i32 %i.i to i64
  br label %ZL_hashPtr.exit

bb.d:                                             ; preds = %bb.a
  %.val22.i = load i32, ptr %1, align 1
  %i.k = mul i32 %.val22.i, 900185344
  %i.l = sub i32 32, %i.d
  %i.m = lshr i32 %i.k, %i.l
  %i.n = zext i32 %i.m to i64
  br label %ZL_hashPtr.exit

bb.e:                                             ; preds = %bb.a
  %.val23.i = load i32, ptr %1, align 1
  %i.o = mul i32 %.val23.i, -1640531535
  %i.p = sub i32 32, %i.d
  %i.q = lshr i32 %i.o, %i.p
  %i.r = zext i32 %i.q to i64
  br label %ZL_hashPtr.exit

bb.f:                                             ; preds = %bb.a
  %.val24.i = load i64, ptr %1, align 1
  %i.s = mul i64 %.val24.i, -3523014627271114752
  %i.t = sub i32 64, %i.d
  %i.u = zext nneg i32 %i.t to i64
  %i.v = lshr i64 %i.s, %i.u
  br label %ZL_hashPtr.exit

bb.g:                                             ; preds = %bb.a
  %.val25.i = load i64, ptr %1, align 1
  %i.w = mul i64 %.val25.i, -3523014627193847808
  %i.x = sub i32 64, %i.d
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 %i.w, %i.y
  br label %ZL_hashPtr.exit

bb.h:                                             ; preds = %bb.a
  %.val26.i = load i64, ptr %1, align 1
  %i.aa = mul i64 %.val26.i, -3523014627193167104
  %i.ab = sub i32 64, %i.d
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 %i.aa, %i.ac
  br label %ZL_hashPtr.exit

bb.i:                                             ; preds = %bb.a
  %.val28.i = load i64, ptr %1, align 1
  %i.ae = mul i64 %.val28.i, -3523014627327384477
  %i.af = sub i32 64, %i.d
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = lshr i64 %i.ae, %i.ag
  br label %ZL_hashPtr.exit

bb.j:                                             ; preds = %bb.a
  %.val29.i = load i64, ptr %1, align 1
  %i.ai = getelementptr i8, ptr %1, i64 8
  %.val30.i = load i32, ptr %i.ai, align 1
  %i.aj = zext i32 %.val30.i to i64
  %i.ak = xor i64 %.val29.i, %i.aj
  %i.al = mul i64 %i.ak, -3523014627327384477
  %i.am = sub i32 64, %i.d
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = lshr i64 %i.al, %i.an
  br label %ZL_hashPtr.exit

bb.k:                                             ; preds = %bb.a
  %.val31.i = load i64, ptr %1, align 1
  %i.ap = getelementptr i8, ptr %1, i64 8
  %.val32.i = load i64, ptr %i.ap, align 1
  %i.aq = xor i64 %.val32.i, %.val31.i
  %i.ar = mul i64 %i.aq, -3523014627327384477
  %i.as = sub i32 64, %i.d
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 %i.ar, %i.at
  br label %ZL_hashPtr.exit

bb.l:                                             ; preds = %bb.a
  %.val27.i = load i64, ptr %1, align 1
  %i.av = mul i64 %.val27.i, -3523014627327384477
  %i.aw = sub i32 64, %i.d
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = lshr i64 %i.av, %i.ax
  br label %ZL_hashPtr.exit

ZL_hashPtr.exit:                                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi i64 [ %i.ay, %bb.l ], [ %i.e, %bb.b ], [ %i.j, %bb.c ], [ %i.n, %bb.d ], [ %i.r, %bb.e ], [ %i.v, %bb.f ], [ %i.z, %bb.g ], [ %i.ad, %bb.h ], [ %i.ah, %bb.i ], [ %i.ao, %bb.j ], [ %i.au, %bb.k ]
  %i.az = load ptr, ptr %0, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.0.i ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ba, align 4, !tbaa !16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 4
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.2.0.copyload.i, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"", !11, i64 0, !8, i64 8, !8, i64 12}
!13 = !{!12, !11, i64 0}
!14 = !{!12, !8, i64 12}
!15 = !{!12, !8, i64 8}
!16 = !{!7, !7, i64 0}
end_hunk_0
