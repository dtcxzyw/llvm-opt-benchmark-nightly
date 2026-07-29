inline.NumInlined: 188
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9NCompress6NBZip211CThreadInfo9WriteCrc2Ej:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt
  store i8 %i.bm, ptr %i.bu, align 1, !tbaa !54
  store i32 8, ptr %i.bb, align 4, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bv = phi i32 [ 8, %bb.i ], [ %i.bp, %bb.h ]
  %i.bw = icmp sgt i32 %i.bg, 0
  br i1 %i.bw, label %bb.h, label %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit.2, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit.2: ; preds = %bb.j
  %i.bx = and i32 %1, 255
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !71  ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.pre.i.i.i.3 = load i32, ptr %i.bz, align 4, !tbaa !69
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit.2
  %i.cc = phi i32 [ %.pre.i.i.i.3, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit.2 ], [ %i.ct, %bb.m ] ; 3 uses
  %.014.i.i.i.3 = phi i32 [ %i.bx, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit.2 ], [ %i.cm, %bb.m ] ; 2 uses
  %.01213.i.i.i.3 = phi i32 [ 8, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit.2 ], [ %i.ce, %bb.m ] ; 3 uses
  %i.cd = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i.3, i32 %i.cc) ; 3 uses
  %i.ce = sub nsw i32 %.01213.i.i.i.3, %i.cd      ; 4 uses
  %i.cf = load i8, ptr %i.ca, align 8, !tbaa !70
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl i32 %i.cg, %i.cd
  %i.ci = lshr i32 %.014.i.i.i.3, %i.ce           ; 2 uses
  %i.cj = or i32 %i.ch, %i.ci
  %i.ck = trunc i32 %i.cj to i8                   ; 2 uses
  store i8 %i.ck, ptr %i.ca, align 8, !tbaa !70
  %i.cl = shl i32 %i.ci, %i.ce
  %i.cm = sub i32 %.014.i.i.i.3, %i.cl
  %i.cn = sub nsw i32 %i.cc, %i.cd                ; 2 uses
  store i32 %i.cn, ptr %i.bz, align 4, !tbaa !69
  %.not.i.i.i.3 = icmp sgt i32 %i.cc, %.01213.i.i.i.3
  br i1 %.not.i.i.i.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = load ptr, ptr %i.cb, align 8, !tbaa !66
  %i.cp = load i32, ptr %i.by, align 8, !tbaa !68 ; 2 uses
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.by, align 8, !tbaa !68
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr
  store i8 %i.ck, ptr %i.cs, align 1, !tbaa !54
  store i32 8, ptr %i.bz, align 4, !tbaa !69
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ct = phi i32 [ 8, %bb.l ], [ %i.cn, %bb.k ]
  %i.cu = icmp sgt i32 %i.ce, 0
  br i1 %i.cu, label %bb.k, label %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit.3, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit.3: ; preds = %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %.not16.i = icmp eq i32 %2, 0
  br i1 %.not16.i, label %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !81 ; 3 uses
  %i.f = icmp ult i32 %2, %.pre.i
  %.pre = load i8, ptr %i.c, align 4, !tbaa !100  ; 2 uses
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = sub nuw i32 %2, %.pre.i                  ; 6 uses
  %i.h = lshr i32 %1, %i.g                        ; 2 uses
  %i.i = shl i32 %i.h, %i.g
  %i.j = sub i32 %1, %i.i                         ; 2 uses
  %i.k = trunc i32 %i.h to i8
  %i.l = or i8 %.pre, %i.k
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.n = load i32, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.d, align 8, !tbaa !88
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  store i8 %i.l, ptr %i.q, align 1, !tbaa !54
  %i.r = load i32, ptr %i.d, align 8, !tbaa !88
  %i.s = load i32, ptr %i.e, align 4, !tbaa !101
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZN10COutBuffer9WriteByteEh.exit.i.peel

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.a)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i.peel

_ZN10COutBuffer9WriteByteEh.exit.i.peel:          ; preds = %bb.c, %bb.b
  store i32 8, ptr %i.b, align 8, !tbaa !81
  store i8 0, ptr %i.c, align 4, !tbaa !100
  %.not.i.peel = icmp eq i32 %i.g, 0
  br i1 %.not.i.peel, label %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i.peel
  %i.u = icmp ult i32 %i.g, 8
  br i1 %i.u, label %.loopexit, label %.lr.ph

.peel.next:                                       ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i
  %i.v = icmp ult i32 %i.ab, 8
  br i1 %i.v, label %.loopexit, label %.lr.ph, !llvm.loop !102

.loopexit:                                        ; preds = %.peel.next, %.peel.next.preheader, %.lr.ph.i
  %i.w = phi i8 [ %.pre, %.lr.ph.i ], [ 0, %.peel.next.preheader ], [ 0, %.peel.next ]
  %.lcssa = phi i32 [ %.pre.i, %.lr.ph.i ], [ 8, %.peel.next.preheader ], [ 8, %.peel.next ]
  %.018.i.lcssa = phi i32 [ %1, %.lr.ph.i ], [ %i.j, %.peel.next.preheader ], [ %i.ae, %.peel.next ]
  %.01117.i.lcssa = phi i32 [ %2, %.lr.ph.i ], [ %i.g, %.peel.next.preheader ], [ %i.ab, %.peel.next ]
  %i.x = sub nuw i32 %.lcssa, %.01117.i.lcssa     ; 2 uses
  store i32 %i.x, ptr %i.b, align 8, !tbaa !81
  %i.y = shl i32 %.018.i.lcssa, %i.x
  %i.z = trunc i32 %i.y to i8
  %i.aa = or i8 %i.w, %i.z
  store i8 %i.aa, ptr %i.c, align 4, !tbaa !100
  br label %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit

.lr.ph:                                           ; preds = %.peel.next.preheader, %.peel.next
  %.01117.i20 = phi i32 [ %i.ab, %.peel.next ], [ %i.g, %.peel.next.preheader ]
  %.018.i19 = phi i32 [ %i.ae, %.peel.next ], [ %i.j, %.peel.next.preheader ] ; 2 uses
  %i.ab = add i32 %.01117.i20, -8                 ; 6 uses
  %i.ac = lshr i32 %.018.i19, %i.ab               ; 2 uses
  %i.ad = shl i32 %i.ac, %i.ab
  %i.ae = sub i32 %.018.i19, %i.ad                ; 2 uses
  %i.af = trunc i32 %i.ac to i8
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ah = load i32, ptr %i.d, align 8, !tbaa !88  ; 2 uses
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !88
  %i.aj = zext i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  store i8 %i.af, ptr %i.ak, align 1, !tbaa !54
  %i.al = load i32, ptr %i.d, align 8, !tbaa !88
  %i.am = load i32, ptr %i.e, align 4, !tbaa !101
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.d, label %_ZN10COutBuffer9WriteByteEh.exit.i

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.a)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i

_ZN10COutBuffer9WriteByteEh.exit.i:               ; preds = %bb.d, %.lr.ph
  store i32 8, ptr %i.b, align 8, !tbaa !81
  store i8 0, ptr %i.c, align 4, !tbaa !100
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit, label %.peel.next, !llvm.loop !102

_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit: ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i, %_ZN10COutBuffer9WriteByteEh.exit.i.peel, %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress6NBZip28CEncoder9WriteByteEh(ptr noundef nonnull align 8 dereferenceable(712) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i8 %1 to i32
  tail call void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %i.a, i32 noundef 8)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress6NBZip28CEncoder8WriteBitEb(ptr noundef nonnull align 8 dereferenceable(712) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %1 to i32
  tail call void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %i.a, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress6NBZip28CEncoder8WriteCrcEj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %1, 24
  tail call void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %i.a, i32 noundef 8)
  %i.b = lshr i32 %1, 16
  %i.c = and i32 %i.b, 255
  tail call void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %i.c, i32 noundef 8)
  %i.d = lshr i32 %1, 8
  %i.e = and i32 %i.d, 255
  tail call void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %i.e, i32 noundef 8)
  %i.f = and i32 %1, 255
  tail call void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %i.f, i32 noundef 8)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress6NBZip211CThreadInfo11EncodeBlockEPKhj(ptr noundef nonnull align 8 dereferenceable(36688) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.NCompress::CMtf8Encoder", align 1 ; 10 uses
  %i.a = alloca [256 x i8], align 16              ; 11 uses
  %i.b = alloca [16 x i8], align 16               ; 7 uses
  %i.c = alloca [258 x i32], align 16             ; 75 uses
  %i.d = alloca [50 x i32], align 16              ; 52 uses
  %i.e = alloca [6 x i8], align 1                 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre.i.i.i = load i32, ptr %i.h, align 4, !tbaa !69
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.k = phi i32 [ %.pre.i.i.i, %bb.a ], [ %i.ab, %bb.d ] ; 3 uses
  %.014.i.i.i = phi i32 [ 0, %bb.a ], [ %i.u, %bb.d ] ; 2 uses
  %.01213.i.i.i = phi i32 [ 1, %bb.a ], [ %i.m, %bb.d ] ; 3 uses
  %i.l = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i, i32 %i.k) ; 3 uses
  %i.m = sub nsw i32 %.01213.i.i.i, %i.l          ; 4 uses
  %i.n = load i8, ptr %i.i, align 8, !tbaa !70
  %i.o = zext i8 %i.n to i32
  %i.p = shl i32 %i.o, %i.l
  %i.q = lshr i32 %.014.i.i.i, %i.m               ; 2 uses
  %i.r = or i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i8                     ; 2 uses
  store i8 %i.s, ptr %i.i, align 8, !tbaa !70
  %i.t = shl i32 %i.q, %i.m
  %i.u = sub i32 %.014.i.i.i, %i.t
  %i.v = sub nsw i32 %i.k, %i.l                   ; 2 uses
  store i32 %i.v, ptr %i.h, align 4, !tbaa !69
  %.not.i.i.i = icmp sgt i32 %i.k, %.01213.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.x = load i32, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.g, align 8, !tbaa !68
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  store i8 %i.s, ptr %i.aa, align 1, !tbaa !54
  store i32 8, ptr %i.h, align 4, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = phi i32 [ 8, %bb.c ], [ %i.v, %bb.b ]
  %i.ac = icmp sgt i32 %i.m, 0
  br i1 %i.ac, label %bb.b, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.af = tail call i32 @BlockSort(ptr noundef %i.ae, ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  store i32 %2, ptr %i.ai, align 4, !tbaa !4
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !71  ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.pre.i.i = load i32, ptr %i.ak, align 4, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit
  %i.an = phi i32 [ %.pre.i.i, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit ], [ %i.be, %bb.g ] ; 3 uses
  %.014.i.i = phi i32 [ %i.af, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit ], [ %i.ax, %bb.g ] ; 2 uses
  %.01213.i.i = phi i32 [ 24, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit ], [ %i.ap, %bb.g ] ; 3 uses
  %i.ao = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i, i32 %i.an) ; 3 uses
  %i.ap = sub nsw i32 %.01213.i.i, %i.ao          ; 4 uses
  %i.aq = load i8, ptr %i.al, align 8, !tbaa !70
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl i32 %i.ar, %i.ao
  %i.at = lshr i32 %.014.i.i, %i.ap               ; 2 uses
  %i.au = or i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i8                   ; 2 uses
  store i8 %i.av, ptr %i.al, align 8, !tbaa !70
  %i.aw = shl i32 %i.at, %i.ap
  %i.ax = sub i32 %.014.i.i, %i.aw
  %i.ay = sub nsw i32 %i.an, %i.ao                ; 2 uses
  store i32 %i.ay, ptr %i.ak, align 4, !tbaa !69
  %.not.i.i = icmp sgt i32 %i.an, %.01213.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !66
  %i.ba = load i32, ptr %i.aj, align 8, !tbaa !68 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.aj, align 8, !tbaa !68
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc
  store i8 %i.av, ptr %i.bd, align 1, !tbaa !54
  store i32 8, ptr %i.ak, align 4, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.be = phi i32 [ 8, %bb.f ], [ %i.ay, %bb.e ]
  %i.bf = icmp sgt i32 %i.ap, 0
  br i1 %i.bf, label %bb.e, label %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !tbaa !104
  %.not460 = icmp eq i32 %2, 0
  br i1 %.not460, label %.preheader409.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bg = icmp ult i32 %2, 4
  br i1 %i.bg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !54
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  store i8 1, ptr %i.bk, align 1, !tbaa !104
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !54
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  store i8 1, ptr %i.bp, align 1, !tbaa !104
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !54
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  store i8 1, ptr %i.bu, align 1, !tbaa !104
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !54
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by
  store i8 1, ptr %i.bz, align 1, !tbaa !104
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader409.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !105

.preheader409.preheader.loopexit.unr-lcssa:       ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader409.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader409.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader409.preheader.loopexit.unr-lcssa ]
  %lcmp.mod890 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod890)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !54
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cc
  store i8 1, ptr %i.cd, align 1, !tbaa !104
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader409.preheader, label %.lr.ph.epil, !llvm.loop !106

.preheader409.preheader:                          ; preds = %.preheader409.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit
  br label %.preheader409

.preheader409:                                    ; preds = %bb.j, %.preheader409.preheader
  %indvars.iv473 = phi i64 [ 0, %.preheader409.preheader ], [ %indvars.iv.next474.1, %bb.j ] ; 6 uses
  %.0420 = phi i32 [ 0, %.preheader409.preheader ], [ %.1.1, %bb.j ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv473
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !104, !range !48, !noundef !49
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.h, label %.preheader409.1

bb.h:                                             ; preds = %.preheader409
  %i.ch = lshr i64 %indvars.iv473, 4
  %i.ci = and i64 %i.ch, 268435455
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ci
  store i8 1, ptr %i.cj, align 1, !tbaa !104
  %i.ck = trunc i64 %indvars.iv473 to i8
  %i.cl = add nsw i32 %.0420, 1
  %i.cm = sext i32 %.0420 to i64
  %i.cn = getelementptr inbounds i8, ptr %3, i64 %i.cm
  store i8 %i.ck, ptr %i.cn, align 1, !tbaa !54
  br label %.preheader409.1

.preheader409.1:                                  ; preds = %.preheader409, %bb.h
  %.1 = phi i32 [ %i.cl, %bb.h ], [ %.0420, %.preheader409 ] ; 3 uses
  %indvars.iv.next474 = or disjoint i64 %indvars.iv473, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next474
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !104, !range !48, !noundef !49
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader409.1
  %i.cr = lshr i64 %indvars.iv473, 4
  %i.cs = and i64 %i.cr, 268435455
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cs
  store i8 1, ptr %i.ct, align 1, !tbaa !104
  %i.cu = trunc i64 %indvars.iv.next474 to i8
  %i.cv = add nsw i32 %.1, 1
  %i.cw = sext i32 %.1 to i64
  %i.cx = getelementptr inbounds i8, ptr %3, i64 %i.cw
  store i8 %i.cu, ptr %i.cx, align 1, !tbaa !54
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader409.1
  %.1.1 = phi i32 [ %i.cv, %bb.i ], [ %.1, %.preheader409.1 ] ; 5 uses
  %indvars.iv.next474.1 = add nuw nsw i64 %indvars.iv473, 2 ; 2 uses
  %exitcond476.not.1 = icmp eq i64 %indvars.iv.next474.1, 256
  br i1 %exitcond476.not.1, label %.preheader408, label %.preheader409, !llvm.loop !107

.preheader408:                                    ; preds = %bb.j, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit337
  %indvars.iv477 = phi i64 [ %indvars.iv.next478, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit337 ], [ 0, %bb.j ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv477
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !104, !range !48, !noundef !49
  %i.da = zext nneg i8 %i.cz to i32
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !71  ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.pre.i.i.i333 = load i32, ptr %i.dc, align 4, !tbaa !69
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.preheader408
  %i.df = phi i32 [ %.pre.i.i.i333, %.preheader408 ], [ %i.dw, %bb.m ] ; 3 uses
  %.014.i.i.i334 = phi i32 [ %i.da, %.preheader408 ], [ %i.dp, %bb.m ] ; 2 uses
  %.01213.i.i.i335 = phi i32 [ 1, %.preheader408 ], [ %i.dh, %bb.m ] ; 3 uses
  %i.dg = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i335, i32 %i.df) ; 3 uses
  %i.dh = sub nsw i32 %.01213.i.i.i335, %i.dg     ; 4 uses
  %i.di = load i8, ptr %i.dd, align 8, !tbaa !70
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl i32 %i.dj, %i.dg
  %i.dl = lshr i32 %.014.i.i.i334, %i.dh          ; 2 uses
  %i.dm = or i32 %i.dk, %i.dl
  %i.dn = trunc i32 %i.dm to i8                   ; 2 uses
  store i8 %i.dn, ptr %i.dd, align 8, !tbaa !70
  %i.do = shl i32 %i.dl, %i.dh
  %i.dp = sub i32 %.014.i.i.i334, %i.do
  %i.dq = sub nsw i32 %i.df, %i.dg                ; 2 uses
  store i32 %i.dq, ptr %i.dc, align 4, !tbaa !69
  %.not.i.i.i336 = icmp sgt i32 %i.df, %.01213.i.i.i335
  br i1 %.not.i.i.i336, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dr = load ptr, ptr %i.de, align 8, !tbaa !66
  %i.ds = load i32, ptr %i.db, align 8, !tbaa !68 ; 2 uses
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.db, align 8, !tbaa !68
  %i.du = zext i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.du
  store i8 %i.dn, ptr %i.dv, align 1, !tbaa !54
  store i32 8, ptr %i.dc, align 4, !tbaa !69
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dw = phi i32 [ 8, %bb.l ], [ %i.dq, %bb.k ]
  %i.dx = icmp sgt i32 %i.dh, 0
  br i1 %i.dx, label %bb.k, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit337, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit337: ; preds = %bb.m
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 2 uses
  %exitcond480.not = icmp eq i64 %indvars.iv.next478, 16
  br i1 %exitcond480.not, label %.preheader407, label %.preheader408, !llvm.loop !108

.preheader407:                                    ; preds = %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit337, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit342
  %indvars.iv481 = phi i64 [ %indvars.iv.next482, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit342 ], [ 0, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit337 ] ; 3 uses
  %i.dy = lshr i64 %indvars.iv481, 4
  %i.dz = and i64 %i.dy, 268435455
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !104, !range !48, !noundef !49
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.n, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit342

bb.n:                                             ; preds = %.preheader407
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv481
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !104, !range !48, !noundef !49
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = load ptr, ptr %i.f, align 8, !tbaa !71  ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %.pre.i.i.i338 = load i32, ptr %i.eh, align 4, !tbaa !69
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.ek = phi i32 [ %.pre.i.i.i338, %bb.n ], [ %i.fb, %bb.q ] ; 3 uses
  %.014.i.i.i339 = phi i32 [ %i.ef, %bb.n ], [ %i.eu, %bb.q ] ; 2 uses
  %.01213.i.i.i340 = phi i32 [ 1, %bb.n ], [ %i.em, %bb.q ] ; 3 uses
  %i.el = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i340, i32 %i.ek) ; 3 uses
  %i.em = sub nsw i32 %.01213.i.i.i340, %i.el     ; 4 uses
  %i.en = load i8, ptr %i.ei, align 8, !tbaa !70
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl i32 %i.eo, %i.el
  %i.eq = lshr i32 %.014.i.i.i339, %i.em          ; 2 uses
  %i.er = or i32 %i.ep, %i.eq
  %i.es = trunc i32 %i.er to i8                   ; 2 uses
  store i8 %i.es, ptr %i.ei, align 8, !tbaa !70
  %i.et = shl i32 %i.eq, %i.em
  %i.eu = sub i32 %.014.i.i.i339, %i.et
  %i.ev = sub nsw i32 %i.ek, %i.el                ; 2 uses
  store i32 %i.ev, ptr %i.eh, align 4, !tbaa !69
  %.not.i.i.i341 = icmp sgt i32 %i.ek, %.01213.i.i.i340
  br i1 %.not.i.i.i341, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ew = load ptr, ptr %i.ej, align 8, !tbaa !66
  %i.ex = load i32, ptr %i.eg, align 8, !tbaa !68 ; 2 uses
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr %i.eg, align 8, !tbaa !68
  %i.ez = zext i32 %i.ex to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ez
  store i8 %i.es, ptr %i.fa, align 1, !tbaa !54
  store i32 8, ptr %i.eh, align 4, !tbaa !69
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fb = phi i32 [ 8, %bb.p ], [ %i.ev, %bb.o ]
  %i.fc = icmp sgt i32 %i.em, 0
  br i1 %i.fc, label %bb.o, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit342, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit342: ; preds = %bb.q, %.preheader407
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1 ; 2 uses
  %exitcond484.not = icmp eq i64 %indvars.iv.next482, 256
  br i1 %exitcond484.not, label %bb.r, label %.preheader407, !llvm.loop !109

bb.r:                                             ; preds = %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !24 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1032) %i.c, i8 0, i64 1032, i1 false), !tbaa !4
  %i.ff = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.fg = getelementptr inbounds i8, ptr %1, i64 -1
  %scevgep = getelementptr inbounds nuw i8, ptr %3, i64 1
  %umax = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  %wide.trip.count491 = zext i32 %umax to i64     ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.thread, %bb.r
  %indvars.iv488.ph = phi i64 [ %indvars.iv.next489609, %.thread ], [ 0, %bb.r ]
  %.0245.ph = phi i32 [ %i.go, %.thread ], [ 0, %bb.r ] ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %.outer, %bb.v
  %indvars.iv488 = phi i64 [ %indvars.iv.next489, %bb.v ], [ %indvars.iv488.ph, %.outer ] ; 3 uses
  %.0258 = phi i32 [ %i.gl, %bb.v ], [ 0, %.outer ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv488
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !54  ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.t ], [ 0, %bb.s ] ; 9 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !54
  %.not.i = icmp eq i8 %i.fn, %i.fl
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i, label %.preheader28.i, label %bb.t, !llvm.loop !110

.preheader28.i:                                   ; preds = %bb.t
  %i.fo = icmp samesign ugt i64 %indvars.iv.i, 7
  br i1 %i.fo, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader28.i
  %.1.lcssa.i.in = phi i64 [ %indvars.iv.i, %.preheader28.i ], [ %indvars.iv.next34.i, %.lr.ph.i ]
  %i.fp = and i64 %.1.lcssa.i.in, 4294967295      ; 2 uses
  %.not41.i = icmp eq i64 %i.fp, 0
  br i1 %.not41.i, label %_ZN9NCompress12CMtf8Encoder11FindAndMoveEh.exit, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %.preheader.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %scevgep, ptr nonnull align 1 %3, i64 %i.fp, i1 false), !tbaa !54
  br label %_ZN9NCompress12CMtf8Encoder11FindAndMoveEh.exit

.lr.ph.i:                                         ; preds = %.preheader28.i, %.lr.ph.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph.i ], [ %indvars.iv.i, %.preheader28.i ] ; 3 uses
  %i.fq = getelementptr i8, ptr %3, i64 %indvars.iv33.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 -7
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -8 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next34.i
  %i.ft = load <8 x i8>, ptr %i.fs, align 1, !tbaa !54
  store <8 x i8> %i.ft, ptr %i.fr, align 1, !tbaa !54
  %i.fu = icmp sgt i64 %indvars.iv33.i, 15
  br i1 %i.fu, label %.lr.ph.i, label %.preheader.i, !llvm.loop !111

_ZN9NCompress12CMtf8Encoder11FindAndMoveEh.exit:  ; preds = %.lr.ph31.preheader.i, %.preheader.i
  store i8 %i.fl, ptr %3, align 1, !tbaa !54
  %i.fv = icmp eq i64 %indvars.iv.i, 0
  br i1 %i.fv, label %bb.v, label %.preheader406

.preheader406:                                    ; preds = %_ZN9NCompress12CMtf8Encoder11FindAndMoveEh.exit
  %.not424 = icmp eq i32 %.0258, 0
  br i1 %.not424, label %._crit_edge, label %.lr.ph427

.lr.ph427:                                        ; preds = %.preheader406, %.lr.ph427
  %.1246426 = phi i32 [ %i.fz, %.lr.ph427 ], [ %.0245.ph, %.preheader406 ] ; 2 uses
  %.1259425 = phi i32 [ %i.gg, %.lr.ph427 ], [ %.0258, %.preheader406 ]
  %i.fw = add i32 %.1259425, -1                   ; 2 uses
  %i.fx = and i32 %i.fw, 1                        ; 2 uses
  %i.fy = trunc nuw nsw i32 %i.fx to i8
  %i.fz = add i32 %.1246426, 1                    ; 2 uses
  %i.ga = zext i32 %.1246426 to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ga
  store i8 %i.fy, ptr %i.gb, align 1, !tbaa !54
  %i.gc = zext nneg i32 %i.fx to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !4
  %i.gg = lshr i32 %i.fw, 1                       ; 2 uses
  %.not = icmp eq i32 %i.gg, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph427, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph427, %.preheader406
  %.1246.lcssa = phi i32 [ %.0245.ph, %.preheader406 ], [ %i.fz, %.lr.ph427 ] ; 4 uses
  %i.gh = icmp samesign ugt i64 %indvars.iv.i, 253
  br i1 %i.gh, label %bb.u, label %.thread

bb.u:                                             ; preds = %._crit_edge
  %i.gi = add i32 %.1246.lcssa, 1
  %i.gj = zext i32 %.1246.lcssa to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.gj
  store i8 -1, ptr %i.gk, align 1, !tbaa !54
  br label %.thread

bb.v:                                             ; preds = %_ZN9NCompress12CMtf8Encoder11FindAndMoveEh.exit
  %i.gl = add i32 %.0258, 1                       ; 3 uses
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next489, %wide.trip.count491
  br i1 %exitcond492.not, label %.preheader405, label %bb.s, !llvm.loop !113

.thread:                                          ; preds = %._crit_edge, %bb.u
  %.sink637 = phi i8 [ 2, %bb.u ], [ 1, %._crit_edge ]
  %.sink635 = phi i32 [ 2, %bb.u ], [ 1, %._crit_edge ]
  %.sink634 = phi i32 [ %i.gi, %bb.u ], [ %.1246.lcssa, %._crit_edge ]
  %i.gm = trunc i64 %indvars.iv.i to i8
  %i.gn = add i8 %.sink637, %i.gm
  %i.go = add i32 %.1246.lcssa, %.sink635         ; 2 uses
  %i.gp = zext i32 %.sink634 to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.gp
  store i8 %i.gn, ptr %i.gq, align 1, !tbaa !54
  %i.gr = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.gs = getelementptr i8, ptr %i.gr, i64 4      ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !4
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !4
  %indvars.iv.next489609 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not610 = icmp eq i64 %indvars.iv.next489609, %wide.trip.count491
  br i1 %exitcond492.not610, label %._crit_edge432, label %.outer, !llvm.loop !113

.preheader405:                                    ; preds = %bb.v
  %.not323428 = icmp eq i32 %i.gl, 0
  br i1 %.not323428, label %._crit_edge432, label %.lr.ph431

.lr.ph431:                                        ; preds = %.preheader405, %.lr.ph431
  %.4249430 = phi i32 [ %i.gy, %.lr.ph431 ], [ %.0245.ph, %.preheader405 ] ; 2 uses
  %.3261429 = phi i32 [ %i.hf, %.lr.ph431 ], [ %i.gl, %.preheader405 ]
  %i.gv = add i32 %.3261429, -1                   ; 2 uses
  %i.gw = and i32 %i.gv, 1                        ; 2 uses
  %i.gx = trunc nuw nsw i32 %i.gw to i8
  %i.gy = add i32 %.4249430, 1                    ; 2 uses
  %i.gz = zext i32 %.4249430 to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.gz
  store i8 %i.gx, ptr %i.ha, align 1, !tbaa !54
  %i.hb = zext nneg i32 %i.gw to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hb ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !4
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !4
  %i.hf = lshr i32 %i.gv, 1                       ; 2 uses
  %.not323 = icmp eq i32 %i.hf, 0
  br i1 %.not323, label %._crit_edge432, label %.lr.ph431, !llvm.loop !114

._crit_edge432:                                   ; preds = %.thread, %.lr.ph431, %.preheader405
  %.4249.lcssa = phi i32 [ %.0245.ph, %.preheader405 ], [ %i.gy, %.lr.ph431 ], [ %i.go, %.thread ] ; 4 uses
  %i.hg = add i32 %.1.1, 2                        ; 7 uses
  %i.hh = icmp slt i32 %.1.1, 254
  br i1 %i.hh, label %vector.ph, label %bb.w

bb.w:                                             ; preds = %._crit_edge432
  %i.hi = add i32 %.4249.lcssa, 1
  %i.hj = zext i32 %.4249.lcssa to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.hj
  store i8 -1, ptr %i.hk, align 1, !tbaa !54
  br label %vector.ph

vector.ph:                                        ; preds = %._crit_edge432, %bb.w
  %.sink643 = phi i8 [ 2, %bb.w ], [ 1, %._crit_edge432 ]
  %.sink641 = phi i32 [ 2, %bb.w ], [ 1, %._crit_edge432 ]
  %.sink640 = phi i32 [ %i.hi, %bb.w ], [ %.4249.lcssa, %._crit_edge432 ]
  %i.hl = trunc i32 %.1.1 to i8
  %i.hm = add i8 %.sink643, %i.hl
  %i.hn = add i32 %.4249.lcssa, %.sink641         ; 5 uses
  %i.ho = zext i32 %.sink640 to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ho
  store i8 %i.hm, ptr %i.hp, align 1, !tbaa !54
  %i.hq = sext i32 %.1.1 to i64
  %i.hr = getelementptr [4 x i8], ptr %i.c, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 4      ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !4
  %i.hu = add i32 %i.ht, 1
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 1008
  %wide.load665.31 = load <4 x i32>, ptr %i.hv, align 16, !tbaa !4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 976
  %wide.load665.30 = load <4 x i32>, ptr %i.hw, align 16, !tbaa !4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 944
  %wide.load665.29 = load <4 x i32>, ptr %i.hx, align 16, !tbaa !4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 912
  %wide.load665.28 = load <4 x i32>, ptr %i.hy, align 16, !tbaa !4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.c, i64 880
  %wide.load665.27 = load <4 x i32>, ptr %i.hz, align 16, !tbaa !4
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 848
  %wide.load665.26 = load <4 x i32>, ptr %i.ia, align 16, !tbaa !4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 816
  %wide.load665.25 = load <4 x i32>, ptr %i.ib, align 16, !tbaa !4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 784
  %wide.load665.24 = load <4 x i32>, ptr %i.ic, align 16, !tbaa !4
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 752
  %wide.load665.23 = load <4 x i32>, ptr %i.id, align 16, !tbaa !4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %wide.load665.22 = load <4 x i32>, ptr %i.ie, align 16, !tbaa !4
  %i.if = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  %wide.load665.21 = load <4 x i32>, ptr %i.if, align 16, !tbaa !4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  %wide.load665.20 = load <4 x i32>, ptr %i.ig, align 16, !tbaa !4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  %wide.load665.19 = load <4 x i32>, ptr %i.ih, align 16, !tbaa !4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %wide.load665.18 = load <4 x i32>, ptr %i.ii, align 16, !tbaa !4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  %wide.load665.17 = load <4 x i32>, ptr %i.ij, align 16, !tbaa !4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %wide.load665.16 = load <4 x i32>, ptr %i.ik, align 16, !tbaa !4
  %i.il = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %wide.load665.15 = load <4 x i32>, ptr %i.il, align 16, !tbaa !4
  %i.im = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %wide.load665.14 = load <4 x i32>, ptr %i.im, align 16, !tbaa !4
  %i.in = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %wide.load665.13 = load <4 x i32>, ptr %i.in, align 16, !tbaa !4
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %wide.load665.12 = load <4 x i32>, ptr %i.io, align 16, !tbaa !4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %wide.load665.11 = load <4 x i32>, ptr %i.ip, align 16, !tbaa !4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %wide.load665.10 = load <4 x i32>, ptr %i.iq, align 16, !tbaa !4
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %wide.load665.9 = load <4 x i32>, ptr %i.ir, align 16, !tbaa !4
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %wide.load665.8 = load <4 x i32>, ptr %i.is, align 16, !tbaa !4
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %wide.load665.7 = load <4 x i32>, ptr %i.it, align 16, !tbaa !4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %wide.load665.6 = load <4 x i32>, ptr %i.iu, align 16, !tbaa !4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %wide.load665.5 = load <4 x i32>, ptr %i.iv, align 16, !tbaa !4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %wide.load665.4 = load <4 x i32>, ptr %i.iw, align 16, !tbaa !4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %wide.load665.3 = load <4 x i32>, ptr %i.ix, align 16, !tbaa !4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %wide.load665.2 = load <4 x i32>, ptr %i.iy, align 16, !tbaa !4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %wide.load665.1 = load <4 x i32>, ptr %i.iz, align 16, !tbaa !4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load665 = load <4 x i32>, ptr %i.ja, align 16, !tbaa !4
  %i.jb = add <4 x i32> %wide.load665.1, %wide.load665
  %i.jc = add <4 x i32> %wide.load665.2, %i.jb
  %i.jd = add <4 x i32> %wide.load665.3, %i.jc
  %i.je = add <4 x i32> %wide.load665.4, %i.jd
  %i.jf = add <4 x i32> %wide.load665.5, %i.je
  %i.jg = add <4 x i32> %wide.load665.6, %i.jf
  %i.jh = add <4 x i32> %wide.load665.7, %i.jg
  %i.ji = add <4 x i32> %wide.load665.8, %i.jh
  %i.jj = add <4 x i32> %wide.load665.9, %i.ji
  %i.jk = add <4 x i32> %wide.load665.10, %i.jj
  %i.jl = add <4 x i32> %wide.load665.11, %i.jk
  %i.jm = add <4 x i32> %wide.load665.12, %i.jl
  %i.jn = add <4 x i32> %wide.load665.13, %i.jm
  %i.jo = add <4 x i32> %wide.load665.14, %i.jn
  %i.jp = add <4 x i32> %wide.load665.15, %i.jo
  %i.jq = add <4 x i32> %wide.load665.16, %i.jp
  %i.jr = add <4 x i32> %wide.load665.17, %i.jq
  %i.js = add <4 x i32> %wide.load665.18, %i.jr
  %i.jt = add <4 x i32> %wide.load665.19, %i.js
  %i.ju = add <4 x i32> %wide.load665.20, %i.jt
  %i.jv = add <4 x i32> %wide.load665.21, %i.ju
  %i.jw = add <4 x i32> %wide.load665.22, %i.jv
  %i.jx = add <4 x i32> %wide.load665.23, %i.jw
  %i.jy = add <4 x i32> %wide.load665.24, %i.jx
  %i.jz = add <4 x i32> %wide.load665.25, %i.jy
  %i.ka = add <4 x i32> %wide.load665.26, %i.jz
  %i.kb = add <4 x i32> %wide.load665.27, %i.ka
  %i.kc = add <4 x i32> %wide.load665.28, %i.kb
  %i.kd = add <4 x i32> %wide.load665.29, %i.kc
  %i.ke = add <4 x i32> %wide.load665.30, %i.kd
  %i.kf = add <4 x i32> %wide.load665.31, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 992
  %wide.load.31 = load <4 x i32>, ptr %i.kg, align 16, !tbaa !4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %wide.load.30 = load <4 x i32>, ptr %i.kh, align 16, !tbaa !4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.c, i64 928
  %wide.load.29 = load <4 x i32>, ptr %i.ki, align 16, !tbaa !4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.c, i64 896
  %wide.load.28 = load <4 x i32>, ptr %i.kj, align 16, !tbaa !4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.c, i64 864
  %wide.load.27 = load <4 x i32>, ptr %i.kk, align 16, !tbaa !4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %wide.load.26 = load <4 x i32>, ptr %i.kl, align 16, !tbaa !4
  %i.km = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  %wide.load.25 = load <4 x i32>, ptr %i.km, align 16, !tbaa !4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  %wide.load.24 = load <4 x i32>, ptr %i.kn, align 16, !tbaa !4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.c, i64 736
  %wide.load.23 = load <4 x i32>, ptr %i.ko, align 16, !tbaa !4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %wide.load.22 = load <4 x i32>, ptr %i.kp, align 16, !tbaa !4
  %i.kq = getelementptr inbounds nuw i8, ptr %i.c, i64 672
  %wide.load.21 = load <4 x i32>, ptr %i.kq, align 16, !tbaa !4
  %i.kr = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %wide.load.20 = load <4 x i32>, ptr %i.kr, align 16, !tbaa !4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  %wide.load.19 = load <4 x i32>, ptr %i.ks, align 16, !tbaa !4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %wide.load.18 = load <4 x i32>, ptr %i.kt, align 16, !tbaa !4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %wide.load.17 = load <4 x i32>, ptr %i.ku, align 16, !tbaa !4
  %i.kv = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %wide.load.16 = load <4 x i32>, ptr %i.kv, align 16, !tbaa !4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %wide.load.15 = load <4 x i32>, ptr %i.kw, align 16, !tbaa !4
  %i.kx = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %wide.load.14 = load <4 x i32>, ptr %i.kx, align 16, !tbaa !4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %wide.load.13 = load <4 x i32>, ptr %i.ky, align 16, !tbaa !4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %wide.load.12 = load <4 x i32>, ptr %i.kz, align 16, !tbaa !4
  %i.la = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %wide.load.11 = load <4 x i32>, ptr %i.la, align 16, !tbaa !4
  %i.lb = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %wide.load.10 = load <4 x i32>, ptr %i.lb, align 16, !tbaa !4
  %i.lc = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %wide.load.9 = load <4 x i32>, ptr %i.lc, align 16, !tbaa !4
  %i.ld = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %wide.load.8 = load <4 x i32>, ptr %i.ld, align 16, !tbaa !4
  %i.le = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %wide.load.7 = load <4 x i32>, ptr %i.le, align 16, !tbaa !4
  %i.lf = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %wide.load.6 = load <4 x i32>, ptr %i.lf, align 16, !tbaa !4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %wide.load.5 = load <4 x i32>, ptr %i.lg, align 16, !tbaa !4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %wide.load.4 = load <4 x i32>, ptr %i.lh, align 16, !tbaa !4
  %i.li = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %wide.load.3 = load <4 x i32>, ptr %i.li, align 16, !tbaa !4
  %i.lj = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %wide.load.2 = load <4 x i32>, ptr %i.lj, align 16, !tbaa !4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %wide.load.1 = load <4 x i32>, ptr %i.lk, align 16, !tbaa !4
  %wide.load = load <4 x i32>, ptr %i.c, align 16, !tbaa !4
  %i.ll = add <4 x i32> %wide.load.1, %wide.load
  %i.lm = add <4 x i32> %wide.load.2, %i.ll
  %i.ln = add <4 x i32> %wide.load.3, %i.lm
  %i.lo = add <4 x i32> %wide.load.4, %i.ln
  %i.lp = add <4 x i32> %wide.load.5, %i.lo
  %i.lq = add <4 x i32> %wide.load.6, %i.lp
  %i.lr = add <4 x i32> %wide.load.7, %i.lq
  %i.ls = add <4 x i32> %wide.load.8, %i.lr
  %i.lt = add <4 x i32> %wide.load.9, %i.ls
  %i.lu = add <4 x i32> %wide.load.10, %i.lt
  %i.lv = add <4 x i32> %wide.load.11, %i.lu
  %i.lw = add <4 x i32> %wide.load.12, %i.lv
  %i.lx = add <4 x i32> %wide.load.13, %i.lw
  %i.ly = add <4 x i32> %wide.load.14, %i.lx
  %i.lz = add <4 x i32> %wide.load.15, %i.ly
  %i.ma = add <4 x i32> %wide.load.16, %i.lz
  %i.mb = add <4 x i32> %wide.load.17, %i.ma
  %i.mc = add <4 x i32> %wide.load.18, %i.mb
  %i.md = add <4 x i32> %wide.load.19, %i.mc
  %i.me = add <4 x i32> %wide.load.20, %i.md
  %i.mf = add <4 x i32> %wide.load.21, %i.me
  %i.mg = add <4 x i32> %wide.load.22, %i.mf
  %i.mh = add <4 x i32> %wide.load.23, %i.mg
  %i.mi = add <4 x i32> %wide.load.24, %i.mh
  %i.mj = add <4 x i32> %wide.load.25, %i.mi
  %i.mk = add <4 x i32> %wide.load.26, %i.mj
  %i.ml = add <4 x i32> %wide.load.27, %i.mk
  %i.mm = add <4 x i32> %wide.load.28, %i.ml
  %i.mn = add <4 x i32> %wide.load.29, %i.mm
  %i.mo = add <4 x i32> %wide.load.30, %i.mn
  %i.mp = add <4 x i32> %wide.load.31, %i.mo
  %bin.rdx = add <4 x i32> %i.kf, %i.mp
  %i.mq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.c, i64 1024
  %i.ms = load i32, ptr %i.mr, align 16, !tbaa !4
  %i.mt = add i32 %i.ms, %i.mq
  %i.mu = getelementptr inbounds nuw i8, ptr %i.c, i64 1028
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !4
  %i.mw = add i32 %i.mv, %i.mt                    ; 6 uses
  %i.mx = load ptr, ptr %i.f, align 8, !tbaa !71  ; 4 uses
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !68
  %i.mz = shl i32 %i.my, 3
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !69 ; 2 uses
  %reass.sub1.i = sub i32 %i.mz, %i.nb            ; 3 uses
  %i.nc = add i32 %reass.sub1.i, 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.ne = load i8, ptr %i.nd, align 8, !tbaa !70
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 36080 ; 2 uses
  %i.ng = icmp ult i32 %i.mw, 200
  %i.nh = icmp ult i32 %i.mw, 600
  %i.ni = icmp ult i32 %i.mw, 1200
  %i.nj = icmp ult i32 %i.mw, 2400
  %. = select i1 %i.nj, i32 5, i32 6
  %i.nk = lshr i32 %i.nc, 3
  %i.nl = and i32 %reass.sub1.i, 7
  %i.nm = sub nuw nsw i32 8, %i.nl                ; 2 uses
  %i.nn = add i32 %i.mw, 49
  %i.no = udiv i32 %i.nn, 50                      ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 1588 ; 12 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 13972 ; 6 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 7780 ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.hg, i32 1)
  %umax561 = tail call i32 @llvm.umax.i32(i32 %i.no, i32 1)
  %.pre = load i8, ptr %i.nf, align 8, !tbaa !115, !range !48
  %i.nt = trunc nuw i8 %.pre to i1
  %.mux = select i1 %i.ng, i32 2, i32 3
  %spec.select = select i1 %i.ni, i32 4, i32 %.
  %spec.select459 = select i1 %i.nh, i32 %.mux, i32 %spec.select
  %wide.trip.count503 = zext nneg i32 %smax to i64 ; 19 uses
  %wide.trip.count562 = zext nneg i32 %umax561 to i64
  %min.iters.check824 = icmp slt i32 %i.hg, 8
  %min.iters.check826 = icmp slt i32 %i.hg, 16
  %n.mod.vf828 = and i64 %wide.trip.count503, 8
  %n.vec829 = and i64 %wide.trip.count503, 2147483632 ; 4 uses
  %cmp.n840 = icmp eq i64 %n.vec829, %wide.trip.count503
  %min.epilog.iters.check845.not.not = icmp eq i64 %n.mod.vf828, 0
  %n.vec848 = and i64 %wide.trip.count503, 2147483640 ; 3 uses
  %cmp.n862 = icmp eq i64 %n.vec848, %wide.trip.count503
  %min.iters.check795 = icmp slt i32 %i.hg, 8
  %n.vec798 = and i64 %wide.trip.count503, 2147483640 ; 3 uses
  %cmp.n821 = icmp eq i64 %n.vec798, %wide.trip.count503
  %min.iters.check766 = icmp slt i32 %i.hg, 8
  %n.vec769 = and i64 %wide.trip.count503, 2147483640 ; 3 uses
  %cmp.n792 = icmp eq i64 %n.vec769, %wide.trip.count503
  %min.iters.check737 = icmp slt i32 %i.hg, 8
  %n.vec740 = and i64 %wide.trip.count503, 2147483640 ; 3 uses
  %cmp.n763 = icmp eq i64 %n.vec740, %wide.trip.count503
  %min.iters.check710 = icmp slt i32 %i.hg, 8
  %n.vec713 = and i64 %wide.trip.count503, 2147483640 ; 3 uses
  %cmp.n734 = icmp eq i64 %n.vec713, %wide.trip.count503
  br label %bb.x

bb.x:                                             ; preds = %vector.ph, %bb.dm
  %.pre.i.i343576 = phi i32 [ %i.nb, %vector.ph ], [ %i.aus, %bb.dm ]
  %i.nu = phi ptr [ %i.mx, %vector.ph ], [ %i.auo, %bb.dm ] ; 8 uses
  %i.nv = phi i1 [ %i.nt, %vector.ph ], [ true, %bb.dm ]
  %.0285458 = phi i32 [ 2, %vector.ph ], [ %.3288.ph, %bb.dm ] ; 2 uses
  %.0292457 = phi i32 [ -1, %vector.ph ], [ %.3295.ph, %bb.dm ] ; 2 uses
  %.0299456 = phi i32 [ 2, %vector.ph ], [ %i.auw, %bb.dm ] ; 5 uses
  br i1 %i.nv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %i.nk, ptr %i.nu, align 8, !tbaa !68
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  store i32 %i.nm, ptr %i.nw, align 4, !tbaa !69
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store i8 %i.ne, ptr %i.nx, align 8, !tbaa !70
  %.not324 = icmp eq i32 %.0299456, 7
  %.0285..0299 = select i1 %.not324, i32 %.0285458, i32 %.0299456
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.pre.i.i343 = phi i32 [ %i.nm, %bb.y ], [ %.pre.i.i343576, %bb.x ]
  %.0296 = phi i32 [ %.0285..0299, %bb.y ], [ %spec.select459, %bb.x ] ; 7 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 4 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 8 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %i.ob = phi i32 [ %.pre.i.i343, %bb.z ], [ %i.os, %bb.ac ] ; 3 uses
  %.014.i.i344 = phi i32 [ %.0296, %bb.z ], [ %i.ol, %bb.ac ] ; 2 uses
  %.01213.i.i345 = phi i32 [ 3, %bb.z ], [ %i.od, %bb.ac ] ; 3 uses
  %i.oc = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i345, i32 %i.ob) ; 3 uses
  %i.od = sub nsw i32 %.01213.i.i345, %i.oc       ; 4 uses
  %i.oe = load i8, ptr %i.nz, align 8, !tbaa !70
  %i.of = zext i8 %i.oe to i32
  %i.og = shl i32 %i.of, %i.oc
  %i.oh = lshr i32 %.014.i.i344, %i.od            ; 2 uses
  %i.oi = or i32 %i.og, %i.oh
  %i.oj = trunc i32 %i.oi to i8                   ; 2 uses
  store i8 %i.oj, ptr %i.nz, align 8, !tbaa !70
  %i.ok = shl i32 %i.oh, %i.od
  %i.ol = sub i32 %.014.i.i344, %i.ok
  %i.om = sub nsw i32 %i.ob, %i.oc                ; 2 uses
  store i32 %i.om, ptr %i.ny, align 4, !tbaa !69
  %.not.i.i346 = icmp sgt i32 %i.ob, %.01213.i.i345
  br i1 %.not.i.i346, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.on = load ptr, ptr %i.oa, align 8, !tbaa !66
  %i.oo = load i32, ptr %i.nu, align 8, !tbaa !68 ; 2 uses
  %i.op = add i32 %i.oo, 1
  store i32 %i.op, ptr %i.nu, align 8, !tbaa !68
  %i.oq = zext i32 %i.oo to i64
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.oq
  store i8 %i.oj, ptr %i.or, align 1, !tbaa !54
  store i32 8, ptr %i.ny, align 4, !tbaa !69
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.os = phi i32 [ 8, %bb.ab ], [ %i.om, %bb.aa ]
  %i.ot = icmp sgt i32 %i.od, 0
  br i1 %i.ot, label %bb.aa, label %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit347, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit347: ; preds = %bb.ac
  %i.ou = load ptr, ptr %i.f, align 8, !tbaa !71  ; 5 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 4 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %.pre.i.i348 = load i32, ptr %i.ov, align 4, !tbaa !69
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit347
  %i.oy = phi i32 [ %.pre.i.i348, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit347 ], [ %i.pp, %bb.af ] ; 3 uses
  %.014.i.i349 = phi i32 [ %i.no, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit347 ], [ %i.pi, %bb.af ] ; 2 uses
  %.01213.i.i350 = phi i32 [ 15, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit347 ], [ %i.pa, %bb.af ] ; 3 uses
  %i.oz = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i350, i32 %i.oy) ; 3 uses
  %i.pa = sub nsw i32 %.01213.i.i350, %i.oz       ; 4 uses
  %i.pb = load i8, ptr %i.ow, align 8, !tbaa !70
  %i.pc = zext i8 %i.pb to i32
  %i.pd = shl i32 %i.pc, %i.oz
  %i.pe = lshr i32 %.014.i.i349, %i.pa            ; 2 uses
  %i.pf = or i32 %i.pd, %i.pe
  %i.pg = trunc i32 %i.pf to i8                   ; 2 uses
  store i8 %i.pg, ptr %i.ow, align 8, !tbaa !70
  %i.ph = shl i32 %i.pe, %i.pa
  %i.pi = sub i32 %.014.i.i349, %i.ph
  %i.pj = sub nsw i32 %i.oy, %i.oz                ; 2 uses
  store i32 %i.pj, ptr %i.ov, align 4, !tbaa !69
  %.not.i.i351 = icmp sgt i32 %i.oy, %.01213.i.i350
  br i1 %.not.i.i351, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.pk = load ptr, ptr %i.ox, align 8, !tbaa !66
  %i.pl = load i32, ptr %i.ou, align 8, !tbaa !68 ; 2 uses
  %i.pm = add i32 %i.pl, 1
  store i32 %i.pm, ptr %i.ou, align 8, !tbaa !68
  %i.pn = zext i32 %i.pl to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pn
  store i8 %i.pg, ptr %i.po, align 1, !tbaa !54
  store i32 8, ptr %i.ov, align 4, !tbaa !69
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.pp = phi i32 [ 8, %bb.ae ], [ %i.pj, %bb.ad ]
  %i.pq = icmp sgt i32 %i.pa, 0
  br i1 %i.pq, label %bb.ad, label %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352.preheader, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352.preheader: ; preds = %bb.af
  %i.pr = zext nneg i32 %.0296 to i64
  %i.ps = sext i32 %.0296 to i64
  br label %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352

_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352: ; preds = %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352.preheader, %.loopexit867
  %indvars.iv505 = phi i64 [ %i.pr, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352.preheader ], [ %indvars.iv.next506, %.loopexit867 ] ; 6 uses
  %.0291 = phi i32 [ %i.mw, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352.preheader ], [ %i.rg, %.loopexit867 ] ; 3 uses
  %.0290 = phi i32 [ 0, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352.preheader ], [ %.1284, %.loopexit867 ] ; 4 uses
  %i.pt = trunc nsw i64 %indvars.iv505 to i32     ; 2 uses
  %i.pu = udiv i32 %.0291, %i.pt
  %.not461 = icmp ult i32 %.0291, %i.pt
  br i1 %.not461, label %._crit_edge439, label %.lr.ph438.preheader

.lr.ph438.preheader:                              ; preds = %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352
  %i.pv = sext i32 %.0290 to i64
  br label %.lr.ph438

.lr.ph438:                                        ; preds = %.lr.ph438.preheader, %.lr.ph438
  %indvars.iv497 = phi i64 [ %i.pv, %.lr.ph438.preheader ], [ %indvars.iv.next498, %.lr.ph438 ] ; 2 uses
  %.0281437 = phi i32 [ 0, %.lr.ph438.preheader ], [ %i.py, %.lr.ph438 ]
  %indvars.iv.next498 = add nsw i64 %indvars.iv497, 1 ; 2 uses
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv497
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !4
  %i.py = add i32 %i.px, %.0281437                ; 3 uses
  %i.pz = icmp ult i32 %i.py, %i.pu
  br i1 %i.pz, label %.lr.ph438, label %._crit_edge439.loopexit, !llvm.loop !116

._crit_edge439.loopexit:                          ; preds = %.lr.ph438
  %i.qa = trunc nsw i64 %indvars.iv.next498 to i32
  br label %._crit_edge439

._crit_edge439:                                   ; preds = %._crit_edge439.loopexit, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352
  %.0283.lcssa = phi i32 [ %.0290, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352 ], [ %i.qa, %._crit_edge439.loopexit ] ; 4 uses
  %.0281.lcssa = phi i32 [ 0, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit352 ], [ %i.py, %._crit_edge439.loopexit ] ; 4 uses
  %i.qb = add nsw i32 %.0283.lcssa, -1            ; 3 uses
  %i.qc = icmp sgt i32 %i.qb, %.0290
  br i1 %i.qc, label %bb.ag, label %iter.check842

bb.ag:                                            ; preds = %._crit_edge439
  %i.qd = icmp ne i64 %indvars.iv505, %i.ps
  %i.qe = icmp ne i64 %indvars.iv505, 1
  %or.cond = and i1 %i.qd, %i.qe
  br i1 %or.cond, label %bb.ah, label %iter.check842

bb.ah:                                            ; preds = %bb.ag
  %i.qf = trunc i64 %indvars.iv505 to i32
  %i.qg = sub i32 %.0296, %i.qf
  %i.qh = and i32 %i.qg, 1
  %.not325 = icmp eq i32 %i.qh, 0
  br i1 %.not325, label %iter.check842, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.qi = sext i32 %i.qb to i64
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !4
  %i.ql = sub i32 %.0281.lcssa, %i.qk
  br label %iter.check842

iter.check842:                                    ; preds = %bb.ai, %bb.ah, %bb.ag, %._crit_edge439
  %.1284 = phi i32 [ %i.qb, %bb.ai ], [ %.0283.lcssa, %bb.ah ], [ %.0283.lcssa, %bb.ag ], [ %.0283.lcssa, %._crit_edge439 ] ; 2 uses
  %.1282 = phi i32 [ %i.ql, %bb.ai ], [ %.0281.lcssa, %bb.ah ], [ %.0281.lcssa, %bb.ag ], [ %.0281.lcssa, %._crit_edge439 ]
  %i.qm = getelementptr [258 x i8], ptr %i.np, i64 %indvars.iv505
end_hunk_0
begin_hunk_1_@_ZN9NCompress6NBZip211CThreadInfo11EncodeBlockEPKhj:bb.a
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 20
  store i32 1, ptr %i.alb, align 8, !tbaa !4
  br label %pred.store.continue727

pred.store.continue727:                           ; preds = %pred.store.if726, %pred.store.continue725
  %i.alc = extractelement <4 x i1> %i.akl, i64 2
  br i1 %i.alc, label %pred.store.if728, label %pred.store.continue729

pred.store.if728:                                 ; preds = %pred.store.continue727
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.akh, i64 %index715
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 24
  store i32 1, ptr %i.ale, align 4, !tbaa !4
  br label %pred.store.continue729

pred.store.continue729:                           ; preds = %pred.store.if728, %pred.store.continue727
  %i.alf = extractelement <4 x i1> %i.akl, i64 3
  br i1 %i.alf, label %pred.store.if730, label %pred.store.continue731

pred.store.if730:                                 ; preds = %pred.store.continue729
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.akh, i64 %index715
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 28
  store i32 1, ptr %i.alh, align 8, !tbaa !4
  br label %pred.store.continue731

pred.store.continue731:                           ; preds = %pred.store.if730, %pred.store.continue729
  %index.next732 = add nuw i64 %index715, 8       ; 2 uses
  %i.ali = icmp eq i64 %index.next732, %n.vec713
  br i1 %i.ali, label %middle.block733, label %vector.body714, !llvm.loop !144

middle.block733:                                  ; preds = %pred.store.continue731
  br i1 %cmp.n734, label %.loopexit, label %scalar.ph709.preheader

scalar.ph709.preheader:                           ; preds = %.preheader399.3, %middle.block733
  %indvars.iv534.3.ph = phi i64 [ 0, %.preheader399.3 ], [ %n.vec713, %middle.block733 ]
  br label %scalar.ph709

scalar.ph709:                                     ; preds = %scalar.ph709.preheader, %bb.ce
  %indvars.iv534.3 = phi i64 [ %indvars.iv.next535.3, %bb.ce ], [ %indvars.iv534.3.ph, %scalar.ph709.preheader ] ; 2 uses
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.akh, i64 %indvars.iv534.3 ; 2 uses
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !4
  %i.all = icmp eq i32 %i.alk, 0
  br i1 %i.all, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %scalar.ph709
  store i32 1, ptr %i.alj, align 4, !tbaa !4
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %scalar.ph709
  %indvars.iv.next535.3 = add nuw nsw i64 %indvars.iv534.3, 1 ; 2 uses
  %exitcond538.3.not = icmp eq i64 %indvars.iv.next535.3, %wide.trip.count503
  br i1 %exitcond538.3.not, label %.loopexit, label %scalar.ph709, !llvm.loop !145

.loopexit:                                        ; preds = %bb.ce, %middle.block733
  %i.alm = getelementptr inbounds nuw [1032 x i8], ptr %i.ns, i64 %indvars.iv539.3
  %i.aln = getelementptr inbounds nuw [258 x i8], ptr %i.np, i64 %indvars.iv539.3
  tail call void @Huffman_Generate(ptr noundef nonnull %i.akh, ptr noundef nonnull %i.alm, ptr noundef nonnull %i.aln, i32 noundef 258, i32 noundef 16)
  %indvars.iv.next540.3 = add nuw nsw i64 %indvars.iv539.3, 1 ; 2 uses
  %exitcond543.3.not = icmp eq i64 %indvars.iv.next540.3, %i.ri
  br i1 %exitcond543.3.not, label %iter.check695, label %.preheader399.3, !llvm.loop !133

iter.check695:                                    ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %min.iters.check683 = icmp slt i32 %.0296, 4
  br i1 %min.iters.check683, label %vec.epilog.scalar.ph696.preheader, label %vector.main.loop.iter.check684

vector.main.loop.iter.check684:                   ; preds = %iter.check695
  %min.iters.check685 = icmp slt i32 %.0296, 32
  br i1 %min.iters.check685, label %vec.epilog.ph699, label %vector.ph686

vector.ph686:                                     ; preds = %vector.main.loop.iter.check684
  %n.mod.vf687 = and i64 %i.ri, 28
  %n.vec688 = and i64 %i.ri, 2147483616           ; 4 uses
  br label %vector.body689

vector.body689:                                   ; preds = %vector.body689, %vector.ph686
  %index690 = phi i64 [ 0, %vector.ph686 ], [ %index.next691, %vector.body689 ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph686 ], [ %vec.ind.next, %vector.body689 ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %i.alo = getelementptr inbounds nuw i8, ptr %i.e, i64 %index690 ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 16
  store <16 x i8> %vec.ind, ptr %i.alo, align 1, !tbaa !54
  store <16 x i8> %step.add, ptr %i.alp, align 1, !tbaa !54
  %index.next691 = add nuw i64 %index690, 32      ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.alq = icmp eq i64 %index.next691, %n.vec688
  br i1 %i.alq, label %middle.block692, label %vector.body689, !llvm.loop !146

middle.block692:                                  ; preds = %vector.body689
  %cmp.n693 = icmp eq i64 %n.vec688, %i.ri
  br i1 %cmp.n693, label %.preheader403, label %vec.epilog.iter.check697

vec.epilog.iter.check697:                         ; preds = %middle.block692
  %min.epilog.iters.check698 = icmp eq i64 %n.mod.vf687, 0
  br i1 %min.epilog.iters.check698, label %vec.epilog.scalar.ph696.preheader, label %vec.epilog.ph699, !prof !147

vec.epilog.ph699:                                 ; preds = %vector.main.loop.iter.check684, %vec.epilog.iter.check697
  %vec.epilog.resume.val694 = phi i64 [ %n.vec688, %vec.epilog.iter.check697 ], [ 0, %vector.main.loop.iter.check684 ] ; 2 uses
  %n.vec701 = and i64 %i.ri, 2147483644           ; 3 uses
  %i.alr = trunc i64 %vec.epilog.resume.val694 to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.alr, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body702

vec.epilog.vector.body702:                        ; preds = %vec.epilog.vector.body702, %vec.epilog.ph699
  %index703 = phi i64 [ %vec.epilog.resume.val694, %vec.epilog.ph699 ], [ %index.next705, %vec.epilog.vector.body702 ] ; 2 uses
  %vec.ind704 = phi <4 x i8> [ %induction, %vec.epilog.ph699 ], [ %vec.ind.next706, %vec.epilog.vector.body702 ] ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.e, i64 %index703
  store <4 x i8> %vec.ind704, ptr %i.als, align 1, !tbaa !54
  %index.next705 = add nuw i64 %index703, 4       ; 2 uses
  %vec.ind.next706 = add <4 x i8> %vec.ind704, splat (i8 4)
  %i.alt = icmp eq i64 %index.next705, %n.vec701
  br i1 %i.alt, label %vec.epilog.middle.block707, label %vec.epilog.vector.body702, !llvm.loop !148

vec.epilog.middle.block707:                       ; preds = %vec.epilog.vector.body702
  %cmp.n708 = icmp eq i64 %n.vec701, %i.ri
  br i1 %cmp.n708, label %.preheader403, label %vec.epilog.scalar.ph696.preheader

vec.epilog.scalar.ph696.preheader:                ; preds = %iter.check695, %vec.epilog.iter.check697, %vec.epilog.middle.block707
  %indvars.iv545.ph = phi i64 [ 0, %iter.check695 ], [ %n.vec688, %vec.epilog.iter.check697 ], [ %n.vec701, %vec.epilog.middle.block707 ]
  br label %vec.epilog.scalar.ph696

vec.epilog.scalar.ph696:                          ; preds = %vec.epilog.scalar.ph696.preheader, %vec.epilog.scalar.ph696
  %indvars.iv545 = phi i64 [ %indvars.iv.next546, %vec.epilog.scalar.ph696 ], [ %indvars.iv545.ph, %vec.epilog.scalar.ph696.preheader ] ; 3 uses
  %i.alu = trunc i64 %indvars.iv545 to i8
  %i.alv = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv545
  store i8 %i.alu, ptr %i.alv, align 1, !tbaa !54
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, 1 ; 2 uses
  %exitcond549.not = icmp eq i64 %indvars.iv.next546, %i.ri
  br i1 %exitcond549.not, label %.preheader403, label %vec.epilog.scalar.ph696, !llvm.loop !149

.preheader403:                                    ; preds = %vec.epilog.scalar.ph696, %vec.epilog.middle.block707, %middle.block692
  %.promoted = load i8, ptr %i.e, align 1, !tbaa !54
  br label %bb.cf

bb.cf:                                            ; preds = %.preheader403, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362._crit_edge
  %indvars.iv559 = phi i64 [ 0, %.preheader403 ], [ %indvars.iv.next560, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362._crit_edge ] ; 2 uses
  %i.alw = phi i8 [ %.promoted, %.preheader403 ], [ %i.aly, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362._crit_edge ]
  %i.alx = getelementptr inbounds nuw i8, ptr %i.nr, i64 %indvars.iv559
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !54 ; 4 uses
  %.not330443 = icmp eq i8 %i.alw, %i.aly
  br i1 %.not330443, label %._crit_edge447, label %.lr.ph446

.lr.ph446:                                        ; preds = %bb.cf, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit357
  %indvars.iv550 = phi i64 [ %indvars.iv.next551, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit357 ], [ 0, %bb.cf ]
  %i.alz = load ptr, ptr %i.f, align 8, !tbaa !71 ; 5 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 4 ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alz, i64 8 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alz, i64 16
  %.pre.i.i.i353 = load i32, ptr %i.ama, align 4, !tbaa !69
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %.lr.ph446
  %i.amd = phi i32 [ %.pre.i.i.i353, %.lr.ph446 ], [ %i.amu, %bb.ci ] ; 3 uses
  %.014.i.i.i354 = phi i32 [ 1, %.lr.ph446 ], [ %i.amn, %bb.ci ] ; 2 uses
  %.01213.i.i.i355 = phi i32 [ 1, %.lr.ph446 ], [ %i.amf, %bb.ci ] ; 3 uses
  %i.ame = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i355, i32 %i.amd) ; 3 uses
  %i.amf = sub nsw i32 %.01213.i.i.i355, %i.ame   ; 4 uses
  %i.amg = load i8, ptr %i.amb, align 8, !tbaa !70
  %i.amh = zext i8 %i.amg to i32
  %i.ami = shl i32 %i.amh, %i.ame
  %i.amj = lshr i32 %.014.i.i.i354, %i.amf        ; 2 uses
  %i.amk = or i32 %i.ami, %i.amj
  %i.aml = trunc i32 %i.amk to i8                 ; 2 uses
  store i8 %i.aml, ptr %i.amb, align 8, !tbaa !70
  %i.amm = shl i32 %i.amj, %i.amf
  %i.amn = sub i32 %.014.i.i.i354, %i.amm
  %i.amo = sub nsw i32 %i.amd, %i.ame             ; 2 uses
  store i32 %i.amo, ptr %i.ama, align 4, !tbaa !69
  %.not.i.i.i356 = icmp sgt i32 %i.amd, %.01213.i.i.i355
  br i1 %.not.i.i.i356, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.amp = load ptr, ptr %i.amc, align 8, !tbaa !66
  %i.amq = load i32, ptr %i.alz, align 8, !tbaa !68 ; 2 uses
  %i.amr = add i32 %i.amq, 1
  store i32 %i.amr, ptr %i.alz, align 8, !tbaa !68
  %i.ams = zext i32 %i.amq to i64
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amp, i64 %i.ams
  store i8 %i.aml, ptr %i.amt, align 1, !tbaa !54
  store i32 8, ptr %i.ama, align 4, !tbaa !69
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.amu = phi i32 [ 8, %bb.ch ], [ %i.amo, %bb.cg ]
  %i.amv = icmp sgt i32 %i.amf, 0
  br i1 %i.amv, label %bb.cg, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit357, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit357: ; preds = %bb.ci
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 3 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next551
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !54
  %.not330 = icmp eq i8 %i.amx, %i.aly
  br i1 %.not330, label %._crit_edge447.loopexit, label %.lr.ph446, !llvm.loop !150

._crit_edge447.loopexit:                          ; preds = %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit357
  %i.amy = trunc nuw nsw i64 %indvars.iv.next551 to i32
  br label %._crit_edge447

._crit_edge447:                                   ; preds = %._crit_edge447.loopexit, %bb.cf
  %.0252.lcssa = phi i32 [ 0, %bb.cf ], [ %i.amy, %._crit_edge447.loopexit ] ; 4 uses
  %i.amz = load ptr, ptr %i.f, align 8, !tbaa !71 ; 5 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 4 ; 3 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amz, i64 8 ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  %.pre.i.i.i358 = load i32, ptr %i.ana, align 4, !tbaa !69
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %._crit_edge447
  %i.and = phi i32 [ %.pre.i.i.i358, %._crit_edge447 ], [ %i.anu, %bb.cl ] ; 3 uses
  %.014.i.i.i359 = phi i32 [ 0, %._crit_edge447 ], [ %i.ann, %bb.cl ] ; 2 uses
  %.01213.i.i.i360 = phi i32 [ 1, %._crit_edge447 ], [ %i.anf, %bb.cl ] ; 3 uses
  %i.ane = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i360, i32 %i.and) ; 3 uses
  %i.anf = sub nsw i32 %.01213.i.i.i360, %i.ane   ; 4 uses
  %i.ang = load i8, ptr %i.anb, align 8, !tbaa !70
  %i.anh = zext i8 %i.ang to i32
  %i.ani = shl i32 %i.anh, %i.ane
  %i.anj = lshr i32 %.014.i.i.i359, %i.anf        ; 2 uses
  %i.ank = or i32 %i.ani, %i.anj
  %i.anl = trunc i32 %i.ank to i8                 ; 2 uses
  store i8 %i.anl, ptr %i.anb, align 8, !tbaa !70
  %i.anm = shl i32 %i.anj, %i.anf
  %i.ann = sub i32 %.014.i.i.i359, %i.anm
  %i.ano = sub nsw i32 %i.and, %i.ane             ; 2 uses
  store i32 %i.ano, ptr %i.ana, align 4, !tbaa !69
  %.not.i.i.i361 = icmp sgt i32 %i.and, %.01213.i.i.i360
  br i1 %.not.i.i.i361, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.anp = load ptr, ptr %i.anc, align 8, !tbaa !66
  %i.anq = load i32, ptr %i.amz, align 8, !tbaa !68 ; 2 uses
  %i.anr = add i32 %i.anq, 1
  store i32 %i.anr, ptr %i.amz, align 8, !tbaa !68
  %i.ans = zext i32 %i.anq to i64
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anp, i64 %i.ans
  store i8 %i.anl, ptr %i.ant, align 1, !tbaa !54
  store i32 8, ptr %i.ana, align 4, !tbaa !69
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.anu = phi i32 [ 8, %bb.ck ], [ %i.ano, %bb.cj ]
  %i.anv = icmp sgt i32 %i.anf, 0
  br i1 %i.anv, label %bb.cj, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362.preheader, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362.preheader: ; preds = %bb.cl
  %i.anw = icmp sgt i32 %.0252.lcssa, 0
  br i1 %i.anw, label %iter.check, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362._crit_edge

iter.check:                                       ; preds = %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362.preheader
  %4 = zext nneg i32 %.0252.lcssa to i64          ; 10 uses
  %min.iters.check = icmp ult i32 %.0252.lcssa, 8
  br i1 %min.iters.check, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362.preheader869, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check667 = icmp ult i32 %.0252.lcssa, 32
  br i1 %min.iters.check667, label %vec.epilog.ph, label %vector.ph668

vector.ph668:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %4, 24
  %n.vec = and i64 %4, 2147483616                 ; 3 uses
  %5 = and i64 %4, 31
  br label %vector.body669

vector.body669:                                   ; preds = %vector.body669, %vector.ph668
  %index670 = phi i64 [ 0, %vector.ph668 ], [ %index.next673, %vector.body669 ] ; 2 uses
  %6 = sub i64 %4, %index670
  %7 = getelementptr i8, ptr %i.e, i64 %6         ; 4 uses
  %8 = getelementptr i8, ptr %7, i64 -16
  %9 = getelementptr i8, ptr %7, i64 -32
  %wide.load671 = load <16 x i8>, ptr %8, align 1, !tbaa !54
  %wide.load672 = load <16 x i8>, ptr %9, align 1, !tbaa !54
  %i.anx = getelementptr i8, ptr %7, i64 -15
  %i.any = getelementptr i8, ptr %7, i64 -31
  store <16 x i8> %wide.load671, ptr %i.anx, align 1, !tbaa !54
  store <16 x i8> %wide.load672, ptr %i.any, align 1, !tbaa !54
  %index.next673 = add nuw i64 %index670, 32      ; 2 uses
  %10 = icmp eq i64 %index.next673, %n.vec
  br i1 %10, label %middle.block674, label %vector.body669, !llvm.loop !151

middle.block674:                                  ; preds = %vector.body669
  %cmp.n = icmp eq i64 %n.vec, %4
  br i1 %cmp.n, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block674
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362.preheader869, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec676 = and i64 %4, 2147483640              ; 2 uses
  %11 = and i64 %4, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index677 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next679, %vec.epilog.vector.body ] ; 2 uses
  %12 = sub i64 %4, %index677
  %13 = getelementptr i8, ptr %i.e, i64 %12       ; 2 uses
  %14 = getelementptr i8, ptr %13, i64 -8
  %wide.load678 = load <8 x i8>, ptr %14, align 1, !tbaa !54
  %15 = getelementptr i8, ptr %13, i64 -7
  store <8 x i8> %wide.load678, ptr %15, align 1, !tbaa !54
  %index.next679 = add nuw i64 %index677, 8       ; 2 uses
  %16 = icmp eq i64 %index.next679, %n.vec676
  br i1 %16, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !153

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n680 = icmp eq i64 %n.vec676, %4
  br i1 %cmp.n680, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362._crit_edge, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362.preheader869

_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362.preheader869: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv556.ph = phi i64 [ %4, %iter.check ], [ %5, %vec.epilog.iter.check ], [ %11, %vec.epilog.middle.block ]
  br label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362

_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362: ; preds = %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362.preheader869, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362 ], [ %indvars.iv556.ph, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362.preheader869 ] ; 3 uses
  %17 = getelementptr i8, ptr %i.e, i64 %indvars.iv556 ; 2 uses
  %18 = getelementptr i8, ptr %17, i64 -1
  %19 = load i8, ptr %18, align 1, !tbaa !54
  store i8 %19, ptr %17, align 1, !tbaa !54
  %indvars.iv.next557 = add nsw i64 %indvars.iv556, -1
  %20 = icmp samesign ugt i64 %indvars.iv556, 1
  br i1 %20, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362._crit_edge, !llvm.loop !154

_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362._crit_edge: ; preds = %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362, %middle.block674, %vec.epilog.middle.block, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362.preheader
  store i8 %i.aly, ptr %i.e, align 1, !tbaa !54
  %indvars.iv.next560 = add nuw nsw i64 %indvars.iv559, 1 ; 2 uses
  %exitcond563.not = icmp eq i64 %indvars.iv.next560, %wide.trip.count562
  br i1 %exitcond563.not, label %bb.cm, label %bb.cf, !llvm.loop !155

bb.cm:                                            ; preds = %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit362._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.cn

bb.cn:                                            ; preds = %bb.db, %bb.cm
  %indvars.iv569 = phi i64 [ %indvars.iv.next570, %bb.db ], [ 0, %bb.cm ] ; 2 uses
  %i.anz = getelementptr inbounds nuw [258 x i8], ptr %i.np, i64 %indvars.iv569 ; 2 uses
  %i.aoa = load i8, ptr %i.anz, align 2, !tbaa !54
  %i.aob = zext i8 %i.aoa to i32                  ; 2 uses
  %i.aoc = load ptr, ptr %i.f, align 8, !tbaa !71 ; 5 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 4 ; 3 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aoc, i64 8 ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoc, i64 16
  %.pre.i.i363 = load i32, ptr %i.aod, align 4, !tbaa !69
  br label %bb.co

bb.co:                                            ; preds = %bb.cq, %bb.cn
  %i.aog = phi i32 [ %.pre.i.i363, %bb.cn ], [ %i.aox, %bb.cq ] ; 3 uses
  %.014.i.i364 = phi i32 [ %i.aob, %bb.cn ], [ %i.aoq, %bb.cq ] ; 2 uses
  %.01213.i.i365 = phi i32 [ 5, %bb.cn ], [ %i.aoi, %bb.cq ] ; 3 uses
  %i.aoh = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i365, i32 %i.aog) ; 3 uses
  %i.aoi = sub nsw i32 %.01213.i.i365, %i.aoh     ; 4 uses
  %i.aoj = load i8, ptr %i.aoe, align 8, !tbaa !70
  %i.aok = zext i8 %i.aoj to i32
  %i.aol = shl i32 %i.aok, %i.aoh
  %i.aom = lshr i32 %.014.i.i364, %i.aoi          ; 2 uses
  %i.aon = or i32 %i.aol, %i.aom
  %i.aoo = trunc i32 %i.aon to i8                 ; 2 uses
  store i8 %i.aoo, ptr %i.aoe, align 8, !tbaa !70
  %i.aop = shl i32 %i.aom, %i.aoi
  %i.aoq = sub i32 %.014.i.i364, %i.aop
  %i.aor = sub nsw i32 %i.aog, %i.aoh             ; 2 uses
  store i32 %i.aor, ptr %i.aod, align 4, !tbaa !69
  %.not.i.i366 = icmp sgt i32 %i.aog, %.01213.i.i365
  br i1 %.not.i.i366, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aos = load ptr, ptr %i.aof, align 8, !tbaa !66
  %i.aot = load i32, ptr %i.aoc, align 8, !tbaa !68 ; 2 uses
  %i.aou = add i32 %i.aot, 1
  store i32 %i.aou, ptr %i.aoc, align 8, !tbaa !68
  %i.aov = zext i32 %i.aot to i64
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aos, i64 %i.aov
  store i8 %i.aoo, ptr %i.aow, align 1, !tbaa !54
  store i32 8, ptr %i.aod, align 4, !tbaa !69
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.aox = phi i32 [ 8, %bb.cp ], [ %i.aor, %bb.co ]
  %i.aoy = icmp sgt i32 %i.aoi, 0
  br i1 %i.aoy, label %bb.co, label %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit367, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit367: ; preds = %bb.cq, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit387
  %indvars.iv564 = phi i64 [ %indvars.iv.next565, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit387 ], [ 0, %bb.cq ] ; 2 uses
  %.0242 = phi i32 [ %.1243.lcssa, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit387 ], [ %i.aob, %bb.cq ] ; 3 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.anz, i64 %indvars.iv564
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !54
  %i.apb = zext i8 %i.apa to i32                  ; 4 uses
  %.not331451 = icmp eq i32 %.0242, %i.apb
  br i1 %.not331451, label %._crit_edge454, label %.lr.ph453

.lr.ph453:                                        ; preds = %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit367, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit377
  %.1243452 = phi i32 [ %i.arq, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit377 ], [ %.0242, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit367 ] ; 2 uses
  %i.apc = load ptr, ptr %i.f, align 8, !tbaa !71 ; 5 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 4 ; 3 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apc, i64 8 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apc, i64 16
  %.pre.i.i.i368 = load i32, ptr %i.apd, align 4, !tbaa !69
  br label %bb.cr

bb.cr:                                            ; preds = %bb.ct, %.lr.ph453
  %i.apg = phi i32 [ %.pre.i.i.i368, %.lr.ph453 ], [ %i.apx, %bb.ct ] ; 3 uses
  %.014.i.i.i369 = phi i32 [ 1, %.lr.ph453 ], [ %i.apq, %bb.ct ] ; 2 uses
  %.01213.i.i.i370 = phi i32 [ 1, %.lr.ph453 ], [ %i.api, %bb.ct ] ; 3 uses
  %i.aph = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i370, i32 %i.apg) ; 3 uses
  %i.api = sub nsw i32 %.01213.i.i.i370, %i.aph   ; 4 uses
  %i.apj = load i8, ptr %i.ape, align 8, !tbaa !70
  %i.apk = zext i8 %i.apj to i32
  %i.apl = shl i32 %i.apk, %i.aph
  %i.apm = lshr i32 %.014.i.i.i369, %i.api        ; 2 uses
  %i.apn = or i32 %i.apl, %i.apm
  %i.apo = trunc i32 %i.apn to i8                 ; 2 uses
  store i8 %i.apo, ptr %i.ape, align 8, !tbaa !70
  %i.app = shl i32 %i.apm, %i.api
  %i.apq = sub i32 %.014.i.i.i369, %i.app
  %i.apr = sub nsw i32 %i.apg, %i.aph             ; 2 uses
  store i32 %i.apr, ptr %i.apd, align 4, !tbaa !69
  %.not.i.i.i371 = icmp sgt i32 %i.apg, %.01213.i.i.i370
  br i1 %.not.i.i.i371, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aps = load ptr, ptr %i.apf, align 8, !tbaa !66
  %i.apt = load i32, ptr %i.apc, align 8, !tbaa !68 ; 2 uses
  %i.apu = add i32 %i.apt, 1
  store i32 %i.apu, ptr %i.apc, align 8, !tbaa !68
  %i.apv = zext i32 %i.apt to i64
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aps, i64 %i.apv
  store i8 %i.apo, ptr %i.apw, align 1, !tbaa !54
  store i32 8, ptr %i.apd, align 4, !tbaa !69
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.apx = phi i32 [ 8, %bb.cs ], [ %i.apr, %bb.cr ]
  %i.apy = icmp sgt i32 %i.api, 0
  br i1 %i.apy, label %bb.cr, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit372, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit372: ; preds = %bb.ct
  %i.apz = icmp ult i32 %.1243452, %i.apb
  %i.aqa = load ptr, ptr %i.f, align 8, !tbaa !71 ; 7 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 4 ; 5 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqa, i64 8 ; 4 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqa, i64 16 ; 2 uses
  %.pre.i.i.i373 = load i32, ptr %i.aqb, align 4, !tbaa !69 ; 2 uses
  br i1 %i.apz, label %.preheader644.a, label %.preheader645

.preheader644.a:                                  ; preds = %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit372, %bb.cv
  %i.aqe = phi i32 [ %i.aqv, %bb.cv ], [ %.pre.i.i.i373, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit372 ] ; 3 uses
  %.014.i.i.i374 = phi i32 [ %i.aqo, %bb.cv ], [ 0, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit372 ] ; 2 uses
  %.01213.i.i.i375 = phi i32 [ %i.aqg, %bb.cv ], [ 1, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit372 ] ; 3 uses
  %i.aqf = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i375, i32 %i.aqe) ; 3 uses
  %i.aqg = sub nsw i32 %.01213.i.i.i375, %i.aqf   ; 4 uses
  %i.aqh = load i8, ptr %i.aqc, align 8, !tbaa !70
  %i.aqi = zext i8 %i.aqh to i32
  %i.aqj = shl i32 %i.aqi, %i.aqf
  %i.aqk = lshr i32 %.014.i.i.i374, %i.aqg        ; 2 uses
  %i.aql = or i32 %i.aqj, %i.aqk
  %i.aqm = trunc i32 %i.aql to i8                 ; 2 uses
  store i8 %i.aqm, ptr %i.aqc, align 8, !tbaa !70
  %i.aqn = shl i32 %i.aqk, %i.aqg
  %i.aqo = sub i32 %.014.i.i.i374, %i.aqn
  %i.aqp = sub nsw i32 %i.aqe, %i.aqf             ; 2 uses
  store i32 %i.aqp, ptr %i.aqb, align 4, !tbaa !69
  %.not.i.i.i376 = icmp sgt i32 %i.aqe, %.01213.i.i.i375
  br i1 %.not.i.i.i376, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %.preheader644.a
  %i.aqq = load ptr, ptr %i.aqd, align 8, !tbaa !66
  %i.aqr = load i32, ptr %i.aqa, align 8, !tbaa !68 ; 2 uses
  %i.aqs = add i32 %i.aqr, 1
  store i32 %i.aqs, ptr %i.aqa, align 8, !tbaa !68
  %i.aqt = zext i32 %i.aqr to i64
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %i.aqt
  store i8 %i.aqm, ptr %i.aqu, align 1, !tbaa !54
  store i32 8, ptr %i.aqb, align 4, !tbaa !69
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.preheader644.a
  %i.aqv = phi i32 [ 8, %bb.cu ], [ %i.aqp, %.preheader644.a ]
  %i.aqw = icmp sgt i32 %i.aqg, 0
  br i1 %i.aqw, label %.preheader644.a, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit377, !llvm.loop !99

.preheader645:                                    ; preds = %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit372, %bb.cx
  %i.aqx = phi i32 [ %i.aro, %bb.cx ], [ %.pre.i.i.i373, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit372 ] ; 3 uses
  %.014.i.i.i379 = phi i32 [ %i.arh, %bb.cx ], [ 1, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit372 ] ; 2 uses
  %.01213.i.i.i380 = phi i32 [ %i.aqz, %bb.cx ], [ 1, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit372 ] ; 3 uses
  %i.aqy = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i380, i32 %i.aqx) ; 3 uses
  %i.aqz = sub nsw i32 %.01213.i.i.i380, %i.aqy   ; 4 uses
  %i.ara = load i8, ptr %i.aqc, align 8, !tbaa !70
  %i.arb = zext i8 %i.ara to i32
  %i.arc = shl i32 %i.arb, %i.aqy
  %i.ard = lshr i32 %.014.i.i.i379, %i.aqz        ; 2 uses
  %i.are = or i32 %i.arc, %i.ard
  %i.arf = trunc i32 %i.are to i8                 ; 2 uses
  store i8 %i.arf, ptr %i.aqc, align 8, !tbaa !70
  %i.arg = shl i32 %i.ard, %i.aqz
  %i.arh = sub i32 %.014.i.i.i379, %i.arg
  %i.ari = sub nsw i32 %i.aqx, %i.aqy             ; 2 uses
  store i32 %i.ari, ptr %i.aqb, align 4, !tbaa !69
  %.not.i.i.i381 = icmp sgt i32 %i.aqx, %.01213.i.i.i380
  br i1 %.not.i.i.i381, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.preheader645
  %i.arj = load ptr, ptr %i.aqd, align 8, !tbaa !66
  %i.ark = load i32, ptr %i.aqa, align 8, !tbaa !68 ; 2 uses
  %i.arl = add i32 %i.ark, 1
  store i32 %i.arl, ptr %i.aqa, align 8, !tbaa !68
  %i.arm = zext i32 %i.ark to i64
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.arm
  store i8 %i.arf, ptr %i.arn, align 1, !tbaa !54
  store i32 8, ptr %i.aqb, align 4, !tbaa !69
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.preheader645
  %i.aro = phi i32 [ 8, %bb.cw ], [ %i.ari, %.preheader645 ]
  %i.arp = icmp sgt i32 %i.aqz, 0
  br i1 %i.arp, label %.preheader645, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit377, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit377: ; preds = %bb.cx, %bb.cv
  %.sink = phi i32 [ 1, %bb.cv ], [ -1, %bb.cx ]
  %i.arq = add i32 %.1243452, %.sink              ; 2 uses
  %.not331 = icmp eq i32 %i.arq, %i.apb
  br i1 %.not331, label %._crit_edge454, label %.lr.ph453, !llvm.loop !156

._crit_edge454:                                   ; preds = %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit377, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit367
  %.1243.lcssa = phi i32 [ %.0242, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit367 ], [ %i.apb, %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit377 ]
  %i.arr = load ptr, ptr %i.f, align 8, !tbaa !71 ; 5 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 4 ; 3 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.arr, i64 8 ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arr, i64 16
  %.pre.i.i.i383 = load i32, ptr %i.ars, align 4, !tbaa !69
  br label %bb.cy

bb.cy:                                            ; preds = %bb.da, %._crit_edge454
  %i.arv = phi i32 [ %.pre.i.i.i383, %._crit_edge454 ], [ %i.asm, %bb.da ] ; 3 uses
  %.014.i.i.i384 = phi i32 [ 0, %._crit_edge454 ], [ %i.asf, %bb.da ] ; 2 uses
  %.01213.i.i.i385 = phi i32 [ 1, %._crit_edge454 ], [ %i.arx, %bb.da ] ; 3 uses
  %i.arw = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i385, i32 %i.arv) ; 3 uses
  %i.arx = sub nsw i32 %.01213.i.i.i385, %i.arw   ; 4 uses
  %i.ary = load i8, ptr %i.art, align 8, !tbaa !70
  %i.arz = zext i8 %i.ary to i32
  %i.asa = shl i32 %i.arz, %i.arw
  %i.asb = lshr i32 %.014.i.i.i384, %i.arx        ; 2 uses
  %i.asc = or i32 %i.asa, %i.asb
  %i.asd = trunc i32 %i.asc to i8                 ; 2 uses
  store i8 %i.asd, ptr %i.art, align 8, !tbaa !70
  %i.ase = shl i32 %i.asb, %i.arx
  %i.asf = sub i32 %.014.i.i.i384, %i.ase
  %i.asg = sub nsw i32 %i.arv, %i.arw             ; 2 uses
  store i32 %i.asg, ptr %i.ars, align 4, !tbaa !69
  %.not.i.i.i386 = icmp sgt i32 %i.arv, %.01213.i.i.i385
  br i1 %.not.i.i.i386, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ash = load ptr, ptr %i.aru, align 8, !tbaa !66
  %i.asi = load i32, ptr %i.arr, align 8, !tbaa !68 ; 2 uses
  %i.asj = add i32 %i.asi, 1
  store i32 %i.asj, ptr %i.arr, align 8, !tbaa !68
  %i.ask = zext i32 %i.asi to i64
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ash, i64 %i.ask
  store i8 %i.asd, ptr %i.asl, align 1, !tbaa !54
  store i32 8, ptr %i.ars, align 4, !tbaa !69
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.asm = phi i32 [ 8, %bb.cz ], [ %i.asg, %bb.cy ]
  %i.asn = icmp sgt i32 %i.arx, 0
  br i1 %i.asn, label %bb.cy, label %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit387, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit387: ; preds = %bb.da
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1 ; 2 uses
  %exitcond568.not = icmp eq i64 %indvars.iv.next565, %wide.trip.count503
  br i1 %exitcond568.not, label %bb.db, label %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit367, !llvm.loop !157

bb.db:                                            ; preds = %_ZN9NCompress6NBZip211CThreadInfo9WriteBit2Eb.exit387
  %indvars.iv.next570 = add nuw nsw i64 %indvars.iv569, 1 ; 2 uses
  %exitcond573.not.a = icmp eq i64 %indvars.iv.next570, %i.ri
  br i1 %exitcond573.not.a, label %.preheader402, label %bb.cn, !llvm.loop !158

.preheader402:                                    ; preds = %bb.db, %_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit
  %.0237 = phi i32 [ %i.ati, %_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit ], [ 0, %bb.db ] ; 2 uses
  %.0235 = phi i32 [ %.1236, %_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit ], [ 0, %bb.db ] ; 3 uses
  %.0233 = phi ptr [ %.1234, %_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit ], [ null, %bb.db ]
  %.0231 = phi ptr [ %.1232, %_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit ], [ null, %bb.db ]
  %.0229 = phi i32 [ %.1230, %_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit ], [ 0, %bb.db ] ; 3 uses
  %i.aso = add nuw i32 %.0229, 1                  ; 2 uses
  %i.asp = zext i32 %.0229 to i64
  %i.asq = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.asp
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !54 ; 2 uses
  %i.ass = zext i8 %i.asr to i64
  %i.ast = icmp eq i8 %i.asr, -1
  br i1 %i.ast, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %.preheader402
  %i.asu = add i32 %.0229, 2
  %i.asv = zext i32 %i.aso to i64
  %i.asw = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.asv
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !54
  %i.asy = zext i8 %i.asx to i64
  %i.asz = add nuw nsw i64 %i.asy, 255
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.preheader402
  %.1230 = phi i32 [ %i.asu, %bb.dc ], [ %i.aso, %.preheader402 ] ; 2 uses
  %.0228 = phi i64 [ %i.asz, %bb.dc ], [ %i.ass, %.preheader402 ] ; 2 uses
  %i.ata = icmp eq i32 %.0237, 0
  br i1 %i.ata, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.atb = add i32 %.0235, 1
  %i.atc = zext i32 %.0235 to i64
  %i.atd = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.atc
  %i.ate = load i8, ptr %i.atd, align 1, !tbaa !54
  %i.atf = zext i8 %i.ate to i64                  ; 2 uses
  %i.atg = getelementptr inbounds nuw [258 x i8], ptr %i.np, i64 %i.atf
  %i.ath = getelementptr inbounds nuw [1032 x i8], ptr %i.ns, i64 %i.atf
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.1238 = phi i32 [ 50, %bb.de ], [ %.0237, %bb.dd ]
  %.1236 = phi i32 [ %i.atb, %bb.de ], [ %.0235, %bb.dd ]
  %.1234 = phi ptr [ %i.atg, %bb.de ], [ %.0233, %bb.dd ] ; 2 uses
  %.1232 = phi ptr [ %i.ath, %bb.de ], [ %.0231, %bb.dd ] ; 2 uses
  %i.ati = add nsw i32 %.1238, -1
  %i.atj = load ptr, ptr %i.f, align 8, !tbaa !71 ; 5 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %.1234, i64 %.0228
  %i.atl = load i8, ptr %i.atk, align 1, !tbaa !54 ; 2 uses
  %.not396 = icmp eq i8 %i.atl, 0
  br i1 %.not396, label %_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit, label %.lr.ph.i388

.lr.ph.i388:                                      ; preds = %bb.df
  %i.atm = zext i8 %i.atl to i32
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %.1232, i64 %.0228
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !4
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atj, i64 4 ; 3 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atj, i64 8 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atj, i64 16
  %.pre.i = load i32, ptr %i.atp, align 4, !tbaa !69
  br label %bb.dg

bb.dg:                                            ; preds = %bb.di, %.lr.ph.i388
  %i.ats = phi i32 [ %.pre.i, %.lr.ph.i388 ], [ %i.auj, %bb.di ] ; 3 uses
  %.014.i = phi i32 [ %i.ato, %.lr.ph.i388 ], [ %i.auc, %bb.di ] ; 2 uses
  %.01213.i = phi i32 [ %i.atm, %.lr.ph.i388 ], [ %i.atu, %bb.di ] ; 3 uses
  %i.att = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i, i32 %i.ats) ; 3 uses
  %i.atu = sub nsw i32 %.01213.i, %i.att          ; 4 uses
  %i.atv = load i8, ptr %i.atq, align 8, !tbaa !70
  %i.atw = zext i8 %i.atv to i32
  %i.atx = shl i32 %i.atw, %i.att
  %i.aty = lshr i32 %.014.i, %i.atu               ; 2 uses
  %i.atz = or i32 %i.atx, %i.aty
  %i.aua = trunc i32 %i.atz to i8                 ; 2 uses
  store i8 %i.aua, ptr %i.atq, align 8, !tbaa !70
  %i.aub = shl i32 %i.aty, %i.atu
  %i.auc = sub i32 %.014.i, %i.aub
  %i.aud = sub nsw i32 %i.ats, %i.att             ; 2 uses
  store i32 %i.aud, ptr %i.atp, align 4, !tbaa !69
  %.not.i389 = icmp sgt i32 %i.ats, %.01213.i
  br i1 %.not.i389, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aue = load ptr, ptr %i.atr, align 8, !tbaa !66
  %i.auf = load i32, ptr %i.atj, align 8, !tbaa !68 ; 2 uses
  %i.aug = add i32 %i.auf, 1
  store i32 %i.aug, ptr %i.atj, align 8, !tbaa !68
  %i.auh = zext i32 %i.auf to i64
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aue, i64 %i.auh
  store i8 %i.aua, ptr %i.aui, align 1, !tbaa !54
  store i32 8, ptr %i.atp, align 4, !tbaa !69
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.auj = phi i32 [ 8, %bb.dh ], [ %i.aud, %bb.dg ]
  %i.auk = icmp sgt i32 %i.atu, 0
  br i1 %i.auk, label %bb.dg, label %_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit, !llvm.loop !99

_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit: ; preds = %bb.di, %bb.df
  %i.aul = icmp ult i32 %.1230, %i.hn
  br i1 %i.aul, label %.preheader402, label %bb.dj, !llvm.loop !159

bb.dj:                                            ; preds = %_ZN9NCompress6NBZip216CMsbfEncoderTemp9WriteBitsEji.exit
  %i.aum = load i8, ptr %i.nf, align 8, !tbaa !115, !range !48, !noundef !49
  %i.aun = trunc nuw i8 %i.aum to i1
  br i1 %i.aun, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.auo = load ptr, ptr %i.f, align 8, !tbaa !71 ; 3 uses
  %i.aup = load i32, ptr %i.auo, align 8, !tbaa !68
  %i.auq = shl i32 %i.aup, 3
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auo, i64 4
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !69 ; 2 uses
  %i.aut = add i32 %reass.sub1.i, %i.aus
  %i.auu = sub i32 %i.auq, %i.aut                 ; 2 uses
  %.not332 = icmp ugt i32 %i.auu, %.0292457
  br i1 %.not332, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.auv = icmp eq i32 %.0299456, 6
  br i1 %i.auv, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.3295.ph = phi i32 [ %.0292457, %bb.dk ], [ %i.auu, %bb.dl ]
  %.3288.ph = phi i32 [ %.0285458, %bb.dk ], [ %.0299456, %bb.dl ]
  %i.auw = add nuw nsw i32 %.0299456, 1           ; 2 uses
  %exitcond574.not = icmp eq i32 %i.auw, 8
  br i1 %exitcond574.not, label %bb.dn, label %bb.x, !llvm.loop !160

bb.dn:                                            ; preds = %bb.dj, %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

declare i32 @BlockSort(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @Huffman_Generate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip211CThreadInfo22EncodeBlockWithHeadersEPKhj(ptr noundef nonnull align 8 dereferenceable(36688) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre.i.i.i = load i32, ptr %i.c, align 4, !tbaa !69
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.f = phi i32 [ %.pre.i.i.i, %bb.a ], [ %i.w, %bb.d ] ; 3 uses
  %.014.i.i.i = phi i32 [ 49, %bb.a ], [ %i.p, %bb.d ] ; 2 uses
  %.01213.i.i.i = phi i32 [ 8, %bb.a ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i, i32 %i.f) ; 3 uses
  %i.h = sub nsw i32 %.01213.i.i.i, %i.g          ; 4 uses
  %i.i = load i8, ptr %i.d, align 8, !tbaa !70
  %i.j = zext i8 %i.i to i32
  %i.k = shl i32 %i.j, %i.g
  %i.l = lshr i32 %.014.i.i.i, %i.h               ; 2 uses
  %i.m = or i32 %i.k, %i.l
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  store i8 %i.n, ptr %i.d, align 8, !tbaa !70
  %i.o = shl i32 %i.l, %i.h
  %i.p = sub i32 %.014.i.i.i, %i.o
  %i.q = sub nsw i32 %i.f, %i.g                   ; 2 uses
  store i32 %i.q, ptr %i.c, align 4, !tbaa !69
  %.not.i.i.i = icmp sgt i32 %i.f, %.01213.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.s = load i32, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.b, align 8, !tbaa !68
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  store i8 %i.n, ptr %i.v, align 1, !tbaa !54
  store i32 8, ptr %i.c, align 4, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi i32 [ 8, %bb.c ], [ %i.q, %bb.b ]
  %i.x = icmp sgt i32 %i.h, 0
  br i1 %i.x, label %bb.b, label %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit: ; preds = %bb.d
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !71   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.pre.i.i.i25 = load i32, ptr %i.z, align 4, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit
  %i.ac = phi i32 [ %.pre.i.i.i25, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit ], [ %i.at, %bb.g ] ; 3 uses
  %.014.i.i.i26 = phi i32 [ 65, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit ], [ %i.am, %bb.g ] ; 2 uses
  %.01213.i.i.i27 = phi i32 [ 8, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit ], [ %i.ae, %bb.g ] ; 3 uses
  %i.ad = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i27, i32 %i.ac) ; 3 uses
  %i.ae = sub nsw i32 %.01213.i.i.i27, %i.ad      ; 4 uses
  %i.af = load i8, ptr %i.aa, align 8, !tbaa !70
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl i32 %i.ag, %i.ad
  %i.ai = lshr i32 %.014.i.i.i26, %i.ae           ; 2 uses
  %i.aj = or i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i8                   ; 2 uses
  store i8 %i.ak, ptr %i.aa, align 8, !tbaa !70
  %i.al = shl i32 %i.ai, %i.ae
  %i.am = sub i32 %.014.i.i.i26, %i.al
  %i.an = sub nsw i32 %i.ac, %i.ad                ; 2 uses
  store i32 %i.an, ptr %i.z, align 4, !tbaa !69
  %.not.i.i.i28 = icmp sgt i32 %i.ac, %.01213.i.i.i27
  br i1 %.not.i.i.i28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !66
  %i.ap = load i32, ptr %i.y, align 8, !tbaa !68  ; 2 uses
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.y, align 8, !tbaa !68
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  store i8 %i.ak, ptr %i.as, align 1, !tbaa !54
  store i32 8, ptr %i.z, align 4, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.at = phi i32 [ 8, %bb.f ], [ %i.an, %bb.e ]
  %i.au = icmp sgt i32 %i.ae, 0
  br i1 %i.au, label %bb.e, label %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit29, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit29: ; preds = %bb.g
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !71  ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.pre.i.i.i30 = load i32, ptr %i.aw, align 4, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit29
  %i.az = phi i32 [ %.pre.i.i.i30, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit29 ], [ %i.bq, %bb.j ] ; 3 uses
  %.014.i.i.i31 = phi i32 [ 89, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit29 ], [ %i.bj, %bb.j ] ; 2 uses
  %.01213.i.i.i32 = phi i32 [ 8, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit29 ], [ %i.bb, %bb.j ] ; 3 uses
  %i.ba = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i32, i32 %i.az) ; 3 uses
  %i.bb = sub nsw i32 %.01213.i.i.i32, %i.ba      ; 4 uses
  %i.bc = load i8, ptr %i.ax, align 8, !tbaa !70
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl i32 %i.bd, %i.ba
  %i.bf = lshr i32 %.014.i.i.i31, %i.bb           ; 2 uses
  %i.bg = or i32 %i.be, %i.bf
  %i.bh = trunc i32 %i.bg to i8                   ; 2 uses
  store i8 %i.bh, ptr %i.ax, align 8, !tbaa !70
  %i.bi = shl i32 %i.bf, %i.bb
  %i.bj = sub i32 %.014.i.i.i31, %i.bi
  %i.bk = sub nsw i32 %i.az, %i.ba                ; 2 uses
  store i32 %i.bk, ptr %i.aw, align 4, !tbaa !69
  %.not.i.i.i33 = icmp sgt i32 %i.az, %.01213.i.i.i32
  br i1 %.not.i.i.i33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !66
  %i.bm = load i32, ptr %i.av, align 8, !tbaa !68 ; 2 uses
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.av, align 8, !tbaa !68
  %i.bo = zext i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !54
  store i32 8, ptr %i.aw, align 4, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bq = phi i32 [ 8, %bb.i ], [ %i.bk, %bb.h ]
  %i.br = icmp sgt i32 %i.bb, 0
  br i1 %i.br, label %bb.h, label %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit34, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit34: ; preds = %bb.j
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !71  ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.pre.i.i.i35 = load i32, ptr %i.bt, align 4, !tbaa !69
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit34
  %i.bw = phi i32 [ %.pre.i.i.i35, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit34 ], [ %i.cn, %bb.m ] ; 3 uses
  %.014.i.i.i36 = phi i32 [ 38, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit34 ], [ %i.cg, %bb.m ] ; 2 uses
  %.01213.i.i.i37 = phi i32 [ 8, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit34 ], [ %i.by, %bb.m ] ; 3 uses
  %i.bx = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i37, i32 %i.bw) ; 3 uses
  %i.by = sub nsw i32 %.01213.i.i.i37, %i.bx      ; 4 uses
  %i.bz = load i8, ptr %i.bu, align 8, !tbaa !70
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl i32 %i.ca, %i.bx
  %i.cc = lshr i32 %.014.i.i.i36, %i.by           ; 2 uses
  %i.cd = or i32 %i.cb, %i.cc
  %i.ce = trunc i32 %i.cd to i8                   ; 2 uses
  store i8 %i.ce, ptr %i.bu, align 8, !tbaa !70
  %i.cf = shl i32 %i.cc, %i.by
  %i.cg = sub i32 %.014.i.i.i36, %i.cf
  %i.ch = sub nsw i32 %i.bw, %i.bx                ; 2 uses
  store i32 %i.ch, ptr %i.bt, align 4, !tbaa !69
  %.not.i.i.i38 = icmp sgt i32 %i.bw, %.01213.i.i.i37
  br i1 %.not.i.i.i38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !66
  %i.cj = load i32, ptr %i.bs, align 8, !tbaa !68 ; 2 uses
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.bs, align 8, !tbaa !68
  %i.cl = zext i32 %i.cj to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cl
  store i8 %i.ce, ptr %i.cm, align 1, !tbaa !54
  store i32 8, ptr %i.bt, align 4, !tbaa !69
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cn = phi i32 [ 8, %bb.l ], [ %i.ch, %bb.k ]
  %i.co = icmp sgt i32 %i.by, 0
  br i1 %i.co, label %bb.k, label %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit39, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit39: ; preds = %bb.m
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !71  ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.pre.i.i.i40 = load i32, ptr %i.cq, align 4, !tbaa !69
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit39
  %i.ct = phi i32 [ %.pre.i.i.i40, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit39 ], [ %i.dk, %bb.p ] ; 3 uses
  %.014.i.i.i41 = phi i32 [ 83, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit39 ], [ %i.dd, %bb.p ] ; 2 uses
  %.01213.i.i.i42 = phi i32 [ 8, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit39 ], [ %i.cv, %bb.p ] ; 3 uses
  %i.cu = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i42, i32 %i.ct) ; 3 uses
  %i.cv = sub nsw i32 %.01213.i.i.i42, %i.cu      ; 4 uses
  %i.cw = load i8, ptr %i.cr, align 8, !tbaa !70
  %i.cx = zext i8 %i.cw to i32
  %i.cy = shl i32 %i.cx, %i.cu
  %i.cz = lshr i32 %.014.i.i.i41, %i.cv           ; 2 uses
  %i.da = or i32 %i.cy, %i.cz
  %i.db = trunc i32 %i.da to i8                   ; 2 uses
  store i8 %i.db, ptr %i.cr, align 8, !tbaa !70
  %i.dc = shl i32 %i.cz, %i.cv
  %i.dd = sub i32 %.014.i.i.i41, %i.dc
  %i.de = sub nsw i32 %i.ct, %i.cu                ; 2 uses
  store i32 %i.de, ptr %i.cq, align 4, !tbaa !69
  %.not.i.i.i43 = icmp sgt i32 %i.ct, %.01213.i.i.i42
  br i1 %.not.i.i.i43, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = load ptr, ptr %i.cs, align 8, !tbaa !66
  %i.dg = load i32, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr %i.cp, align 8, !tbaa !68
  %i.di = zext i32 %i.dg to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.di
  store i8 %i.db, ptr %i.dj, align 1, !tbaa !54
  store i32 8, ptr %i.cq, align 4, !tbaa !69
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dk = phi i32 [ 8, %bb.o ], [ %i.de, %bb.n ]
  %i.dl = icmp sgt i32 %i.cv, 0
  br i1 %i.dl, label %bb.n, label %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit44, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit44: ; preds = %bb.p
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !71  ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.pre.i.i.i45 = load i32, ptr %i.dn, align 4, !tbaa !69
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit44
  %i.dq = phi i32 [ %.pre.i.i.i45, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit44 ], [ %i.eh, %bb.s ] ; 3 uses
  %.014.i.i.i46 = phi i32 [ 89, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit44 ], [ %i.ea, %bb.s ] ; 2 uses
  %.01213.i.i.i47 = phi i32 [ 8, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit44 ], [ %i.ds, %bb.s ] ; 3 uses
  %i.dr = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i.i47, i32 %i.dq) ; 3 uses
  %i.ds = sub nsw i32 %.01213.i.i.i47, %i.dr      ; 4 uses
  %i.dt = load i8, ptr %i.do, align 8, !tbaa !70
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl i32 %i.du, %i.dr
  %i.dw = lshr i32 %.014.i.i.i46, %i.ds           ; 2 uses
  %i.dx = or i32 %i.dv, %i.dw
  %i.dy = trunc i32 %i.dx to i8                   ; 2 uses
  store i8 %i.dy, ptr %i.do, align 8, !tbaa !70
  %i.dz = shl i32 %i.dw, %i.ds
  %i.ea = sub i32 %.014.i.i.i46, %i.dz
  %i.eb = sub nsw i32 %i.dq, %i.dr                ; 2 uses
  store i32 %i.eb, ptr %i.dn, align 4, !tbaa !69
  %.not.i.i.i48 = icmp sgt i32 %i.dq, %.01213.i.i.i47
  br i1 %.not.i.i.i48, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ec = load ptr, ptr %i.dp, align 8, !tbaa !66
  %i.ed = load i32, ptr %i.dm, align 8, !tbaa !68 ; 2 uses
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.dm, align 8, !tbaa !68
  %i.ef = zext i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ef
  store i8 %i.dy, ptr %i.eg, align 1, !tbaa !54
  store i32 8, ptr %i.dn, align 4, !tbaa !69
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.eh = phi i32 [ 8, %bb.r ], [ %i.eb, %bb.q ]
  %i.ei = icmp sgt i32 %i.ds, 0
  br i1 %i.ei, label %bb.q, label %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit49, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit49: ; preds = %bb.s
  %i.ej = load i8, ptr %1, align 1, !tbaa !54
  %umax = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  %wide.trip.count = zext i32 %umax to i64
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit49
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit49 ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %.sroa.0.2, %.loopexit ], [ -1, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit49 ] ; 6 uses
  %.020 = phi i8 [ %.222, %.loopexit ], [ %i.ej, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit49 ] ; 5 uses
  %.0 = phi i32 [ %.2, %.loopexit ], [ 0, %_ZN9NCompress6NBZip211CThreadInfo10WriteByte2Eh.exit49 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !54  ; 8 uses
  %i.em = icmp eq i32 %.0, 4
  br i1 %i.em, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.t
  %.not52 = icmp eq i8 %i.el, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.en = zext i8 %.020 to i32                    ; 3 uses
  %xtraiter = and i8 %i.el, 1
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.eo = lshr i32 %.sroa.0.0, 24
  %i.ep = xor i32 %i.eo, %i.en
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr @_ZN9CBZip2Crc5TableE, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !4
  %i.et = shl i32 %.sroa.0.0, 8
  %i.eu = xor i32 %i.es, %i.et                    ; 2 uses
  %i.ev = add nsw i8 %i.el, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa.unr = phi i32 [ poison, %.lr.ph ], [ %i.eu, %.prol.loopexit.unr-lcssa ]
  %.01854.unr = phi i8 [ %i.el, %.lr.ph ], [ %i.ev, %.prol.loopexit.unr-lcssa ]
  %.sroa.0.153.unr = phi i32 [ %.sroa.0.0, %.lr.ph ], [ %i.eu, %.prol.loopexit.unr-lcssa ]
  %i.ew = icmp eq i8 %i.el, 1
  br i1 %i.ew, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.01854 = phi i8 [ %i.fl, %.lr.ph.new ], [ %.01854.unr, %.prol.loopexit ]
  %.sroa.0.153 = phi i32 [ %i.fk, %.lr.ph.new ], [ %.sroa.0.153.unr, %.prol.loopexit ] ; 2 uses
  %i.ex = lshr i32 %.sroa.0.153, 24
  %i.ey = xor i32 %i.ex, %i.en
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr @_ZN9CBZip2Crc5TableE, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fc = shl i32 %.sroa.0.153, 8
  %i.fd = xor i32 %i.fb, %i.fc                    ; 2 uses
  %i.fe = lshr i32 %i.fd, 24
  %i.ff = xor i32 %i.fe, %i.en
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr @_ZN9CBZip2Crc5TableE, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.fj = shl i32 %i.fd, 8
  %i.fk = xor i32 %i.fi, %i.fj                    ; 2 uses
  %i.fl = add i8 %.01854, -2                      ; 2 uses
  %.not.1 = icmp eq i8 %i.fl, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph.new, !llvm.loop !161

bb.u:                                             ; preds = %bb.t
  %i.fm = icmp eq i8 %.020, %i.el
  %i.fn = add nsw i32 %.0, 1
  %.1 = select i1 %i.fm, i32 %i.fn, i32 1
  %i.fo = lshr i32 %.sroa.0.0, 24
  %i.fp = zext i8 %i.el to i32
  %i.fq = xor i32 %i.fo, %i.fp
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr @_ZN9CBZip2Crc5TableE, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !4
  %i.fu = shl i32 %.sroa.0.0, 8
  %i.fv = xor i32 %i.ft, %i.fu
  br label %.loopexit

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %.preheader, %bb.u
  %.sroa.0.2 = phi i32 [ %i.fv, %bb.u ], [ %.sroa.0.0, %.preheader ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.fk, %.lr.ph.new ] ; 2 uses
  %.222 = phi i8 [ %i.el, %bb.u ], [ %.020, %.preheader ], [ %.020, %.lr.ph.new ], [ %.020, %.prol.loopexit ]
  %.2 = phi i32 [ %.1, %bb.u ], [ 0, %.preheader ], [ 0, %.lr.ph.new ], [ 0, %.prol.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.v, label %bb.t, !llvm.loop !162

bb.v:                                             ; preds = %.loopexit
  %i.fw = xor i32 %.sroa.0.2, -1                  ; 2 uses
  tail call void @_ZN9NCompress6NBZip211CThreadInfo9WriteCrc2Ej(ptr noundef nonnull align 8 dereferenceable(36688) %0, i32 noundef %i.fw)
  tail call void @_ZN9NCompress6NBZip211CThreadInfo11EncodeBlockEPKhj(ptr noundef nonnull align 8 dereferenceable(36688) %0, ptr noundef nonnull %1, i32 noundef %2)
  ret i32 %i.fw
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock2EPKhjj(ptr noundef nonnull align 8 dereferenceable(36688) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36072 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !68   ; 12 uses
  %i.f = shl i32 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !69
  %reass.sub1.i = sub i32 %i.f, %i.h              ; 4 uses
  %i.i = add i32 %reass.sub1.i, 8                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !70
  %i.l = icmp ugt i32 %3, 1
  %i.m = icmp ugt i32 %2, 1023
  %or.cond = and i1 %i.m, %i.l
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.n = zext i32 %2 to i64                       ; 3 uses
  %i.o = lshr i64 %i.n, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %i.o, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !54
  %i.r = add i64 %indvars.iv, 4294967295
  %i.s = and i64 %i.r, 4294967295
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !54    ; 2 uses
  %i.v = icmp eq i8 %i.q, %i.u
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = add i64 %indvars.iv, 4294967294
  %i.x = and i64 %i.w, 4294967295
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !54
  %i.aa = icmp eq i8 %i.u, %i.z
  %i.ab = icmp ult i64 %indvars.iv, %i.n
  %or.cond67 = and i1 %i.ab, %i.aa
  br i1 %or.cond67, label %bb.f, label %.critedge

bb.e:                                             ; preds = %bb.c
  %.old = icmp ult i64 %indvars.iv, %i.n
  br i1 %.old, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %bb.c, !llvm.loop !163

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.ac = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.ad = icmp ugt i32 %2, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.critedge
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.af = add i32 %3, -1                          ; 2 uses
  tail call void @_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock2EPKhjj(ptr noundef nonnull align 8 dereferenceable(36688) %0, ptr noundef nonnull %1, i32 noundef %i.ac, i32 noundef %i.af)
  %i.ag = sub nuw i32 %2, %i.ac
  tail call void @_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock2EPKhjj(ptr noundef nonnull align 8 dereferenceable(36688) %0, ptr noundef nonnull %i.ae, i32 noundef %i.ag, i32 noundef %i.af)
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !71  ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !68 ; 2 uses
  %i.aj = shl i32 %i.ai, 3                        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !69 ; 2 uses
  %reass.sub1.i68 = sub i32 %i.aj, %i.al          ; 2 uses
  %i.am = add i32 %reass.sub1.i68, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !70
  %i.ap = and i32 %reass.sub1.i68, 7              ; 2 uses
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = sub nuw nsw i32 8, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.as = phi i32 [ %i.al, %bb.h ], [ %i.bj, %bb.k ] ; 3 uses
  %.014.i.i = phi i32 [ 0, %bb.h ], [ %i.bc, %bb.k ] ; 2 uses
  %.01213.i.i = phi i32 [ %i.aq, %bb.h ], [ %i.au, %bb.k ] ; 3 uses
  %i.at = tail call noundef i32 @llvm.smin.i32(i32 %.01213.i.i, i32 %i.as) ; 3 uses
  %i.au = sub nsw i32 %.01213.i.i, %i.at          ; 4 uses
  %i.av = load i8, ptr %i.an, align 8, !tbaa !70
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl i32 %i.aw, %i.at
  %i.ay = lshr i32 %.014.i.i, %i.au               ; 2 uses
  %i.az = or i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i8                   ; 2 uses
  store i8 %i.ba, ptr %i.an, align 8, !tbaa !70
  %i.bb = shl i32 %i.ay, %i.au
  %i.bc = sub i32 %.014.i.i, %i.bb
  %i.bd = sub nsw i32 %i.as, %i.at                ; 2 uses
  store i32 %i.bd, ptr %i.ak, align 4, !tbaa !69
  %.not.i.i = icmp sgt i32 %i.as, %.01213.i.i
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !66
  %i.bf = load i32, ptr %i.ah, align 8, !tbaa !68 ; 2 uses
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ah, align 8, !tbaa !68
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh
  store i8 %i.ba, ptr %i.bi, align 1, !tbaa !54
  store i32 8, ptr %i.ak, align 4, !tbaa !69
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bj = phi i32 [ 8, %bb.j ], [ %i.bd, %bb.i ]
  %i.bk = icmp sgt i32 %i.au, 0
  br i1 %i.bk, label %bb.i, label %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit.loopexit, !llvm.loop !99

_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit.loopexit: ; preds = %bb.k
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !71  ; 2 uses
  %.pre77.pre = load i32, ptr %.pre, align 8, !tbaa !68 ; 2 uses
  %.pre82 = shl i32 %.pre77.pre, 3
  br label %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit

_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit: ; preds = %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit.loopexit, %bb.g
  %.pre80.pre-phi = phi i32 [ %.pre82, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit.loopexit ], [ %i.aj, %bb.g ]
  %.pre77 = phi i32 [ %.pre77.pre, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit.loopexit ], [ %i.ai, %bb.g ]
  %i.bl = phi ptr [ %.pre, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit.loopexit ], [ %i.ah, %bb.g ] ; 2 uses
  %i.bm = and i32 %reass.sub1.i, 7
  %i.bn = sub nuw nsw i32 8, %i.bm                ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i8 %i.k, ptr %i.bp, align 8, !tbaa !70
  %.pre81 = sub i32 %.pre80.pre-phi, %i.bn
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit, %bb.a
  %reass.sub1.i69.pre-phi = phi i32 [ %reass.sub1.i, %.critedge ], [ %.pre81, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit ], [ %reass.sub1.i, %bb.a ] ; 2 uses
  %i.bq = phi i32 [ %i.e, %.critedge ], [ %.pre77, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit ], [ %i.e, %bb.a ] ; 11 uses
  %.161 = phi i32 [ 0, %.critedge ], [ %i.am, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit ], [ 0, %bb.a ] ; 3 uses
  %.159 = phi i8 [ 0, %.critedge ], [ %i.ao, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit ], [ 0, %bb.a ]
  %.1 = phi i1 [ false, %.critedge ], [ true, %_ZN9NCompress6NBZip211CThreadInfo10WriteBits2Ejj.exit ], [ false, %bb.a ]
  %i.br = tail call noundef i32 @_ZN9NCompress6NBZip211CThreadInfo22EncodeBlockWithHeadersEPKhj(ptr noundef nonnull align 8 dereferenceable(36688) %0, ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !71  ; 6 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !68 ; 3 uses
  %i.bu = shl i32 %i.bt, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !69
  %reass.sub1.i70 = sub i32 %i.bu, %i.bw          ; 2 uses
  br i1 %.1, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bx = sub i32 %reass.sub1.i70, %reass.sub1.i69.pre-phi
  %i.by = sub i32 %.161, %i.i
  %i.bz = icmp ult i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !66 ; 14 uses
  %.not73 = icmp eq i32 %i.bt, %i.bq
  br i1 %.not73, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.n
  %i.cc = sub i32 %i.bt, %i.bq                    ; 3 uses
  %wide.trip.count = zext i32 %i.cc to i64        ; 9 uses
  %min.iters.check = icmp ult i32 %i.cc, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cd = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = xor i32 %i.e, -1
  %i.cg = icmp ult i32 %i.cf, %i.ce
  %i.ch = trunc i64 %i.cd to i32
  %i.ci = xor i32 %i.bq, -1
  %i.cj = icmp ult i32 %i.ci, %i.ch
  %i.ck = icmp ugt i64 %i.cd, 4294967295
  %i.cl = or i1 %i.cj, %i.ck
  %i.cm = or i1 %i.cg, %i.cl
  %i.cn = zext i32 %i.e to i64
  %i.co = zext i32 %i.bq to i64
  %i.cp = sub nsw i64 %i.co, %i.cn
  %diff.check = icmp ugt i64 %i.cp, -32
  %or.cond103 = select i1 %i.cm, i1 true, i1 %diff.check
  br i1 %or.cond103, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check92 = icmp ult i32 %i.cc, 32
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = trunc nuw i64 %index to i32             ; 2 uses
  %i.cr = add i32 %i.bq, %i.cq
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <16 x i8>, ptr %i.ct, align 1, !tbaa !54
  %wide.load93 = load <16 x i8>, ptr %i.cu, align 1, !tbaa !54
  %i.cv = add i32 %i.e, %i.cq
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <16 x i8> %wide.load, ptr %i.cx, align 1, !tbaa !54
  store <16 x i8> %wide.load93, ptr %i.cy, align 1, !tbaa !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !147

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec95 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 2 uses
  %i.da = trunc nuw i64 %index96 to i32           ; 2 uses
  %i.db = add i32 %i.bq, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.dc
  %wide.load97 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !54
  %i.de = add i32 %i.e, %i.da
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.df
  store <4 x i8> %wide.load97, ptr %i.dg, align 1, !tbaa !54
  %index.next98 = add nuw i64 %index96, 4         ; 2 uses
  %i.dh = icmp eq i64 %index.next98, %n.vec95
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !165

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %n.vec95, %wide.trip.count
  br i1 %cmp.n99, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv74.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec95, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv74.prol = phi i64 [ %indvars.iv.next75.prol, %.lr.ph.prol ], [ %indvars.iv74.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.di = trunc nuw i64 %indvars.iv74.prol to i32 ; 2 uses
  %i.dj = add i32 %i.bq, %i.di
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !54
  %i.dn = add i32 %i.e, %i.di
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.do
  store i8 %i.dm, ptr %i.dp, align 1, !tbaa !54
  %indvars.iv.next75.prol = add nuw nsw i64 %indvars.iv74.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !166

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv74.unr = phi i64 [ %indvars.iv74.ph, %.lr.ph.preheader ], [ %indvars.iv.next75.prol, %.lr.ph.prol ]
  %i.dq = sub nsw i64 %indvars.iv74.ph, %wide.trip.count
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre78 = load ptr, ptr %i.c, align 8, !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %i.ds = phi ptr [ %.pre78, %._crit_edge.loopexit ], [ %i.bs, %bb.n ] ; 2 uses
  %i.dt = sub i32 %i.i, %reass.sub1.i69.pre-phi
  %i.du = add i32 %i.dt, %reass.sub1.i70          ; 2 uses
  %i.dv = lshr i32 %i.du, 3
  store i32 %i.dv, ptr %i.ds, align 8, !tbaa !68
  %i.dw = and i32 %i.du, 7
  %i.dx = sub nuw nsw i32 8, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !69
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 31976
  %i.ea = add i32 %i.b, 1
  store i32 %i.ea, ptr %i.a, align 8, !tbaa !72
  %i.eb = zext i32 %i.b to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.eb
  store i32 %i.br, ptr %i.ec, align 4, !tbaa !4
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.3, %.lr.ph ], [ %indvars.iv74.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ed = trunc nuw i64 %indvars.iv74 to i32      ; 2 uses
  %i.ee = add i32 %i.bq, %i.ed
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !54
  %i.ei = add i32 %i.e, %i.ed
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ej
  store i8 %i.eh, ptr %i.ek, align 1, !tbaa !54
  %i.el = trunc i64 %indvars.iv74 to i32
  %i.em = add i32 %i.el, 1                        ; 2 uses
  %i.en = add i32 %i.bq, %i.em
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !54
  %i.er = add i32 %i.e, %i.em
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.es
  store i8 %i.eq, ptr %i.et, align 1, !tbaa !54
  %i.eu = trunc i64 %indvars.iv74 to i32
  %i.ev = add i32 %i.eu, 2                        ; 2 uses
  %i.ew = add i32 %i.bq, %i.ev
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !54
  %i.fa = add i32 %i.e, %i.ev
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.fb
  store i8 %i.ez, ptr %i.fc, align 1, !tbaa !54
  %i.fd = trunc i64 %indvars.iv74 to i32
  %i.fe = add i32 %i.fd, 3                        ; 2 uses
  %i.ff = add i32 %i.bq, %i.fe
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !54
  %i.fj = add i32 %i.e, %i.fe
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.fk
  store i8 %i.fi, ptr %i.fl, align 1, !tbaa !54
  %indvars.iv.next75.3 = add nuw nsw i64 %indvars.iv74, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next75.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !167

bb.o:                                             ; preds = %bb.m
  %i.fm = lshr i32 %.161, 3
  store i32 %i.fm, ptr %i.bs, align 8, !tbaa !68
  %i.fn = and i32 %.161, 7
  %i.fo = sub nuw nsw i32 8, %i.fn
  store i32 %i.fo, ptr %i.bv, align 4, !tbaa !69
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i8 %.159, ptr %i.fp, align 8, !tbaa !70
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 31976
  %i.fr = add i32 %i.b, 1
  store i32 %i.fr, ptr %i.a, align 8, !tbaa !72
  %i.fs = zext i32 %i.b to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fs
  store i32 %i.br, ptr %i.ft, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.o, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress6NBZip28CEncoder10WriteBytesEPKhjh(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %2, 3                           ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64
  %.pre.i.pre = load i32, ptr %i.c, align 8, !tbaa !81
  %.pre.pre = load i8, ptr %i.d, align 4, !tbaa !100
  br label %.peel.begin

._crit_edge:                                      ; preds = %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit, %bb.a
  %i.g = zext i8 %3 to i32
  %i.h = and i32 %2, 7
  tail call void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %i.g, i32 noundef %i.h)
  ret void

.peel.begin:                                      ; preds = %.lr.ph, %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit
  %.pre = phi i8 [ %.pre.pre, %.lr.ph ], [ %.pre20, %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit ] ; 2 uses
  %.pre.i = phi i32 [ %.pre.i.pre, %.lr.ph ], [ %.pre.i18, %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !54    ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 3 uses
  %i.l = icmp ugt i32 %.pre.i, 8
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.peel.begin
  %i.m = sub nuw nsw i32 8, %.pre.i               ; 3 uses
  %i.n = lshr i32 %i.k, %i.m                      ; 2 uses
  %i.o = shl nuw nsw i32 %i.n, %i.m
  %i.p = sub nsw i32 %i.k, %i.o
  %i.q = trunc nuw i32 %i.n to i8
  %i.r = or i8 %.pre, %i.q
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.t = load i32, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.e, align 8, !tbaa !88
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  store i8 %i.r, ptr %i.w, align 1, !tbaa !54
  %i.x = load i32, ptr %i.e, align 8, !tbaa !88
  %i.y = load i32, ptr %i.f, align 4, !tbaa !101
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.c, label %_ZN10COutBuffer9WriteByteEh.exit.i.peel

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.b)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i.peel

_ZN10COutBuffer9WriteByteEh.exit.i.peel:          ; preds = %bb.c, %bb.b
  store i32 8, ptr %i.c, align 8, !tbaa !81
  store i8 0, ptr %i.d, align 4, !tbaa !100
  switch i32 %.pre.i, label %.loopexit [
    i32 8, label %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit
    i32 0, label %bb.d
  ]

.loopexit:                                        ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i.peel, %.peel.begin
  %i.aa = phi i8 [ %.pre, %.peel.begin ], [ 0, %_ZN10COutBuffer9WriteByteEh.exit.i.peel ]
  %.lcssa = phi i32 [ %.pre.i, %.peel.begin ], [ 8, %_ZN10COutBuffer9WriteByteEh.exit.i.peel ]
  %.018.i.lcssa = phi i32 [ %i.k, %.peel.begin ], [ %i.p, %_ZN10COutBuffer9WriteByteEh.exit.i.peel ]
  %.01117.i.lcssa = phi i32 [ 8, %.peel.begin ], [ %i.m, %_ZN10COutBuffer9WriteByteEh.exit.i.peel ]
  %i.ab = sub nuw i32 %.lcssa, %.01117.i.lcssa    ; 3 uses
  store i32 %i.ab, ptr %i.c, align 8, !tbaa !81
  %i.ac = shl i32 %.018.i.lcssa, %i.ab
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = or i8 %i.aa, %i.ad
  br label %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.sink.split

bb.d:                                             ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i.peel
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.ag = load i32, ptr %i.e, align 8, !tbaa !88  ; 2 uses
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.e, align 8, !tbaa !88
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  store i8 %i.j, ptr %i.aj, align 1, !tbaa !54
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !88
  %i.al = load i32, ptr %i.f, align 4, !tbaa !101
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.e, label %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.loopexit.loopexit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.b)
  br label %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.loopexit.loopexit

_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.loopexit.loopexit: ; preds = %bb.d, %bb.e
  store i32 8, ptr %i.c, align 8, !tbaa !81
  br label %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.sink.split

_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.sink.split: ; preds = %.loopexit, %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.loopexit.loopexit
  %.sink = phi i8 [ 0, %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.loopexit.loopexit ], [ %i.ae, %.loopexit ] ; 2 uses
  %.pre.i18.ph = phi i32 [ 8, %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.loopexit.loopexit ], [ %i.ab, %.loopexit ]
  store i8 %.sink, ptr %i.d, align 4, !tbaa !100
  br label %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit

_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit: ; preds = %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.sink.split, %_ZN10COutBuffer9WriteByteEh.exit.i.peel
  %.pre20 = phi i8 [ 0, %_ZN10COutBuffer9WriteByteEh.exit.i.peel ], [ %.sink, %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.sink.split ]
  %.pre.i18 = phi i32 [ %.pre.i, %_ZN10COutBuffer9WriteByteEh.exit.i.peel ], [ %.pre.i18.ph, %_ZN12CBitmEncoderI10COutBufferE9WriteBitsEjj.exit.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.begin, !llvm.loop !168
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip28CEncoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(712) initializes((704, 712)) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.NCompress::NBZip2::CEncoder::CFlusher", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %5, ptr %i.c, align 8, !tbaa !80
  %i.d = tail call noundef i32 @_ZN9NCompress6NBZip28CEncoder6CreateEv(ptr noundef nonnull align 8 dereferenceable(712) %0) ; 2 uses
  %.not.not = icmp eq i32 %i.d, 0
  br i1 %.not.not, label %.preheader151, label %.loopexit152

.preheader151:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !62
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader151
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9NCompress6NBZip211CThreadInfo5AllocEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN9NCompress6NBZip211CThreadInfo5AllocEv.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw [36688 x i8], ptr %i.j, i64 %indvars.iv ; 9 uses
  %i.l = load i8, ptr %i.h, align 4, !tbaa !74, !range !48, !noundef !49
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 36112
  %i.o = tail call noundef i32 @Event_Reset(ptr noundef nonnull align 8 dereferenceable(104) %i.n) ; 2 uses
  %.not87 = icmp eq i32 %i.o, 0
  br i1 %.not87, label %bb.d, label %.loopexit152

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 36216
  %i.q = tail call noundef i32 @Event_Reset(ptr noundef nonnull align 8 dereferenceable(104) %i.p) ; 2 uses
  %.not88 = icmp eq i32 %i.q, 0
  br i1 %.not88, label %bb.e, label %.loopexit152

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 36320
  %i.s = tail call noundef i32 @Event_Reset(ptr noundef nonnull align 8 dereferenceable(104) %i.r) ; 2 uses
  %.not89 = icmp eq i32 %i.s, 0
  br i1 %.not89, label %bb.f, label %.loopexit152

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.t = load i8, ptr %i.i, align 8, !tbaa !86, !range !48, !noundef !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 36080
  store i8 %i.t, ptr %i.u, align 8, !tbaa !115
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call ptr @BigAlloc(i64 noundef 7462144) ; 2 uses
  store ptr %i.y, ptr %i.v, align 8, !tbaa !8
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.loopexit152, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.i, label %_ZN9NCompress6NBZip211CThreadInfo5AllocEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call ptr @MidAlloc(i64 noundef 4610480) ; 4 uses
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !23
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.loopexit152, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 900000
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 2700002
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !25
  br label %_ZN9NCompress6NBZip211CThreadInfo5AllocEv.exit

_ZN9NCompress6NBZip211CThreadInfo5AllocEv.exit:   ; preds = %bb.h, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !62
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %_ZN9NCompress6NBZip211CThreadInfo5AllocEv.exit, %.preheader151
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 12 uses
  %i.am = tail call noundef zeroext i1 @_ZN9CInBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(45) %i.al, i32 noundef 131072)
  br i1 %i.am, label %bb.k, label %.loopexit152

bb.k:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 7 uses
  %i.ao = tail call noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(61) %i.an, i32 noundef 131072)
  br i1 %i.ao, label %bb.l, label %.loopexit152

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN9CInBuffer9SetStreamEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(45) %i.al, ptr noundef %1)
  tail call void @_ZN9CInBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(45) %i.al)
  tail call void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(61) %i.an, ptr noundef %2)
  tail call void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(61) %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  store i32 8, ptr %i.ap, align 8, !tbaa !81
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 3 uses
  store i8 0, ptr %i.aq, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %0, ptr %6, align 8, !tbaa !170
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  store i32 0, ptr %i.ar, align 4, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i32 0, ptr %i.as, align 8, !tbaa !60
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 589
  store i8 0, ptr %i.at, align 1, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 588
  store i8 0, ptr %i.au, align 4, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.aw = invoke noundef i32 @Event_Reset(ptr noundef nonnull align 8 dereferenceable(104) %i.av)
          to label %_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit unwind label %bb.n ; 0 uses

_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit: ; preds = %bb.l
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef 66, i32 noundef 8)
          to label %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit unwind label %bb.n

_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit:   ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef 90, i32 noundef 8)
          to label %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit98 unwind label %bb.n

_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit98: ; preds = %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef 104, i32 noundef 8)
          to label %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit99 unwind label %bb.n

_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit99: ; preds = %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit98
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !55
  %i.az = add i32 %i.ay, 48
  %i.ba = and i32 %i.az, 255
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %i.ba, i32 noundef 8)
          to label %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit100 unwind label %bb.n

_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit100: ; preds = %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit99
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !74, !range !48, !noundef !49
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  br i1 %i.bd, label %bb.m, label %.preheader

.preheader:                                       ; preds = %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit100
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not91 = icmp eq ptr %5, null
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %select.unfold

bb.m:                                             ; preds = %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit100
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !75
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 36320
  %i.bk = invoke noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.bj)
          to label %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit unwind label %bb.n ; 0 uses

_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit: ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !65
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.bn = invoke noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.bm)
          to label %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit101.preheader unwind label %bb.n ; 0 uses

_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit101.preheader: ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit
  %i.bo = load i32, ptr %i.e, align 8, !tbaa !62
  %.not159 = icmp eq i32 %i.bo, 0
  br i1 %.not159, label %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit101._crit_edge, label %.lr.ph156

.lr.ph156:                                        ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit101.preheader, %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit ], [ 0, %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit101.preheader ] ; 2 uses
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !75
  %i.bq = getelementptr inbounds nuw [36688 x i8], ptr %i.bp, i64 %indvars.iv162
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 36112
  %i.bs = invoke noundef i32 @Event_Wait(ptr noundef nonnull align 8 dereferenceable(104) %i.br)
          to label %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit: ; preds = %.lr.ph156
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.bt = load i32, ptr %i.e, align 8, !tbaa !62
  %i.bu = zext i32 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next163, %i.bu
  br i1 %i.bv, label %.lr.ph156, label %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit101._crit_edge, !llvm.loop !172

bb.n:                                             ; preds = %_ZN12CBitmEncoderI10COutBufferE5FlushEv.exit.i, %bb.ah, %.noexc122, %.noexc121, %.noexc120, %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit119, %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit117, %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit115, %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit113, %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit111, %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit109, %.thread141, %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit, %bb.m, %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit99, %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit98, %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit, %_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit, %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph158
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph156
  %lpad.loopexit144 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit103._crit_edge, %_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit102, %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit101._crit_edge
  %lpad.loopexit.split-lp145 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit101._crit_edge: ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit, %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit101.preheader
  %i.bx = invoke noundef i32 @Event_Reset(ptr noundef nonnull align 8 dereferenceable(104) %i.bm)
          to label %_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit102 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit102: ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit101._crit_edge
  %i.by = invoke noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.av)
          to label %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit103.preheader unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit103.preheader: ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit102
  %i.bz = load i32, ptr %i.e, align 8, !tbaa !62
  %.not160 = icmp eq i32 %i.bz, 0
  br i1 %.not160, label %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit103._crit_edge, label %.lr.ph158

.lr.ph158:                                        ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit103.preheader, %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit104
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit104 ], [ 0, %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit103.preheader ] ; 2 uses
  %i.ca = load ptr, ptr %i.be, align 8, !tbaa !75
  %i.cb = getelementptr inbounds nuw [36688 x i8], ptr %i.ca, i64 %indvars.iv165
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 36216
  %i.cd = invoke noundef i32 @Event_Wait(ptr noundef nonnull align 8 dereferenceable(104) %i.cc)
          to label %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit104 unwind label %.loopexit ; 0 uses

_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit104: ; preds = %.lr.ph158
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %i.ce = load i32, ptr %i.e, align 8, !tbaa !62
  %i.cf = zext i32 %i.ce to i64
  %i.cg = icmp samesign ult i64 %indvars.iv.next166, %i.cf
  br i1 %i.cg, label %.lr.ph158, label %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit103._crit_edge, !llvm.loop !173

_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit103._crit_edge: ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent4LockEv.exit104, %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit103.preheader
  %i.ch = invoke noundef i32 @Event_Reset(ptr noundef nonnull align 8 dereferenceable(104) %i.av)
          to label %_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit105 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit105: ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit103._crit_edge
  %i.ci = load i32, ptr %i.bl, align 8, !tbaa !65 ; 2 uses
  %.not95 = icmp eq i32 %i.ci, 0
  br i1 %.not95, label %.thread141, label %_ZN9NCompress6NBZip28CEncoder5FlushEv.exit

select.unfold:                                    ; preds = %select.unfold.backedge, %.preheader
  %i.cj = load ptr, ptr %i.be, align 8, !tbaa !75 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !23 ; 4 uses
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !52 ; 2 uses
  %i.cm = load ptr, ptr %i.bf, align 8, !tbaa !53
  %.not.i.i = icmp ult ptr %i.cl, %i.cm
  br i1 %.not.i.i, label %.lr.ph.preheader.i, label %bb.o

bb.o:                                             ; preds = %select.unfold
  %i.cn = invoke noundef zeroext i1 @_ZN9CInBuffer9ReadBlockEv(ptr noundef nonnull align 8 dereferenceable(45) %i.al)
          to label %.noexc unwind label %.loopexit.split-lp148

.noexc:                                           ; preds = %bb.o
  br i1 %i.cn, label %._crit_edge.i.i, label %.thread141

._crit_edge.i.i:                                  ; preds = %.noexc
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !52
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i.i, %select.unfold
  %i.co = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.cl, %select.unfold ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store ptr %i.cp, ptr %i.al, align 8, !tbaa !52
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !54  ; 2 uses
  %i.cr = load i32, ptr %i.ax, align 4, !tbaa !55
  %i.cs = mul i32 %i.cr, 100000
  %i.ct = add i32 %i.cs, -1
  store i8 %i.cq, ptr %i.ck, align 1, !tbaa !54
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN9CInBuffer8ReadByteERh.exit35.i, %.lr.ph.preheader.i
  %.02458.i = phi i32 [ %.2.i, %_ZN9CInBuffer8ReadByteERh.exit35.i ], [ 1, %.lr.ph.preheader.i ] ; 5 uses
  %.02557.i = phi i32 [ %.328.i, %_ZN9CInBuffer8ReadByteERh.exit35.i ], [ 1, %.lr.ph.preheader.i ] ; 7 uses
  %.04056.i = phi i8 [ %.141.i, %_ZN9CInBuffer8ReadByteERh.exit35.i ], [ %i.cq, %.lr.ph.preheader.i ] ; 5 uses
  %i.cu = load ptr, ptr %i.al, align 8, !tbaa !52 ; 2 uses
  %i.cv = load ptr, ptr %i.bf, align 8, !tbaa !53
  %.not.i31.i = icmp ult ptr %i.cu, %i.cv
  br i1 %.not.i31.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.cw = invoke noundef zeroext i1 @_ZN9CInBuffer9ReadBlockEv(ptr noundef nonnull align 8 dereferenceable(45) %i.al)
          to label %.noexc106 unwind label %.loopexit147

.noexc106:                                        ; preds = %bb.p
  br i1 %i.cw, label %._crit_edge.i33.i, label %_ZN9CInBuffer8ReadByteERh.exit35.thread50.i

._crit_edge.i33.i:                                ; preds = %.noexc106
  %.pre.i34.i = load ptr, ptr %i.al, align 8, !tbaa !52
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i33.i, %.lr.ph.i
  %i.cx = phi ptr [ %.pre.i34.i, %._crit_edge.i33.i ], [ %i.cu, %.lr.ph.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store ptr %i.cy, ptr %i.al, align 8, !tbaa !52
  %i.cz = load i8, ptr %i.cx, align 1, !tbaa !54  ; 5 uses
  %.not.i = icmp eq i8 %i.cz, %.04056.i
  br i1 %.not.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = icmp sgt i32 %.02458.i, 3
  br i1 %i.da, label %bb.s, label %_ZN9CInBuffer8ReadByteERh.exit35.sink.split.i, !llvm.loop !56

bb.s:                                             ; preds = %bb.r
  %i.db = trunc i32 %.02458.i to i8
  %i.dc = add i8 %i.db, -4
  %i.dd = add nuw i32 %.02557.i, 1
  %i.de = zext i32 %.02557.i to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.de
  store i8 %i.dc, ptr %i.df, align 1, !tbaa !54
  br label %_ZN9CInBuffer8ReadByteERh.exit35.sink.split.i, !llvm.loop !56

bb.t:                                             ; preds = %bb.q
  %i.dg = add nsw i32 %.02458.i, 1                ; 3 uses
  %i.dh = icmp slt i32 %.02458.i, 4
  br i1 %i.dh, label %_ZN9CInBuffer8ReadByteERh.exit35.sink.split.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = icmp eq i32 %i.dg, 259
  br i1 %i.di, label %_ZN9CInBuffer8ReadByteERh.exit35.sink.split.i, label %_ZN9CInBuffer8ReadByteERh.exit35.i

_ZN9CInBuffer8ReadByteERh.exit35.sink.split.i:    ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.02557.sink67.i = phi i32 [ %.02557.i, %bb.r ], [ %.02557.i, %bb.t ], [ %i.dd, %bb.s ], [ %.02557.i, %bb.u ] ; 2 uses
  %.04056.sink.i = phi i8 [ %i.cz, %bb.r ], [ %.04056.i, %bb.t ], [ %i.cz, %bb.s ], [ -1, %bb.u ]
  %.141.ph.i = phi i8 [ %i.cz, %bb.r ], [ %.04056.i, %bb.t ], [ %i.cz, %bb.s ], [ %.04056.i, %bb.u ]
  %.2.ph.i = phi i32 [ 1, %bb.r ], [ %i.dg, %bb.t ], [ 1, %bb.s ], [ 0, %bb.u ]
  %i.dj = add i32 %.02557.sink67.i, 1
  %i.dk = zext i32 %.02557.sink67.i to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.dk
  store i8 %.04056.sink.i, ptr %i.dl, align 1, !tbaa !54
  br label %_ZN9CInBuffer8ReadByteERh.exit35.i

_ZN9CInBuffer8ReadByteERh.exit35.i:               ; preds = %_ZN9CInBuffer8ReadByteERh.exit35.sink.split.i, %bb.u
  %.141.i = phi i8 [ %.04056.i, %bb.u ], [ %.141.ph.i, %_ZN9CInBuffer8ReadByteERh.exit35.sink.split.i ]
  %.328.i = phi i32 [ %.02557.i, %bb.u ], [ %i.dj, %_ZN9CInBuffer8ReadByteERh.exit35.sink.split.i ] ; 3 uses
  %.2.i = phi i32 [ %i.dg, %bb.u ], [ %.2.ph.i, %_ZN9CInBuffer8ReadByteERh.exit35.sink.split.i ] ; 2 uses
  %i.dm = icmp ult i32 %.328.i, %i.ct
  br i1 %i.dm, label %.lr.ph.i, label %_ZN9CInBuffer8ReadByteERh.exit35.thread50.i

_ZN9CInBuffer8ReadByteERh.exit35.thread50.i:      ; preds = %_ZN9CInBuffer8ReadByteERh.exit35.i, %.noexc106
  %.025.lcssa.ph.i = phi i32 [ %.328.i, %_ZN9CInBuffer8ReadByteERh.exit35.i ], [ %.02557.i, %.noexc106 ] ; 3 uses
  %.024.lcssa.ph.i = phi i32 [ %.2.i, %_ZN9CInBuffer8ReadByteERh.exit35.i ], [ %.02458.i, %.noexc106 ] ; 2 uses
  %i.dn = icmp sgt i32 %.024.lcssa.ph.i, 3
  br i1 %i.dn, label %bb.v, label %_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh.exit

bb.v:                                             ; preds = %_ZN9CInBuffer8ReadByteERh.exit35.thread50.i
  %i.do = trunc i32 %.024.lcssa.ph.i to i8
  %i.dp = add i8 %i.do, -4
  %i.dq = add i32 %.025.lcssa.ph.i, 1
  %i.dr = zext i32 %.025.lcssa.ph.i to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.dr
  store i8 %i.dp, ptr %i.ds, align 1, !tbaa !54
  br label %_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh.exit

_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh.exit: ; preds = %bb.v, %_ZN9CInBuffer8ReadByteERh.exit35.thread50.i
  %.6.i = phi i32 [ %.025.lcssa.ph.i, %_ZN9CInBuffer8ReadByteERh.exit35.thread50.i ], [ %i.dq, %bb.v ] ; 2 uses
  %i.dt = icmp eq i32 %.6.i, 0
  br i1 %i.dt, label %.thread141, label %bb.w

.loopexit147:                                     ; preds = %bb.p
  %lpad.loopexit149 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp148:                            ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.w:                                             ; preds = %_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh.exit
  %i.du = invoke noundef i32 @_ZN9NCompress6NBZip211CThreadInfo12EncodeBlock3Ej(ptr noundef nonnull align 8 dereferenceable(36688) %i.cj, i32 noundef %.6.i)
          to label %bb.x unwind label %bb.y       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %.not90 = icmp eq i32 %i.du, 0
  br i1 %.not90, label %bb.z, label %_ZN9NCompress6NBZip28CEncoder5FlushEv.exit

bb.y:                                             ; preds = %bb.w
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.x
  br i1 %.not91, label %select.unfold.backedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.dw = load i64, ptr %i.bg, align 8, !tbaa !57
  %i.dx = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.dy = load ptr, ptr %i.bh, align 8, !tbaa !58
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = add i64 %i.dw, %i.dz
  %i.ec = sub i64 %i.eb, %i.ea
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ed = invoke noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(61) %i.an)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load i32, ptr %i.ap, align 8, !tbaa !81
  %i.ef = sub i32 15, %i.ee
  %i.eg = lshr i32 %i.ef, 3
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = add i64 %i.ed, %i.eh
  store i64 %i.ei, ptr %i.b, align 8, !tbaa !82
  %i.ej = load ptr, ptr %5, align 8, !tbaa !83
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke noundef i32 %i.el(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.ac unwind label %bb.ae     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %.not94 = icmp eq i32 %i.em, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.not94, label %select.unfold.backedge, label %_ZN9NCompress6NBZip28CEncoder5FlushEv.exit

select.unfold.backedge:                           ; preds = %bb.ac, %bb.z
  br label %select.unfold

bb.ad:                                            ; preds = %bb.aa
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.eo, %bb.ae ], [ %i.en, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.loopexit.split-lp

.thread141:                                       ; preds = %.noexc, %_ZN9NCompress6NBZip28CEncoder12ReadRleBlockEPh.exit, %_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit105
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef 23, i32 noundef 8)
          to label %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit109 unwind label %bb.n

_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit109: ; preds = %.thread141
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef 114, i32 noundef 8)
          to label %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit111 unwind label %bb.n

_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit111: ; preds = %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit109
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef 69, i32 noundef 8)
          to label %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit113 unwind label %bb.n

_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit113: ; preds = %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit111
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef 56, i32 noundef 8)
          to label %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit115 unwind label %bb.n

_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit115: ; preds = %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit113
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef 80, i32 noundef 8)
          to label %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit117 unwind label %bb.n

_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit117: ; preds = %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit115
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef 144, i32 noundef 8)
          to label %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit119 unwind label %bb.n

_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit119: ; preds = %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit117
  %i.ep = load i32, ptr %i.ar, align 4, !tbaa !76 ; 4 uses
  %i.eq = lshr i32 %i.ep, 24
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %i.eq, i32 noundef 8)
          to label %.noexc120 unwind label %bb.n

.noexc120:                                        ; preds = %_ZN9NCompress6NBZip28CEncoder9WriteByteEh.exit119
  %i.er = lshr i32 %i.ep, 16
  %i.es = and i32 %i.er, 255
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %i.es, i32 noundef 8)
          to label %.noexc121 unwind label %bb.n

.noexc121:                                        ; preds = %.noexc120
  %i.et = lshr i32 %i.ep, 8
  %i.eu = and i32 %i.et, 255
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %i.eu, i32 noundef 8)
          to label %.noexc122 unwind label %bb.n

.noexc122:                                        ; preds = %.noexc121
  %i.ev = and i32 %i.ep, 255
  invoke void @_ZN9NCompress6NBZip28CEncoder9WriteBitsEjj(ptr noundef nonnull align 8 dereferenceable(712) %0, i32 noundef %i.ev, i32 noundef 8)
          to label %_ZN9NCompress6NBZip28CEncoder8WriteCrcEj.exit unwind label %bb.n

_ZN9NCompress6NBZip28CEncoder8WriteCrcEj.exit:    ; preds = %.noexc122
  %i.ew = load i32, ptr %i.ap, align 8, !tbaa !81
  %i.ex = add i32 %i.ew, -8
  %or.cond.i.i = icmp ult i32 %i.ex, -7
  br i1 %or.cond.i.i, label %_ZN12CBitmEncoderI10COutBufferE5FlushEv.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN9NCompress6NBZip28CEncoder8WriteCrcEj.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.fa = load i8, ptr %i.aq, align 4, !tbaa !100
  %i.fb = load ptr, ptr %i.an, align 8, !tbaa !87
  %i.fc = load i32, ptr %i.ez, align 8, !tbaa !88 ; 2 uses
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.ez, align 8, !tbaa !88
  %i.fe = zext i32 %i.fc to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  store i8 %i.fa, ptr %i.ff, align 1, !tbaa !54
  %i.fg = load i32, ptr %i.ez, align 8, !tbaa !88
  %i.fh = load i32, ptr %i.ey, align 4, !tbaa !101
  %i.fi = icmp eq i32 %i.fg, %i.fh
  br i1 %i.fi, label %bb.ah, label %_ZN10COutBuffer9WriteByteEh.exit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(61) %i.an)
          to label %_ZN10COutBuffer9WriteByteEh.exit.i.i.i unwind label %bb.n

_ZN10COutBuffer9WriteByteEh.exit.i.i.i:           ; preds = %bb.ah, %bb.ag
  store i32 8, ptr %i.ap, align 8, !tbaa !81
  store i8 0, ptr %i.aq, align 4, !tbaa !100
  br label %_ZN12CBitmEncoderI10COutBufferE5FlushEv.exit.i

_ZN12CBitmEncoderI10COutBufferE5FlushEv.exit.i:   ; preds = %_ZN10COutBuffer9WriteByteEh.exit.i.i.i, %_ZN9NCompress6NBZip28CEncoder8WriteCrcEj.exit
  %i.fj = invoke noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(61) %i.an)
          to label %_ZN9NCompress6NBZip28CEncoder5FlushEv.exit unwind label %bb.n

_ZN9NCompress6NBZip28CEncoder5FlushEv.exit:       ; preds = %bb.ac, %bb.x, %_ZN12CBitmEncoderI10COutBufferE5FlushEv.exit.i, %_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit105
  %.14 = phi i32 [ %i.fj, %_ZN12CBitmEncoderI10COutBufferE5FlushEv.exit.i ], [ %i.ci, %_ZN8NWindows16NSynchronization10CBaseEvent5ResetEv.exit105 ], [ %i.du, %bb.x ], [ %i.em, %bb.ac ]
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !93 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i, label %_ZN9CInBuffer13ReleaseStreamEv.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN9NCompress6NBZip28CEncoder5FlushEv.exit
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !83
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = invoke noundef i32 %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %.noexc.i unwind label %bb.ak, !inline_history !174 ; 0 uses

.noexc.i:                                         ; preds = %bb.ai
  store ptr null, ptr %i.fk, align 8, !tbaa !93
  br label %_ZN9CInBuffer13ReleaseStreamEv.exit.i.i

_ZN9CInBuffer13ReleaseStreamEv.exit.i.i:          ; preds = %.noexc.i, %_ZN9NCompress6NBZip28CEncoder5FlushEv.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i.i, label %_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN9CInBuffer13ReleaseStreamEv.exit.i.i
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !83
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = invoke noundef i32 %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %i.fr)
          to label %.noexc1.i unwind label %bb.ak, !inline_history !174 ; 0 uses

.noexc1.i:                                        ; preds = %bb.aj
  store ptr null, ptr %i.fq, align 8, !tbaa !89
  br label %_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev.exit

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #21
  unreachable

_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev.exit:  ; preds = %_ZN9CInBuffer13ReleaseStreamEv.exit.i.i, %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.loopexit152

.loopexit.split-lp:                               ; preds = %.loopexit147, %.loopexit.split-lp148, %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.y, %bb.af, %bb.n
  %.pn96 = phi { ptr, i32 } [ %lpad.loopexit.split-lp145, %.loopexit.split-lp.loopexit.split-lp ], [ %i.bw, %bb.n ], [ %.pn, %bb.af ], [ %i.dv, %bb.y ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit144, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit149, %.loopexit147 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp148 ]
  call void @_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %.pn96

.loopexit152:                                     ; preds = %bb.g, %bb.i, %bb.e, %bb.d, %bb.c, %bb.a, %bb.k, %._crit_edge, %_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev.exit
  %.15 = phi i32 [ %.14, %_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev.exit ], [ -2147024882, %._crit_edge ], [ %i.d, %bb.a ], [ -2147024882, %bb.k ], [ %i.o, %bb.c ], [ %i.q, %bb.d ], [ %i.s, %bb.e ], [ -2147024882, %bb.i ], [ -2147024882, %bb.g ]
  ret i32 %.15
}

declare noundef zeroext i1 @_ZN9CInBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(45), i32 noundef) local_unnamed_addr #1

declare void @_ZN9CInBuffer9SetStreamEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef) local_unnamed_addr #1

declare void @_ZN9CInBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NCompress6NBZip28CEncoder8CFlusherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !170    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN9CInBuffer13ReleaseStreamEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.d, !inline_history !174 ; 0 uses

.noexc:                                           ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !93
  br label %_ZN9CInBuffer13ReleaseStreamEv.exit.i

_ZN9CInBuffer13ReleaseStreamEv.exit.i:            ; preds = %.noexc, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 376 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN9NCompress6NBZip28CEncoder14ReleaseStreamsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN9CInBuffer13ReleaseStreamEv.exit.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc1 unwind label %bb.d, !inline_history !174 ; 0 uses

.noexc1:                                          ; preds = %bb.c
  store ptr null, ptr %i.h, align 8, !tbaa !89
  br label %_ZN9NCompress6NBZip28CEncoder14ReleaseStreamsEv.exit

_ZN9NCompress6NBZip28CEncoder14ReleaseStreamsEv.exit: ; preds = %.noexc1, %_ZN9CInBuffer13ReleaseStreamEv.exit.i
  ret void

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip28CEncoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(712) initializes((704, 712)) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef i32 @_ZN9NCompress6NBZip28CEncoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1, ptr noundef %2, ptr poison, ptr poison, ptr noundef %5)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTI18CInBufferException
          catch ptr @_ZTI19COutBufferException
          catch ptr null                          ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.b, 1        ; 2 uses
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI18CInBufferException) #20
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #20
  br label %.sink.split.sink.split

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI19COutBufferException) #20
  %i.i = icmp eq i32 %i.d, %i.h
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.c) #20
  br i1 %i.i, label %.sink.split.sink.split, label %.sink.split

.sink.split.sink.split:                           ; preds = %bb.d, %bb.c
  %.sink = phi ptr [ %i.g, %bb.c ], [ %i.j, %bb.d ]
  %i.k = load i32, ptr %.sink, align 4, !tbaa !63
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.d
  %.0.ph = phi i32 [ 1, %bb.d ], [ %i.k, %.sink.split.sink.split ]
  tail call void @__cxa_end_catch()
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(712) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #13 align 2 {
bb.a:
  %.not42 = icmp eq i32 %3, 0
  br i1 %.not42, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 6 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  switch i32 %i.g, label %.critedge [
    i32 11, label %bb.c
    i32 1, label %bb.e
    i32 13, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.e, align 8, !tbaa !175
  %.not30 = icmp eq i16 %i.h, 19
  br i1 %.not30, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !54   ; 2 uses
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.j, i32 1)
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 10)
  store i32 %spec.store.select2, ptr %i.c, align 8, !tbaa !73
  %i.k = icmp ugt i32 %i.j, 1
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr %i.d, align 8, !tbaa !86
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.m = load i16, ptr %i.e, align 8, !tbaa !175
  %.not29 = icmp eq i16 %i.m, 19
  br i1 %.not29, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !54   ; 2 uses
  %i.p = icmp ult i32 %i.o, 100000
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = udiv i32 %i.o, 100000
  %spec.store.select1 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 9)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi i32 [ %spec.store.select1, %bb.g ], [ 1, %bb.f ]
  store i32 %.0, ptr %i.b, align 4, !tbaa !55
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.r = load i16, ptr %i.e, align 8, !tbaa !175
  %.not = icmp eq i16 %i.r, 19
  br i1 %.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !54
  %spec.store.select31 = tail call i32 @llvm.umax.i32(i32 %i.t, i32 1)
  store i32 %spec.store.select31, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !178

.critedge:                                        ; preds = %bb.k, %bb.c, %bb.b, %bb.e, %bb.i, %bb.a
  %i.u = phi i32 [ 0, %bb.a ], [ -2147024809, %bb.c ], [ -2147024809, %bb.b ], [ -2147024809, %bb.e ], [ -2147024809, %bb.i ], [ 0, %bb.k ]
  ret i32 %i.u
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZThn8_N9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #14 align 2 {
bb.a:
  %.not42.i = icmp eq i32 %3, 0
  br i1 %.not42.i, label %_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count.i = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 6 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  switch i32 %i.g, label %_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit [
    i32 11, label %bb.c
    i32 1, label %bb.e
    i32 13, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.e, align 8, !tbaa !175
  %.not30.i = icmp eq i16 %i.h, 19
  br i1 %.not30.i, label %bb.d, label %_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !54   ; 2 uses
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.j, i32 1)
  %spec.store.select2.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 10)
  store i32 %spec.store.select2.i, ptr %i.c, align 8, !tbaa !73
  %i.k = icmp ugt i32 %i.j, 1
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr %i.d, align 8, !tbaa !86
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.m = load i16, ptr %i.e, align 8, !tbaa !175
  %.not29.i = icmp eq i16 %i.m, 19
  br i1 %.not29.i, label %bb.f, label %_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !54   ; 2 uses
  %i.p = icmp ult i32 %i.o, 100000
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = udiv i32 %i.o, 100000
  %spec.store.select1.i = tail call i32 @llvm.umin.i32(i32 %i.q, i32 9)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ %spec.store.select1.i, %bb.g ], [ 1, %bb.f ]
  store i32 %.0.i, ptr %i.b, align 4, !tbaa !55
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.r = load i16, ptr %i.e, align 8, !tbaa !175
  %.not.i = icmp eq i16 %i.r, 19
  br i1 %.not.i, label %bb.j, label %_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !54
  %spec.store.select31.i = tail call i32 @llvm.umax.i32(i32 %i.t, i32 1)
  store i32 %spec.store.select31.i, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit, label %bb.b, !llvm.loop !178

_ZN9NCompress6NBZip28CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.i, %bb.k, %bb.a
  %i.u = phi i32 [ 0, %bb.a ], [ 0, %bb.k ], [ -2147024809, %bb.i ], [ -2147024809, %bb.e ], [ -2147024809, %bb.b ], [ -2147024809, %bb.c ]
  ret i32 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(712) initializes((576, 580)) %0, i32 noundef %1) unnamed_addr #15 align 2 {
bb.a:
  %spec.select = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i32 %spec.select, ptr %i.a, align 8, !tbaa !62
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZThn16_N9NCompress6NBZip28CEncoder18SetNumberOfThreadsEj(ptr nofree noundef writeonly captures(none) initializes((560, 564)) %0, i32 noundef %1) unnamed_addr #15 align 2 {
bb.a:
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %spec.select.i, ptr %i.a, align 8, !tbaa !62
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !54      ; 3 uses
  %i.b = load i8, ptr @IID_IUnknown, align 4, !tbaa !54
  %.not.i = icmp eq i8 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZeqRK4GUIDS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !54
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 1), align 1, !tbaa !54
  %.not.1.i = icmp eq i8 %i.d, %i.e
  br i1 %.not.1.i, label %bb.c, label %_ZeqRK4GUIDS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !54
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 2), align 2, !tbaa !54
  %.not.2.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.2.i, label %bb.d, label %_ZeqRK4GUIDS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !54
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 3), align 1, !tbaa !54
  %.not.3.i = icmp eq i8 %i.j, %i.k
  br i1 %.not.3.i, label %bb.e, label %_ZeqRK4GUIDS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !54
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 4), align 4, !tbaa !54
  %.not.4.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.4.i, label %bb.f, label %_ZeqRK4GUIDS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !54
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 5), align 1, !tbaa !54
  %.not.5.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.5.i, label %bb.g, label %_ZeqRK4GUIDS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !54
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 6), align 2, !tbaa !54
  %.not.6.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.6.i, label %bb.h, label %_ZeqRK4GUIDS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !54
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 7), align 1, !tbaa !54
  %.not.7.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.7.i, label %bb.i, label %_ZeqRK4GUIDS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !54
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 8), align 4, !tbaa !54
  %.not.8.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.8.i, label %bb.j, label %_ZeqRK4GUIDS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !54
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 9), align 1, !tbaa !54
  %.not.9.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.9.i, label %bb.k, label %_ZeqRK4GUIDS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !54
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 10), align 2, !tbaa !54
  %.not.10.i = icmp eq i8 %i.ae, %i.af
  br i1 %.not.10.i, label %bb.l, label %_ZeqRK4GUIDS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !54
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 11), align 1, !tbaa !54
  %.not.11.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.11.i, label %bb.m, label %_ZeqRK4GUIDS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !54
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 12), align 4, !tbaa !54
  %.not.12.i = icmp eq i8 %i.ak, %i.al
  br i1 %.not.12.i, label %bb.n, label %_ZeqRK4GUIDS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !54
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 13), align 1, !tbaa !54
  %.not.13.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.13.i, label %bb.o, label %_ZeqRK4GUIDS1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !54
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 14), align 2, !tbaa !54
  %.not.14.i = icmp eq i8 %i.aq, %i.ar
  br i1 %.not.14.i, label %_ZeqRK4GUIDS1_.exit, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !54
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 15), align 1, !tbaa !54
  %.not.15.i.not = icmp eq i8 %i.at, %i.au
  br i1 %.not.15.i.not, label %_ZeqRK4GUIDS1_.exit44.thread.sink.split, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit.thread:                       ; preds = %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.b, %bb.i, %bb.a, %_ZeqRK4GUIDS1_.exit
  %i.av = load i8, ptr @IID_ICompressSetCoderMt, align 4, !tbaa !54
  %.not.i9 = icmp eq i8 %i.a, %i.av
  br i1 %.not.i9, label %bb.p, label %_ZeqRK4GUIDS1_.exit26.thread

bb.p:                                             ; preds = %_ZeqRK4GUIDS1_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !54
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 1), align 1, !tbaa !54
  %.not.1.i10 = icmp eq i8 %i.ax, %i.ay
  br i1 %.not.1.i10, label %bb.q, label %_ZeqRK4GUIDS1_.exit26.thread

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !54
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 2), align 2, !tbaa !54
  %.not.2.i11 = icmp eq i8 %i.ba, %i.bb
  br i1 %.not.2.i11, label %bb.r, label %_ZeqRK4GUIDS1_.exit26.thread

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !54
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 3), align 1, !tbaa !54
  %.not.3.i12 = icmp eq i8 %i.bd, %i.be
  br i1 %.not.3.i12, label %bb.s, label %_ZeqRK4GUIDS1_.exit26.thread

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !54
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 4), align 4, !tbaa !54
  %.not.4.i13 = icmp eq i8 %i.bg, %i.bh
  br i1 %.not.4.i13, label %bb.t, label %_ZeqRK4GUIDS1_.exit26.thread

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !54
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 5), align 1, !tbaa !54
  %.not.5.i14 = icmp eq i8 %i.bj, %i.bk
  br i1 %.not.5.i14, label %bb.u, label %_ZeqRK4GUIDS1_.exit26.thread

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !54
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 6), align 2, !tbaa !54
  %.not.6.i15 = icmp eq i8 %i.bm, %i.bn
  br i1 %.not.6.i15, label %bb.v, label %_ZeqRK4GUIDS1_.exit26.thread

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !54
  %i.bq = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 7), align 1, !tbaa !54
  %.not.7.i16 = icmp eq i8 %i.bp, %i.bq
  br i1 %.not.7.i16, label %bb.w, label %_ZeqRK4GUIDS1_.exit26.thread

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !54
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 8), align 4, !tbaa !54
  %.not.8.i17 = icmp eq i8 %i.bs, %i.bt
  br i1 %.not.8.i17, label %bb.x, label %_ZeqRK4GUIDS1_.exit26.thread

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !54
  %i.bw = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 9), align 1, !tbaa !54
  %.not.9.i18 = icmp eq i8 %i.bv, %i.bw
  br i1 %.not.9.i18, label %bb.y, label %_ZeqRK4GUIDS1_.exit26.thread

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !54
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 10), align 2, !tbaa !54
  %.not.10.i19 = icmp eq i8 %i.by, %i.bz
  br i1 %.not.10.i19, label %bb.z, label %_ZeqRK4GUIDS1_.exit26.thread

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !54
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 11), align 1, !tbaa !54
  %.not.11.i20 = icmp eq i8 %i.cb, %i.cc
  br i1 %.not.11.i20, label %bb.aa, label %_ZeqRK4GUIDS1_.exit26.thread

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !54
  %i.cf = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 12), align 4, !tbaa !54
  %.not.12.i21 = icmp eq i8 %i.ce, %i.cf
  br i1 %.not.12.i21, label %bb.ab, label %_ZeqRK4GUIDS1_.exit26.thread

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !54
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 13), align 1, !tbaa !54
  %.not.13.i22 = icmp eq i8 %i.ch, %i.ci
  br i1 %.not.13.i22, label %bb.ac, label %_ZeqRK4GUIDS1_.exit26.thread

bb.ac:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !54
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 14), align 2, !tbaa !54
  %.not.14.i23 = icmp eq i8 %i.ck, %i.cl
  br i1 %.not.14.i23, label %_ZeqRK4GUIDS1_.exit26, label %_ZeqRK4GUIDS1_.exit26.thread

_ZeqRK4GUIDS1_.exit26:                            ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !54
  %i.co = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderMt, i64 15), align 1, !tbaa !54
  %.not.15.i24.not = icmp eq i8 %i.cn, %i.co
  br i1 %.not.15.i24.not, label %_ZeqRK4GUIDS1_.exit44.thread.sink.split, label %_ZeqRK4GUIDS1_.exit26.thread

_ZeqRK4GUIDS1_.exit26.thread:                     ; preds = %bb.aa, %bb.v, %bb.z, %bb.u, %bb.ab, %bb.t, %bb.x, %bb.s, %bb.ac, %bb.r, %bb.y, %bb.q, %bb.p, %bb.w, %_ZeqRK4GUIDS1_.exit.thread, %_ZeqRK4GUIDS1_.exit26
  %i.cp = load i8, ptr @IID_ICompressSetCoderProperties, align 4, !tbaa !54
  %.not.i27 = icmp eq i8 %i.a, %i.cp
  br i1 %.not.i27, label %bb.ad, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ad:                                            ; preds = %_ZeqRK4GUIDS1_.exit26.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !54
  %i.cs = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 1), align 1, !tbaa !54
  %.not.1.i28 = icmp eq i8 %i.cr, %i.cs
  br i1 %.not.1.i28, label %bb.ae, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !54
  %i.cv = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 2), align 2, !tbaa !54
  %.not.2.i29 = icmp eq i8 %i.cu, %i.cv
  br i1 %.not.2.i29, label %bb.af, label %_ZeqRK4GUIDS1_.exit44.thread

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !54
  %i.cy = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 3), align 1, !tbaa !54
  %.not.3.i30 = icmp eq i8 %i.cx, %i.cy
  br i1 %.not.3.i30, label %bb.ag, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ag:                                            ; preds = %bb.af
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !54
  %i.db = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 4), align 4, !tbaa !54
  %.not.4.i31 = icmp eq i8 %i.da, %i.db
  br i1 %.not.4.i31, label %bb.ah, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !54
  %i.de = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 5), align 1, !tbaa !54
  %.not.5.i32 = icmp eq i8 %i.dd, %i.de
  br i1 %.not.5.i32, label %bb.ai, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ai:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !54
  %i.dh = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 6), align 2, !tbaa !54
  %.not.6.i33 = icmp eq i8 %i.dg, %i.dh
  br i1 %.not.6.i33, label %bb.aj, label %_ZeqRK4GUIDS1_.exit44.thread

bb.aj:                                            ; preds = %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !54
  %i.dk = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 7), align 1, !tbaa !54
  %.not.7.i34 = icmp eq i8 %i.dj, %i.dk
  br i1 %.not.7.i34, label %bb.ak, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ak:                                            ; preds = %bb.aj
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !54
  %i.dn = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 8), align 4, !tbaa !54
  %.not.8.i35 = icmp eq i8 %i.dm, %i.dn
  br i1 %.not.8.i35, label %bb.al, label %_ZeqRK4GUIDS1_.exit44.thread

bb.al:                                            ; preds = %bb.ak
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !54
  %i.dq = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 9), align 1, !tbaa !54
  %.not.9.i36 = icmp eq i8 %i.dp, %i.dq
  br i1 %.not.9.i36, label %bb.am, label %_ZeqRK4GUIDS1_.exit44.thread

bb.am:                                            ; preds = %bb.al
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ds = load i8, ptr %i.dr, align 2, !tbaa !54
  %i.dt = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 10), align 2, !tbaa !54
  %.not.10.i37 = icmp eq i8 %i.ds, %i.dt
  br i1 %.not.10.i37, label %bb.an, label %_ZeqRK4GUIDS1_.exit44.thread

bb.an:                                            ; preds = %bb.am
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !54
  %i.dw = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 11), align 1, !tbaa !54
  %.not.11.i38 = icmp eq i8 %i.dv, %i.dw
  br i1 %.not.11.i38, label %bb.ao, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ao:                                            ; preds = %bb.an
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dy = load i8, ptr %i.dx, align 4, !tbaa !54
  %i.dz = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 12), align 4, !tbaa !54
  %.not.12.i39 = icmp eq i8 %i.dy, %i.dz
  br i1 %.not.12.i39, label %bb.ap, label %_ZeqRK4GUIDS1_.exit44.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !54
  %i.ec = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 13), align 1, !tbaa !54
  %.not.13.i40 = icmp eq i8 %i.eb, %i.ec
  br i1 %.not.13.i40, label %bb.aq, label %_ZeqRK4GUIDS1_.exit44.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !54
  %i.ef = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 14), align 2, !tbaa !54
  %.not.14.i41 = icmp eq i8 %i.ee, %i.ef
  br i1 %.not.14.i41, label %_ZeqRK4GUIDS1_.exit44, label %_ZeqRK4GUIDS1_.exit44.thread

_ZeqRK4GUIDS1_.exit44:                            ; preds = %bb.aq
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !54
  %i.ei = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_ICompressSetCoderProperties, i64 15), align 1, !tbaa !54
  %.not.15.i42.not = icmp eq i8 %i.eh, %i.ei
  br i1 %.not.15.i42.not, label %_ZeqRK4GUIDS1_.exit44.thread.sink.split, label %_ZeqRK4GUIDS1_.exit44.thread

_ZeqRK4GUIDS1_.exit44.thread.sink.split:          ; preds = %_ZeqRK4GUIDS1_.exit44, %_ZeqRK4GUIDS1_.exit26, %_ZeqRK4GUIDS1_.exit
  %.sink49 = phi i64 [ 16, %_ZeqRK4GUIDS1_.exit26 ], [ 16, %_ZeqRK4GUIDS1_.exit ], [ 8, %_ZeqRK4GUIDS1_.exit44 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 %.sink49
  store ptr %i.ej, ptr %2, align 8, !tbaa !179
  %i.ek = load ptr, ptr %0, align 8, !tbaa !83
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = tail call noundef i32 %i.em(ptr noundef nonnull align 8 dereferenceable(712) %0) ; 0 uses
  br label %_ZeqRK4GUIDS1_.exit44.thread

_ZeqRK4GUIDS1_.exit44.thread:                     ; preds = %_ZeqRK4GUIDS1_.exit44.thread.sink.split, %bb.ao, %bb.aj, %bb.an, %bb.ai, %bb.ap, %bb.ah, %bb.al, %bb.ag, %bb.aq, %bb.af, %bb.am, %bb.ae, %bb.ad, %bb.ak, %_ZeqRK4GUIDS1_.exit26.thread, %_ZeqRK4GUIDS1_.exit44
  %.0 = phi i32 [ -2147467262, %bb.an ], [ -2147467262, %bb.aj ], [ -2147467262, %bb.ao ], [ -2147467262, %_ZeqRK4GUIDS1_.exit44 ], [ -2147467262, %_ZeqRK4GUIDS1_.exit26.thread ], [ -2147467262, %bb.ak ], [ -2147467262, %bb.ad ], [ -2147467262, %bb.ae ], [ -2147467262, %bb.am ], [ -2147467262, %bb.af ], [ -2147467262, %bb.aq ], [ -2147467262, %bb.ag ], [ -2147467262, %bb.al ], [ -2147467262, %bb.ah ], [ -2147467262, %bb.ap ], [ -2147467262, %bb.ai ], [ 0, %_ZeqRK4GUIDS1_.exit44.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress6NBZip28CEncoder6AddRefEv(ptr noundef nonnull align 8 dereferenceable(712) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !85
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress6NBZip28CEncoder7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(712) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !85
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(712) %0) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(712) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress6NBZip28CEncoder6AddRefEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !85
  ret i32 %i.c
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn8_N9NCompress6NBZip28CEncoder7ReleaseEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !85
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN9NCompress6NBZip28CEncoder7ReleaseEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(712) %i.d) #20, !inline_history !180
  br label %_ZN9NCompress6NBZip28CEncoder7ReleaseEv.exit

_ZN9NCompress6NBZip28CEncoder7ReleaseEv.exit:     ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn16_N9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = tail call noundef i32 @_ZN9NCompress6NBZip28CEncoder14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(712) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn16_N9NCompress6NBZip28CEncoder6AddRefEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !85
  ret i32 %i.c
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZThn16_N9NCompress6NBZip28CEncoder7ReleaseEv(ptr noundef %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !85
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN9NCompress6NBZip28CEncoder7ReleaseEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(712) %i.d) #20, !inline_history !180
  br label %_ZN9NCompress6NBZip28CEncoder7ReleaseEv.exit

_ZN9NCompress6NBZip28CEncoder7ReleaseEv.exit:     ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

declare i32 @AutoResetEvent_CreateNotSignaled(ptr noundef) local_unnamed_addr #1

declare i32 @Thread_Create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Event_Set(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #17

declare i32 @Event_Wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #17

declare i32 @CriticalSection_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #17

declare i32 @Event_Close(ptr noundef) local_unnamed_addr #1

declare void @_ZN10COutBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare void @_ZN9CInBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #1

declare i32 @ManualResetEvent_CreateNotSignaled(ptr noundef) local_unnamed_addr #1

declare i32 @Thread_Close(ptr noundef) local_unnamed_addr #1

declare i32 @Thread_Wait(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN9CInBuffer9ReadBlockEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #1

declare i32 @Event_Reset(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN10COutBuffer5FlushEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #1

declare void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #1

declare void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind memory(none) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 24}
!9 = !{!"_ZTSN9NCompress6NBZip211CThreadInfoE", !10, i64 0, !10, i64 8, !10, i64 16, !12, i64 24, !13, i64 32, !6, i64 40, !6, i64 1588, !6, i64 7780, !6, i64 13972, !6, i64 31976, !5, i64 36072, !5, i64 36076, !14, i64 36080, !15, i64 36088, !16, i64 36096, !19, i64 36112, !19, i64 36216, !19, i64 36320, !22, i64 36424, !6, i64 36432}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"p1 _ZTSN9NCompress6NBZip216CMsbfEncoderTempE", !11, i64 0}
!14 = !{!"bool", !6, i64 0}
!15 = !{!"p1 _ZTSN9NCompress6NBZip28CEncoderE", !11, i64 0}
!16 = !{!"_ZTSN8NWindows7CThreadE", !17, i64 0}
!17 = !{!"_ZTS8_CThread", !18, i64 0, !5, i64 8}
!18 = !{!"long", !6, i64 0}
!19 = !{!"_ZTSN8NWindows16NSynchronization15CAutoResetEventE", !20, i64 0}
!20 = !{!"_ZTSN8NWindows16NSynchronization10CBaseEventE", !21, i64 0}
!21 = !{!"_ZTS7_CEvent", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 16, !6, i64 56}
!22 = !{!"long long", !6, i64 0}
!23 = !{!9, !10, i64 0}
!24 = !{!9, !10, i64 8}
!25 = !{!9, !10, i64 16}
!26 = !{!9, !15, i64 36088}
!27 = !{!28, !14, i64 589}
!28 = !{!"_ZTSN9NCompress6NBZip28CEncoderE", !29, i64 0, !31, i64 8, !32, i64 16, !33, i64 24, !5, i64 28, !14, i64 32, !5, i64 36, !5, i64 40, !34, i64 48, !6, i64 96, !37, i64 352, !5, i64 416, !41, i64 420, !42, i64 424, !43, i64 432, !44, i64 536, !5, i64 576, !14, i64 580, !5, i64 584, !14, i64 588, !14, i64 589, !43, i64 592, !5, i64 696, !46, i64 704}
!29 = !{!"_ZTS14ICompressCoder", !30, i64 0}
!30 = !{!"_ZTS8IUnknown"}
!31 = !{!"_ZTS27ICompressSetCoderProperties", !30, i64 0}
!32 = !{!"_ZTS19ICompressSetCoderMt", !30, i64 0}
!33 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!34 = !{!"_ZTS9CInBuffer", !10, i64 0, !10, i64 8, !10, i64 16, !35, i64 24, !22, i64 32, !5, i64 40, !14, i64 44}
!35 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !36, i64 0}
!36 = !{!"p1 _ZTS19ISequentialInStream", !11, i64 0}
!37 = !{!"_ZTS12CBitmEncoderI10COutBufferE", !38, i64 0, !5, i64 56, !6, i64 60}
!38 = !{!"_ZTS10COutBuffer", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !39, i64 24, !22, i64 32, !10, i64 40, !14, i64 48}
!39 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !40, i64 0}
!40 = !{!"p1 _ZTS20ISequentialOutStream", !11, i64 0}
!41 = !{!"_ZTS17CBZip2CombinedCrc", !5, i64 0}
!42 = !{!"p1 _ZTSN9NCompress6NBZip211CThreadInfoE", !11, i64 0}
!43 = !{!"_ZTSN8NWindows16NSynchronization17CManualResetEventE", !20, i64 0}
!44 = !{!"_ZTSN8NWindows16NSynchronization16CCriticalSectionE", !45, i64 0}
!45 = !{!"_ZTS16CCriticalSection", !6, i64 0}
!46 = !{!"p1 _ZTS21ICompressProgressInfo", !11, i64 0}
!47 = !{!28, !14, i64 588}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!34, !10, i64 0}
!53 = !{!34, !10, i64 8}
!54 = !{!6, !6, i64 0}
!55 = !{!28, !5, i64 28}
!56 = distinct !{!56, !51}
!57 = !{!34, !22, i64 32}
!58 = !{!34, !10, i64 16}
!59 = !{!9, !22, i64 36424}
!60 = !{!28, !5, i64 584}
!61 = !{!9, !5, i64 36076}
!62 = !{!28, !5, i64 576}
!63 = !{!64, !5, i64 0}
!64 = !{!"_ZTS16CSystemException", !5, i64 0}
!65 = !{!28, !5, i64 696}
!66 = !{!67, !10, i64 16}
!67 = !{!"_ZTSN9NCompress6NBZip216CMsbfEncoderTempE", !5, i64 0, !5, i64 4, !6, i64 8, !10, i64 16}
!68 = !{!67, !5, i64 0}
!69 = !{!67, !5, i64 4}
!70 = !{!67, !6, i64 8}
!71 = !{!9, !13, i64 32}
!72 = !{!9, !5, i64 36072}
!73 = !{!28, !5, i64 416}
!74 = !{!28, !14, i64 580}
!75 = !{!28, !42, i64 424}
!76 = !{!41, !5, i64 0}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = distinct !{!79, !51}
!80 = !{!28, !46, i64 704}
!81 = !{!37, !5, i64 56}
!82 = !{!22, !22, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"vtable pointer", !7, i64 0}
!85 = !{!33, !5, i64 0}
!86 = !{!28, !14, i64 32}
!87 = !{!38, !10, i64 0}
!88 = !{!38, !5, i64 8}
!89 = !{!39, !40, i64 0}
!90 = !{!38, !10, i64 40}
!91 = !{!20, !5, i64 0}
!92 = !{!28, !5, i64 40}
!93 = !{!35, !36, i64 0}
!94 = distinct !{!94, !51}
!95 = !{ptr @_ZN9NCompress6NBZip28CEncoderD0Ev}
!96 = !{!16, !5, i64 8}
!97 = distinct !{!97, !51, !98}
!98 = !{!"llvm.loop.unswitch.partial.disable"}
!99 = distinct !{!99, !51}
!100 = !{!37, !6, i64 60}
!101 = !{!38, !5, i64 12}
!102 = distinct !{!102, !51, !103}
!103 = !{!"llvm.loop.peeled.count", i32 1}
!104 = !{!14, !14, i64 0}
!105 = distinct !{!105, !51}
!106 = distinct !{!106, !78}
!107 = distinct !{!107, !51}
!108 = distinct !{!108, !51}
!109 = distinct !{!109, !51}
!110 = distinct !{!110, !51}
!111 = distinct !{!111, !51}
!112 = distinct !{!112, !51}
!113 = distinct !{!113, !51}
!114 = distinct !{!114, !51}
!115 = !{!9, !14, i64 36080}
!116 = distinct !{!116, !51}
!117 = distinct !{!117, !51, !118, !119}
!118 = !{!"llvm.loop.isvectorized", i32 1}
!119 = !{!"llvm.loop.unroll.runtime.disable"}
!120 = !{!"branch_weights", i32 8, i32 8}
!121 = distinct !{!121, !51, !118, !119}
!122 = distinct !{!122, !51, !119, !118}
!123 = distinct !{!123, !51}
!124 = distinct !{!124, !51}
!125 = distinct !{!125, !51}
!126 = distinct !{!126, !78}
!127 = distinct !{!127, !51}
!128 = distinct !{!128, !51}
!129 = distinct !{!129, !78}
!130 = distinct !{!130, !51}
!131 = distinct !{!131, !51, !118, !119}
!132 = distinct !{!132, !51, !119, !118}
!133 = distinct !{!133, !51}
!134 = distinct !{!134, !78}
!135 = distinct !{!135, !78}
!136 = distinct !{!136, !51, !118, !119}
!137 = distinct !{!137, !51, !119, !118}
!138 = distinct !{!138, !78}
!139 = distinct !{!139, !78}
!140 = distinct !{!140, !51, !118, !119}
!141 = distinct !{!141, !51, !119, !118}
!142 = distinct !{!142, !78}
!143 = distinct !{!143, !78}
!144 = distinct !{!144, !51, !118, !119}
!145 = distinct !{!145, !51, !119, !118}
!146 = distinct !{!146, !51, !118, !119}
!147 = !{!"branch_weights", i32 4, i32 28}
!148 = distinct !{!148, !51, !118, !119}
!149 = distinct !{!149, !51, !119, !118}
!150 = distinct !{!150, !51}
!151 = distinct !{!151, !51, !118, !119}
!152 = !{!"branch_weights", i32 8, i32 24}
!153 = distinct !{!153, !51, !118, !119}
!154 = distinct !{!154, !51, !119, !118}
!155 = distinct !{!155, !51}
!156 = distinct !{!156, !51}
!157 = distinct !{!157, !51}
!158 = distinct !{!158, !51}
!159 = distinct !{!159, !51}
!160 = distinct !{!160, !51}
!161 = distinct !{!161, !51}
!162 = distinct !{!162, !51}
!163 = distinct !{!163, !51}
!164 = distinct !{!164, !51, !118, !119}
!165 = distinct !{!165, !51, !118, !119}
!166 = distinct !{!166, !78}
!167 = distinct !{!167, !51, !118}
!168 = distinct !{!168, !51}
!169 = distinct !{!169, !51}
!170 = !{!171, !15, i64 0}
!171 = !{!"_ZTSN9NCompress6NBZip28CEncoder8CFlusherE", !15, i64 0}
!172 = distinct !{!172, !51}
!173 = distinct !{!173, !51}
!174 = distinct !{null}
!175 = !{!176, !177, i64 0}
!176 = !{!"_ZTS14tagPROPVARIANT", !177, i64 0, !177, i64 2, !177, i64 4, !177, i64 6, !6, i64 8}
!177 = !{!"short", !6, i64 0}
!178 = distinct !{!178, !51}
!179 = !{!11, !11, i64 0}
!180 = !{ptr @_ZN9NCompress6NBZip28CEncoder7ReleaseEv}
end_hunk_1
