Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUInstPrinter?download=true
inline.NumInlined: 1410
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm17AMDGPUInstPrinter17printIndexKey8bitEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 11
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.120, i64 noundef 11) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.l, ptr noundef nonnull align 1 dereferenceable(11) @.str.120, i64 11, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 11
  store ptr %i.s, ptr %i.k, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.q, %bb.c ], [ %4, %bb.d ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.g) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4llvm11raw_ostreamlsEPKc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter18printIndexKey16bitEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 7                          ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 11
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.120, i64 noundef 11) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.l, ptr noundef nonnull align 1 dereferenceable(11) @.str.120, i64 11, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 11
  store ptr %i.s, ptr %i.k, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.q, %bb.c ], [ %4, %bb.d ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.g) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4llvm11raw_ostreamlsEPKc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter18printIndexKey32bitEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 7                          ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 11
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.120, i64 noundef 11) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.l, ptr noundef nonnull align 1 dereferenceable(11) @.str.120, i64 11, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 11
  store ptr %i.s, ptr %i.k, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.q, %bb.c ], [ %4, %bb.d ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.g) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4llvm11raw_ostreamlsEPKc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter14printMatrixFMTEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamEc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, i8 noundef signext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 7                          ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN4llvm11raw_ostreamlsEPKc.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 8
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.121, i64 noundef 8) #16 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  store i64 6879364371108162848, ptr %i.l, align 1
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.k, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %.pre, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %.0.i.i = phi ptr [ %i.q, %bb.c ], [ %4, %bb.d ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %.not.i = icmp ult ptr %i.t, %i.v
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i8 noundef zeroext %5) #16
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.y, ptr %i.x, align 8, !tbaa !41
  store i8 %5, ptr %i.t, align 1, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.w, %bb.e ], [ %.0.i.i, %bb.f ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ult i64 %i.af, 5
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.ah = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.122, i64 noundef 5) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ac, ptr noundef nonnull align 1 dereferenceable(5) @.str.122, i64 5, i1 false)
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

_ZN4llvm11raw_ostreamlsEPKc.exit11:               ; preds = %bb.g, %bb.h
  %i.ak = icmp samesign ult i64 %i.g, 5
  br i1 %i.ak, label %6, label %bb.l

6:                                                ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %7 = getelementptr inbounds nuw [8 x i8], ptr @_ZN4llvm6AMDGPU8WMMAModsL12ModMatrixFmtE, i64 %i.g
  %8 = load ptr, ptr %7, align 8, !tbaa !83       ; 4 uses
  %.not.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit14, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %6
  %i.al = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #16 ; 5 uses
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ugt i64 %i.al, %i.aq
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.as = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %8, i64 noundef %i.al) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.j:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %.not.i2.i12 = icmp eq i64 %i.al, 0
  br i1 %.not.i2.i12, label %_ZN4llvm11raw_ostreamlsEPKc.exit14, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %8, i64 %i.al, i1 false)
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al
  store ptr %i.au, ptr %i.k, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %i.av = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef %i.g) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

_ZN4llvm11raw_ostreamlsEPKc.exit14:               ; preds = %bb.k, %bb.j, %bb.i, %6, %bb.l, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter15printMatrixAFMTEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm17AMDGPUInstPrinter14printMatrixFMTEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamEc(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %2, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(48) %4, i8 noundef signext 97)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter15printMatrixBFMTEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm17AMDGPUInstPrinter14printMatrixFMTEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamEc(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %2, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(48) %4, i8 noundef signext 98)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter16printMatrixScaleEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamEc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, i8 noundef signext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN4llvm11raw_ostreamlsEPKc.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 8
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.121, i64 noundef 8) #16 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  store i64 6879364371108162848, ptr %i.l, align 1
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.k, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %.pre, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %.0.i.i = phi ptr [ %i.q, %bb.c ], [ %4, %bb.d ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %.not.i = icmp ult ptr %i.t, %i.v
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i8 noundef zeroext %5) #16
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.y, ptr %i.x, align 8, !tbaa !41
  store i8 %5, ptr %i.t, align 1, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.w, %bb.e ], [ %.0.i.i, %bb.f ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ult i64 %i.af, 7
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.ah = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.123, i64 noundef 7) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ac, ptr noundef nonnull align 1 dereferenceable(7) @.str.123, i64 7, i1 false)
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 7
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

_ZN4llvm11raw_ostreamlsEPKc.exit11:               ; preds = %bb.h, %bb.g
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ult i64 %i.ao, 17
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %i.aq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.225, i64 noundef 17) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.al, ptr noundef nonnull align 1 dereferenceable(17) @.str.225, i64 17, i1 false)
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 17
  store ptr %i.as, ptr %i.k, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

_ZN4llvm11raw_ostreamlsEPKc.exit14:               ; preds = %bb.j, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter17printMatrixAScaleEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm17AMDGPUInstPrinter16printMatrixScaleEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamEc(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %2, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(48) %4, i8 noundef signext 97)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter17printMatrixBScaleEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm17AMDGPUInstPrinter16printMatrixScaleEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamEc(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %2, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(48) %4, i8 noundef signext 98)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter19printMatrixScaleFmtEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamEc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, i8 noundef signext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 3                          ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN4llvm11raw_ostreamlsEPKc.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 8
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.121, i64 noundef 8) #16 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  store i64 6879364371108162848, ptr %i.l, align 1
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.k, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %.pre, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %.0.i.i = phi ptr [ %i.q, %bb.c ], [ %4, %bb.d ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %.not.i = icmp ult ptr %i.t, %i.v
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i8 noundef zeroext %5) #16
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.y, ptr %i.x, align 8, !tbaa !41
  store i8 %5, ptr %i.t, align 1, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.w, %bb.e ], [ %.0.i.i, %bb.f ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ult i64 %i.af, 11
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.ah = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.124, i64 noundef 11) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ac, ptr noundef nonnull align 1 dereferenceable(11) @.str.124, i64 11, i1 false)
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 11
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

_ZN4llvm11raw_ostreamlsEPKc.exit11:               ; preds = %bb.g, %bb.h
  %.not = icmp eq i64 %i.g, 3
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %6 = getelementptr inbounds nuw [8 x i8], ptr @_ZN4llvm6AMDGPU8WMMAModsL17ModMatrixScaleFmtE, i64 %i.g
  %7 = load ptr, ptr %6, align 8, !tbaa !83       ; 4 uses
  %.not.i.i = icmp eq ptr %7, null
  br i1 %.not.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit14, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %bb.i
  %i.ak = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #16 ; 5 uses
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ugt i64 %i.ak, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.ar = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %7, i64 noundef %i.ak) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.k:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %.not.i2.i12 = icmp eq i64 %i.ak, 0
  br i1 %.not.i2.i12, label %_ZN4llvm11raw_ostreamlsEPKc.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 1 %7, i64 %i.ak, i1 false)
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  store ptr %i.at, ptr %i.k, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %i.au = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef 3) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

_ZN4llvm11raw_ostreamlsEPKc.exit14:               ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.m, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter20printMatrixAScaleFmtEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm17AMDGPUInstPrinter19printMatrixScaleFmtEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamEc(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %2, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(48) %4, i8 noundef signext 97)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter20printMatrixBScaleFmtEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm17AMDGPUInstPrinter19printMatrixScaleFmtEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamEc(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %2, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(48) %4, i8 noundef signext 98)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter15printInterpSlotEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 9 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 5 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  switch i32 %i.g, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %i.n, 3
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.125, i64 noundef 3) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.k, ptr noundef nonnull align 1 dereferenceable(3) @.str.125, i64 3, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  store ptr %i.r, ptr %i.j, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.n, 3
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.126, i64 noundef 3) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.k, ptr noundef nonnull align 1 dereferenceable(3) @.str.126, i64 3, i1 false)
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  store ptr %i.v, ptr %i.j, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.a
  %i.w = icmp ult i64 %i.n, 2
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.127, i64 noundef 2) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.j:                                             ; preds = %bb.h
  store i16 12400, ptr %i.k, align 1
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store ptr %i.z, ptr %i.j, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.k:                                             ; preds = %bb.a
  %i.aa = icmp ult i64 %i.n, 14
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.128, i64 noundef 14) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.k, ptr noundef nonnull align 1 dereferenceable(14) @.str.128, i64 14, i1 false)
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

_ZN4llvm11raw_ostreamlsEPKc.exit15:               ; preds = %bb.l, %bb.m
  %.0.i.i14 = phi ptr [ %i.ab, %bb.l ], [ %4, %bb.m ]
  %i.ae = and i64 %i.f, 4294967295
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i14, i64 noundef %i.ae) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %_ZN4llvm11raw_ostreamlsEPKc.exit15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter15printInterpAttrEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, 4
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.129, i64 noundef 4) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i32 1920234593, ptr %i.j, align 1
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.i, align 8, !tbaa !41
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.b ], [ %4, %bb.c ]
  %i.r = and i64 %i.f, 4294967295
  %i.s = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.r) #16 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUInstPrinter19printInterpAttrChanEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %.not.i = icmp ult ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 noundef zeroext 46) #16
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.l, ptr %i.g, align 8, !tbaa !41
  store i8 46, ptr %i.h, align 1, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.k, %bb.b ], [ %4, %bb.c ]  ; 3 uses
  %i.m = and i64 %i.f, 3
  %i.n = getelementptr inbounds nuw i8, ptr @.str.130, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  %.not.i3 = icmp ult ptr %i.q, %i.s
  br i1 %.not.i3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, i8 noundef zeroext %i.o) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit5

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.u, ptr %i.p, align 8, !tbaa !41
  store i8 %i.o, ptr %i.q, align 1, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit5

_ZN4llvm11raw_ostreamlsEc.exit5:                  ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
