Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/png?download=true
inline.NumInlined: 72
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@png_XYZ_from_xy:bb.a
  %i.ir = load i32, ptr %i.p, align 4, !tbaa !142 ; 2 uses
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.it = sitofp i32 %i.ir to double
  %i.iu = uitofp nneg i32 %.0.i171 to double
  %i.iv = fmul nnan double %i.iu, %i.it
  %i.iw = fdiv double %i.iv, 1.000000e+05
  %i.ix = fadd double %i.iw, 5.000000e-01
  %i.iy = tail call double @llvm.floor.f64(double %i.ix) ; 3 uses
  %i.iz = fcmp ole double %i.iy, f0x41DFFFFFFFC00000
  %i.ja = fcmp oge double %i.iy, f0xC1E0000000000000
  %or.cond3.i224 = and i1 %i.iz, %i.ja
  br i1 %or.cond3.i224, label %bb.by, label %.critedge

bb.by:                                            ; preds = %bb.bx
  %i.jb = fptosi double %i.iy to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bw
  %.sink.i227 = phi i32 [ %i.jb, %bb.by ], [ 0, %bb.bw ]
  store i32 %.sink.i227, ptr %i.iq, align 4, !tbaa !34
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jd = load i32, ptr %i.n, align 4, !tbaa !141
  %i.je = load i32, ptr %i.p, align 4, !tbaa !142
  %i.jf = add i32 %i.je, %i.jd                    ; 2 uses
  %i.jg = icmp eq i32 %i.jf, 100000
  br i1 %i.jg, label %png_muldiv.exit234, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jh = sub i32 100000, %i.jf
  %i.ji = sitofp i32 %i.jh to double
  %i.jj = uitofp nneg i32 %.0.i171 to double
  %i.jk = fmul nnan double %i.jj, %i.ji
  %i.jl = fdiv double %i.jk, 1.000000e+05
  %i.jm = fadd double %i.jl, 5.000000e-01
  %i.jn = tail call double @llvm.floor.f64(double %i.jm) ; 3 uses
  %i.jo = fcmp ole double %i.jn, f0x41DFFFFFFFC00000
  %i.jp = fcmp oge double %i.jn, f0xC1E0000000000000
  %or.cond3.i230 = and i1 %i.jo, %i.jp
  br i1 %or.cond3.i230, label %bb.cb, label %.critedge

bb.cb:                                            ; preds = %bb.ca
  %i.jq = fptosi double %i.jn to i32
  br label %png_muldiv.exit234

png_muldiv.exit234:                               ; preds = %bb.bz, %bb.cb
  %.sink.i233 = phi i32 [ %i.jq, %bb.cb ], [ 0, %bb.bz ]
  store i32 %.sink.i233, ptr %i.jc, align 4, !tbaa !34
  br label %.critedge

.critedge:                                        ; preds = %bb.bx, %bb.bu, %bb.br, %bb.bo, %bb.bl, %bb.bi, %bb.bf, %bb.bc, %bb.aw, %bb.az, %bb.aq, %png_fp_sub.exit153, %bb.ad, %png_fp_sub.exit130, %png_muldiv.exit160, %png_muldiv.exit137, %bb.j, %bb.m, %bb.o, %bb.r, %bb.t, %bb.w, %bb.ag, %bb.aj, %png_muldiv.exit234, %bb.ca, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %png_fp_sub.exit174
  %.1 = phi i32 [ 1, %png_fp_sub.exit174 ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.ca ], [ 1, %bb.aw ], [ 1, %bb.bc ], [ 1, %bb.bf ], [ 1, %bb.bi ], [ 1, %bb.bl ], [ 1, %bb.bo ], [ 1, %bb.br ], [ 1, %bb.aq ], [ 1, %bb.bu ], [ 1, %bb.h ], [ 0, %png_muldiv.exit234 ], [ 1, %bb.ad ], [ 1, %bb.aj ], [ 1, %bb.ag ], [ 1, %png_muldiv.exit160 ], [ 1, %bb.w ], [ 1, %bb.t ], [ 1, %bb.r ], [ 1, %bb.o ], [ 1, %bb.m ], [ 1, %bb.j ], [ 1, %bb.az ], [ 1, %bb.bx ], [ 1, %png_muldiv.exit137 ], [ 1, %png_fp_sub.exit130 ], [ 1, %png_fp_sub.exit153 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @png_reciprocal(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = sitofp i32 %0 to double
  %i.b = fdiv double 1.000000e+10, %i.a
  %i.c = fadd double %i.b, 5.000000e-01
  %i.d = tail call double @llvm.floor.f64(double %i.c) ; 3 uses
  %i.e = fcmp ole double %i.d, f0x41DFFFFFFFC00000
  %i.f = fcmp oge double %i.d, f0xC1E0000000000000
  %or.cond = and i1 %i.e, %i.f
  %i.g = fptosi double %i.d to i32
  %.0 = select i1 %or.cond, i32 %i.g, i32 0
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @png_icc_check_length(ptr noalias noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %2, 132
  %i.b = zext i32 %2 to i64                       ; 2 uses
  br i1 %i.a, label %.sink.split, label %icc_check_length.exit

icc_check_length.exit:                            ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  %i.e = icmp ult i64 %i.d, %i.b
  br i1 %i.e, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %icc_check_length.exit, %bb.a
  %.str.57.sink = phi ptr [ @.str.57, %bb.a ], [ @.str.20, %icc_check_length.exit ]
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull %.str.57.sink)
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %icc_check_length.exit
  %.0 = phi i32 [ 1, %icc_check_length.exit ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @png_icc_profile_error(ptr noalias noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [196 x i8], align 16              ; 10 uses
  %i.b = alloca [24 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 196, i64 noundef 0, ptr noundef nonnull @.str.58) #28 ; 2 uses
  %i.d = add i64 %i.c, 79
  %i.e = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef %i.d, i64 noundef %i.c, ptr noundef %1) #28
  %i.f = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 196, i64 noundef %i.e, ptr noundef nonnull @.str.59) #28 ; 3 uses
  %i.g = lshr i64 %2, 24                          ; 4 uses
  %i.h = icmp ne i64 %i.g, 32
  %i.i = add nsw i64 %i.g, -58
  %or.cond.i.i = icmp ult i64 %i.i, -10
  %or.cond10.i.not23.i = select i1 %i.h, i1 %or.cond.i.i, i1 false
  %i.j = add nsw i64 %i.g, -91
  %or.cond3.i.i = icmp ult i64 %i.j, -26
  %or.cond11.i.not22.i = select i1 %or.cond10.i.not23.i, i1 %or.cond3.i.i, i1 false
  %i.k = add nsw i64 %i.g, -123
  %i.l = icmp ult i64 %i.k, -26
  %narrow.i.not.i = select i1 %or.cond11.i.not22.i, i1 %i.l, i1 false
  br i1 %narrow.i.not.i, label %is_ICC_signature.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = lshr i64 %2, 16
  %i.n = and i64 %i.m, 255                        ; 4 uses
  %i.o = icmp ne i64 %i.n, 32
  %i.p = add nsw i64 %i.n, -58
  %or.cond.i6.i = icmp ult i64 %i.p, -10
  %or.cond10.i7.not26.i = select i1 %i.o, i1 %or.cond.i6.i, i1 false
  %i.q = add nsw i64 %i.n, -91
  %or.cond3.i8.i = icmp ult i64 %i.q, -26
  %or.cond11.i9.not24.i = select i1 %or.cond10.i7.not26.i, i1 %or.cond3.i8.i, i1 false
  %i.r = add nsw i64 %i.n, -123
  %i.s = icmp ult i64 %i.r, -26
  %narrow.i10.not.i = select i1 %or.cond11.i9.not24.i, i1 %i.s, i1 false
  br i1 %narrow.i10.not.i, label %is_ICC_signature.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = lshr i64 %2, 8
  %i.u = and i64 %i.t, 255                        ; 4 uses
  %i.v = icmp ne i64 %i.u, 32
  %i.w = add nsw i64 %i.u, -58
  %or.cond.i11.i = icmp ult i64 %i.w, -10
  %or.cond10.i12.not29.i = select i1 %i.v, i1 %or.cond.i11.i, i1 false
  %i.x = add nsw i64 %i.u, -91
  %or.cond3.i13.i = icmp ult i64 %i.x, -26
  %or.cond11.i14.not27.i = select i1 %or.cond10.i12.not29.i, i1 %or.cond3.i13.i, i1 false
  %i.y = add nsw i64 %i.u, -123
  %i.z = icmp ult i64 %i.y, -26
  %narrow.i15.not.i = select i1 %or.cond11.i14.not27.i, i1 %i.z, i1 false
  br i1 %narrow.i15.not.i, label %is_ICC_signature.exit.thread, label %is_ICC_signature.exit

is_ICC_signature.exit:                            ; preds = %bb.c
  %i.aa = and i64 %2, 255                         ; 4 uses
  %i.ab = icmp ne i64 %i.aa, 32
  %i.ac = add nsw i64 %i.aa, -58
  %or.cond.i16.i = icmp ult i64 %i.ac, -10
  %or.cond10.i17.i.not20 = select i1 %i.ab, i1 %or.cond.i16.i, i1 false
  %i.ad = add nsw i64 %i.aa, -91
  %or.cond3.i18.i = icmp ult i64 %i.ad, -26
  %or.cond11.i19.i.not19 = select i1 %or.cond10.i17.i.not20, i1 %or.cond3.i18.i, i1 false
  %i.ae = add nsw i64 %i.aa, -123
  %i.af = icmp ult i64 %i.ae, -26
  %narrow.i20.i.not = select i1 %or.cond11.i19.i.not19, i1 %i.af, i1 false
  br i1 %narrow.i20.i.not, label %is_ICC_signature.exit.thread, label %bb.d

bb.d:                                             ; preds = %is_ICC_signature.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f ; 8 uses
  %i.ah = trunc nuw i64 %2 to i32                 ; 4 uses
  store i8 39, ptr %i.ag, align 1, !tbaa !28
  %i.ai = lshr i32 %i.ah, 24                      ; 2 uses
  %i.aj = add nsw i32 %i.ai, -32
  %or.cond.i.i15 = icmp ult i32 %i.aj, 95
  %i.ak = trunc nuw nsw i32 %i.ai to i8
  %.0.i.i = select i1 %or.cond.i.i15, i8 %i.ak, i8 63
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %.0.i.i, ptr %i.al, align 1, !tbaa !28
  %i.am = lshr i32 %i.ah, 16                      ; 2 uses
  %i.an = and i32 %i.am, 255
  %i.ao = add nsw i32 %i.an, -32
  %or.cond.i9.i = icmp ult i32 %i.ao, 95
  %i.ap = trunc i32 %i.am to i8
  %.0.i10.i = select i1 %or.cond.i9.i, i8 %i.ap, i8 63
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store i8 %.0.i10.i, ptr %i.aq, align 1, !tbaa !28
  %i.ar = lshr i32 %i.ah, 8                       ; 2 uses
  %i.as = and i32 %i.ar, 255
  %i.at = add nsw i32 %i.as, -32
  %or.cond.i11.i16 = icmp ult i32 %i.at, 95
  %i.au = trunc i32 %i.ar to i8
  %.0.i12.i = select i1 %or.cond.i11.i16, i8 %i.au, i8 63
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  store i8 %.0.i12.i, ptr %i.av, align 1, !tbaa !28
  %i.aw = and i32 %i.ah, 255
  %i.ax = add nsw i32 %i.aw, -32
  %or.cond.i13.i = icmp ult i32 %i.ax, 95
  %i.ay = trunc i64 %2 to i8
  %.0.i14.i = select i1 %or.cond.i13.i, i8 %i.ay, i8 63
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i8 %.0.i14.i, ptr %i.az, align 1, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 5
  store i8 39, ptr %i.ba, align 1, !tbaa !28
  %i.bb = getelementptr i8, ptr %i.ag, i64 6
  store i8 58, ptr %i.bb, align 1, !tbaa !28
  %i.bc = add nuw nsw i64 %i.f, 8
  %i.bd = getelementptr i8, ptr %i.ag, i64 7
  store i8 32, ptr %i.bd, align 1, !tbaa !28
  br label %bb.e

is_ICC_signature.exit.thread:                     ; preds = %bb.a, %bb.b, %bb.c, %is_ICC_signature.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bf = call ptr @png_format_number(ptr noundef nonnull %i.b, ptr noundef nonnull %i.be, i32 noundef 3, i64 noundef %2) #28
  %i.bg = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 196, i64 noundef %i.f, ptr noundef %i.bf) #28
  %i.bh = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 196, i64 noundef %i.bg, ptr noundef nonnull @.str.60) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.e

bb.e:                                             ; preds = %is_ICC_signature.exit.thread, %bb.d
  %.0 = phi i64 [ %i.bc, %bb.d ], [ %i.bh, %is_ICC_signature.exit.thread ]
  %i.bi = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 196, i64 noundef %.0, ptr noundef %3) #28 ; 0 uses
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @png_icc_check_header(ptr noalias noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)  ; 2 uses
  %.not = icmp eq i32 %i.b, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.c, ptr noundef nonnull @.str.21)
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28
  %i.f = icmp ult i8 %i.e, 4
  %i.g = and i32 %2, 3
  %.not98 = icmp eq i32 %i.g, 0
  %or.cond = or i1 %.not98, %i.f
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext i32 %2 to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.h, ptr noundef nonnull @.str.22)
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i32, ptr %i.i, align 1
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)  ; 3 uses
  %i.l = icmp ugt i32 %i.k, 357913930
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = mul nuw i32 %i.k, 12
  %i.n = add nuw i32 %i.m, 132
  %i.o = icmp ult i32 %2, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = zext i32 %i.k to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.p, ptr noundef nonnull @.str.23)
  br label %bb.ac

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = load i32, ptr %i.q, align 1
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)  ; 4 uses
  %i.t = icmp ugt i32 %i.s, 65534
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = zext i32 %i.s to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.u, ptr noundef nonnull @.str.24)
  br label %bb.ac

bb.j:                                             ; preds = %bb.h
  %i.v = icmp samesign ugt i32 %i.s, 3
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = zext nneg i32 %i.s to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.w, ptr noundef nonnull @.str.25)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.y = load i32, ptr %i.x, align 1              ; 2 uses
  %.not99 = icmp eq i32 %i.y, 1886610273
  br i1 %.not99, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = zext i32 %i.z to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.aa, ptr noundef nonnull @.str.26)
  br label %bb.ac

bb.n:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = xor i64 %i.ac, 1103118073856
  %i.ae = getelementptr i8, ptr %i.ab, i64 8
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = zext i32 %i.af to i64
  %i.ah = xor i64 %i.ag, 768802816
  %i.ai = or i64 %i.ad, %i.ah
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %.not100 = icmp eq i32 %i.ak, 0
  br i1 %.not100, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 0, ptr noundef nonnull @.str.27)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load i32, ptr %i.al, align 1
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am) ; 2 uses
  switch i32 %i.an, label %bb.u [
    i32 1380401696, label %bb.q
    i32 1196573017, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.ao = and i32 %4, 2
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1380401696, ptr noundef nonnull @.str.28)
  br label %bb.ac

bb.s:                                             ; preds = %bb.p
  %i.aq = and i32 %4, 2
  %.not101 = icmp eq i32 %i.aq, 0
  br i1 %.not101, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1196573017, ptr noundef nonnull @.str.29)
  br label %bb.ac

bb.u:                                             ; preds = %bb.p
  %i.ar = zext i32 %i.an to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.ar, ptr noundef nonnull @.str.30)
  br label %bb.ac

bb.v:                                             ; preds = %bb.s, %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.at = load i32, ptr %i.as, align 1
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at) ; 2 uses
  switch i32 %i.au, label %bb.z [
    i32 1935896178, label %bb.aa
    i32 1835955314, label %bb.aa
    i32 1886549106, label %bb.aa
    i32 1936744803, label %bb.aa
    i32 1633842036, label %bb.w
    i32 1818848875, label %bb.x
    i32 1852662636, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1633842036, ptr noundef nonnull @.str.31)
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1818848875, ptr noundef nonnull @.str.32)
  br label %bb.ac

bb.y:                                             ; preds = %bb.v
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1852662636, ptr noundef nonnull @.str.33)
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.av = zext i32 %i.au to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.av, ptr noundef nonnull @.str.34)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.v, %bb.v, %bb.v, %bb.z, %bb.y
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = tail call i32 @llvm.bswap.i32(i32 %i.ax) ; 2 uses
  switch i32 %i.ay, label %bb.ab [
    i32 1482250784, label %bb.ac
    i32 1281450528, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.az = zext i32 %i.ay to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.az, ptr noundef nonnull @.str.35)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.aa, %bb.ab, %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.m, %bb.i, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.u ], [ 0, %bb.r ], [ 0, %bb.ab ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ 1, %bb.aa ], [ 1, %bb.aa ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
end_hunk_0
begin_hunk_1_@png_ascii_from_fp:bb.a
    i32 -1, label %.lr.ph237.prol.loopexit.unr-lcssa
    i32 0, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph237.prol
  %i.cl = getelementptr inbounds nuw i8, ptr %.6140198, i64 1
  store i8 46, ptr %.6140198, align 1, !tbaa !28
  %i.cm = add i64 %.7199, -1
  %.pre.prol = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph237.prol
  %i.cn = phi i32 [ %.pre.prol, %bb.z ], [ %i.ck, %.lr.ph237.prol ]
  %.8142.prol = phi ptr [ %i.cl, %bb.z ], [ %.6140198, %.lr.ph237.prol ]
  %.9.prol = phi i64 [ %i.cm, %bb.z ], [ %.7199, %.lr.ph237.prol ]
  %i.co = add nsw i32 %i.cn, -1
  store i32 %i.co, ptr %i.a, align 4, !tbaa !34
  br label %.lr.ph237.prol.loopexit.unr-lcssa

.lr.ph237.prol.loopexit.unr-lcssa:                ; preds = %bb.aa, %.lr.ph237.prol
  %.9143.prol = phi ptr [ %.8142.prol, %bb.aa ], [ %.6140198, %.lr.ph237.prol ] ; 2 uses
  %.10.prol = phi i64 [ %.9.prol, %bb.aa ], [ %.7199, %.lr.ph237.prol ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.9143.prol, i64 1 ; 2 uses
  store i8 48, ptr %.9143.prol, align 1, !tbaa !28
  %i.cq = add nsw i32 %.3115202, -1
  br label %.lr.ph237.prol.loopexit

.lr.ph237.prol.loopexit:                          ; preds = %.lr.ph237.prol.loopexit.unr-lcssa, %.lr.ph237.preheader
  %.10.lcssa.unr = phi i64 [ poison, %.lr.ph237.preheader ], [ %.10.prol, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %.lcssa356.unr = phi ptr [ poison, %.lr.ph237.preheader ], [ %i.cp, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %.4116236.unr = phi i32 [ %.3115202, %.lr.ph237.preheader ], [ %i.cq, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %.8235.unr = phi i64 [ %.7199, %.lr.ph237.preheader ], [ %.10.prol, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %.7141234.unr = phi ptr [ %.6140198, %.lr.ph237.preheader ], [ %i.cp, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %i.cr = icmp eq i32 %.3115202, 1
  br i1 %i.cr, label %._crit_edge238, label %.lr.ph237

.lr.ph237:                                        ; preds = %.lr.ph237.prol.loopexit, %bb.af
  %.4116236 = phi i32 [ %i.de, %bb.af ], [ %.4116236.unr, %.lr.ph237.prol.loopexit ]
  %.8235 = phi i64 [ %.10.1, %bb.af ], [ %.8235.unr, %.lr.ph237.prol.loopexit ] ; 3 uses
  %.7141234 = phi ptr [ %i.dd, %bb.af ], [ %.7141234.unr, %.lr.ph237.prol.loopexit ] ; 4 uses
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  switch i32 %i.cs, label %bb.ac [
    i32 -1, label %.lr.ph237.1
    i32 0, label %bb.ab
  ]

bb.ab:                                            ; preds = %.lr.ph237
  %i.ct = getelementptr inbounds nuw i8, ptr %.7141234, i64 1
  store i8 46, ptr %.7141234, align 1, !tbaa !28
  %i.cu = add i64 %.8235, -1
  %.pre = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph237, %bb.ab
  %i.cv = phi i32 [ %.pre, %bb.ab ], [ %i.cs, %.lr.ph237 ]
  %.8142 = phi ptr [ %i.ct, %bb.ab ], [ %.7141234, %.lr.ph237 ]
  %.9 = phi i64 [ %i.cu, %bb.ab ], [ %.8235, %.lr.ph237 ]
  %i.cw = add nsw i32 %i.cv, -1
  store i32 %i.cw, ptr %i.a, align 4, !tbaa !34
  br label %.lr.ph237.1

.lr.ph237.1:                                      ; preds = %.lr.ph237, %bb.ac
  %.9143 = phi ptr [ %.8142, %bb.ac ], [ %.7141234, %.lr.ph237 ] ; 3 uses
  %.10 = phi i64 [ %.9, %bb.ac ], [ %.8235, %.lr.ph237 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.9143, i64 1 ; 3 uses
  store i8 48, ptr %.9143, align 1, !tbaa !28
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  switch i32 %i.cy, label %bb.ae [
    i32 -1, label %bb.af
    i32 0, label %bb.ad
  ]

bb.ad:                                            ; preds = %.lr.ph237.1
  %i.cz = getelementptr inbounds nuw i8, ptr %.9143, i64 2
  store i8 46, ptr %i.cx, align 1, !tbaa !28
  %i.da = add i64 %.10, -1
  %.pre.1 = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph237.1
  %i.db = phi i32 [ %.pre.1, %bb.ad ], [ %i.cy, %.lr.ph237.1 ]
  %.8142.1 = phi ptr [ %i.cz, %bb.ad ], [ %i.cx, %.lr.ph237.1 ]
  %.9.1 = phi i64 [ %i.da, %bb.ad ], [ %.10, %.lr.ph237.1 ]
  %i.dc = add nsw i32 %i.db, -1
  store i32 %i.dc, ptr %i.a, align 4, !tbaa !34
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph237.1
  %.9143.1 = phi ptr [ %.8142.1, %bb.ae ], [ %i.cx, %.lr.ph237.1 ] ; 2 uses
  %.10.1 = phi i64 [ %.9.1, %bb.ae ], [ %.10, %.lr.ph237.1 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.9143.1, i64 1 ; 2 uses
  store i8 48, ptr %.9143.1, align 1, !tbaa !28
  %i.de = add i32 %.4116236, -2                   ; 2 uses
  %.not164.1 = icmp eq i32 %i.de, 0
  br i1 %.not164.1, label %._crit_edge238, label %.lr.ph237, !llvm.loop !155

._crit_edge238.sink.split:                        ; preds = %bb.w, %bb.v
  %.sink324 = phi i32 [ 1, %bb.v ], [ %i.cg, %bb.w ]
  %.7141.lcssa.ph = phi ptr [ %i.cc, %bb.v ], [ %.2136.lcssa295, %bb.w ]
  %.8.lcssa.ph = phi i64 [ %i.cf, %bb.v ], [ %.2129.lcssa296, %bb.w ]
  store i32 %.sink324, ptr %i.a, align 4, !tbaa !34
  br label %._crit_edge238

._crit_edge238:                                   ; preds = %.lr.ph237.prol.loopexit, %bb.af, %._crit_edge238.sink.split, %bb.u, %.thread190
  %.3126201310 = phi double [ %.3126201, %.thread190 ], [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %._crit_edge238.sink.split ], [ %.3126201, %bb.af ], [ %.3126201, %.lr.ph237.prol.loopexit ]
  %.3115202309 = phi i32 [ 0, %.thread190 ], [ 0, %bb.u ], [ 0, %._crit_edge238.sink.split ], [ %.3115202, %bb.af ], [ %.3115202, %.lr.ph237.prol.loopexit ]
  %.2110203308 = phi i32 [ %.2110203, %.thread190 ], [ %.0108, %bb.u ], [ %.0108, %._crit_edge238.sink.split ], [ %.2110203, %bb.af ], [ %.2110203, %.lr.ph237.prol.loopexit ]
  %.3204307 = phi i32 [ %.3204, %.thread190 ], [ %.1106.lcssa297, %bb.u ], [ %.1106.lcssa297, %._crit_edge238.sink.split ], [ %.3204, %bb.af ], [ %.3204, %.lr.ph237.prol.loopexit ]
  %.2205306 = phi double [ %.2205, %.thread190 ], [ 1.000000e+00, %bb.u ], [ 1.000000e+00, %._crit_edge238.sink.split ], [ %.2205, %bb.af ], [ %.2205, %.lr.ph237.prol.loopexit ]
  %.7141.lcssa = phi ptr [ %.6140198, %.thread190 ], [ %i.cc, %bb.u ], [ %.7141.lcssa.ph, %._crit_edge238.sink.split ], [ %.lcssa356.unr, %.lr.ph237.prol.loopexit ], [ %i.dd, %bb.af ] ; 4 uses
  %.8.lcssa = phi i64 [ %.7199, %.thread190 ], [ %.2129.lcssa296, %bb.u ], [ %.8.lcssa.ph, %._crit_edge238.sink.split ], [ %.10.lcssa.unr, %.lr.ph237.prol.loopexit ], [ %.10.1, %bb.af ] ; 3 uses
  %i.df = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  switch i32 %i.df, label %bb.ah [
    i32 -1, label %bb.ai
    i32 0, label %bb.ag
  ]

bb.ag:                                            ; preds = %._crit_edge238
  %i.dg = getelementptr inbounds nuw i8, ptr %.7141.lcssa, i64 1
  store i8 46, ptr %.7141.lcssa, align 1, !tbaa !28
  %i.dh = add i64 %.8.lcssa, -1
  %.pre268 = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge238, %bb.ag
  %i.di = phi i32 [ %.pre268, %bb.ag ], [ %i.df, %._crit_edge238 ]
  %.10144 = phi ptr [ %i.dg, %bb.ag ], [ %.7141.lcssa, %._crit_edge238 ]
  %.11 = phi i64 [ %i.dh, %bb.ag ], [ %.8.lcssa, %._crit_edge238 ]
  %i.dj = add nsw i32 %i.di, -1
  store i32 %i.dj, ptr %i.a, align 4, !tbaa !34
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge238, %bb.ah
  %.11145 = phi ptr [ %.10144, %bb.ah ], [ %.7141.lcssa, %._crit_edge238 ] ; 2 uses
  %.12 = phi i64 [ %.11, %bb.ah ], [ %.8.lcssa, %._crit_edge238 ]
  %i.dk = fptosi double %.2205306 to i32
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = add i8 %i.dl, 48
  %i.dn = getelementptr inbounds nuw i8, ptr %.11145, i64 1
  store i8 %i.dm, ptr %.11145, align 1, !tbaa !28
  %i.do = add i32 %.3204307, 1
  %i.dp = sub i32 %i.do, %.2110203308
  %i.dq = add i32 %i.dp, %.3115202309
  br label %bb.aj

bb.aj:                                            ; preds = %bb.y, %bb.ai
  %.3126200 = phi double [ %.3126201310, %bb.ai ], [ %.3126, %bb.y ] ; 2 uses
  %.12146 = phi ptr [ %i.dn, %bb.ai ], [ %.6140, %bb.y ] ; 6 uses
  %.13 = phi i64 [ %.12, %bb.ai ], [ %.7, %bb.y ] ; 2 uses
  %.5117 = phi i32 [ 0, %bb.ai ], [ %i.ax, %bb.y ] ; 2 uses
  %.3111 = phi i32 [ 0, %bb.ai ], [ %spec.select170, %bb.y ] ; 2 uses
  %.4 = phi i32 [ %i.dq, %bb.ai ], [ %.3, %bb.y ] ; 3 uses
  %i.dr = add i32 %.4, %.5117
  %i.ds = add i32 %.3111, %spec.store.select7
  %i.dt = icmp ult i32 %i.dr, %i.ds
  %i.du = fcmp ogt double %.3126200, f0x0010000000000000
  %i.dv = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %i.dv, label %bb.l, label %bb.ak, !llvm.loop !156

bb.ak:                                            ; preds = %bb.aj
  %i.dw = load i32, ptr %i.a, align 4, !tbaa !34  ; 3 uses
  %i.dx = add i32 %i.dw, 1
  %or.cond5 = icmp ult i32 %i.dx, 4
  br i1 %or.cond5, label %.preheader, label %bb.al

.preheader:                                       ; preds = %bb.ak
  %i.dy = add nsw i32 %i.dw, -1
  store i32 %i.dy, ptr %i.a, align 4, !tbaa !34
  %i.dz = icmp sgt i32 %i.dw, 0
  br i1 %i.dz, label %.lr.ph255, label %.thread207

.lr.ph255:                                        ; preds = %.preheader, %.lr.ph255
  %.13147254 = phi ptr [ %i.ea, %.lr.ph255 ], [ %.12146, %.preheader ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.13147254, i64 1 ; 2 uses
  store i8 48, ptr %.13147254, align 1, !tbaa !28
  %.pr = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.eb = add nsw i32 %.pr, -1
  store i32 %i.eb, ptr %i.a, align 4, !tbaa !34
  %i.ec = icmp sgt i32 %.pr, 0
  br i1 %i.ec, label %.lr.ph255, label %.thread207, !llvm.loop !157

bb.al:                                            ; preds = %bb.ak
  %i.ed = zext i32 %.4 to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %.12146, i64 1 ; 2 uses
  store i8 69, ptr %.12146, align 1, !tbaa !28
  %i.ef = xor i64 %i.ed, -1
  %i.eg = add i64 %.13, %i.ef                     ; 2 uses
  %i.eh = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %.12146, i64 2
  store i8 45, ptr %i.ee, align 1, !tbaa !28
  %i.ek = add i64 %i.eg, -1
  %i.el = load i32, ptr %i.a, align 4, !tbaa !34
  %i.em = sub i32 0, %i.el
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %.14148 = phi ptr [ %i.ej, %bb.am ], [ %i.ee, %bb.al ] ; 9 uses
  %.14 = phi i64 [ %i.ek, %bb.am ], [ %i.eg, %bb.al ] ; 2 uses
  %.0 = phi i32 [ %i.em, %bb.am ], [ %i.eh, %bb.al ] ; 2 uses
  %.not167241 = icmp eq i32 %.0, 0
  br i1 %.not167241, label %._crit_edge246.thread, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.an, %.lr.ph245
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph245 ], [ 0, %bb.an ] ; 6 uses
  %.5242 = phi i32 [ %i.er, %.lr.ph245 ], [ %.0, %bb.an ] ; 3 uses
  %i.en = urem i32 %.5242, 10
  %i.eo = trunc nuw nsw i32 %i.en to i8
  %i.ep = or disjoint i8 %i.eo, 48
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 13 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !28
  %i.er = udiv i32 %.5242, 10
  %.not167 = icmp ult i32 %.5242, 10
  br i1 %.not167, label %._crit_edge246, label %.lr.ph245, !llvm.loop !158

._crit_edge246:                                   ; preds = %.lr.ph245
  %i.es = icmp ugt i64 %.14, %indvars.iv.next
  br i1 %i.es, label %iter.check, label %bb.ao

iter.check:                                       ; preds = %._crit_edge246
  %min.iters.check = icmp ult i64 %indvars.iv, 7
  br i1 %min.iters.check, label %.lr.ph251.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.14148, i64 %indvars.iv.next
  %scevgep335 = getelementptr i8, ptr %i.b, i64 %indvars.iv.next
  %bound0 = icmp ult ptr %.14148, %scevgep335
  %bound1 = icmp ult ptr %i.b, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph251.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check336 = icmp ult i64 %indvars.iv, 31
  br i1 %min.iters.check336, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.et = and i64 %indvars.iv.next, 24
  %n.vec = and i64 %indvars.iv.next, -32          ; 4 uses
  %i.eu = and i64 %indvars.iv.next, 31
  %invariant.gep = getelementptr i8, ptr %.14148, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.14148, i64 %index ; 2 uses
  %5 = sub i64 %indvars.iv, %index
  %gep = getelementptr inbounds nuw i8, ptr %i.b, i64 %5 ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.ew = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ev, align 1, !tbaa !28, !alias.scope !166
  %wide.load337 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !28, !alias.scope !166
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse338 = shufflevector <16 x i8> %wide.load337, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ex = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !28, !alias.scope !167, !noalias !166
  store <16 x i8> %reverse338, ptr %i.ex, align 1, !tbaa !28, !alias.scope !167, !noalias !166
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv.next, %n.vec
  br i1 %cmp.n, label %.thread207, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.et, 0
  br i1 %min.epilog.iters.check, label %.lr.ph251.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec340 = and i64 %indvars.iv.next, -8        ; 3 uses
  %i.ez = and i64 %indvars.iv.next, 7
  %invariant.gep371 = getelementptr i8, ptr %.14148, i64 %n.vec340 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index341 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next345, %vec.epilog.vector.body ] ; 3 uses
  %next.gep342 = getelementptr i8, ptr %.14148, i64 %index341
  %6 = sub i64 %indvars.iv, %index341
  %gep372 = getelementptr inbounds nuw i8, ptr %i.b, i64 %6
  %i.fa = getelementptr inbounds i8, ptr %gep372, i64 -7
  %wide.load343 = load <8 x i8>, ptr %i.fa, align 1, !tbaa !28, !alias.scope !166
  %reverse344 = shufflevector <8 x i8> %wide.load343, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse344, ptr %next.gep342, align 1, !tbaa !28, !alias.scope !167, !noalias !166
  %index.next345 = add nuw i64 %index341, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next345, %n.vec340
  br i1 %i.fb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !163

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n346 = icmp eq i64 %indvars.iv.next, %n.vec340
  br i1 %cmp.n346, label %.thread207, label %.lr.ph251.preheader

.lr.ph251.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %indvars.iv.next, %iter.check ], [ %indvars.iv.next, %vector.memcheck ], [ %i.eu, %vec.epilog.iter.check ], [ %i.ez, %vec.epilog.middle.block ] ; 4 uses
  %.15249.ph = phi ptr [ %.14148, %iter.check ], [ %.14148, %vector.memcheck ], [ %invariant.gep, %vec.epilog.iter.check ], [ %invariant.gep371, %vec.epilog.middle.block ] ; 2 uses
  %i.fc = add nsw i64 %indvars.iv.ph, -1
  %xtraiter359 = and i64 %indvars.iv.ph, 7        ; 2 uses
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod360.not, label %.lr.ph251.prol.loopexit, label %.lr.ph251.prol

.lr.ph251.prol:                                   ; preds = %.lr.ph251.preheader, %.lr.ph251.prol
  %indvars.iv.prol = phi i64 [ %i.fd, %.lr.ph251.prol ], [ %indvars.iv.ph, %.lr.ph251.preheader ]
  %.15249.prol = phi ptr [ %i.fg, %.lr.ph251.prol ], [ %.15249.ph, %.lr.ph251.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph251.prol ], [ 0, %.lr.ph251.preheader ]
  %i.fd = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !28
  %i.fg = getelementptr inbounds nuw i8, ptr %.15249.prol, i64 1 ; 3 uses
  store i8 %i.ff, ptr %.15249.prol, align 1, !tbaa !28
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter359
  br i1 %prol.iter.cmp.not, label %.lr.ph251.prol.loopexit, label %.lr.ph251.prol, !llvm.loop !164

.lr.ph251.prol.loopexit:                          ; preds = %.lr.ph251.prol, %.lr.ph251.preheader
  %.lcssa350.unr = phi ptr [ poison, %.lr.ph251.preheader ], [ %i.fg, %.lr.ph251.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph251.preheader ], [ %i.fd, %.lr.ph251.prol ]
  %.15249.unr = phi ptr [ %.15249.ph, %.lr.ph251.preheader ], [ %i.fg, %.lr.ph251.prol ]
  %i.fh = icmp ult i64 %i.fc, 7
  br i1 %i.fh, label %.thread207, label %.lr.ph251

._crit_edge246.thread:                            ; preds = %bb.an
  %.not327 = icmp eq i64 %.14, 0
  br i1 %.not327, label %bb.ao, label %.thread207

.lr.ph251:                                        ; preds = %.lr.ph251.prol.loopexit, %.lr.ph251
  %indvars.iv.a = phi i64 [ %i.gk, %.lr.ph251 ], [ %indvars.iv.unr, %.lr.ph251.prol.loopexit ] ; 8 uses
  %.15249 = phi ptr [ %i.gn, %.lr.ph251 ], [ %.15249.unr, %.lr.ph251.prol.loopexit ] ; 9 uses
  %i.fi = getelementptr i8, ptr %i.b, i64 %indvars.iv.a
  %i.fj = getelementptr i8, ptr %i.fi, i64 -1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !28
  %i.fl = getelementptr inbounds nuw i8, ptr %.15249, i64 1
  store i8 %i.fk, ptr %.15249, align 1, !tbaa !28
  %i.fm = getelementptr i8, ptr %i.b, i64 %indvars.iv.a
  %i.fn = getelementptr i8, ptr %i.fm, i64 -2
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !28
  %i.fp = getelementptr inbounds nuw i8, ptr %.15249, i64 2
  store i8 %i.fo, ptr %i.fl, align 1, !tbaa !28
  %i.fq = getelementptr i8, ptr %i.b, i64 %indvars.iv.a
  %i.fr = getelementptr i8, ptr %i.fq, i64 -3
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !28
  %i.ft = getelementptr inbounds nuw i8, ptr %.15249, i64 3
  store i8 %i.fs, ptr %i.fp, align 1, !tbaa !28
  %i.fu = getelementptr i8, ptr %i.b, i64 %indvars.iv.a
  %i.fv = getelementptr i8, ptr %i.fu, i64 -4
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !28
  %i.fx = getelementptr inbounds nuw i8, ptr %.15249, i64 4
  store i8 %i.fw, ptr %i.ft, align 1, !tbaa !28
  %i.fy = getelementptr i8, ptr %i.b, i64 %indvars.iv.a
  %i.fz = getelementptr i8, ptr %i.fy, i64 -5
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !28
  %i.gb = getelementptr inbounds nuw i8, ptr %.15249, i64 5
  store i8 %i.ga, ptr %i.fx, align 1, !tbaa !28
  %i.gc = getelementptr i8, ptr %i.b, i64 %indvars.iv.a
  %i.gd = getelementptr i8, ptr %i.gc, i64 -6
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !28
  %i.gf = getelementptr inbounds nuw i8, ptr %.15249, i64 6
  store i8 %i.ge, ptr %i.gb, align 1, !tbaa !28
  %i.gg = getelementptr i8, ptr %i.b, i64 %indvars.iv.a
  %i.gh = getelementptr i8, ptr %i.gg, i64 -7
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !28
  %i.gj = getelementptr inbounds nuw i8, ptr %.15249, i64 7
  store i8 %i.gi, ptr %i.gf, align 1, !tbaa !28
  %i.gk = add nsw i64 %indvars.iv.a, -8           ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !28
  %i.gn = getelementptr inbounds nuw i8, ptr %.15249, i64 8 ; 2 uses
  store i8 %i.gm, ptr %i.gj, align 1, !tbaa !28
  %.not168.wide.7 = icmp eq i64 %i.gk, 0
  br i1 %.not168.wide.7, label %.thread207, label %.lr.ph251, !llvm.loop !165

.thread207:                                       ; preds = %.lr.ph251.prol.loopexit, %.lr.ph251, %.lr.ph255, %middle.block, %vec.epilog.middle.block, %._crit_edge246.thread, %.preheader
  %.13147.lcssa.sink = phi ptr [ %i.ea, %.lr.ph255 ], [ %.12146, %.preheader ], [ %.14148, %._crit_edge246.thread ], [ %invariant.gep371, %vec.epilog.middle.block ], [ %invariant.gep, %middle.block ], [ %.lcssa350.unr, %.lr.ph251.prol.loopexit ], [ %i.gn, %.lr.ph251 ]
  store i8 0, ptr %.13147.lcssa.sink, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.at

bb.ao:                                            ; preds = %._crit_edge246.thread, %._crit_edge246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.as

bb.ap:                                            ; preds = %bb.d
  br i1 %i.k, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.go = getelementptr inbounds nuw i8, ptr %.0134, i64 1
  store i8 48, ptr %.0134, align 1, !tbaa !28
  store i8 0, ptr %i.go, align 1, !tbaa !28
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  store <4 x i8> <i8 105, i8 110, i8 102, i8 0>, ptr %.0134, align 1, !tbaa !28
  br label %bb.at

bb.as:                                            ; preds = %bb.ao, %bb.a
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.55) #26
  unreachable

bb.at:                                            ; preds = %.thread207, %bb.ar, %bb.aq
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #19

; Function Attrs: nounwind uwtable
define void @png_ascii_from_fixed(ptr noalias noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 14 uses
  %i.b = icmp ugt i64 %2, 12
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %3, 0
  br i1 %i.c, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !28
  %i.e = sub nsw i32 0, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 10, i1 false)
  br label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 10, i1 false)
  %.not48 = icmp eq i32 %3, 0
  br i1 %.not48, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.c
  %.03881 = phi i32 [ %i.e, %.thread ], [ %3, %bb.c ]
  %.04079 = phi ptr [ %i.d, %.thread ], [ %1, %bb.c ] ; 6 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 6 uses
  %.03650 = phi i32 [ 16, %.lr.ph.preheader ], [ %spec.select, %.lr.ph ] ; 2 uses
  %.13949 = phi i32 [ %.03881, %.lr.ph.preheader ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.f = udiv i32 %.13949, 10                     ; 2 uses
  %.neg = mul nsw i32 %i.f, -10
  %i.g = add nsw i32 %.neg, %.13949               ; 2 uses
  %i.h = trunc i32 %i.g to i8
  %i.i = add i8 %i.h, 48
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.i, ptr %i.j, align 1, !tbaa !28
  %i.k = icmp eq i32 %.03650, 16
  %i.l = icmp ne i32 %i.g, 0
  %or.cond = and i1 %i.k, %i.l
  %4 = trunc nuw i64 %indvars.iv.next to i32      ; 2 uses
  %spec.select = select i1 %or.cond, i32 %4, i32 %.03650 ; 6 uses
  %.not = icmp samesign ult i32 %.13949, 10
  br i1 %.not, label %.preheader47, label %.lr.ph, !llvm.loop !168

.preheader47:                                     ; preds = %.lr.ph
  %i.m = icmp ugt i64 %indvars.iv, 4
  br i1 %i.m, label %iter.check, label %._crit_edge56

iter.check:                                       ; preds = %.preheader47
  %i.n = add i64 %indvars.iv, -4                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph55.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check91 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.n, 24
  %n.vec = and i64 %i.n, -32                      ; 5 uses
  %i.p = sub i64 %indvars.iv.next, %n.vec
  %invariant.gep = getelementptr i8, ptr %.04079, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.04079, i64 %index ; 2 uses
  %5 = sub i64 %indvars.iv, %index
  %gep = getelementptr inbounds nuw i8, ptr %i.a, i64 %5 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.r = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.q, align 1, !tbaa !28
  %wide.load92 = load <16 x i8>, ptr %i.r, align 1, !tbaa !28
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse93 = shufflevector <16 x i8> %wide.load92, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !28
  store <16 x i8> %reverse93, ptr %i.s, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge56, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %.lr.ph55.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec95 = and i64 %i.n, -8                     ; 4 uses
  %i.u = sub i64 %indvars.iv.next, %n.vec95
  %invariant.gep147 = getelementptr i8, ptr %.04079, i64 %n.vec95 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next100, %vec.epilog.vector.body ] ; 3 uses
  %next.gep97 = getelementptr i8, ptr %.04079, i64 %index96
  %6 = sub i64 %indvars.iv, %index96
  %gep148 = getelementptr inbounds nuw i8, ptr %i.a, i64 %6
  %i.v = getelementptr inbounds i8, ptr %gep148, i64 -7
  %wide.load98 = load <8 x i8>, ptr %i.v, align 1, !tbaa !28
  %reverse99 = shufflevector <8 x i8> %wide.load98, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse99, ptr %next.gep97, align 1, !tbaa !28
  %index.next100 = add nuw i64 %index96, 8        ; 2 uses
  %i.w = icmp eq i64 %index.next100, %n.vec95
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !170

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n101 = icmp eq i64 %i.n, %n.vec95
  br i1 %cmp.n101, label %._crit_edge56, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %indvars.iv.next, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  %.14153.ph = phi ptr [ %.04079, %iter.check ], [ %invariant.gep, %vec.epilog.iter.check ], [ %invariant.gep147, %vec.epilog.middle.block ]
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %.lr.ph55
  %indvars.iv.a = phi i64 [ %i.x, %.lr.ph55 ], [ %indvars.iv.ph, %.lr.ph55.preheader ]
  %.14153 = phi ptr [ %i.aa, %.lr.ph55 ], [ %.14153.ph, %.lr.ph55.preheader ] ; 2 uses
  %i.x = add nsw i64 %indvars.iv.a, -1            ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %.14153, i64 1 ; 2 uses
  store i8 %i.z, ptr %.14153, align 1, !tbaa !28
  %.wide = icmp ugt i64 %i.x, 5
  br i1 %.wide, label %.lr.ph55, label %._crit_edge56, !llvm.loop !171

._crit_edge56:                                    ; preds = %.lr.ph55, %middle.block, %vec.epilog.middle.block, %.preheader47
  %.141.lcssa = phi ptr [ %.04079, %.preheader47 ], [ %invariant.gep147, %vec.epilog.middle.block ], [ %invariant.gep, %middle.block ], [ %i.aa, %.lr.ph55 ] ; 4 uses
  %.137.lcssa = phi i32 [ %4, %.preheader47 ], [ 5, %vec.epilog.middle.block ], [ 5, %middle.block ], [ 5, %.lr.ph55 ] ; 11 uses
  %i.ab = icmp ult i32 %spec.select, 6
  br i1 %i.ab, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge56
  store i8 46, ptr %.141.lcssa, align 1, !tbaa !28
  %.24259 = getelementptr i8, ptr %.141.lcssa, i64 1 ; 2 uses
  %i.ac = icmp samesign ult i32 %.137.lcssa, 5
  br i1 %i.ac, label %.lr.ph63.preheader, label %.preheader

.lr.ph63.preheader:                               ; preds = %bb.d
  %i.ad = sub nuw nsw i32 4, %.137.lcssa
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.24259, i8 48, i64 %i.af, i1 false), !tbaa !28
  %i.ag = getelementptr i8, ptr %.141.lcssa, i64 %i.ae
  %scevgep = getelementptr i8, ptr %i.ag, i64 2
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph63.preheader, %bb.d
  %.242.lcssa = phi ptr [ %.24259, %bb.d ], [ %scevgep, %.lr.ph63.preheader ] ; 9 uses
  %.not4665 = icmp samesign ult i32 %.137.lcssa, %spec.select
  br i1 %.not4665, label %.loopexit, label %iter.check127

iter.check127:                                    ; preds = %.preheader
  %7 = add i32 %.137.lcssa, -1
  %8 = add nsw i32 %spec.select, -1
  %i.ah = tail call i32 @llvm.usub.sat.i32(i32 %7, i32 %8) ; 3 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 5 uses
  %min.iters.check110 = icmp ult i32 %i.ah, 7
  br i1 %min.iters.check110, label %.lr.ph68.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check127
  %scevgep104 = getelementptr i8, ptr %.242.lcssa, i64 1
  %i.ak = add i32 %.137.lcssa, -1                 ; 2 uses
  %i.al = add nsw i32 %spec.select, -1
  %umin = tail call i32 @llvm.usub.sat.i32(i32 %i.ak, i32 %i.al)
  %9 = zext i32 %umin to i64                      ; 2 uses
  %scevgep108 = getelementptr i8, ptr %scevgep104, i64 %9
  %i.am = zext i32 %i.ak to i64                   ; 2 uses
  %scevgep105 = getelementptr i8, ptr %i.a, i64 %i.am
  %i.an = sub nsw i64 0, %9
  %scevgep106 = getelementptr i8, ptr %scevgep105, i64 %i.an
  %scevgep107 = getelementptr i8, ptr %i.a, i64 %i.am
  %scevgep108.a = getelementptr i8, ptr %scevgep107, i64 1
  %bound0 = icmp ult ptr %.242.lcssa, %scevgep108.a
  %bound1 = icmp ult ptr %scevgep106, %scevgep108
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph68.preheader, label %vector.main.loop.iter.check111

vector.main.loop.iter.check111:                   ; preds = %vector.memcheck
  %min.iters.check112 = icmp ult i32 %i.ah, 31
  br i1 %min.iters.check112, label %vec.epilog.ph131, label %vector.ph113

vector.ph113:                                     ; preds = %vector.main.loop.iter.check111
  %i.ao = and i64 %i.aj, 24
  %n.vec114 = and i64 %i.aj, 8589934560           ; 5 uses
  %i.ap = trunc i64 %n.vec114 to i32
  %i.aq = sub i32 %.137.lcssa, %i.ap
  %i.ar = getelementptr i8, ptr %.242.lcssa, i64 %n.vec114 ; 2 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next122, %vector.body115 ] ; 3 uses
  %i.as = trunc i64 %index116 to i32
  %next.gep117 = getelementptr i8, ptr %.242.lcssa, i64 %index116 ; 2 uses
  %i.at = xor i32 %i.as, -1
  %i.au = add i32 %.137.lcssa, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -15
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -31
  %wide.load118 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !28, !alias.scope !178
  %wide.load119 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !28, !alias.scope !178
  %reverse120 = shufflevector <16 x i8> %wide.load118, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse121 = shufflevector <16 x i8> %wide.load119, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.az = getelementptr i8, ptr %next.gep117, i64 16
  store <16 x i8> %reverse120, ptr %next.gep117, align 1, !tbaa !28, !alias.scope !179, !noalias !178
  store <16 x i8> %reverse121, ptr %i.az, align 1, !tbaa !28, !alias.scope !179, !noalias !178
  %index.next122 = add nuw i64 %index116, 32      ; 2 uses
  %i.ba = icmp eq i64 %index.next122, %n.vec114
  br i1 %i.ba, label %middle.block123, label %vector.body115, !llvm.loop !175

middle.block123:                                  ; preds = %vector.body115
  %cmp.n124 = icmp eq i64 %i.aj, %n.vec114
  br i1 %cmp.n124, label %.loopexit, label %vec.epilog.iter.check129

vec.epilog.iter.check129:                         ; preds = %middle.block123
  %min.epilog.iters.check130 = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check130, label %.lr.ph68.preheader, label %vec.epilog.ph131, !prof !57

vec.epilog.ph131:                                 ; preds = %vector.main.loop.iter.check111, %vec.epilog.iter.check129
  %vec.epilog.resume.val125 = phi i64 [ %n.vec114, %vec.epilog.iter.check129 ], [ 0, %vector.main.loop.iter.check111 ]
  %n.vec132 = and i64 %i.aj, 8589934584           ; 4 uses
  %i.bb = trunc i64 %n.vec132 to i32
  %i.bc = sub i32 %.137.lcssa, %i.bb
  %i.bd = getelementptr i8, ptr %.242.lcssa, i64 %n.vec132 ; 2 uses
  br label %vec.epilog.vector.body133

vec.epilog.vector.body133:                        ; preds = %vec.epilog.vector.body133, %vec.epilog.ph131
  %index134 = phi i64 [ %vec.epilog.resume.val125, %vec.epilog.ph131 ], [ %index.next138, %vec.epilog.vector.body133 ] ; 3 uses
  %i.be = trunc i64 %index134 to i32
  %next.gep135 = getelementptr i8, ptr %.242.lcssa, i64 %index134
  %i.bf = xor i32 %i.be, -1
  %i.bg = add i32 %.137.lcssa, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -7
  %wide.load136 = load <8 x i8>, ptr %i.bj, align 1, !tbaa !28, !alias.scope !178
  %reverse137 = shufflevector <8 x i8> %wide.load136, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse137, ptr %next.gep135, align 1, !tbaa !28, !alias.scope !179, !noalias !178
  %index.next138 = add nuw i64 %index134, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next138, %n.vec132
  br i1 %i.bk, label %vec.epilog.middle.block139, label %vec.epilog.vector.body133, !llvm.loop !176

vec.epilog.middle.block139:                       ; preds = %vec.epilog.vector.body133
  %cmp.n140 = icmp eq i64 %i.aj, %n.vec132
  br i1 %cmp.n140, label %.loopexit, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %vector.memcheck, %iter.check127, %vec.epilog.iter.check129, %vec.epilog.middle.block139
  %.267.ph = phi i32 [ %.137.lcssa, %iter.check127 ], [ %.137.lcssa, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check129 ], [ %i.bc, %vec.epilog.middle.block139 ]
  %.366.ph = phi ptr [ %.242.lcssa, %iter.check127 ], [ %.242.lcssa, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check129 ], [ %i.bd, %vec.epilog.middle.block139 ]
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.lr.ph68
  %.267 = phi i32 [ %i.bl, %.lr.ph68 ], [ %.267.ph, %.lr.ph68.preheader ]
  %.366 = phi ptr [ %i.bp, %.lr.ph68 ], [ %.366.ph, %.lr.ph68.preheader ] ; 2 uses
  %i.bl = add i32 %.267, -1                       ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %.366, i64 1 ; 2 uses
  store i8 %i.bo, ptr %.366, align 1, !tbaa !28
  %.not46 = icmp ult i32 %i.bl, %spec.select
  br i1 %.not46, label %.loopexit, label %.lr.ph68, !llvm.loop !177

._crit_edge.thread:                               ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 48, ptr %1, align 1, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph68, %middle.block123, %vec.epilog.middle.block139, %.preheader, %._crit_edge56, %._crit_edge.thread
  %.4 = phi ptr [ %i.bq, %._crit_edge.thread ], [ %.141.lcssa, %._crit_edge56 ], [ %.242.lcssa, %.preheader ], [ %i.bd, %vec.epilog.middle.block139 ], [ %i.ar, %middle.block123 ], [ %i.bp, %.lr.ph68 ]
  store i8 0, ptr %.4, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.e:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.55) #26
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @png_fixed(ptr noalias noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %1, double 1.000000e+05, double 5.000000e-01)
  %i.b = tail call double @llvm.floor.f64(double %i.a) ; 3 uses
  %i.c = fcmp ogt double %i.b, f0x41DFFFFFFFC00000
  %i.d = fcmp olt double %i.b, f0xC1E0000000000000
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef %2) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = fptosi double %i.b to i32
  ret i32 %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: noreturn
declare void @png_fixed_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @png_fixed_ITU(ptr noalias noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %1, double 1.000000e+04, double 5.000000e-01)
  %i.b = tail call double @llvm.floor.f64(double %i.a) ; 3 uses
  %i.c = fcmp ogt double %i.b, f0x41DFFFFFFFC00000
  %i.d = fcmp olt double %i.b, 0.000000e+00
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef %2) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = fptoui double %i.b to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @png_gamma_significant(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = add i32 %0, -105001
  %i.b = icmp ult i32 %i.a, -10001
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @png_reciprocal2(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ne i32 %0, 0
  %i.b = icmp ne i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sitofp i32 %0 to double
  %i.d = fdiv double 1.000000e+15, %i.c
  %i.e = sitofp i32 %1 to double
  %i.f = fdiv double %i.d, %i.e
  %i.g = fadd double %i.f, 5.000000e-01
  %i.h = tail call double @llvm.floor.f64(double %i.g) ; 3 uses
  %i.i = fcmp ugt double %i.h, f0x41DFFFFFFFC00000
  %i.j = fcmp ult double %i.h, f0xC1E0000000000000
  %or.cond3.not = or i1 %i.i, %i.j
  %i.k = fptosi double %i.h to i32
  br i1 %or.cond3.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.k, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define zeroext i8 @png_gamma_8bit_correct(i32 noundef %0, i32 noundef %1) local_unnamed_addr #20 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 254
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = uitofp nneg i32 %0 to double
  %i.c = fdiv double %i.b, 2.550000e+02
  %i.d = sitofp i32 %1 to double
  %i.e = fmul nnan double %i.d, 1.000000e-05
  %i.f = tail call double @pow(double noundef %i.c, double noundef %i.e) #28
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double 2.550000e+02, double 5.000000e-01)
  %i.h = tail call double @llvm.floor.f64(double %i.g)
  %i.i = fptoui double %i.h to i8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i32 %0 to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i8 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define zeroext i16 @png_gamma_16bit_correct(i32 noundef %0, i32 noundef %1) local_unnamed_addr #20 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 65534
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = uitofp nneg i32 %0 to double
  %i.c = fdiv double %i.b, 6.553500e+04
  %i.d = sitofp i32 %1 to double
  %i.e = fmul nnan double %i.d, 1.000000e-05
  %i.f = tail call double @pow(double noundef %i.c, double noundef %i.e) #28
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double 6.553500e+04, double 5.000000e-01)
  %i.h = tail call double @llvm.floor.f64(double %i.g)
  %i.i = fptoui double %i.h to i16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i32 %0 to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i16 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define zeroext i16 @png_gamma_correct(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load i8, ptr %i.a, align 8, !tbaa !180
  %i.c = icmp eq i8 %i.b, 8
  %i.d = add i32 %1, -1                           ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ult i32 %i.d, 254
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = uitofp nneg i32 %1 to double
  %i.f = fdiv double %i.e, 2.550000e+02
  %i.g = sitofp i32 %2 to double
  %i.h = fmul nnan double %i.g, 1.000000e-05
  %i.i = tail call double @pow(double noundef %i.f, double noundef %i.h) #28
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double 2.550000e+02, double 5.000000e-01)
  %i.k = tail call double @llvm.floor.f64(double %i.j)
  %i.l = fptoui double %i.k to i8
  br label %png_gamma_8bit_correct.exit

bb.d:                                             ; preds = %bb.b
  %i.m = trunc i32 %1 to i8
  br label %png_gamma_8bit_correct.exit

png_gamma_8bit_correct.exit:                      ; preds = %bb.c, %bb.d
  %.0.i = phi i8 [ %i.l, %bb.c ], [ %i.m, %bb.d ]
  %i.n = zext i8 %.0.i to i16
  br label %png_gamma_16bit_correct.exit

bb.e:                                             ; preds = %bb.a
  %or.cond.i5 = icmp ult i32 %i.d, 65534
  br i1 %or.cond.i5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = uitofp nneg i32 %1 to double
  %i.p = fdiv double %i.o, 6.553500e+04
  %i.q = sitofp i32 %2 to double
  %i.r = fmul nnan double %i.q, 1.000000e-05
  %i.s = tail call double @pow(double noundef %i.p, double noundef %i.r) #28
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double 6.553500e+04, double 5.000000e-01)
  %i.u = tail call double @llvm.floor.f64(double %i.t)
  %i.v = fptoui double %i.u to i16
  br label %png_gamma_16bit_correct.exit

end_hunk_1
begin_hunk_2_@png_build_16bit_table:bb.a
  %i.fj = trunc nuw nsw i64 %indvars.iv54 to i32  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader40
  %indvars.iv = phi i64 [ 0, %.preheader40 ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.fk = trunc nuw nsw i64 %indvars.iv to i32
  %i.fl = shl nuw nsw i32 %i.fk, %i.a
  %i.fm = add i32 %i.fl, %i.fj
  %i.fn = uitofp i32 %i.fm to double
  %i.fo = fmul double %i.f, %i.fn
  %i.fp = tail call double @pow(double noundef %i.fo, double noundef %i.n) #28
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fp, double 6.553500e+04, double 5.000000e-01)
  %i.fr = tail call double @llvm.floor.f64(double %i.fq)
  %i.fs = fptoui double %i.fr to i16
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %indvars.iv
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !36
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fu = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.fv = shl nuw nsw i32 %i.fu, %i.a
  %i.fw = add i32 %i.fv, %i.fj
  %i.fx = uitofp i32 %i.fw to double
  %i.fy = fmul double %i.f, %i.fx
  %i.fz = tail call double @pow(double noundef %i.fy, double noundef %i.n) #28
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fz, double 6.553500e+04, double 5.000000e-01)
  %i.gb = tail call double @llvm.floor.f64(double %i.ga)
  %i.gc = fptoui double %i.gb to i16
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %indvars.iv.next
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.loopexit41, label %bb.c, !llvm.loop !217

.loopexit41:                                      ; preds = %bb.c
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, %i.h
  br i1 %exitcond57.not, label %.split50.us, label %.preheader40, !llvm.loop !215

.split50.us:                                      ; preds = %.loopexit41, %.loopexit.split.us47, %.preheader.us.us
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 4) i32 @png_set_option(ptr noalias nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = and i32 %1, -15
  %i.c = icmp eq i32 %i.b, 0
  %or.cond = and i1 %i.a, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i32 3, %1
  %.not = icmp eq i32 %2, 0
  %i.e = select i1 %.not, i32 2, i32 3
  %i.f = shl nuw nsw i32 %i.e, %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !218  ; 2 uses
  %i.i = xor i32 %i.d, -1
  %i.j = and i32 %i.h, %i.i
  %i.k = or i32 %i.j, %i.f
  store i32 %i.k, ptr %i.g, align 8, !tbaa !218
  %i.l = lshr i32 %i.h, %1
  %i.m = and i32 %i.l, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @png_image_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.png_control, align 8        ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !219    ; 6 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %png_image_free_function.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8               ; 2 uses
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = and i8 %i.h, -3
  store i8 %i.l, ptr %i.g, align 8
  %.not14.i = icmp eq ptr %i.k, null
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.j, align 8, !tbaa !48
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !tbaa.struct !225
  store ptr %1, ptr %0, align 8, !tbaa !219
  %i.n = load ptr, ptr %1, align 8, !tbaa !223
  call void @png_free(ptr noundef %i.n, ptr noundef nonnull %i.a) #28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, 1
  %.not15.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @png_destroy_write_struct(ptr noundef nonnull %1, ptr noundef nonnull %i.r) #28
  br label %png_image_free_function.exit

bb.j:                                             ; preds = %bb.h
  call void @png_destroy_read_struct(ptr noundef nonnull %1, ptr noundef nonnull %i.r, ptr noundef null) #28
  br label %png_image_free_function.exit

png_image_free_function.exit:                     ; preds = %bb.d, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  store ptr null, ptr %0, align 8, !tbaa !219
  br label %bb.k

bb.k:                                             ; preds = %png_image_free_function.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @png_image_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = tail call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 0, ptr noundef %1) #28 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !226
  %i.e = or i32 %i.d, 2
  store i32 %i.e, ptr %i.c, align 8, !tbaa !226
  tail call void @png_image_free(ptr noundef %0)
  ret i32 0
}

declare void @png_chunk_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #23

declare void @png_destroy_write_struct(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @png_destroy_read_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind }
attributes #29 = { nounwind returns_twice }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !27}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS13__jmp_buf_tag", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS14internal_state", !9, i64 0}
!14 = !{!"z_stream_s", !12, i64 0, !6, i64 8, !11, i64 16, !12, i64 24, !6, i64 32, !11, i64 40, !12, i64 48, !13, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !6, i64 88, !11, i64 96, !11, i64 104}
!15 = !{!"p1 _ZTS22png_compression_buffer", !9, i64 0}
!16 = !{!"p1 _ZTS16png_color_struct", !9, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = !{!"png_color_16_struct", !5, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8}
!19 = !{!"png_xy", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!20 = !{!"any p2 pointer", !9, i64 0}
!21 = !{!"p2 short", !20, i64 0}
!22 = !{!"png_color_8_struct", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4}
!23 = !{!"png_unknown_chunk_t", !5, i64 0, !12, i64 8, !11, i64 16, !5, i64 24}
!24 = !{!"png_struct_def", !5, i64 0, !9, i64 200, !10, i64 208, !11, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !5, i64 296, !5, i64 297, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !14, i64 320, !15, i64 432, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !6, i64 456, !6, i64 460, !6, i64 464, !6, i64 468, !6, i64 472, !6, i64 476, !6, i64 480, !6, i64 484, !6, i64 488, !6, i64 492, !6, i64 496, !6, i64 500, !6, i64 504, !6, i64 508, !6, i64 512, !6, i64 516, !6, i64 520, !11, i64 528, !6, i64 536, !6, i64 540, !6, i64 544, !12, i64 552, !12, i64 560, !12, i64 568, !12, i64 576, !11, i64 584, !6, i64 592, !6, i64 596, !16, i64 600, !17, i64 608, !6, i64 612, !17, i64 616, !5, i64 618, !5, i64 619, !5, i64 620, !5, i64 621, !5, i64 622, !5, i64 623, !5, i64 624, !5, i64 625, !5, i64 626, !5, i64 627, !5, i64 628, !5, i64 629, !5, i64 630, !5, i64 631, !5, i64 632, !17, i64 634, !5, i64 636, !6, i64 640, !18, i64 644, !18, i64 654, !9, i64 664, !6, i64 672, !6, i64 676, !19, i64 680, !6, i64 712, !6, i64 716, !6, i64 720, !6, i64 724, !6, i64 728, !12, i64 736, !21, i64 744, !12, i64 752, !12, i64 760, !21, i64 768, !21, i64 776, !22, i64 784, !22, i64 789, !12, i64 800, !18, i64 808, !9, i64 824, !9, i64 832, !9, i64 840, !9, i64 848, !9, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !6, i64 896, !6, i64 900, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !6, i64 936, !6, i64 940, !12, i64 944, !12, i64 952, !6, i64 960, !5, i64 964, !6, i64 996, !9, i64 1000, !9, i64 1008, !6, i64 1016, !6, i64 1020, !12, i64 1024, !5, i64 1032, !5, i64 1033, !17, i64 1034, !17, i64 1036, !12, i64 1040, !6, i64 1048, !5, i64 1052, !9, i64 1056, !9, i64 1064, !9, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096, !5, i64 1104, !6, i64 1108, !6, i64 1112, !6, i64 1116, !11, i64 1120, !23, i64 1128, !11, i64 1160, !12, i64 1168, !11, i64 1176, !6, i64 1184, !6, i64 1188, !12, i64 1192, !5, i64 1200}
!25 = !{!24, !6, i64 596}
!26 = !{!24, !6, i64 304}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!5, !5, i64 0}
!29 = !{!24, !6, i64 1108}
!30 = !{!24, !6, i64 1112}
!31 = !{!24, !11, i64 1120}
!32 = !{!9, !9, i64 0}
!33 = !{!11, !11, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!12, !12, i64 0}
!36 = !{!17, !17, i64 0}
!37 = !{!21, !21, i64 0}
!38 = !{!"p1 _ZTS12png_info_def", !9, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"p1 _ZTS15png_text_struct", !9, i64 0}
!41 = !{!"png_time_struct", !17, i64 0, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6}
!42 = !{!"p1 short", !9, i64 0}
!43 = !{!"p2 omnipotent char", !20, i64 0}
!44 = !{!"p1 _ZTS19png_unknown_chunk_t", !9, i64 0}
!45 = !{!"p1 _ZTS15png_sPLT_struct", !9, i64 0}
!46 = !{!"png_info_def", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !16, i64 24, !17, i64 32, !17, i64 34, !5, i64 36, !5, i64 37, !5, i64 38, !5, i64 39, !5, i64 40, !5, i64 41, !5, i64 42, !5, i64 43, !5, i64 44, !5, i64 52, !5, i64 53, !5, i64 54, !5, i64 55, !12, i64 56, !12, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !17, i64 84, !17, i64 86, !17, i64 88, !17, i64 90, !17, i64 92, !17, i64 94, !17, i64 96, !17, i64 98, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !40, i64 120, !41, i64 128, !22, i64 136, !12, i64 144, !18, i64 152, !18, i64 162, !6, i64 172, !6, i64 176, !5, i64 180, !6, i64 184, !6, i64 188, !5, i64 192, !6, i64 196, !12, i64 200, !42, i64 208, !12, i64 216, !6, i64 224, !6, i64 228, !12, i64 232, !43, i64 240, !5, i64 248, !5, i64 249, !6, i64 252, !44, i64 256, !6, i64 264, !45, i64 272, !6, i64 280, !5, i64 284, !12, i64 288, !12, i64 296, !43, i64 304, !19, i64 312, !6, i64 344, !6, i64 348}
!47 = !{!46, !6, i64 252}
!48 = !{!24, !9, i64 264}
!49 = !{!24, !6, i64 1020}
!50 = !{!24, !12, i64 1024}
!51 = !{!"png_XYZ", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!52 = !{!51, !6, i64 4}
!53 = !{!51, !6, i64 16}
!54 = !{!51, !6, i64 28}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!"branch_weights", i32 8, i32 24}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!24, !12, i64 736}
!60 = !{!24, !21, i64 744}
!61 = !{!24, !6, i64 712}
!62 = !{!42, !42, i64 0}
!63 = !{!"p1 _ZTS11png_control", !9, i64 0}
!64 = !{!"", !63, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !5, i64 36}
!65 = !{!24, !5, i64 629}
!66 = distinct !{!66, !27}
!67 = !{!24, !6, i64 544}
!68 = !{!24, !6, i64 1116}
!69 = !{!24, !10, i64 208}
!70 = !{!24, !11, i64 216}
!71 = !{!24, !9, i64 200}
!72 = !{!24, !9, i64 384}
!73 = !{!24, !9, i64 392}
!74 = !{!24, !9, i64 400}
!75 = !{!10, !10, i64 0}
!76 = !{!13, !13, i64 0}
!77 = !{!15, !15, i64 0}
!78 = !{!16, !16, i64 0}
!79 = !{i64 0, i64 200, !28, i64 200, i64 8, !32, i64 208, i64 8, !75, i64 216, i64 8, !33, i64 224, i64 8, !32, i64 232, i64 8, !32, i64 240, i64 8, !32, i64 248, i64 8, !32, i64 256, i64 8, !32, i64 264, i64 8, !32, i64 272, i64 8, !32, i64 280, i64 8, !32, i64 288, i64 8, !32, i64 296, i64 1, !28, i64 297, i64 1, !28, i64 300, i64 4, !34, i64 304, i64 4, !34, i64 308, i64 4, !34, i64 312, i64 4, !34, i64 320, i64 8, !35, i64 328, i64 4, !34, i64 336, i64 8, !33, i64 344, i64 8, !35, i64 352, i64 4, !34, i64 360, i64 8, !33, i64 368, i64 8, !35, i64 376, i64 8, !76, i64 384, i64 8, !32, i64 392, i64 8, !32, i64 400, i64 8, !32, i64 408, i64 4, !34, i64 416, i64 8, !33, i64 424, i64 8, !33, i64 432, i64 8, !77, i64 440, i64 4, !34, i64 444, i64 4, !34, i64 448, i64 4, !34, i64 452, i64 4, !34, i64 456, i64 4, !34, i64 460, i64 4, !34, i64 464, i64 4, !34, i64 468, i64 4, !34, i64 472, i64 4, !34, i64 476, i64 4, !34, i64 480, i64 4, !34, i64 484, i64 4, !34, i64 488, i64 4, !34, i64 492, i64 4, !34, i64 496, i64 4, !34, i64 500, i64 4, !34, i64 504, i64 4, !34, i64 508, i64 4, !34, i64 512, i64 4, !34, i64 516, i64 4, !34, i64 520, i64 4, !34, i64 528, i64 8, !33, i64 536, i64 4, !34, i64 540, i64 4, !34, i64 544, i64 4, !34, i64 552, i64 8, !35, i64 560, i64 8, !35, i64 568, i64 8, !35, i64 576, i64 8, !35, i64 584, i64 8, !33, i64 592, i64 4, !34, i64 596, i64 4, !34, i64 600, i64 8, !78, i64 608, i64 2, !36, i64 612, i64 4, !34, i64 616, i64 2, !36, i64 618, i64 1, !28, i64 619, i64 1, !28, i64 620, i64 1, !28, i64 621, i64 1, !28, i64 622, i64 1, !28, i64 623, i64 1, !28, i64 624, i64 1, !28, i64 625, i64 1, !28, i64 626, i64 1, !28, i64 627, i64 1, !28, i64 628, i64 1, !28, i64 629, i64 1, !28, i64 630, i64 1, !28, i64 631, i64 1, !28, i64 632, i64 1, !28, i64 634, i64 2, !36, i64 636, i64 1, !28, i64 640, i64 4, !34, i64 644, i64 1, !28, i64 646, i64 2, !36, i64 648, i64 2, !36, i64 650, i64 2, !36, i64 652, i64 2, !36, i64 654, i64 1, !28, i64 656, i64 2, !36, i64 658, i64 2, !36, i64 660, i64 2, !36, i64 662, i64 2, !36, i64 664, i64 8, !32, i64 672, i64 4, !34, i64 676, i64 4, !34, i64 680, i64 4, !34, i64 684, i64 4, !34, i64 688, i64 4, !34, i64 692, i64 4, !34, i64 696, i64 4, !34, i64 700, i64 4, !34, i64 704, i64 4, !34, i64 708, i64 4, !34, i64 712, i64 4, !34, i64 716, i64 4, !34, i64 720, i64 4, !34, i64 724, i64 4, !34, i64 728, i64 4, !34, i64 736, i64 8, !35, i64 744, i64 8, !37, i64 752, i64 8, !35, i64 760, i64 8, !35, i64 768, i64 8, !37, i64 776, i64 8, !37, i64 784, i64 1, !28, i64 785, i64 1, !28, i64 786, i64 1, !28, i64 787, i64 1, !28, i64 788, i64 1, !28, i64 789, i64 1, !28, i64 790, i64 1, !28, i64 791, i64 1, !28, i64 792, i64 1, !28, i64 793, i64 1, !28, i64 800, i64 8, !35, i64 808, i64 1, !28, i64 810, i64 2, !36, i64 812, i64 2, !36, i64 814, i64 2, !36, i64 816, i64 2, !36, i64 824, i64 8, !32, i64 832, i64 8, !32, i64 840, i64 8, !32, i64 848, i64 8, !32, i64 856, i64 8, !32, i64 864, i64 8, !35, i64 872, i64 8, !35, i64 880, i64 8, !35, i64 888, i64 8, !35, i64 896, i64 4, !34, i64 900, i64 4, !34, i64 904, i64 8, !33, i64 912, i64 8, !33, i64 920, i64 8, !33, i64 928, i64 8, !33, i64 936, i64 4, !34, i64 940, i64 4, !34, i64 944, i64 8, !35, i64 952, i64 8, !35, i64 960, i64 4, !34, i64 964, i64 29, !28, i64 996, i64 4, !34, i64 1000, i64 8, !32, i64 1008, i64 8, !32, i64 1016, i64 4, !34, i64 1020, i64 4, !34, i64 1024, i64 8, !35, i64 1032, i64 1, !28, i64 1033, i64 1, !28, i64 1034, i64 2, !36, i64 1036, i64 2, !36, i64 1040, i64 8, !35, i64 1048, i64 4, !34, i64 1052, i64 1, !28, i64 1056, i64 8, !32, i64 1064, i64 8, !32, i64 1072, i64 8, !32, i64 1080, i64 8, !35, i64 1088, i64 8, !35, i64 1096, i64 8, !35, i64 1104, i64 1, !28, i64 1108, i64 4, !34, i64 1112, i64 4, !34, i64 1116, i64 4, !34, i64 1120, i64 8, !33, i64 1128, i64 5, !28, i64 1136, i64 8, !35, i64 1144, i64 8, !33, i64 1152, i64 1, !28, i64 1160, i64 8, !33, i64 1168, i64 8, !35, i64 1176, i64 8, !33, i64 1184, i64 4, !34, i64 1188, i64 4, !34, i64 1192, i64 8, !35, i64 1200, i64 32, !28}
!80 = distinct !{!80, !27}
!81 = distinct !{!81, !27}
!82 = distinct !{!82, !27}
!83 = distinct !{!83, !27}
!84 = distinct !{!84, !27}
!85 = !{!46, !40, i64 120}
!86 = !{!46, !6, i64 108}
!87 = !{!"png_text_struct", !6, i64 0, !12, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !12, i64 40, !12, i64 48}
!88 = !{!87, !12, i64 8}
!89 = !{!46, !6, i64 112}
!90 = !{!46, !6, i64 8}
!91 = !{!46, !12, i64 144}
!92 = !{!46, !17, i64 34}
!93 = !{!46, !12, i64 288}
!94 = !{!46, !12, i64 296}
!95 = !{!46, !12, i64 216}
!96 = !{!46, !12, i64 232}
!97 = !{!46, !43, i64 240}
!98 = !{!46, !5, i64 249}
!99 = !{!46, !12, i64 56}
!100 = !{!46, !12, i64 64}
!101 = !{!46, !45, i64 272}
!102 = !{!46, !6, i64 280}
!103 = !{!"p1 _ZTS21png_sPLT_entry_struct", !9, i64 0}
!104 = !{!"png_sPLT_struct", !12, i64 0, !5, i64 8, !103, i64 16, !6, i64 24}
!105 = !{!104, !12, i64 0}
!106 = !{!104, !103, i64 16}
!107 = !{!46, !44, i64 256}
!108 = !{!46, !6, i64 264}
!109 = !{!23, !12, i64 8}
!110 = !{!46, !12, i64 200}
!111 = !{!46, !42, i64 208}
!112 = !{!46, !16, i64 24}
!113 = !{!46, !17, i64 32}
!114 = !{!46, !43, i64 304}
!115 = !{!46, !6, i64 4}
!116 = !{!41, !17, i64 0}
!117 = !{!41, !5, i64 2}
!118 = !{!41, !5, i64 3}
!119 = !{!41, !5, i64 4}
!120 = !{!41, !5, i64 5}
!121 = !{!41, !5, i64 6}
!122 = distinct !{!122, !27}
!123 = !{!"png_color_struct", !5, i64 0, !5, i64 1, !5, i64 2}
!124 = !{!123, !5, i64 0}
!125 = !{!123, !5, i64 1}
!126 = !{!123, !5, i64 2}
!127 = distinct !{!127, !"png_handle_as_unknown"}
!128 = distinct !{!128, !127, !"png_handle_as_unknown: argument 0"}
!129 = !{!128}
!130 = !{!24, !12, i64 368}
!131 = !{!51, !6, i64 0}
!132 = !{!51, !6, i64 8}
!133 = !{!51, !6, i64 12}
!134 = !{!51, !6, i64 20}
!135 = !{!51, !6, i64 24}
!136 = !{!51, !6, i64 32}
!137 = !{!19, !6, i64 0}
!138 = !{!19, !6, i64 4}
!139 = !{!19, !6, i64 8}
!140 = !{!19, !6, i64 12}
!141 = !{!19, !6, i64 16}
!142 = !{!19, !6, i64 20}
!143 = !{!19, !6, i64 24}
!144 = !{!19, !6, i64 28}
!145 = distinct !{!145, !27}
!146 = !{!24, !5, i64 1033}
!147 = !{!24, !6, i64 504}
!148 = !{!24, !17, i64 1034}
!149 = !{!24, !17, i64 1036}
!150 = !{!24, !6, i64 300}
!151 = !{!24, !6, i64 1048}
!152 = distinct !{!152, !27}
!153 = distinct !{!153, !27}
!154 = distinct !{!154, !27}
!155 = distinct !{!155, !27}
!156 = distinct !{!156, !27}
!157 = distinct !{!157, !27}
!158 = distinct !{!158, !27}
!159 = distinct !{!159, !"LVerDomain"}
!160 = distinct !{!160, !159}
!161 = distinct !{!161, !159}
!162 = distinct !{!162, !27, !55, !56}
!163 = distinct !{!163, !27, !55, !56}
end_hunk_2
