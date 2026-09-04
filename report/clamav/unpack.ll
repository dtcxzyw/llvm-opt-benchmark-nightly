Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unpack?download=true
inline.NumInlined: 353
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN16FragmentedWindowixEm:bb.a

.preheader.preheader:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load i64, ptr %i.d, align 8, !tbaa !168
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %bb.d, label %.preheader.1

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !180
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  br label %bb.e

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.j = load i64, ptr %i.i, align 8, !tbaa !168
  %i.k = icmp ult i64 %1, %i.j
  br i1 %i.k, label %bb.d, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load i64, ptr %i.l, align 8, !tbaa !168
  %i.n = icmp ult i64 %1, %i.m
  br i1 %i.n, label %bb.d, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.p = load i64, ptr %i.o, align 8, !tbaa !168
  %i.q = icmp ult i64 %1, %i.p
  br i1 %i.q, label %bb.d, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.s = load i64, ptr %i.r, align 8, !tbaa !168
  %i.t = icmp ult i64 %1, %i.s
  br i1 %i.t, label %bb.d, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load i64, ptr %i.u, align 8, !tbaa !168
  %i.w = icmp ult i64 %1, %i.v
  br i1 %i.w, label %bb.d, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168
  %i.z = icmp ult i64 %1, %i.y
  br i1 %i.z, label %bb.d, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ac = icmp ult i64 %1, %i.ab
  br i1 %i.ac, label %bb.d, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !168
  %i.af = icmp ult i64 %1, %i.ae
  br i1 %i.af, label %bb.d, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !168
  %i.ai = icmp ult i64 %1, %i.ah
  br i1 %i.ai, label %bb.d, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !168
  %i.al = icmp ult i64 %1, %i.ak
  br i1 %i.al, label %bb.d, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.an = load i64, ptr %i.am, align 8, !tbaa !168
  %i.ao = icmp ult i64 %1, %i.an
  br i1 %i.ao, label %bb.d, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !168
  %i.ar = icmp ult i64 %1, %i.aq
  br i1 %i.ar, label %bb.d, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.at = load i64, ptr %i.as, align 8, !tbaa !168
  %i.au = icmp ult i64 %1, %i.at
  br i1 %i.au, label %bb.d, label %.preheader.14

.preheader.14:                                    ; preds = %.preheader.13
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !168
  %i.ax = icmp ult i64 %1, %i.aw
  br i1 %i.ax, label %bb.d, label %.preheader.15

.preheader.15:                                    ; preds = %.preheader.14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !168
  %i.ba = icmp ult i64 %1, %i.az
  br i1 %i.ba, label %bb.d, label %.preheader.16

.preheader.16:                                    ; preds = %.preheader.15
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !168
  %i.bd = icmp ult i64 %1, %i.bc
  br i1 %i.bd, label %bb.d, label %.preheader.17

.preheader.17:                                    ; preds = %.preheader.16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !168
  %i.bg = icmp ult i64 %1, %i.bf
  br i1 %i.bg, label %bb.d, label %.preheader.18

.preheader.18:                                    ; preds = %.preheader.17
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !168
  %i.bj = icmp ult i64 %1, %i.bi
  br i1 %i.bj, label %bb.d, label %.preheader.19

.preheader.19:                                    ; preds = %.preheader.18
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !168
  %i.bm = icmp ult i64 %1, %i.bl
  br i1 %i.bm, label %bb.d, label %.preheader.20

.preheader.20:                                    ; preds = %.preheader.19
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !168
  %i.bp = icmp ult i64 %1, %i.bo
  br i1 %i.bp, label %bb.d, label %.preheader.21

.preheader.21:                                    ; preds = %.preheader.20
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !168
  %i.bs = icmp ult i64 %1, %i.br
  br i1 %i.bs, label %bb.d, label %.preheader.22

.preheader.22:                                    ; preds = %.preheader.21
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !168
  %i.bv = icmp ult i64 %1, %i.bu
  br i1 %i.bv, label %bb.d, label %.preheader.23

.preheader.23:                                    ; preds = %.preheader.22
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !168
  %i.by = icmp ult i64 %1, %i.bx
  br i1 %i.by, label %bb.d, label %.preheader.24

.preheader.24:                                    ; preds = %.preheader.23
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !168
  %i.cb = icmp ult i64 %1, %i.ca
  br i1 %i.cb, label %bb.d, label %.preheader.25

.preheader.25:                                    ; preds = %.preheader.24
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !168
  %i.ce = icmp ult i64 %1, %i.cd
  br i1 %i.ce, label %bb.d, label %.preheader.26

.preheader.26:                                    ; preds = %.preheader.25
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !168
  %i.ch = icmp ult i64 %1, %i.cg
  br i1 %i.ch, label %bb.d, label %.preheader.27

.preheader.27:                                    ; preds = %.preheader.26
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !168
  %i.ck = icmp ult i64 %1, %i.cj
  br i1 %i.ck, label %bb.d, label %.preheader.28

.preheader.28:                                    ; preds = %.preheader.27
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !168
  %i.cn = icmp ult i64 %1, %i.cm
  br i1 %i.cn, label %bb.d, label %.preheader.29

.preheader.29:                                    ; preds = %.preheader.28
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !168
  %i.cq = icmp ult i64 %1, %i.cp
  br i1 %i.cq, label %bb.d, label %.preheader.30

.preheader.30:                                    ; preds = %.preheader.29
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !168
  %i.ct = icmp ult i64 %1, %i.cs
  br i1 %i.ct, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.30
  %i.cu = load ptr, ptr %0, align 8, !tbaa !180
  br label %bb.e

bb.d:                                             ; preds = %.preheader.30, %.preheader.29, %.preheader.28, %.preheader.27, %.preheader.26, %.preheader.25, %.preheader.24, %.preheader.23, %.preheader.22, %.preheader.21, %.preheader.20, %.preheader.19, %.preheader.18, %.preheader.17, %.preheader.16, %.preheader.15, %.preheader.14, %.preheader.13, %.preheader.12, %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi i64 [ 1, %.preheader.preheader ], [ 2, %.preheader.1 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ], [ 8, %.preheader.7 ], [ 9, %.preheader.8 ], [ 10, %.preheader.9 ], [ 11, %.preheader.10 ], [ 12, %.preheader.11 ], [ 13, %.preheader.12 ], [ 14, %.preheader.13 ], [ 15, %.preheader.14 ], [ 16, %.preheader.15 ], [ 17, %.preheader.16 ], [ 18, %.preheader.17 ], [ 19, %.preheader.18 ], [ 20, %.preheader.19 ], [ 21, %.preheader.20 ], [ 22, %.preheader.21 ], [ 23, %.preheader.22 ], [ 24, %.preheader.23 ], [ 25, %.preheader.24 ], [ 26, %.preheader.25 ], [ 27, %.preheader.26 ], [ 28, %.preheader.27 ], [ 29, %.preheader.28 ], [ 30, %.preheader.29 ], [ 31, %.preheader.30 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.lcssa
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !180
  %2 = add nuw nsw i64 %.lcssa, 4294967295
  %3 = and i64 %2, 4294967295
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %3
  %i.cx = load i64, ptr %4, align 8, !tbaa !168
  %i.cy = sub i64 %1, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cy
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ %i.h, %bb.b ], [ %i.cu, %bb.c ], [ %i.cz, %bb.d ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN16FragmentedWindow10CopyStringEjjRmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, i64 noundef %4) local_unnamed_addr #12 align 2 {
bb.a:
  %.not10 = icmp eq i32 %1, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !168    ; 2 uses
  %i.b = zext i32 %2 to i64
  %i.c = sub i64 %i.a, %i.b
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.d = phi i64 [ %i.m, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %.012 = phi i64 [ %i.f, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.0911 = phi i32 [ %i.e, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %i.e = add i32 %.0911, -1                       ; 2 uses
  %i.f = add i64 %.012, 1
  %i.g = and i64 %.012, %4
  %i.h = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN16FragmentedWindowixEm(ptr noundef nonnull align 8 dereferenceable(512) %0, i64 noundef %i.g)
  %i.i = load i8, ptr %i.h, align 1, !tbaa !35
  %i.j = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN16FragmentedWindowixEm(ptr noundef nonnull align 8 dereferenceable(512) %0, i64 noundef %i.d)
  store i8 %i.i, ptr %i.j, align 1, !tbaa !35
  %i.k = load i64, ptr %3, align 8, !tbaa !168
  %i.l = add i64 %i.k, 1
  %i.m = and i64 %i.l, %4                         ; 2 uses
  store i64 %i.m, ptr %3, align 8, !tbaa !168
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Unpack10ReadFilterER8BitInputR12UnpackFilter(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(59688) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !172, !range !147, !noundef !148
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !90   ; 3 uses
  %i.g = add nsw i32 %i.f, -16
  %i.h = icmp sgt i32 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !89   ; 4 uses
  %i.k = sub nsw i32 %i.f, %i.j                   ; 5 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %_ZN6Unpack10UnpReadBufEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !91
  %.neg.i = sub i32 %i.o, %i.j
  %i.p = load i32, ptr %i.m, align 8, !tbaa !92
  %i.q = add i32 %.neg.i, %i.p
  store i32 %i.q, ptr %i.m, align 8, !tbaa !92
  %i.r = icmp sgt i32 %i.j, 16384
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !93   ; 2 uses
  %i.u = zext nneg i32 %i.j to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = zext nneg i32 %i.k to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.v, i64 %i.w, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 0, ptr %i.i, align 8, !tbaa !89
  store i32 %i.k, ptr %i.e, align 8, !tbaa !90
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.011.i = phi i32 [ %i.k, %bb.g ], [ %i.f, %bb.d ] ; 3 uses
  %.not18.i = icmp eq i32 %.011.i, 32768
  br i1 %.not18.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %0, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.aa = sext i32 %.011.i to i64
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %i.aa
  %i.ac = sub nsw i32 32768, %.011.i
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call noundef i32 @_ZN11ComprDataIO7UnpReadEPhm(ptr noundef nonnull align 8 dereferenceable(266) %i.x, ptr noundef %i.ab, i64 noundef %i.ad) ; 4 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !90 ; 2 uses
  br i1 %i.af, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.ag = add nsw i32 %.pre.i, %i.ae              ; 2 uses
  store i32 %i.ag, ptr %i.e, align 8, !tbaa !90
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h
  %i.ah = phi i32 [ %.pre.i, %bb.i ], [ %i.ag, %bb.j ], [ 32768, %bb.h ]
  %.021.i = phi i32 [ %i.ae, %bb.i ], [ %i.ae, %bb.j ], [ 0, %bb.h ]
  %i.ai = add nsw i32 %i.ah, -30                  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !95
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !89  ; 2 uses
  store i32 %i.ak, ptr %i.n, align 8, !tbaa !91
  %i.al = load i32, ptr %i.m, align 8, !tbaa !92  ; 2 uses
  %.not19.i = icmp eq i32 %i.al, -1
  br i1 %.not19.i, label %_ZN6Unpack10UnpReadBufEv.exit, label %bb.k

bb.k:                                             ; preds = %.thread.i
  %i.am = add i32 %i.ak, -1
  %i.an = add i32 %i.am, %i.al
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.an)
  store i32 %..i, ptr %i.aj, align 4, !tbaa !95
  br label %_ZN6Unpack10UnpReadBufEv.exit

_ZN6Unpack10UnpReadBufEv.exit:                    ; preds = %.thread.i, %bb.k
  %.not = icmp eq i32 %.021.i, -1
  br i1 %.not, label %_ZN6Unpack10UnpReadBufEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN6Unpack10UnpReadBufEv.exit, %bb.b, %bb.a
  %i.ao = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.ap = lshr i32 %i.ao, 14
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !124
  %i.as = add i32 %i.ar, 2                        ; 2 uses
  %i.at = lshr i32 %i.as, 3
  %i.au = load i32, ptr %1, align 8, !tbaa !125
  %i.av = add i32 %i.at, %i.au
  store i32 %i.av, ptr %1, align 8, !tbaa !125
  %i.aw = and i32 %i.as, 7
  store i32 %i.aw, ptr %i.aq, align 4, !tbaa !124
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.011.i17 = phi i32 [ 0, %bb.l ], [ %i.bi, %bb.m ] ; 3 uses
  %.0910.i = phi i32 [ 0, %bb.l ], [ %i.bb, %bb.m ]
  %i.ax = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.ay = lshr i32 %i.ax, 8
  %i.az = shl nuw nsw i32 %.011.i17, 3
  %i.ba = shl i32 %i.ay, %i.az
  %i.bb = add i32 %i.ba, %.0910.i                 ; 2 uses
  %i.bc = load i32, ptr %i.aq, align 4, !tbaa !124 ; 2 uses
  %i.bd = add i32 %i.bc, 8
  %i.be = lshr i32 %i.bd, 3
  %i.bf = load i32, ptr %1, align 8, !tbaa !125
  %i.bg = add i32 %i.be, %i.bf
  store i32 %i.bg, ptr %1, align 8, !tbaa !125
  %i.bh = and i32 %i.bc, 7
  store i32 %i.bh, ptr %i.aq, align 4, !tbaa !124
  %i.bi = add nuw nsw i32 %.011.i17, 1
  %exitcond.not.i = icmp eq i32 %.011.i17, %i.ap
  br i1 %exitcond.not.i, label %_ZN6Unpack14ReadFilterDataER8BitInput.exit, label %bb.m, !llvm.loop !7

_ZN6Unpack14ReadFilterDataER8BitInput.exit:       ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.bb, ptr %i.bj, align 4, !tbaa !170
  %i.bk = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.bl = lshr i32 %i.bk, 14
  %i.bm = load i32, ptr %i.aq, align 4, !tbaa !124
  %i.bn = add i32 %i.bm, 2                        ; 2 uses
  %i.bo = lshr i32 %i.bn, 3
  %i.bp = load i32, ptr %1, align 8, !tbaa !125
  %i.bq = add i32 %i.bo, %i.bp
  store i32 %i.bq, ptr %1, align 8, !tbaa !125
  %i.br = and i32 %i.bn, 7
  store i32 %i.br, ptr %i.aq, align 4, !tbaa !124
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZN6Unpack14ReadFilterDataER8BitInput.exit
  %.011.i18 = phi i32 [ 0, %_ZN6Unpack14ReadFilterDataER8BitInput.exit ], [ %i.cd, %bb.n ] ; 3 uses
  %.0910.i19 = phi i32 [ 0, %_ZN6Unpack14ReadFilterDataER8BitInput.exit ], [ %i.bw, %bb.n ]
  %i.bs = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = shl nuw nsw i32 %.011.i18, 3
  %i.bv = shl i32 %i.bt, %i.bu
  %i.bw = add i32 %i.bv, %.0910.i19               ; 3 uses
  %i.bx = load i32, ptr %i.aq, align 4, !tbaa !124 ; 2 uses
  %i.by = add i32 %i.bx, 8
end_hunk_0
