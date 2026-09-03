Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/sonycc?download=true
inline.NumInlined: 270
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN27LibRaw_SonyYCC_Decompressor21decode_sony_ljpeg_420ERSt6vectorItSaItEEii:bb.a
bb.bw:                                            ; preds = %bb.bv
  %i.qj = add nsw i32 %i.qd, -16
  %i.qk = load ptr, ptr %4, align 8, !tbaa !51
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8
  call void %i.qm(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.qj), !call_target !75, !inline_history !95
  br label %_ZN9HuffTable6decodeER7BitPump.exit147

bb.bx:                                            ; preds = %bb.bu, %bb.bt
  %i.qn = load ptr, ptr %4, align 8, !tbaa !51
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8
  call void %i.qp(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.qd), !call_target !75, !inline_history !95
  br label %_ZN9HuffTable6decodeER7BitPump.exit147

.thread.i146:                                     ; preds = %bb.bs, %_ZN9HuffTable6decodeER7BitPump.exit143
  %i.qq = call noundef i32 @_ZN9HuffTable12decode_slow1ER7BitPump(ptr noundef nonnull align 8 dereferenceable(2177) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.qr = trunc i32 %i.qq to i16
  br label %_ZN9HuffTable6decodeER7BitPump.exit147

_ZN9HuffTable6decodeER7BitPump.exit147:           ; preds = %bb.bv, %bb.bw, %bb.bx, %.thread.i146
  %.0.i145 = phi i16 [ %i.qr, %.thread.i146 ], [ -32768, %bb.bv ], [ -32768, %bb.bw ], [ %i.qe, %bb.bx ]
  %i.qs = load i8, ptr %i.hj, align 1, !tbaa !106, !range !48, !noundef !49
  %i.qt = trunc nuw i8 %i.qs to i1
  br i1 %i.qt, label %.thread.i150, label %bb.by

bb.by:                                            ; preds = %_ZN9HuffTable6decodeER7BitPump.exit147
  %i.qu = load ptr, ptr %4, align 8, !tbaa !51
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = call noundef i32 %i.qv(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 13), !call_target !66, !inline_history !95
  %i.qx = zext i32 %i.qw to i64
  %i.qy = load ptr, ptr %i.jx, align 8, !tbaa !78
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %i.qx
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !107 ; 3 uses
  %i.rb = and i64 %i.ra, 4294967296
  %.not.i148 = icmp eq i64 %i.rb, 0
  br i1 %.not.i148, label %.thread.i150, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.rc = trunc i64 %i.ra to i32
  %i.rd = lshr i32 %i.rc, 16
  %i.re = and i32 %i.rd, 255                      ; 3 uses
  %i.rf = trunc i64 %i.ra to i16                  ; 2 uses
  %i.rg = icmp eq i16 %i.rf, -32768
  br i1 %i.rg, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.rh = load i8, ptr %i.jy, align 4, !tbaa !79, !range !48, !noundef !49
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.rj = icmp samesign ugt i32 %i.re, 16
  br i1 %i.rj, label %bb.cc, label %_ZN9HuffTable6decodeER7BitPump.exit151

bb.cc:                                            ; preds = %bb.cb
  %i.rk = add nsw i32 %i.re, -16
  %i.rl = load ptr, ptr %4, align 8, !tbaa !51
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.rk), !call_target !75, !inline_history !95
  br label %_ZN9HuffTable6decodeER7BitPump.exit151

bb.cd:                                            ; preds = %bb.ca, %bb.bz
  %i.ro = load ptr, ptr %4, align 8, !tbaa !51
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8
  call void %i.rq(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.re), !call_target !75, !inline_history !95
  br label %_ZN9HuffTable6decodeER7BitPump.exit151

.thread.i150:                                     ; preds = %bb.by, %_ZN9HuffTable6decodeER7BitPump.exit147
  %i.rr = call noundef i32 @_ZN9HuffTable12decode_slow1ER7BitPump(ptr noundef nonnull align 8 dereferenceable(2177) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.rs = trunc i32 %i.rr to i16
  br label %_ZN9HuffTable6decodeER7BitPump.exit151

_ZN9HuffTable6decodeER7BitPump.exit151:           ; preds = %bb.cb, %bb.cc, %bb.cd, %.thread.i150
  %.0.i149 = phi i16 [ %i.rs, %.thread.i150 ], [ -32768, %bb.cb ], [ -32768, %bb.cc ], [ %i.rf, %bb.cd ]
  %i.rt = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ru = add i32 %i.km, %i.rt                    ; 6 uses
  %i.rv = add i32 %i.ru, 3
  %i.rw = add i32 %i.ko, %i.rt                    ; 6 uses
  %i.rx = add i32 %i.rw, 3
  %i.ry = trunc i32 %i.mg to i16
  %i.rz = zext i32 %i.ru to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.rz
  store i16 %i.ry, ptr %i.sa, align 2, !tbaa !81
  %i.sb = add i16 %.0.i145, %.089.in              ; 4 uses
  %i.sc = or disjoint i32 %i.ru, 1
  %i.sd = zext i32 %i.sc to i64
  %i.se = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.sd
  store i16 %i.sb, ptr %i.se, align 2, !tbaa !81
  %i.sf = add i16 %.0.i149, %.088.in              ; 4 uses
  %i.sg = add i32 %i.ru, 2
  %i.sh = zext i32 %i.sg to i64
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.sh
  store i16 %i.sf, ptr %i.si, align 2, !tbaa !81
  %i.sj = trunc i32 %i.nj to i16
  %i.sk = zext i32 %i.rv to i64
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.sk
  store i16 %i.sj, ptr %i.sl, align 2, !tbaa !81
  %i.sm = add i32 %i.ru, 4
  %i.sn = zext i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.sn
  store i16 %i.sb, ptr %i.so, align 2, !tbaa !81
  %i.sp = add i32 %i.ru, 5
  %i.sq = zext i32 %i.sp to i64
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.sq
  store i16 %i.sf, ptr %i.sr, align 2, !tbaa !81
  %i.ss = trunc i32 %i.on to i16
  %i.st = zext i32 %i.rw to i64
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.st
  store i16 %i.ss, ptr %i.su, align 2, !tbaa !81
  %i.sv = add i32 %i.rw, 1
  %i.sw = zext i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.sw
  store i16 %i.sb, ptr %i.sx, align 2, !tbaa !81
  %i.sy = add i32 %i.rw, 2
  %i.sz = zext i32 %i.sy to i64
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.sz
  store i16 %i.sf, ptr %i.ta, align 2, !tbaa !81
  %i.tb = trunc i32 %i.pq to i16
  %i.tc = zext i32 %i.rx to i64
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.tc
  store i16 %i.tb, ptr %i.td, align 2, !tbaa !81
  %i.te = add i32 %i.rw, 4
  %i.tf = zext i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.tf
  store i16 %i.sb, ptr %i.tg, align 2, !tbaa !81
  %i.th = add i32 %i.rw, 5
  %i.ti = zext i32 %i.th to i64
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.ti
  store i16 %i.sf, ptr %i.tj, align 2, !tbaa !81
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.tk = trunc nuw i64 %indvars.iv.next to i32
  %i.tl = icmp sgt i32 %2, %i.tk
  br i1 %i.tl, label %bb.ar, label %._crit_edge, !llvm.loop !97

bb.ce:                                            ; preds = %._crit_edge155, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ true, %._crit_edge155 ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN27LibRaw_SonyYCC_Decompressor11decode_sonyERSt6vectorItSaItEEii(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !83
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 4, !tbaa !84
  switch i32 %i.g, label %bb.e [
    i32 2, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN27LibRaw_SonyYCC_Decompressor21decode_sony_ljpeg_420ERSt6vectorItSaItEEii(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN24LibRaw_LjpegDecompressor16decode_ljpeg_422ERSt6vectorItSaItEEii(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.0 = phi i1 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN24LibRaw_LjpegDecompressor16decode_ljpeg_422ERSt6vectorItSaItEEii(ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19sony_ycbcr_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.5", align 8     ; 16 uses
  %2 = alloca %struct.LibRaw_SonyYCC_Decompressor, align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 5, ptr %i.c, align 16, !tbaa !194
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381852 ; 7 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !195  ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !196
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = icmp ugt i32 %i.f, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 5, ptr %i.m, align 16, !tbaa !194
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 381856 ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !197  ; 3 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i16, ptr %i.h, align 8, !tbaa !198
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = icmp ugt i32 %i.o, %i.r
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = tail call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 5, ptr %i.t, align 16, !tbaa !194
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %3 = insertelement <2 x i32> poison, i32 %i.o, i64 0
  %4 = insertelement <2 x i32> %3, i32 %i.f, i64 1 ; 2 uses
  %5 = add nsw <2 x i32> %4, splat (i32 -1)
  %6 = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %7 = insertelement <2 x i32> %6, i32 %i.k, i64 1
  %8 = add nuw nsw <2 x i32> %5, %7
  %9 = udiv <2 x i32> %8, %4                      ; 2 uses
  %10 = extractelement <2 x i32> %9, i64 0
  %11 = extractelement <2 x i32> %9, i64 1        ; 3 uses
  %i.u = mul nsw i32 %10, %11                     ; 5 uses
  %i.v = add nsw i32 %i.u, -1025
  %or.cond = icmp ult i32 %i.v, -1024
  br i1 %or.cond, label %bb.j, label %.noexc

bb.j:                                             ; preds = %bb.i
  %i.w = tail call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 5, ptr %i.w, align 16, !tbaa !194
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
  unreachable

.noexc:                                           ; preds = %bb.i
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !199  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x), !call_target !207
  %i.ac = zext nneg i32 %i.u to i64               ; 3 uses
  %i.ad = shl nuw nsw i64 %i.ac, 3                ; 3 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #13 ; 7 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !208
  %i.af = add nsw i64 %i.ac, -1                   ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0                    ; 2 uses
  br i1 %i.ag, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !208
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !199 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !209
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i64 noundef %i.ak, i32 noundef 0)
          to label %.lr.ph.preheader unwind label %bb.k, !call_target !212 ; 0 uses

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %i.ap = zext nneg i32 %i.u to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.l
  %i.aq = shl nuw nsw i64 %i.ac, 2                ; 3 uses
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #13
          to label %.noexc101 unwind label %bb.o  ; 10 uses

.noexc101:                                        ; preds = %._crit_edge
  store i32 0, ptr %i.ar, align 4, !tbaa !85
  %i.as = getelementptr i8, ptr %i.ar, i64 4      ; 4 uses
  br i1 %i.ag, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc101
  %.idx.i.i.i.i.i.i.i99 = shl nuw nsw i64 %i.af, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i99, i1 false), !tbaa !85
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

bb.k:                                             ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit154

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.au = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !208
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = icmp samesign ult i64 %indvars.iv.next, %i.ap
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !109

bb.m:                                             ; preds = %.lr.ph
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit154

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc101
  %.0.i.i.i.i.i100.idx = phi i64 [ %.idx.i.i.i.i.i.i.i99, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ 0, %.noexc101 ] ; 3 uses
  %.0.i.i.i.i.i100.ptr = getelementptr i8, ptr %i.as, i64 %.0.i.i.i.i.i100.idx
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !199 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !213
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i64 noundef %i.bb, i32 noundef 0)
          to label %.lr.ph202.preheader unwind label %bb.p, !call_target !212 ; 0 uses

.lr.ph202.preheader:                              ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.bg = zext nneg i32 %i.u to i64
  br label %.lr.ph202

bb.n:                                             ; preds = %bb.q
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %i.bh = icmp samesign ult i64 %indvars.iv.next213, %i.bg
  br i1 %i.bh, label %.lr.ph202, label %._crit_edge203, !llvm.loop !110

._crit_edge203:                                   ; preds = %bb.n
  %i.bi = load i32, ptr %i.e, align 4, !tbaa !195
  %i.bj = zext i32 %i.bi to i64
  %i.bk = load i32, ptr %i.n, align 8, !tbaa !197
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw nsw i64 %i.bl, %i.bj            ; 2 uses
  %i.bn = icmp samesign ugt i64 %i.bm, 715827882
  br i1 %i.bn, label %.invoke, label %bb.t

bb.o:                                             ; preds = %._crit_edge
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit154

bb.p:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %bb.n
  %indvars.iv212 = phi i64 [ 0, %.lr.ph202.preheader ], [ %indvars.iv.next213, %bb.n ] ; 3 uses
  %i.bq = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.q unwind label %.loopexit194 ; 2 uses

bb.q:                                             ; preds = %.lr.ph202
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv212
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !85
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv212
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !208
  %i.bu = zext i32 %i.bq to i64
  %i.bv = add nsw i64 %i.bt, %i.bu
  %i.bw = icmp sgt i64 %i.bv, %i.ab
  br i1 %i.bw, label %bb.r, label %bb.n

bb.r:                                             ; preds = %bb.q
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 5, ptr %i.bx, align 16, !tbaa !194
  invoke void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
          to label %bb.bj unwind label %.loopexit.split-lp195

.loopexit194:                                     ; preds = %.lr.ph202
  %lpad.loopexit196 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp195:                            ; preds = %bb.r
  %lpad.loopexit.split-lp197 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.s:                                             ; preds = %.invoke
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.t:                                             ; preds = %._crit_edge203
  %i.bz = mul nuw nsw i64 %i.bm, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 5564
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !214
  %i.cc = zext i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 20               ; 2 uses
  %i.ce = icmp samesign ugt i64 %i.bz, %i.cd
  br i1 %i.ce, label %.invoke, label %bb.u

.invoke:                                          ; preds = %bb.t, %._crit_edge203
  %.sink272 = phi i32 [ 5, %._crit_edge203 ], [ 1, %bb.t ]
  %i.cf = tail call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 %.sink272, ptr %i.cf, align 16, !tbaa !194
  invoke void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
          to label %.cont unwind label %bb.s

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %bb.t
  %.not9.i.i = icmp eq i64 %.0.i.i.i.i.i100.idx, 0
  br i1 %.not9.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %.pre.i.i = load i32, ptr %i.ar, align 4, !tbaa !85 ; 2 uses
  %i.cg = add nsw i64 %.0.i.i.i.i.i100.idx, -4    ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %i.cj = phi i32 [ %i.co, %.lr.ph.i.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ck = phi ptr [ %i.cn, %.lr.ph.i.i.prol ], [ %i.as, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i.prol = phi ptr [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ar, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !85 ; 2 uses
  %i.cm = icmp ult i32 %i.cj, %i.cl
  %spec.select.i.i.prol = select i1 %i.cm, ptr %i.ck, ptr %.sroa.02.010.i.i.prol ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %i.co = tail call i32 @llvm.umax.i32(i32 %i.cj, i32 %i.cl) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6LibRaw19sony_ycbcr_load_rawEv:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.fr = load i32, ptr %i.fk, align 4, !tbaa !85
  %.not75 = icmp eq i32 %i.fq, %i.fr
  br i1 %.not75, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fs = call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 4, ptr %i.fs, align 16, !tbaa !194
  invoke void @__cxa_throw(ptr nonnull %i.fs, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
          to label %bb.bj unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.z
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit:                                        ; preds = %bb.aa
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  invoke void @_ZN24LibRaw_LjpegDecompressorC2EPhj(ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull %i.eg, i32 noundef %i.fq)
          to label %_ZN27LibRaw_SonyYCC_DecompressorC2EPhj.exit unwind label %bb.af

_ZN27LibRaw_SonyYCC_DecompressorC2EPhj.exit:      ; preds = %bb.ae
  %i.fu = load i32, ptr %i.ej, align 8, !tbaa !226
  %.not76 = icmp eq i32 %i.fu, 3
  %i.fv = load i32, ptr %i.ek, align 8
  %.not77 = icmp eq i32 %i.fv, 0
  %or.cond282 = select i1 %.not76, i1 %.not77, i1 false
  br i1 %or.cond282, label %bb.ah, label %.invoke279

bb.af:                                            ; preds = %bb.ae
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ag:                                            ; preds = %.invoke279
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.invoke279:                                       ; preds = %_ZN27LibRaw_SonyYCC_DecompressorC2EPhj.exit
  %i.fy = call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 5, ptr %i.fy, align 16, !tbaa !194
  invoke void @__cxa_throw(ptr nonnull %i.fy, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
          to label %.cont280 unwind label %bb.ag

.cont280:                                         ; preds = %.invoke279
  unreachable

bb.ah:                                            ; preds = %_ZN27LibRaw_SonyYCC_DecompressorC2EPhj.exit
  %i.fz = load i32, ptr %i.e, align 4, !tbaa !195
  %i.ga = load i32, ptr %i.n, align 8, !tbaa !197 ; 3 uses
  %i.gb = mul i32 %i.fz, 3                        ; 3 uses
  %i.gc = mul i32 %i.gb, %i.ga
  %i.gd = load ptr, ptr %i.el, align 8, !tbaa !32 ; 3 uses
  %i.ge = load ptr, ptr %1, align 8, !tbaa !33    ; 4 uses
  %i.gf = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.gg = ptrtoint ptr %i.ge to i64               ; 2 uses
  %i.gh = sub i64 %i.gf, %i.gg                    ; 4 uses
  %i.gi = ashr exact i64 %i.gh, 1                 ; 5 uses
  %i.gj = zext i32 %i.gc to i64                   ; 2 uses
  %i.gk = icmp ult i64 %i.gi, %i.gj
  br i1 %i.gk, label %bb.ai, label %_ZNSt6vectorItSaItEE6resizeEm.exit

bb.ai:                                            ; preds = %bb.ah
  %i.gl = sub nuw nsw i64 %i.gj, %i.gi            ; 5 uses
  %i.gm = load ptr, ptr %i.em, align 8, !tbaa !227
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = sub i64 %i.gn, %i.gf
  %i.gp = ashr exact i64 %i.go, 1                 ; 2 uses
  %i.gq = xor i64 %i.gi, 4611686018427387903
  %i.gr = icmp ule i64 %i.gp, %i.gq
  call void @llvm.assume(i1 %i.gr)
  %.not28.i = icmp ult i64 %i.gp, %i.gl
  br i1 %.not28.i, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i16 0, ptr %i.gd, align 2, !tbaa !81
  %i.gs = getelementptr i8, ptr %i.gd, i64 2      ; 3 uses
  %i.gt = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.aj
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.gt, 1    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %i.gs, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !81
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.aj
  %.0.i.i.i.i = phi ptr [ %i.gv, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.gs, %bb.aj ]
  store ptr %.0.i.i.i.i, ptr %i.el, align 8, !tbaa !32
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ai
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.gi, i64 %i.gl)
  %i.gw = add nuw nsw i64 %.sroa.speculated.i.i, %i.gi ; 2 uses
  %i.gx = shl nuw nsw i64 %i.gw, 1
  %i.gy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #13
          to label %.noexc158 unwind label %.loopexit188 ; 4 uses

.noexc158:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gh ; 3 uses
  store i16 0, ptr %i.gz, align 2, !tbaa !81
  %i.ha = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc158
  %i.hc = getelementptr i8, ptr %i.gz, i64 2
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ha, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.hc, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !81
  br label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc158
  %i.hd = icmp sgt i64 %i.gh, 0
  br i1 %i.hd, label %bb.ak, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

bb.ak:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.gy, ptr align 2 %i.ge, i64 %i.gh, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i: ; preds = %bb.ak, %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.ge, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  %i.he = load ptr, ptr %i.em, align 8, !tbaa !227
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = sub i64 %i.hf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.hg) #14
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36.i

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36.i: ; preds = %bb.al, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  store ptr %i.gy, ptr %1, align 8, !tbaa !33
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.gz, i64 %i.gl
  store ptr %i.hh, ptr %i.el, align 8, !tbaa !32
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %i.gw
  store ptr %i.hi, ptr %i.em, align 8, !tbaa !227
  %.pre = load i32, ptr %i.e, align 4, !tbaa !195
  %.pre226 = load i32, ptr %i.n, align 8, !tbaa !197
  %.pre227 = mul i32 %.pre, 3
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit

.loopexit188:                                     ; preds = %bb.an, %bb.ao, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit190 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp189:                            ; preds = %_ZN27LibRaw_SonyYCC_Decompressor11decode_sonyERSt6vectorItSaItEEii.exit.thread
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZNSt6vectorItSaItEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36.i, %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit.i, %bb.ah
  %.pre-phi = phi i32 [ %.pre227, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36.i ], [ %i.gb, %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit.i ], [ %i.gb, %bb.ah ] ; 2 uses
  %i.hj = phi i32 [ %.pre226, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36.i ], [ %i.ga, %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit.i ], [ %i.ga, %bb.ah ] ; 2 uses
  %i.hk = load ptr, ptr %i.en, align 8, !tbaa !34 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !83
  %i.hn = icmp eq i32 %i.hm, 2
  br i1 %i.hn, label %bb.am, label %_ZN27LibRaw_SonyYCC_Decompressor11decode_sonyERSt6vectorItSaItEEii.exit.thread

bb.am:                                            ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !84
  switch i32 %i.hp, label %_ZN27LibRaw_SonyYCC_Decompressor11decode_sonyERSt6vectorItSaItEEii.exit.thread [
    i32 2, label %bb.an
    i32 1, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.hq = invoke noundef zeroext i1 @_ZN27LibRaw_SonyYCC_Decompressor21decode_sony_ljpeg_420ERSt6vectorItSaItEEii(ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.pre-phi, i32 noundef %i.hj)
          to label %_ZN27LibRaw_SonyYCC_Decompressor11decode_sonyERSt6vectorItSaItEEii.exit unwind label %.loopexit188

bb.ao:                                            ; preds = %bb.am
  %i.hr = invoke noundef zeroext i1 @_ZN24LibRaw_LjpegDecompressor16decode_ljpeg_422ERSt6vectorItSaItEEii(ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.pre-phi, i32 noundef %i.hj)
          to label %_ZN27LibRaw_SonyYCC_Decompressor11decode_sonyERSt6vectorItSaItEEii.exit unwind label %.loopexit188

_ZN27LibRaw_SonyYCC_Decompressor11decode_sonyERSt6vectorItSaItEEii.exit: ; preds = %bb.an, %bb.ao
  %.0.i = phi i1 [ %i.hr, %bb.ao ], [ %i.hq, %bb.an ]
  br i1 %.0.i, label %bb.ap, label %_ZN27LibRaw_SonyYCC_Decompressor11decode_sonyERSt6vectorItSaItEEii.exit.thread

_ZN27LibRaw_SonyYCC_Decompressor11decode_sonyERSt6vectorItSaItEEii.exit.thread: ; preds = %bb.am, %_ZNSt6vectorItSaItEE6resizeEm.exit, %_ZN27LibRaw_SonyYCC_Decompressor11decode_sonyERSt6vectorItSaItEEii.exit
  %i.hs = call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 5, ptr %i.hs, align 16, !tbaa !194
  invoke void @__cxa_throw(ptr nonnull %i.hs, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
          to label %bb.bj unwind label %.loopexit.split-lp189

bb.ap:                                            ; preds = %_ZN27LibRaw_SonyYCC_Decompressor11decode_sonyERSt6vectorItSaItEEii.exit
  %i.ht = trunc nuw nsw i64 %indvars.iv219 to i32 ; 2 uses
  %i.hu = sdiv i32 %i.ht, %11                     ; 3 uses
  %i.hv = srem i32 %i.ht, %11                     ; 3 uses
  %i.hw = load i32, ptr %i.eo, align 8, !tbaa !216 ; 2 uses
  %i.hx = and i32 %i.hw, 64
  %.not78 = icmp eq i32 %i.hx, 0
  br i1 %.not78, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hy = and i32 %i.hw, 128
  %.not80 = icmp eq i32 %i.hy, 0
  %i.hz = load ptr, ptr %i.a, align 8, !tbaa !192 ; 7 uses
  %i.ia = load i16, ptr %i.i, align 2, !tbaa !196 ; 5 uses
  br i1 %.not80, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ib = zext i16 %i.ia to i32                   ; 2 uses
  %i.ic = load i16, ptr %i.h, align 8, !tbaa !198
  %i.id = zext i16 %i.ic to i32                   ; 2 uses
  %i.ie = load i32, ptr %i.n, align 8, !tbaa !197 ; 4 uses
  %i.if = mul i32 %i.ie, %i.hu                    ; 6 uses
  %i.ig = load i32, ptr %i.e, align 4, !tbaa !195 ; 8 uses
  %i.ih = mul i32 %i.ig, %i.hv                    ; 6 uses
  %i.ii = load ptr, ptr %1, align 8, !tbaa !33    ; 8 uses
  %i.ij = load ptr, ptr %i.en, align 8, !tbaa !34 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !83 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.in = load i32, ptr %i.im, align 4, !tbaa !84 ; 2 uses
  %i.io = icmp slt i32 %i.il, 2
  %i.ip = icmp slt i32 %i.in, 2
  %or.cond.i = and i1 %i.io, %i.ip
  %i.iq = icmp sgt i32 %i.ie, 0                   ; 2 uses
  br i1 %or.cond.i, label %.preheader.i, label %.preheader101.i

.preheader101.i:                                  ; preds = %bb.ar
  %i.ir = icmp sgt i32 %i.ig, 0
  %or.cond151.i = and i1 %i.iq, %i.ir
  br i1 %or.cond151.i, label %.lr.ph106.split.us.preheader.i, label %_ZL8copy_yccPA4_tiiiiPtiiii.exit

.lr.ph106.split.us.preheader.i:                   ; preds = %.preheader101.i
  %i.is = sext i32 %i.ih to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ih, i32 range(i32 0, 65536) %i.ib)
  %i.it = sub i32 %smax.i, %i.ih
  %i.iu = sext i32 %i.if to i64
  %i.iv = zext i16 %i.ia to i64
  %smax127.i = call i32 @llvm.smax.i32(i32 %i.if, i32 range(i32 0, 65536) %i.id)
  %i.iw = sub i32 %smax127.i, %i.if
  %wide.trip.count128.i = zext i32 %i.iw to i64
  %wide.trip.count130.i = zext nneg i32 %i.ie to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.hz, i64 %i.is
  %wide.trip.count.i = zext i32 %i.it to i64
  %wide.trip.count122.i = zext nneg i32 %i.ig to i64
  br label %.lr.ph106.split.us.i

.lr.ph106.split.us.i:                             ; preds = %.critedge7.us.i, %.lr.ph106.split.us.preheader.i
  %indvars.iv124.i = phi i64 [ 0, %.lr.ph106.split.us.preheader.i ], [ %indvars.iv.next125.i, %.critedge7.us.i ] ; 4 uses
  %exitcond129.not.i = icmp eq i64 %indvars.iv124.i, %wide.trip.count128.i
  br i1 %exitcond129.not.i, label %_ZL8copy_yccPA4_tiiiiPtiiii.exit, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph106.split.us.i
  %i.ix = add nsw i64 %indvars.iv124.i, %i.iu     ; 2 uses
  %i.iy = mul nsw i64 %i.ix, %i.iv
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.iy
  %i.iz = trunc i64 %indvars.iv124.i to i32
  %i.ja = mul i32 %i.ig, %i.iz
  %i.jb = zext i32 %i.ja to i64
  %i.jc = trunc nsw i64 %i.ix to i32
  br label %bb.as

bb.as:                                            ; preds = %bb.aw, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.aw ] ; 5 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge7.us.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jd = add nuw nsw i64 %indvars.iv.i, %i.jb
  %.idx.i = mul nuw nsw i64 %i.jd, 6
  %i.je = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.idx.i ; 3 uses
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !81
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %gep.i, i64 %indvars.iv.i ; 3 uses
  store i16 %i.jf, ptr %i.jg, align 2, !tbaa !81
  %i.jh = srem i32 %i.jc, %i.in
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.jj = trunc i64 %indvars.iv.i to i32
  %i.jk = add i32 %i.ih, %i.jj
  %i.jl = srem i32 %i.jk, %i.il
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jn = getelementptr i8, ptr %i.je, i64 2
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !81
  %spec.select100.us.i = call i16 @llvm.usub.sat.i16(i16 %i.jo, i16 8192)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  store i16 %spec.select100.us.i, ptr %i.jp, align 2, !tbaa !81
  %i.jq = getelementptr i8, ptr %i.je, i64 4
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !81
  %i.js = call i16 @llvm.usub.sat.i16(i16 %i.jr, i16 8192)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  store i16 %i.js, ptr %i.jt, align 2, !tbaa !81
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond123.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count122.i
  br i1 %exitcond123.not.i, label %.critedge7.us.i, label %bb.as, !llvm.loop !113

.critedge7.us.i:                                  ; preds = %bb.aw, %bb.as
  %indvars.iv.next125.i = add nuw nsw i64 %indvars.iv124.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next125.i, %wide.trip.count130.i
  br i1 %exitcond131.not.i, label %_ZL8copy_yccPA4_tiiiiPtiiii.exit, label %.lr.ph106.split.us.i, !llvm.loop !114

.preheader.i:                                     ; preds = %bb.ar
  br i1 %i.iq, label %.lr.ph111.i, label %_ZL8copy_yccPA4_tiiiiPtiiii.exit

.lr.ph111.i:                                      ; preds = %.preheader.i
  %i.ju = icmp sgt i32 %i.ig, 0
  %i.jv = icmp slt i32 %i.ih, %i.ib
  %or.cond99108.i = and i1 %i.ju, %i.jv
  br i1 %or.cond99108.i, label %.lr.ph111.split.us.preheader.i, label %_ZL8copy_yccPA4_tiiiiPtiiii.exit

.lr.ph111.split.us.preheader.i:                   ; preds = %.lr.ph111.i
  %i.jw = zext nneg i32 %i.ig to i64
  %i.jx = sext i32 %i.ih to i64                   ; 3 uses
  %i.jy = zext i16 %i.ia to i64                   ; 4 uses
  %i.jz = sext i32 %i.if to i64                   ; 3 uses
  %smax138.i = call i32 @llvm.smax.i32(i32 %i.if, i32 range(i32 0, 65536) %i.id)
  %i.ka = sub i32 %smax138.i, %i.if
  %wide.trip.count139.i = zext i32 %i.ka to i64
  %wide.trip.count141.i = zext nneg i32 %i.ie to i64 ; 2 uses
  %invariant.gep149.i = getelementptr [8 x i8], ptr %i.hz, i64 %i.jx
  %invariant.op.i = sub nsw i64 %i.jy, %i.jx
  %invariant.smin.i = call i64 @llvm.smin.i64(i64 %i.jw, i64 %invariant.op.i) ; 3 uses
  %smax = call i64 @llvm.smax.i64(i64 %invariant.smin.i, i64 1) ; 10 uses
  %i.kb = shl nsw i64 %i.jz, 3
  %i.kc = mul nsw i64 %i.kb, %i.jy
  %i.kd = shl nsw i64 %i.jx, 3                    ; 2 uses
  %i.ke = getelementptr i8, ptr %i.hz, i64 %i.kc
  %scevgep344 = getelementptr i8, ptr %i.ke, i64 %i.kd
  %scevgep345 = getelementptr i8, ptr %i.hz, i64 -2
  %i.kf = add nsw i64 %i.jz, %wide.trip.count141.i
  %i.kg = shl nsw i64 %i.kf, 3
  %i.kh = add nsw i64 %i.kg, -8
  %i.ki = mul nsw i64 %i.kh, %i.jy
  %i.kj = shl nuw nsw i64 %smax, 3
  %i.kk = getelementptr i8, ptr %scevgep345, i64 %i.ki
  %i.kl = getelementptr i8, ptr %i.kk, i64 %i.kj
  %scevgep346 = getelementptr i8, ptr %i.kl, i64 %i.kd
  %i.km = mul nuw nsw i64 %smax, 6
  %scevgep348 = getelementptr i8, ptr %i.ii, i64 %i.km
  %min.iters.check353 = icmp slt i64 %invariant.smin.i, 8
  %min.iters.check355 = icmp slt i64 %invariant.smin.i, 16
  %i.kn = and i64 %smax, 8
  %n.vec357 = and i64 %smax, 9223372036854775792  ; 4 uses
  %cmp.n366 = icmp eq i64 %smax, %n.vec357
  %min.epilog.iters.check371.not.not = icmp eq i64 %i.kn, 0
  %n.vec373 = and i64 %smax, 9223372036854775800  ; 3 uses
  %cmp.n382 = icmp eq i64 %smax, %n.vec373
  %xtraiter388 = and i64 %smax, 1
  %lcmp.mod389.not = icmp eq i64 %xtraiter388, 0
  %invariant.op = sub nuw i64 %smax, 1
  br label %.lr.ph111.split.us.i

.lr.ph111.split.us.i:                             ; preds = %..critedge3_crit_edge.us.i, %.lr.ph111.split.us.preheader.i
  %indvars.iv135.i = phi i64 [ 0, %.lr.ph111.split.us.preheader.i ], [ %indvars.iv.next136.i, %..critedge3_crit_edge.us.i ] ; 5 uses
  %i.ko = trunc i64 %indvars.iv135.i to i32
  %i.kp = mul i32 %i.ig, %i.ko
  %i.kq = zext i32 %i.kp to i64
  %i.kr = mul nuw nsw i64 %i.kq, 6                ; 2 uses
  %scevgep347 = getelementptr i8, ptr %i.ii, i64 %i.kr
  %scevgep349 = getelementptr i8, ptr %scevgep348, i64 %i.kr
  %exitcond140.not.i = icmp eq i64 %indvars.iv135.i, %wide.trip.count139.i
  br i1 %exitcond140.not.i, label %_ZL8copy_yccPA4_tiiiiPtiiii.exit, label %iter.check368

iter.check368:                                    ; preds = %.lr.ph111.split.us.i
  %i.ks = add nsw i64 %indvars.iv135.i, %i.jz
  %i.kt = mul nsw i64 %i.ks, %i.jy
  %gep150.i = getelementptr [8 x i8], ptr %invariant.gep149.i, i64 %i.kt ; 27 uses
  %i.ku = trunc i64 %indvars.iv135.i to i32
  %i.kv = mul i32 %i.ig, %i.ku
  %i.kw = zext i32 %i.kv to i64                   ; 5 uses
  br i1 %min.iters.check353, label %vec.epilog.scalar.ph369.preheader, label %vector.memcheck343

vector.memcheck343:                               ; preds = %iter.check368
  %bound0350 = icmp ult ptr %scevgep344, %scevgep349
  %bound1351 = icmp ult ptr %scevgep347, %scevgep346
  %found.conflict352 = and i1 %bound0350, %bound1351
  br i1 %found.conflict352, label %vec.epilog.scalar.ph369.preheader, label %vector.main.loop.iter.check354

vector.main.loop.iter.check354:                   ; preds = %vector.memcheck343
  br i1 %min.iters.check355, label %vec.epilog.ph372, label %vector.body358

vector.body358:                                   ; preds = %vector.main.loop.iter.check354, %vector.body358
  %index359 = phi i64 [ %index.next364, %vector.body358 ], [ 0, %vector.main.loop.iter.check354 ] ; 18 uses
  %i.kx = add nuw nsw i64 %index359, %i.kw
  %i.ky = mul nuw nsw i64 %i.kx, 6
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ky
  %wide.vec360 = load <48 x i16>, ptr %i.kz, align 2, !tbaa !81, !alias.scope !228 ; 18 uses
  %strided.vec362 = shufflevector <48 x i16> %wide.vec360, <48 x i16> poison, <16 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 34, i32 37, i32 40, i32 43, i32 46>
end_hunk_1
