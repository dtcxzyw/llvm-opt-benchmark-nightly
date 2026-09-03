Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fpu_helper?download=true
inline.NumInlined: 830
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 540
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 554
begin_hunk_0_@helper_fbld_ST0:bb.a
  %i.ba = lshr i32 %i.ay, 4
  %i.bb = mul nuw nsw i32 %i.ba, 10
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = and i32 %i.ay, 15
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.az, %i.be
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  %i.bh = add i64 %1, 2
  %i.bi = call zeroext i8 @access_ldb(ptr noundef nonnull %2, i64 noundef %i.bh) #26
  %i.bj = zext i8 %i.bi to i32                    ; 2 uses
  %i.bk = mul nuw nsw i64 %i.bg, 100
  %i.bl = lshr i32 %i.bj, 4
  %i.bm = mul nuw nsw i32 %i.bl, 10
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = and i32 %i.bj, 15
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = add nuw nsw i64 %i.bk, %i.bp
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  %i.bs = add i64 %1, 1
  %i.bt = call zeroext i8 @access_ldb(ptr noundef nonnull %2, i64 noundef %i.bs) #26
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = mul nuw nsw i64 %i.br, 100
  %i.bw = lshr i32 %i.bu, 4
  %i.bx = mul nuw nsw i32 %i.bw, 10
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = and i32 %i.bu, 15
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.bv, %i.ca
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  %i.cd = call zeroext i8 @access_ldb(ptr noundef nonnull %2, i64 noundef %1) #26
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = mul nuw nsw i64 %i.cc, 100
  %i.cg = lshr i32 %i.ce, 4
  %i.ch = mul nuw nsw i32 %i.cg, 10
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = and i32 %i.ce, 15
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = add nuw nsw i64 %i.cf, %i.ck
  %i.cm = add nuw nsw i64 %i.cl, %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.co = call { i64, i16 } @int64_to_floatx80(i64 noundef %i.cm, ptr noundef nonnull %i.cn) #26 ; 2 uses
  %i.cp = extractvalue { i64, i16 } %i.co, 0
  %i.cq = extractvalue { i64, i16 } %i.co, 1      ; 2 uses
  %i.cr = add i64 %1, 9
  %i.cs = call zeroext i8 @access_ldb(ptr noundef nonnull %2, i64 noundef %i.cr) #26
  %i.ct = xor i16 %i.cq, -32768
  %.not27 = icmp slt i8 %i.cs, 0
  %.sroa.7.0 = select i1 %.not27, i16 %i.ct, i16 %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 16
  %i.cw = add i32 %i.cv, 7
  %i.cx = and i32 %i.cw, 7                        ; 2 uses
  store i32 %i.cx, ptr %i.cu, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cz = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz
  store i8 0, ptr %i.da, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.cz ; 3 uses
  store i64 %i.cp, ptr %i.dc, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i16 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10.0..sroa_idx, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare zeroext i8 @access_ldb(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_fbst_ST0(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.X86Access, align 8          ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 9 uses
  %.val.i = load i64, ptr %i.a, align 4           ; 2 uses
  %i.b = and i64 %.val.i, 65535                   ; 2 uses
  %i.c = and i64 %.val.i, -65536
  store i64 %i.c, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false), !annotation !10
  %i.d = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.e = ptrtoint ptr %i.d to i64
  call void @access_prepare(ptr noundef nonnull %2, ptr noundef %0, i64 noundef %1, i32 noundef 10, i32 noundef 1, i64 noundef %i.e) #26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.h = load i32, ptr %i.g, align 16
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.i ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 16
  %i.l = call i64 @floatx80_to_int64(i64 %i.k, i16 %.sroa.4.0.copyload, ptr noundef nonnull %i.a) #26 ; 3 uses
  %i.m = add i64 %i.l, -1000000000000000000
  %or.cond = icmp ult i64 %i.m, -1999999999999999999
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.a, align 8
  %i.o = and i64 %i.n, -65536
  %i.p = or disjoint i64 %i.o, 1
  store i64 %i.p, ptr %i.a, align 8
  %i.q = icmp ult i64 %1, -7
  br i1 %i.q, label %.lr.ph56.preheader, label %._crit_edge57

.lr.ph56.preheader:                               ; preds = %bb.b
  %i.r = add nuw i64 %1, 1
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %1, i8 noundef zeroext 0) #26
  %i.s = add nuw i64 %1, 2
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %i.r, i8 noundef zeroext 0) #26
  %i.t = add nuw i64 %1, 3
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %i.s, i8 noundef zeroext 0) #26
  %i.u = add nuw i64 %1, 4
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %i.t, i8 noundef zeroext 0) #26
  %i.v = add nuw i64 %1, 5
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %i.u, i8 noundef zeroext 0) #26
  %i.w = add nuw i64 %1, 6
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %i.v, i8 noundef zeroext 0) #26
  %i.x = add nuw i64 %1, 7
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %i.w, i8 noundef zeroext 0) #26
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %.lr.ph56.preheader, %bb.b
  %.040.lcssa = phi i64 [ %1, %bb.b ], [ %i.x, %.lr.ph56.preheader ] ; 3 uses
  %i.y = add i64 %.040.lcssa, 1
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %.040.lcssa, i8 noundef zeroext -64) #26
  %i.z = add i64 %.040.lcssa, 2
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %i.y, i8 noundef zeroext -1) #26
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %i.z, i8 noundef zeroext -1) #26
  %.val.i43 = load i64, ptr %i.a, align 8         ; 2 uses
  %i.aa = trunc i64 %.val.i43 to i32              ; 3 uses
  %i.ab = or i64 %.val.i43, %i.b
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = and i32 %i.aa, 1
  %i.ad = shl i32 %i.aa, 1
  %i.ae = and i32 %i.ad, 60
  %i.af = or disjoint i32 %i.ae, %i.ac
  %i.ag = lshr i32 %i.aa, 13
  %i.ah = and i32 %i.ag, 2
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 740 ; 3 uses
  %i.ak = load i16, ptr %i.aj, align 4
  %i.al = trunc nuw nsw i32 %i.ai to i16
  %i.am = or i16 %i.ak, %i.al                     ; 3 uses
  store i16 %i.am, ptr %i.aj, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 742
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = and i16 %i.ao, 63
  %i.aq = xor i16 %i.ap, 63
  %i.ar = and i16 %i.am, %i.aq
  %.not.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.i, label %merge_exception_flags.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge57
  %i.as = or i16 %i.am, -32640
  store i16 %i.as, ptr %i.aj, align 4
  br label %merge_exception_flags.exit

bb.d:                                             ; preds = %bb.a
  %i.at = add i64 %1, 9                           ; 5 uses
  %.not = icmp sgt i16 %.sroa.4.0.copyload, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %i.at, i8 noundef zeroext -128) #26
  %i.au = sub nsw i64 0, %i.l
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %i.at, i8 noundef zeroext 0) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ %i.au, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.av = icmp ugt i64 %1, -10
  %i.aw = icmp eq i64 %.0, 0
  %or.cond349 = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond349, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.g
  %.141.lcssa = phi i64 [ %1, %bb.g ], [ %i.be, %.lr.ph ] ; 2 uses
  %i.ax = icmp ult i64 %.141.lcssa, %i.at
  br i1 %i.ax, label %.lr.ph53, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.151 = phi i64 [ %i.az, %.lr.ph ], [ %.0, %bb.g ] ; 3 uses
  %.14150 = phi i64 [ %i.be, %.lr.ph ], [ %1, %bb.g ] ; 2 uses
  %i.ay = srem i64 %.151, 100
  %i.az = sdiv i64 %.151, 100
  %.lhs.trunc = trunc nsw i64 %i.ay to i8         ; 2 uses
  %i.ba = sdiv i8 %.lhs.trunc, 10
  %i.bb = shl i8 %i.ba, 4
  %i.bc = srem i8 %.lhs.trunc, 10
  %i.bd = or i8 %i.bb, %i.bc
  %i.be = add nuw i64 %.14150, 1                  ; 3 uses
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %.14150, i8 noundef zeroext %i.bd) #26
  %i.bf = icmp uge i64 %i.be, %i.at
  %.151.off = add i64 %.151, 99
  %i.bg = icmp ult i64 %.151.off, 199
  %or.cond3 = or i1 %i.bf, %i.bg
  br i1 %or.cond3, label %.preheader, label %.lr.ph, !llvm.loop !20

.lr.ph53:                                         ; preds = %.preheader, %.lr.ph53
  %.252 = phi i64 [ %i.bh, %.lr.ph53 ], [ %.141.lcssa, %.preheader ] ; 2 uses
  %i.bh = add i64 %.252, 1                        ; 2 uses
  call void @access_stb(ptr noundef nonnull %2, i64 noundef %.252, i8 noundef zeroext 0) #26
  %exitcond.not = icmp eq i64 %i.bh, %i.at
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph53, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph53, %.preheader
  %.val.i44 = load i64, ptr %i.a, align 8         ; 2 uses
  %i.bi = trunc i64 %.val.i44 to i32              ; 3 uses
  %i.bj = or i64 %.val.i44, %i.b
  store i64 %i.bj, ptr %i.a, align 8
  %i.bk = and i32 %i.bi, 1
  %i.bl = shl i32 %i.bi, 1
  %i.bm = and i32 %i.bl, 60
  %i.bn = or disjoint i32 %i.bm, %i.bk
  %i.bo = lshr i32 %i.bi, 13
  %i.bp = and i32 %i.bo, 2
  %i.bq = or disjoint i32 %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 740 ; 3 uses
  %i.bs = load i16, ptr %i.br, align 4
  %i.bt = trunc nuw nsw i32 %i.bq to i16
  %i.bu = or i16 %i.bs, %i.bt                     ; 3 uses
  store i16 %i.bu, ptr %i.br, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 742
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = and i16 %i.bw, 63
  %i.by = xor i16 %i.bx, 63
  %i.bz = and i16 %i.bu, %i.by
  %.not.i.i45 = icmp eq i16 %i.bz, 0
  br i1 %.not.i.i45, label %merge_exception_flags.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ca = or i16 %i.bu, -32640
  store i16 %i.ca, ptr %i.br, align 4
  br label %merge_exception_flags.exit

merge_exception_flags.exit:                       ; preds = %bb.h, %._crit_edge, %bb.c, %._crit_edge57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare void @access_stb(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_f2xm1(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 37 uses
  %.val.i = load i64, ptr %i.g, align 4           ; 7 uses
  %i.h = and i64 %.val.i, 65535
  %i.i = and i64 %.val.i, -65536                  ; 3 uses
  store i64 %i.i, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 6 uses
  %i.l = load i32, ptr %i.k, align 16
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.m ; 6 uses
  %i.o = load i64, ptr %i.n, align 16             ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  store i64 %i.o, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.q = load i16, ptr %i.p, align 8              ; 3 uses
  %i.r = and i16 %i.q, 32767                      ; 7 uses
  %i.s = zext nneg i16 %i.r to i32                ; 2 uses
  store i32 %i.s, ptr %i.b, align 4
  %i.t = icmp slt i16 %i.q, 0                     ; 2 uses
  %i.u = lshr i64 %.val.i, 51
  %i.v = trunc i64 %i.u to i8                     ; 3 uses
  %.not.i = icmp sgt i64 %i.o, -1
  br i1 %.not.i, label %bb.b, label %floatx80_invalid_encoding.exit.thread

bb.b:                                             ; preds = %bb.a
  switch i16 %i.r, label %.split [
    i16 0, label %.thread322
    i16 32767, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %.not8.i = icmp eq i64 %i.o, 0
  br i1 %.not8.i, label %.split315, label %floatx80_invalid_encoding.exit

.split315:                                        ; preds = %bb.c
  %i.w = and i8 %i.v, 2
  %.not9.i = icmp eq i8 %i.w, 0
  br i1 %.not9.i, label %bb.d, label %.thread.thread

.split:                                           ; preds = %bb.b
  %i.x = and i8 %i.v, 8
  %.not7.i = icmp eq i8 %i.x, 0
  br i1 %.not7.i, label %bb.d, label %.thread

floatx80_invalid_encoding.exit:                   ; preds = %bb.c
  %i.y = and i8 %i.v, 4
  %.not10.i = icmp eq i8 %i.y, 0
  br i1 %.not10.i, label %bb.d, label %floatx80_invalid_encoding.exit.thread

bb.d:                                             ; preds = %.split315, %.split, %floatx80_invalid_encoding.exit
  %i.z = or disjoint i64 %i.i, 1
  store i64 %i.z, ptr %i.g, align 8
  %i.aa = tail call { i64, i16 } @floatx80_default_nan(ptr noundef nonnull %i.g) #26 ; 2 uses
  %i.ab = extractvalue { i64, i16 } %i.aa, 0
  %i.ac = extractvalue { i64, i16 } %i.aa, 1
  store i64 %i.ab, ptr %i.n, align 16
  store i16 %i.ac, ptr %i.p, align 8
  br label %bb.ac

floatx80_invalid_encoding.exit.thread:            ; preds = %bb.a, %floatx80_invalid_encoding.exit
  %i.ad = icmp eq i16 %i.r, 32767
  %.mask.i = and i64 %i.o, 9223372036854775807
  %i.ae = icmp ne i64 %.mask.i, 0
  %i.af = and i1 %i.ae, %i.ad
  br i1 %i.af, label %bb.e, label %.thread

bb.e:                                             ; preds = %floatx80_invalid_encoding.exit.thread
  %i.ag = tail call zeroext i1 @floatx80_is_signaling_nan(i64 %i.o, i16 %i.q, ptr noundef nonnull %i.g) #26
  br i1 %i.ag, label %bb.f, label %bb.ac

bb.f:                                             ; preds = %bb.e
  %i.ah = load i64, ptr %i.g, align 8
  %i.ai = or i64 %i.ah, 1
  store i64 %i.ai, ptr %i.g, align 8
  %i.aj = load i32, ptr %i.k, align 16
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ak ; 3 uses
  %i.am = load i64, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = tail call { i64, i16 } @floatx80_silence_nan(i64 %i.am, i16 %i.ao, ptr noundef nonnull %i.g) #26 ; 2 uses
  %i.aq = extractvalue { i64, i16 } %i.ap, 0
  %i.ar = extractvalue { i64, i16 } %i.ap, 1
  store i64 %i.aq, ptr %i.al, align 16
  store i16 %i.ar, ptr %i.an, align 8
  br label %bb.ac

.thread:                                          ; preds = %.split, %floatx80_invalid_encoding.exit.thread
  %i.as = icmp samesign ugt i16 %i.r, 16383
  br i1 %i.as, label %.thread.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.at = icmp eq i16 %i.r, 16383                 ; 2 uses
  %i.au = icmp ne i64 %i.o, -9223372036854775808
  %or.cond = and i1 %i.au, %i.at
  br i1 %or.cond, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %.split315, %bb.g, %.thread
  %i.av = or disjoint i64 %i.i, 1
  store i64 %i.av, ptr %i.g, align 8
  %i.aw = tail call { i64, i16 } @floatx80_default_nan(ptr noundef nonnull %i.g) #26 ; 2 uses
  %i.ax = extractvalue { i64, i16 } %i.aw, 0
  %i.ay = extractvalue { i64, i16 } %i.aw, 1
  store i64 %i.ax, ptr %i.n, align 16
  store i16 %i.ay, ptr %i.p, align 8
  br label %bb.ac

bb.h:                                             ; preds = %bb.g
  br i1 %i.at, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.t, label %bb.j, label %bb.ac

bb.j:                                             ; preds = %bb.i
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3.0..sroa_idx, i8 0, i64 6, i1 false)
  store i64 -9223372036854775808, ptr %i.n, align 16
  store i16 -16386, ptr %i.p, align 8
  br label %bb.ac

bb.k:                                             ; preds = %bb.h
  %i.az = icmp samesign ult i16 %i.r, 16304
  br i1 %i.az, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ba = icmp eq i16 %i.r, 0                     ; 2 uses
  %i.bb = icmp eq i64 %i.o, 0
  %i.bc = and i1 %i.bb, %i.ba
  br i1 %i.bc, label %bb.ac, label %bb.m

.thread322:                                       ; preds = %bb.b
  %i.bd = icmp eq i64 %i.o, 0
  br i1 %i.bd, label %bb.ac, label %.thread323

bb.m:                                             ; preds = %bb.l
  br i1 %i.ba, label %.thread323, label %bb.n

.thread323:                                       ; preds = %.thread322, %bb.m
  call void @normalizeFloatx80Subnormal(i64 noundef %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #26
  %.pre325 = load i64, ptr %i.a, align 8
  %.pre326 = load i32, ptr %i.k, align 16
  %.pre327 = load i32, ptr %i.b, align 4
  %.pre328 = zext i32 %.pre326 to i64
  br label %bb.n

bb.n:                                             ; preds = %.thread323, %bb.m
  %.pre-phi = phi i64 [ %.pre328, %.thread323 ], [ %i.m, %bb.m ]
  %i.be = phi i32 [ %.pre327, %.thread323 ], [ %i.s, %bb.m ]
  %i.bf = phi i64 [ %.pre325, %.thread323 ], [ %i.o, %bb.m ]
  %i.bg = zext i64 %i.bf to i128                  ; 2 uses
  %i.bh = mul nuw i128 %i.bg, 14547668686819489455
  %i.bi = lshr i128 %i.bh, 64
end_hunk_0
begin_hunk_1_@helper_fpatan:bb.a
  br i1 %.not.i452, label %bb.x, label %floatx80_is_infinity.exit458

bb.x:                                             ; preds = %bb.w
  %.val.i456 = load i64, ptr %i.aa, align 8
  %i.fe = and i64 %.val.i456, 4503599627370496
  %.not3.i457 = icmp ne i64 %i.fe, 0
  %.not4.i454 = icmp eq i64 %.mask.i440, 0
  %i.ff = and i1 %.not4.i454, %i.do
  %or.cond602 = select i1 %.not3.i457, i1 %i.ff, i1 false
  br i1 %or.cond602, label %bb.y, label %floatx80_is_infinity.exit458.thread

floatx80_is_infinity.exit458:                     ; preds = %bb.w
  %.not4.i454.old = icmp eq i64 %.mask.i440, 0
  %.old601 = and i1 %.not4.i454.old, %i.do
  br i1 %.old601, label %bb.y, label %floatx80_is_infinity.exit458.thread

bb.y:                                             ; preds = %bb.x, %floatx80_is_infinity.exit458
  br i1 %.not.i441, label %bb.z, label %floatx80_is_infinity.exit465

bb.z:                                             ; preds = %bb.y
  %.val.i463 = load i64, ptr %i.aa, align 8
  %i.fg = and i64 %.val.i463, 4503599627370496
  %.not3.i464 = icmp ne i64 %i.fg, 0
  %.not4.i461 = icmp eq i64 %.mask.i, 0
  %i.fh = and i1 %.not4.i461, %i.dd
  %or.cond604 = select i1 %.not3.i464, i1 %i.fh, i1 false ; 4 uses
  %or.cond604.not = xor i1 %or.cond604, true
  %brmerge = select i1 %or.cond604.not, i1 true, i1 %i.an
  %.mux = select i1 %or.cond604, i64 -7580714886593867353, i64 -3958705157555305932
  %.mux605 = select i1 %or.cond604, i64 -7812397452616198755, i64 -4267615245585081135
  %.mux606 = select i1 %or.cond604, i32 16384, i32 16383
  br i1 %brmerge, label %floatx80_is_infinity.exit465.thread, label %bb.aa

floatx80_is_infinity.exit465:                     ; preds = %bb.y
  %.not4.i461.old = icmp eq i64 %.mask.i, 0
  %.old603 = and i1 %.not4.i461.old, %i.dd        ; 4 uses
  %.old603.not = xor i1 %.old603, true
  %brmerge607 = select i1 %.old603.not, i1 true, i1 %i.an
  %.mux608 = select i1 %.old603, i64 -7580714886593867353, i64 -3958705157555305932
  %.mux609 = select i1 %.old603, i64 -7812397452616198755, i64 -4267615245585081135
  %.mux610 = select i1 %.old603, i32 16384, i32 16383
  br i1 %brmerge607, label %floatx80_is_infinity.exit465.thread, label %bb.aa

bb.aa:                                            ; preds = %floatx80_is_infinity.exit465, %bb.z
  br label %floatx80_is_infinity.exit465.thread

floatx80_is_infinity.exit458.thread:              ; preds = %bb.x, %floatx80_is_infinity.exit458
  %i.fi = icmp eq i16 %i.dc, 0
  %i.fj = icmp eq i64 %i.cz, 0
  %i.fk = select i1 %i.fi, i1 %i.fj, i1 false
  %i.fl = sub nsw i32 %i.aw, %i.am
  %i.fm = icmp sgt i32 %i.fl, 79
  %or.cond725 = select i1 %i.fk, i1 true, i1 %i.fm
  br i1 %or.cond725, label %floatx80_is_infinity.exit465.thread, label %bb.ab

bb.ab:                                            ; preds = %floatx80_is_infinity.exit458.thread
  br i1 %.not.i441, label %bb.ac, label %floatx80_is_infinity.exit472

bb.ac:                                            ; preds = %bb.ab
  %.val.i470 = load i64, ptr %i.aa, align 8
  %i.fn = and i64 %.val.i470, 4503599627370496
  %.not3.i471 = icmp ne i64 %i.fn, 0
  %.not4.i468 = icmp eq i64 %.mask.i, 0
  %i.fo = and i1 %.not4.i468, %i.dd
  %or.cond612 = select i1 %.not3.i471, i1 %i.fo, i1 false
  br i1 %or.cond612, label %floatx80_is_infinity.exit465.thread, label %floatx80_is_infinity.exit472.thread

floatx80_is_infinity.exit472:                     ; preds = %bb.ab
  %.not4.i468.old = icmp eq i64 %.mask.i, 0
  %.old611 = and i1 %.not4.i468.old, %i.dd
  br i1 %.old611, label %floatx80_is_infinity.exit465.thread, label %floatx80_is_infinity.exit472.thread

floatx80_is_infinity.exit472.thread:              ; preds = %bb.ac, %floatx80_is_infinity.exit472
  %i.fp = sub nsw i32 %i.am, %i.aw
  %i.fq = icmp sgt i32 %i.fp, 79
  br i1 %i.fq, label %floatx80_is_infinity.exit465.thread, label %bb.ad

bb.ad:                                            ; preds = %floatx80_is_infinity.exit472.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 0, ptr %i.g, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store i64 0, ptr %i.h, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store i64 0, ptr %i.i, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  store i64 0, ptr %i.j, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store i64 0, ptr %i.k, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  store i64 0, ptr %i.l, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  store i64 0, ptr %i.m, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  store i64 0, ptr %i.n, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #26
  store i64 0, ptr %i.o, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #26
  store i64 0, ptr %i.p, align 8, !annotation !10
  %.val432 = load i64, ptr %i.aa, align 8         ; 2 uses
  %i.fr = and i64 %.val432, -2031617
  store i64 %i.fr, ptr %i.aa, align 8
  %i.fs = icmp eq i16 %i.al, 0
  br i1 %i.fs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @normalizeFloatx80Subnormal(i64 noundef %i.ai, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #26
  %.pre661 = load i32, ptr %i.d, align 4
  %.pre665.pre670.pre = load i64, ptr %i.c, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pre665.pre670 = phi i64 [ %.pre665.pre670.pre, %bb.ae ], [ %i.as, %bb.ad ] ; 2 uses
  %i.ft = phi i32 [ %.pre661, %bb.ae ], [ %i.aw, %bb.ad ] ; 2 uses
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @normalizeFloatx80Subnormal(i64 noundef %.pre665.pre670, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #26
  %.pre662 = load i32, ptr %i.d, align 4
  %.pre665.pre = load i64, ptr %i.c, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pre665 = phi i64 [ %.pre665.pre, %bb.ag ], [ %.pre665.pre670, %bb.af ] ; 4 uses
  %i.fv = phi i32 [ %.pre662, %bb.ag ], [ %i.ft, %bb.af ] ; 5 uses
  %i.fw = load i32, ptr %i.b, align 4             ; 5 uses
  %i.fx = icmp sgt i32 %i.fw, %i.fv
  %.pre666 = load i64, ptr %i.a, align 8          ; 4 uses
  br i1 %i.fx, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fy = icmp ne i32 %i.fw, %i.fv
  %.not423 = icmp ult i64 %.pre666, %.pre665
  %or.cond726 = select i1 %i.fy, i1 true, i1 %.not423
  br i1 %or.cond726, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  br i1 %i.an, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i64 -3958705157555305932, ptr %i.g, align 8
  store i64 -4267615245585081135, ptr %i.h, align 8
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  store i64 0, ptr %i.g, align 8
  store i64 0, ptr %i.h, align 8
  br label %bb.an

bb.am:                                            ; preds = %bb.ai
  store i64 -3958705157555305932, ptr %i.g, align 8
  store i64 -4267615245585081135, ptr %i.h, align 8
  %i.fz = xor i1 %i.an, true
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.al, %bb.am
  %i.ga = phi i64 [ -4267615245585081135, %bb.ak ], [ 0, %bb.al ], [ -4267615245585081135, %bb.am ] ; 3 uses
  %i.gb = phi i64 [ -3958705157555305932, %bb.ak ], [ 0, %bb.al ], [ -3958705157555305932, %bb.am ] ; 2 uses
  %.0399 = phi i64 [ %.pre666, %bb.ak ], [ %.pre666, %bb.al ], [ %.pre665, %bb.am ] ; 5 uses
  %.0398 = phi i64 [ %.pre665, %bb.ak ], [ %.pre665, %bb.al ], [ %.pre666, %bb.am ] ; 3 uses
  %.0395 = phi i1 [ true, %bb.ak ], [ false, %bb.al ], [ %i.fz, %bb.am ]
  %.0385 = phi i32 [ %i.fw, %bb.ak ], [ %i.fw, %bb.al ], [ %i.fv, %bb.am ]
  %.0384 = phi i32 [ %i.fv, %bb.ak ], [ %i.fv, %bb.al ], [ %i.fw, %bb.am ]
  %i.gc = phi i1 [ false, %bb.ak ], [ true, %bb.al ], [ false, %bb.am ]
  %.0383 = phi i32 [ 16384, %bb.ak ], [ 0, %bb.al ], [ 16383, %bb.am ] ; 3 uses
  %i.gd = sub i32 %.0384, %.0385
  %.not424 = icmp ule i64 %.0399, %.0398          ; 3 uses
  %i.ge = shl i64 %.0398, 63
  %i.gf = zext i1 %.not424 to i64
  %.0539 = lshr i64 %.0398, %i.gf                 ; 2 uses
  %.0535 = select i1 %.not424, i64 %i.ge, i64 0   ; 2 uses
  %.0386.v = select i1 %.not424, i32 16383, i32 16382
  %.0386 = add i32 %i.gd, %.0386.v                ; 10 uses
  %i.gg = call fastcc i64 @estimateDiv128To64(i64 noundef %.0539, i64 noundef %.0535, i64 noundef %.0399) ; 3 uses
  %i.gh = zext i64 %.0399 to i128
  %i.gi = zext i64 %i.gg to i128
  %i.gj = mul nuw i128 %i.gi, %i.gh               ; 2 uses
  %i.gk = trunc i128 %i.gj to i64
  %i.gl = lshr i128 %i.gj, 64
  %i.gm = trunc nuw i128 %i.gl to i64
  %i.gn = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.0535, i64 %i.gk) ; 2 uses
  %i.go = extractvalue { i64, i1 } %i.gn, 1
  %.neg.i = sext i1 %i.go to i64
  %i.gp = sub i64 %.0539, %i.gm
  %i.gq = add i64 %i.gp, %.neg.i                  ; 2 uses
  %.1536635 = extractvalue { i64, i1 } %i.gn, 0   ; 2 uses
  %i.gr = icmp slt i64 %i.gq, 0
  br i1 %i.gr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.an, %.lr.ph
  %.1536638 = phi i64 [ %.1536, %.lr.ph ], [ %.1536635, %bb.an ]
  %.0400637 = phi i64 [ %i.gs, %.lr.ph ], [ %i.gg, %bb.an ]
  %.1540636 = phi i64 [ %i.gw, %.lr.ph ], [ %i.gq, %bb.an ]
  %i.gs = add i64 %.0400637, -1                   ; 2 uses
  %i.gt = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.1536638, i64 %.0399) ; 2 uses
  %i.gu = extractvalue { i64, i1 } %i.gt, 1
  %i.gv = zext i1 %i.gu to i64
  %i.gw = add nsw i64 %.1540636, %i.gv            ; 2 uses
  %.1536 = extractvalue { i64, i1 } %i.gt, 0      ; 2 uses
  %i.gx = icmp slt i64 %i.gw, 0
  br i1 %i.gx, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %bb.an
  %.0400.lcssa = phi i64 [ %i.gg, %bb.an ], [ %i.gs, %.lr.ph ] ; 6 uses
  %.1536.lcssa = phi i64 [ %.1536635, %bb.an ], [ %.1536, %.lr.ph ]
  %i.gy = call fastcc i64 @estimateDiv128To64(i64 noundef %.1536.lcssa, i64 noundef 0, i64 noundef %.0399) ; 10 uses
  %i.gz = add i32 %.0386, 3
  %i.ha = call { i64, i16 } @normalizeRoundAndPackFloatx80(i8 noundef zeroext 0, i1 noundef zeroext false, i32 noundef %i.gz, i64 noundef %.0400.lcssa, i64 noundef %i.gy, ptr noundef nonnull %i.aa) #26 ; 2 uses
  %i.hb = extractvalue { i64, i16 } %i.ha, 0
  %i.hc = extractvalue { i64, i16 } %i.ha, 1
  %i.hd = call i32 @floatx80_to_int32(i64 %i.hb, i16 %i.hc, ptr noundef nonnull %i.aa) #26 ; 4 uses
  %i.he = icmp eq i32 %i.hd, 0                    ; 2 uses
  br i1 %i.he, label %shift128Left.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  %i.hf = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hd, i1 true) ; 3 uses
  %i.hg = or disjoint i32 %i.hf, 32
  %i.hh = sub nuw nsw i32 16411, %i.hf            ; 3 uses
  %i.hi = zext i32 %i.hd to i64
  %i.hj = zext nneg i32 %i.hg to i64
  %i.hk = shl i64 %i.hi, %i.hj                    ; 4 uses
  %i.hl = icmp eq i32 %i.hh, %.0386
  br i1 %i.hl, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.hm = sub i64 %.0400.lcssa, %i.hk             ; 4 uses
  %i.hn = icmp sgt i64 %i.hm, -1
  br i1 %i.hn, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.ho = icmp eq i64 %.0400.lcssa, %i.hk
  br i1 %i.ho, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.hp = icmp eq i64 %i.gy, 0
  br i1 %i.hp, label %.split590, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gy, i1 true) ; 2 uses
  %i.hr = trunc nuw nsw i64 %i.hq to i32
  %.neg625 = add nsw i32 %.0386, -64
  %i.hs = sub nuw nsw i32 %.neg625, %i.hr
  %i.ht = shl i64 %i.gy, %i.hq
  br label %shift128Left.exit

bb.at:                                            ; preds = %bb.aq
  %i.hu = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.hm, i1 true) ; 4 uses
  %i.hv = trunc nuw nsw i64 %i.hu to i32
  %i.hw = sub nuw nsw i32 %.0386, %i.hv
  %i.hx = shl i64 %i.gy, %i.hu
  %i.hy = shl i64 %i.hm, %i.hu
  %i.hz = sub nsw i64 0, %i.hu
  %i.ia = and i64 %i.hz, 63
  %i.ib = lshr i64 %i.gy, %i.ia
  %i.ic = or i64 %i.ib, %i.hy
  br label %shift128Left.exit

bb.au:                                            ; preds = %bb.ap
  %i.id = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %i.gy) ; 2 uses
  %i.ie = extractvalue { i64, i1 } %i.id, 1
  %i.if = extractvalue { i64, i1 } %i.id, 0       ; 4 uses
  %.neg.i474 = sext i1 %i.ie to i64
  %i.ig = sub i64 %.neg.i474, %i.hm               ; 4 uses
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ii = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.if, i1 false) ; 2 uses
  %i.ij = trunc nuw nsw i64 %i.ii to i32
  %.neg623 = add nsw i32 %.0386, -64
  %i.ik = sub nuw nsw i32 %.neg623, %i.ij
  %i.il = shl i64 %i.if, %i.ii
  br label %shift128Left.exit

bb.aw:                                            ; preds = %bb.au
  %i.im = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ig, i1 true) ; 5 uses
  %i.in = trunc nuw nsw i64 %i.im to i32
  %i.io = sub nuw nsw i32 %.0386, %i.in           ; 2 uses
  %i.ip = shl i64 %i.if, %i.im                    ; 2 uses
  %i.iq = icmp eq i64 %i.im, 0
  br i1 %i.iq, label %shift128Left.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ir = shl i64 %i.ig, %i.im
  %i.is = sub nsw i64 0, %i.im
  %i.it = and i64 %i.is, 63
  %i.iu = lshr i64 %i.if, %i.it
  %i.iv = or i64 %i.iu, %i.ir
  br label %shift128Left.exit

bb.ay:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #26
  %i.iw = sub i32 %i.hh, %.0386
  call fastcc void @shift128RightJamming(i64 noundef %.0400.lcssa, i64 noundef %i.gy, i32 noundef %i.iw, ptr noundef %i.q, ptr noundef %i.r)
  %i.ix = load i64, ptr %i.q, align 8
  %i.iy = load i64, ptr %i.r, align 8
  %i.iz = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %i.iy) ; 2 uses
  %i.ja = extractvalue { i64, i1 } %i.iz, 1
  %i.jb = extractvalue { i64, i1 } %i.iz, 0       ; 4 uses
  %.neg.i477 = sext i1 %i.ja to i64
  %i.jc = sub i64 %i.hk, %i.ix
  %i.jd = add i64 %i.jc, %.neg.i477               ; 4 uses
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jb, i1 false) ; 2 uses
  %i.jg = trunc nuw nsw i64 %i.jf to i32
  %i.jh = add nuw nsw i32 %i.jg, 64
  %i.ji = shl i64 %i.jb, %i.jf
  br label %shift128Left.exit479

bb.ba:                                            ; preds = %bb.ay
  %i.jj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jd, i1 true) ; 5 uses
  %i.jk = shl i64 %i.jb, %i.jj                    ; 2 uses
  %i.jl = icmp eq i64 %i.jj, 0
  br i1 %i.jl, label %shift128Left.exit479, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jm = trunc nuw nsw i64 %i.jj to i32
  %i.jn = shl i64 %i.jd, %i.jj
  %i.jo = sub nsw i64 0, %i.jj
  %i.jp = and i64 %i.jo, 63
  %i.jq = lshr i64 %i.jb, %i.jp
  %i.jr = or i64 %i.jq, %i.jn
  br label %shift128Left.exit479

shift128Left.exit479:                             ; preds = %bb.ba, %bb.bb, %bb.az
  %.pn618 = phi i32 [ 0, %bb.ba ], [ %i.jm, %bb.bb ], [ %i.jh, %bb.az ]
  %.3 = phi i64 [ %i.jk, %bb.ba ], [ %i.jk, %bb.bb ], [ 0, %bb.az ]
  %storemerge.i478 = phi i64 [ %i.jd, %bb.ba ], [ %i.jr, %bb.bb ], [ %i.ji, %bb.az ]
  %i.js = sub nuw nsw i32 %i.hh, %.pn618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26
  br label %shift128Left.exit

shift128Left.exit:                                ; preds = %bb.as, %shift128Left.exit479, %bb.at, %bb.aw, %bb.ax, %bb.av
  %.0533 = phi i64 [ %storemerge.i478, %shift128Left.exit479 ], [ %i.iv, %bb.ax ], [ %i.ht, %bb.as ], [ %i.ig, %bb.aw ], [ %i.ic, %bb.at ], [ %i.il, %bb.av ] ; 4 uses
  %.0530 = phi i64 [ %.3, %shift128Left.exit479 ], [ %i.ip, %bb.ax ], [ 0, %bb.as ], [ %i.ip, %bb.aw ], [ %i.hx, %bb.at ], [ 0, %bb.av ] ; 2 uses
  %.1397 = phi i1 [ true, %shift128Left.exit479 ], [ true, %bb.ax ], [ false, %bb.as ], [ true, %bb.aw ], [ false, %bb.at ], [ true, %bb.av ]
  %.1388 = phi i32 [ %i.js, %shift128Left.exit479 ], [ %i.io, %bb.ax ], [ %i.hs, %bb.as ], [ %i.io, %bb.aw ], [ %i.hw, %bb.at ], [ %i.ik, %bb.av ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #26
  %i.jt = zext i64 %i.gy to i128
  %i.ju = zext i64 %i.hk to i128                  ; 2 uses
  %i.jv = mul nuw i128 %i.ju, %i.jt
  %i.jw = lshr i128 %i.jv, 64
  %i.jx = trunc nuw i128 %i.jw to i64
  %i.jy = zext i64 %.0400.lcssa to i128
  %i.jz = mul nuw i128 %i.ju, %i.jy               ; 2 uses
  %i.ka = trunc i128 %i.jz to i64
  %i.kb = lshr i128 %i.jz, 64
  %i.kc = trunc nuw i128 %i.kb to i64
  %i.kd = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ka, i64 %i.jx) ; 2 uses
  %i.ke = extractvalue { i64, i1 } %i.kd, 1
  %i.kf = extractvalue { i64, i1 } %i.kd, 0
  %i.kg = zext i1 %i.ke to i64
  %i.kh = add nuw i64 %i.kg, %i.kc
  %i.ki = sub i32 %i.hf, %.0386
  %i.kj = add i32 %i.ki, 16354
  call fastcc void @shift128RightJamming(i64 noundef %i.kh, i64 noundef %i.kf, i32 noundef %i.kj, ptr noundef %i.s, ptr noundef %i.t)
  %i.kk = load i64, ptr %i.s, align 8
  %i.kl = or i64 %i.kk, -9223372036854775808      ; 5 uses
  %i.km = add nsw i32 %.1388, -1
  %.not425 = icmp ugt i64 %i.kl, %.0533
  br i1 %.not425, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %shift128Left.exit
  %i.kn = lshr i64 %.0533, 1
  %i.ko = call i64 @llvm.fshl.i64(i64 %.0533, i64 %.0530, i64 63)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %shift128Left.exit
  %.2541 = phi i64 [ %.0533, %shift128Left.exit ], [ %i.kn, %bb.bc ] ; 2 uses
  %.2537 = phi i64 [ %.0530, %shift128Left.exit ], [ %i.ko, %bb.bc ] ; 2 uses
  %.0390 = phi i32 [ %i.km, %shift128Left.exit ], [ %.1388, %bb.bc ]
  %i.kp = call fastcc i64 @estimateDiv128To64(i64 noundef %.2541, i64 noundef %.2537, i64 noundef %i.kl) ; 3 uses
  %i.kq = load i64, ptr %i.t, align 8             ; 2 uses
  %i.kr = zext i64 %i.kq to i128
  %i.ks = zext i64 %i.kp to i128                  ; 2 uses
  %i.kt = mul nuw i128 %i.kr, %i.ks               ; 2 uses
  %i.ku = trunc i128 %i.kt to i64
  %i.kv = lshr i128 %i.kt, 64
  %i.kw = trunc nuw i128 %i.kv to i64
  %i.kx = zext i64 %i.kl to i128
  %i.ky = mul nuw i128 %i.ks, %i.kx               ; 2 uses
  %i.kz = trunc i128 %i.ky to i64
  %i.la = lshr i128 %i.ky, 64
  %i.lb = trunc nuw i128 %i.la to i64
  %i.lc = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kz, i64 %i.kw) ; 2 uses
  %i.ld = extractvalue { i64, i1 } %i.lc, 1
  %i.le = extractvalue { i64, i1 } %i.lc, 0
  %.neg = sext i1 %i.ld to i64
  %i.lf = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %i.ku) ; 2 uses
  %i.lg = extractvalue { i64, i1 } %i.lf, 1
  %i.lh = zext i1 %i.lg to i64
  %i.li = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.2537, i64 %i.le) ; 2 uses
  %i.lj = extractvalue { i64, i1 } %i.li, 1
  %i.lk = extractvalue { i64, i1 } %i.li, 0
  %i.ll = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.lk, i64 %i.lh) ; 2 uses
  %i.lm = extractvalue { i64, i1 } %i.ll, 1
  %i.ln = or i1 %i.lj, %i.lm
  %.neg.i480 = sext i1 %i.ln to i64
  %.neg630 = sub i64 %.2541, %i.lb
  %i.lo = add i64 %.neg630, %.neg
  %i.lp = add i64 %i.lo, %.neg.i480               ; 2 uses
  %.0534640 = extractvalue { i64, i1 } %i.lf, 0   ; 2 uses
  %.3538641 = extractvalue { i64, i1 } %i.ll, 0   ; 2 uses
  %i.lq = icmp slt i64 %i.lp, 0
  br i1 %i.lq, label %.lr.ph647, label %shift128Left.exit.thread.thread709

.lr.ph647:                                        ; preds = %bb.bd, %.lr.ph647
  %.3538645 = phi i64 [ %.3538, %.lr.ph647 ], [ %.3538641, %bb.bd ]
  %.0534644 = phi i64 [ %.0534, %.lr.ph647 ], [ %.0534640, %bb.bd ]
  %.0402643 = phi i64 [ %i.lr, %.lr.ph647 ], [ %i.kp, %bb.bd ]
  %.3542642 = phi i64 [ %i.mc, %.lr.ph647 ], [ %i.lp, %bb.bd ]
  %i.lr = add i64 %.0402643, -1                   ; 2 uses
  %i.ls = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0534644, i64 %i.kq) ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 1
  %i.lu = zext i1 %i.lt to i64
  %i.lv = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.3538645, i64 %i.kl) ; 2 uses
  %i.lw = extractvalue { i64, i1 } %i.lv, 1
  %i.lx = extractvalue { i64, i1 } %i.lv, 0
  %i.ly = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.lx, i64 %i.lu) ; 2 uses
  %i.lz = extractvalue { i64, i1 } %i.ly, 1
  %i.ma = or i1 %i.lw, %i.lz
  %i.mb = zext i1 %i.ma to i64
  %i.mc = add nsw i64 %.3542642, %i.mb            ; 2 uses
  %.0534 = extractvalue { i64, i1 } %i.ls, 0      ; 2 uses
  %.3538 = extractvalue { i64, i1 } %i.ly, 0      ; 2 uses
  %i.md = icmp slt i64 %i.mc, 0
  br i1 %i.md, label %.lr.ph647, label %shift128Left.exit.thread.thread709, !llvm.loop !23

shift128Left.exit.thread.thread709:               ; preds = %.lr.ph647, %bb.bd
  %.0402.lcssa = phi i64 [ %i.kp, %bb.bd ], [ %i.lr, %.lr.ph647 ]
  %.0534.lcssa = phi i64 [ %.0534640, %bb.bd ], [ %.0534, %.lr.ph647 ]
  %.3538.lcssa = phi i64 [ %.3538641, %bb.bd ], [ %.3538, %.lr.ph647 ]
  %i.me = call fastcc i64 @estimateDiv128To64(i64 noundef %.3538.lcssa, i64 noundef %.0534.lcssa, i64 noundef %i.kl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #26
  br label %.thread580

shift128Left.exit.thread:                         ; preds = %._crit_edge
  %i.mf = icmp eq i32 %.0386, 0
  br i1 %i.mf, label %.split590.thread, label %.thread580

.split590:                                        ; preds = %bb.ar
  store i64 0, ptr %i.k, align 8
  store i64 0, ptr %i.l, align 8
  br label %bb.be

.thread580:                                       ; preds = %shift128Left.exit.thread.thread709, %shift128Left.exit.thread
  %.1391717 = phi i32 [ %.0390, %shift128Left.exit.thread.thread709 ], [ %.0386, %shift128Left.exit.thread ] ; 2 uses
  %.1403716 = phi i64 [ %.0402.lcssa, %shift128Left.exit.thread.thread709 ], [ %.0400.lcssa, %shift128Left.exit.thread ] ; 3 uses
  %.0404715 = phi i64 [ %i.me, %shift128Left.exit.thread.thread709 ], [ %i.gy, %shift128Left.exit.thread ] ; 3 uses
  %.1397577714 = phi i1 [ %.1397, %shift128Left.exit.thread.thread709 ], [ false, %shift128Left.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #26
  call fastcc void @mul128To256(i64 noundef %.1403716, i64 noundef %.0404715, i64 noundef %.1403716, i64 noundef %.0404715, ptr noundef %i.u, ptr noundef %i.v, ptr noundef %i.w, ptr noundef %i.x)
  %i.mg = shl i32 %.1391717, 1
  %i.mh = add i32 %i.mg, -16382
  %i.mi = load i64, ptr %i.u, align 8
  %i.mj = load i64, ptr %i.v, align 8
  %i.mk = call { i64, i16 } @normalizeRoundAndPackFloatx80(i8 noundef zeroext 0, i1 noundef zeroext false, i32 noundef %i.mh, i64 noundef %i.mi, i64 noundef %i.mj, ptr noundef nonnull %i.aa) #26 ; 2 uses
  %i.ml = extractvalue { i64, i16 } %i.mk, 0      ; 6 uses
  %i.mm = extractvalue { i64, i16 } %i.mk, 1      ; 6 uses
  %i.mn = call { i64, i16 } @floatx80_mul(i64 -7228419515794898193, i16 16379, i64 %i.ml, i16 %i.mm, ptr noundef nonnull %i.aa) #26 ; 2 uses
  %i.mo = extractvalue { i64, i16 } %i.mn, 0
  %i.mp = extractvalue { i64, i16 } %i.mn, 1
  %i.mq = call { i64, i16 } @floatx80_add(i64 -5031645563836365291, i16 -16389, i64 %i.mo, i16 %i.mp, ptr noundef nonnull %i.aa) #26 ; 2 uses
  %i.mr = extractvalue { i64, i16 } %i.mq, 0
  %i.ms = extractvalue { i64, i16 } %i.mq, 1
  %i.mt = call { i64, i16 } @floatx80_mul(i64 %i.mr, i16 %i.ms, i64 %i.ml, i16 %i.mm, ptr noundef nonnull %i.aa) #26 ; 2 uses
  %i.mu = extractvalue { i64, i16 } %i.mt, 0
  %i.mv = extractvalue { i64, i16 } %i.mt, 1
  %i.mw = call { i64, i16 } @floatx80_add(i64 -2049640133289173493, i16 16379, i64 %i.mu, i16 %i.mv, ptr noundef nonnull %i.aa) #26 ; 2 uses
  %i.mx = extractvalue { i64, i16 } %i.mw, 0
  %i.my = extractvalue { i64, i16 } %i.mw, 1
  %i.mz = call { i64, i16 } @floatx80_mul(i64 %i.mx, i16 %i.my, i64 %i.ml, i16 %i.mm, ptr noundef nonnull %i.aa) #26 ; 2 uses
  %i.na = extractvalue { i64, i16 } %i.mz, 0
  %i.nb = extractvalue { i64, i16 } %i.mz, 1
  %i.nc = call { i64, i16 } @floatx80_add(i64 -7905747461461037466, i16 -16388, i64 %i.na, i16 %i.nb, ptr noundef nonnull %i.aa) #26 ; 2 uses
  %i.nd = extractvalue { i64, i16 } %i.nc, 0
  %i.ne = extractvalue { i64, i16 } %i.nc, 1
  %i.nf = call { i64, i16 } @floatx80_mul(i64 %i.nd, i16 %i.ne, i64 %i.ml, i16 %i.mm, ptr noundef nonnull %i.aa) #26 ; 2 uses
  %i.ng = extractvalue { i64, i16 } %i.nf, 0
  %i.nh = extractvalue { i64, i16 } %i.nf, 1
  %i.ni = call { i64, i16 } @floatx80_add(i64 -3689348814742756104, i16 16380, i64 %i.ng, i16 %i.nh, ptr noundef nonnull %i.aa) #26 ; 2 uses
  %i.nj = extractvalue { i64, i16 } %i.ni, 0
  %i.nk = extractvalue { i64, i16 } %i.ni, 1
  %i.nl = call { i64, i16 } @floatx80_mul(i64 %i.nj, i16 %i.nk, i64 %i.ml, i16 %i.mm, ptr noundef nonnull %i.aa) #26 ; 2 uses
  %i.nm = extractvalue { i64, i16 } %i.nl, 0
  %i.nn = extractvalue { i64, i16 } %i.nl, 1
  %i.no = call { i64, i16 } @floatx80_add(i64 -6148914691236517309, i16 -16387, i64 %i.nm, i16 %i.nn, ptr noundef nonnull %i.aa) #26 ; 2 uses
  %i.np = extractvalue { i64, i16 } %i.no, 0
  %i.nq = extractvalue { i64, i16 } %i.no, 1
  %i.nr = call { i64, i16 } @floatx80_mul(i64 %i.np, i16 %i.nq, i64 %i.ml, i16 %i.mm, ptr noundef nonnull %i.aa) #26 ; 2 uses
  %i.ns = extractvalue { i64, i16 } %i.nr, 0
  %i.nt = extractvalue { i64, i16 } %i.nr, 1
  %i.nu = and i16 %i.nt, 32767
  %i.nv = zext nneg i16 %i.nu to i32
  %i.nw = sub nsw i32 16383, %i.nv
  call fastcc void @shift128RightJamming(i64 noundef %i.ns, i64 noundef 0, i32 noundef %i.nw, ptr noundef %i.i, ptr noundef %i.j)
  %i.nx = load i64, ptr %i.i, align 8
  %i.ny = load i64, ptr %i.j, align 8
  %i.nz = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %i.ny) ; 2 uses
  %i.oa = extractvalue { i64, i1 } %i.nz, 1
  %i.ob = extractvalue { i64, i1 } %i.nz, 0
  %.neg.i481 = sext i1 %i.oa to i64
  %reass.sub = sub i64 %.neg.i481, %i.nx
  %i.oc = xor i64 %reass.sub, -9223372036854775808
  %i.od = add i32 %.1391717, 1                    ; 2 uses
  call fastcc void @mul128To256(i64 noundef %i.oc, i64 noundef %i.ob, i64 noundef %.1403716, i64 noundef %.0404715, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #26
  br i1 %i.he, label %.thread580._crit_edge, label %bb.be

.thread580._crit_edge:                            ; preds = %.thread580
  %.pre667 = load i64, ptr %i.k, align 8
  %.pre668 = load i64, ptr %i.l, align 8
  br label %.split590.thread

bb.be:                                            ; preds = %.split590, %.thread580
  %.1397577707 = phi i1 [ false, %.split590 ], [ %.1397577714, %.thread580 ]
  %.0392593 = phi i32 [ 0, %.split590 ], [ %i.od, %.thread580 ] ; 3 uses
  %i.oe = sext i32 %i.hd to i64                   ; 2 uses
  %i.of = getelementptr inbounds [32 x i8], ptr @fpatan_table, i64 %i.oe ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oh = load i64, ptr %i.og, align 16
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.oj = load i16, ptr %i.oi, align 8
  %i.ok = shl nuw i64 1, %i.oe
  %i.ol = and i64 %i.ok, 394
  %.not = icmp eq i64 %i.ol, 0
  %i.om = and i16 %i.oj, 32767
  %i.on = zext nneg i16 %i.om to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #26
  %i.oo = load i64, ptr %i.of, align 16           ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oq = load i16, ptr %i.op, align 8
  %i.or = and i16 %i.oq, 32767
  %i.os = zext nneg i16 %i.or to i32              ; 5 uses
  %i.ot = sub nsw i32 %i.os, %i.on
  call fastcc void @shift128RightJamming(i64 noundef %i.oh, i64 noundef 0, i32 noundef %i.ot, ptr noundef %i.y, ptr noundef %i.z)
  %i.ou = load i64, ptr %i.y, align 8             ; 2 uses
  %i.ov = load i64, ptr %i.z, align 8             ; 2 uses
  br i1 %.not, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ow = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %i.ov) ; 2 uses
  %i.ox = extractvalue { i64, i1 } %i.ow, 1
  %i.oy = extractvalue { i64, i1 } %i.ow, 0
  %.neg.i482 = sext i1 %i.ox to i64
  %i.oz = sub i64 %i.oo, %i.ou
  %i.pa = add i64 %i.oz, %.neg.i482
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.pb = add i64 %i.ou, %i.oo
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.pc = phi i64 [ %i.ov, %bb.bg ], [ %i.oy, %bb.bf ] ; 4 uses
  %i.pd = phi i64 [ %i.pb, %bb.bg ], [ %i.pa, %bb.bf ] ; 3 uses
  store i64 %i.pc, ptr %i.p, align 8
  %.not426 = icmp slt i32 %.0392593, %i.os
  br i1 %.not426, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.pe = add nuw i32 %.0392593, 1                ; 2 uses
  %i.pf = sub i32 %i.pe, %i.os
  call fastcc void @shift128RightJamming(i64 noundef %i.pd, i64 noundef %i.pc, i32 noundef %i.pf, ptr noundef %i.o, ptr noundef %i.p)
  %i.pg = load i64, ptr %i.k, align 8             ; 2 uses
  %i.ph = load i64, ptr %i.l, align 8             ; 2 uses
  %i.pi = call i64 @llvm.fshl.i64(i64 %i.pg, i64 %i.ph, i64 63)
  %i.pj = and i64 %i.ph, 1
  %i.pk = or i64 %i.pi, %i.pj
  %i.pl = lshr i64 %i.pg, 1
  store i64 %i.pk, ptr %i.l, align 8
  store i64 %i.pl, ptr %i.k, align 8
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.pm = call i64 @llvm.fshl.i64(i64 %i.pd, i64 %i.pc, i64 63)
  %i.pn = and i64 %i.pc, 1
  %i.po = or i64 %i.pm, %i.pn
  %i.pp = lshr i64 %i.pd, 1
  store i64 %i.po, ptr %i.p, align 8
  store i64 %i.pp, ptr %i.o, align 8
  %i.pq = load i64, ptr %i.k, align 8
  %i.pr = load i64, ptr %i.l, align 8
  %reass.sub652 = sub i32 %i.os, %.0392593
  %i.ps = add i32 %reass.sub652, 1
  call fastcc void @shift128RightJamming(i64 noundef %i.pq, i64 noundef %i.pr, i32 noundef %i.ps, ptr noundef %i.k, ptr noundef %i.l)
  %.pre679 = add nuw nsw i32 %i.os, 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0393.pre-phi = phi i32 [ %.pre679, %bb.bj ], [ %i.pe, %bb.bi ]
  %i.pt = load i64, ptr %i.o, align 8             ; 2 uses
  %i.pu = load i64, ptr %i.p, align 8             ; 2 uses
  %i.pv = load i64, ptr %i.k, align 8             ; 2 uses
  %i.pw = load i64, ptr %i.l, align 8             ; 2 uses
  br i1 %.1397577707, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.px = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.pu, i64 %i.pw) ; 2 uses
  %i.py = extractvalue { i64, i1 } %i.px, 1
  %.neg.i483 = sext i1 %i.py to i64
  %i.pz = sub i64 %i.pt, %i.pv
  %i.qa = add i64 %i.pz, %.neg.i483
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.qb = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.pu, i64 %i.pw) ; 2 uses
  %i.qc = extractvalue { i64, i1 } %i.qb, 1
  %i.qd = zext i1 %i.qc to i64
  %i.qe = add i64 %i.pv, %i.pt
  %i.qf = add i64 %i.qe, %i.qd
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn = phi { i64, i1 } [ %i.px, %bb.bl ], [ %i.qb, %bb.bm ]
  %storemerge621 = phi i64 [ %i.qa, %bb.bl ], [ %i.qf, %bb.bm ]
  %.sink658 = extractvalue { i64, i1 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #26
end_hunk_1
begin_hunk_2_@helper_fyl2x_common:bb.a

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ne i64 %1, 0
  %i.x = zext i1 %i.w to i64
  br label %shift128RightJamming.exit

shift128RightJamming.exit:                        ; preds = %bb.e, %bb.b, %bb.d, %bb.g, %bb.h
  %.027.i = phi i64 [ %1, %bb.b ], [ %i.l, %bb.d ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.e ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ], [ %i.v, %bb.g ], [ %i.x, %bb.h ], [ %1, %bb.e ]
  %i.y = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %.1.i) ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  %i.aa = extractvalue { i64, i1 } %i.y, 0
  %.neg.i = sext i1 %i.z to i64
  %i.ab = sub i64 %.neg.i, %.027.i
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  %i.ac = sub nsw i32 16384, %i.b                 ; 3 uses
  %i.ad = and i8 %i.d, 63                         ; 2 uses
  %i.ae = icmp eq i16 %i.a, 16384
  br i1 %i.ae, label %shift128RightJamming.exit265, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = icmp samesign ugt i16 %i.a, 16320
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = zext nneg i8 %i.ad to i64
  %i.ah = shl i64 %1, %i.ag
  %i.ai = zext nneg i32 %i.ac to i64
  %i.aj = lshr i64 %1, %i.ai
  br label %shift128RightJamming.exit265

bb.l:                                             ; preds = %bb.j
  %i.ak = icmp eq i16 %i.a, 16320
  br i1 %i.ak, label %shift128RightJamming.exit265, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = icmp samesign ult i32 %i.ac, 128
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = and i32 %i.ac, 63
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = lshr i64 %1, %i.an
  %i.ap = zext nneg i8 %i.ad to i64
  %i.aq = shl i64 %1, %i.ap
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i64
  %i.at = or i64 %i.ao, %i.as
  br label %shift128RightJamming.exit265

bb.o:                                             ; preds = %bb.m
  %i.au = icmp ne i64 %1, 0
  %i.av = zext i1 %i.au to i64
  br label %shift128RightJamming.exit265

shift128RightJamming.exit265:                     ; preds = %bb.l, %bb.i, %bb.k, %bb.n, %bb.o
  %.027.i263 = phi i64 [ %1, %bb.i ], [ %i.aj, %bb.k ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.l ]
  %.1.i264 = phi i64 [ 0, %bb.i ], [ %i.ah, %bb.k ], [ %i.at, %bb.n ], [ %i.av, %bb.o ], [ %1, %bb.l ]
  %i.aw = or i64 %.027.i263, -9223372036854775808
  br label %bb.p

bb.p:                                             ; preds = %shift128RightJamming.exit265, %shift128RightJamming.exit
  %.0326 = phi i64 [ %i.ab, %shift128RightJamming.exit ], [ %i.aw, %shift128RightJamming.exit265 ] ; 12 uses
  %.0325 = phi i64 [ %i.aa, %shift128RightJamming.exit ], [ %.1.i264, %shift128RightJamming.exit265 ] ; 2 uses
  %.0.neg = phi i32 [ -16383, %shift128RightJamming.exit ], [ -16384, %shift128RightJamming.exit265 ]
  %i.ax = add nsw i32 %.0.neg, %i.b
  %.not = icmp ule i64 %.0326, %1                 ; 3 uses
  %i.ay = shl i64 %1, 63
  %i.az = zext i1 %.not to i64
  %.0323 = lshr i64 %1, %i.az                     ; 5 uses
  %.0322 = select i1 %.not, i64 %i.ay, i64 0      ; 2 uses
  %.0259.v = select i1 %.not, i32 16383, i32 16382
  %.0259 = add nsw i32 %i.ax, %.0259.v            ; 2 uses
  %.not.i = icmp ugt i64 %.0326, %.0323
  br i1 %.not.i, label %bb.q, label %.estimateDiv128To64.exit_crit_edge

.estimateDiv128To64.exit_crit_edge:               ; preds = %bb.p
  %.pre = zext i64 %.0326 to i128
  br label %estimateDiv128To64.exit

bb.q:                                             ; preds = %bb.p
  %i.ba = lshr i64 %.0326, 32                     ; 3 uses
  %i.bb = and i64 %.0326, -4294967296             ; 2 uses
  %.not25.i = icmp ugt i64 %i.bb, %.0323
  br i1 %.not25.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bc = udiv i64 %.0323, %i.ba
  %i.bd = shl i64 %i.bc, 32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.be = phi i64 [ %i.bd, %bb.r ], [ -4294967296, %bb.q ] ; 3 uses
  %i.bf = zext i64 %.0326 to i128                 ; 2 uses
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = trunc i128 %i.bh to i64
  %i.bj = lshr i128 %i.bh, 64
  %i.bk = trunc nuw i128 %i.bj to i64
  %i.bl = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.0322, i64 %i.bi) ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 1
  %.neg.i.i = sext i1 %i.bm to i64
  %i.bn = sub i64 %.0323, %i.bk
  %i.bo = add i64 %i.bn, %.neg.i.i                ; 3 uses
  %.03133.i = extractvalue { i64, i1 } %i.bl, 0   ; 2 uses
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.bq = shl i64 %.0326, 32
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i
  %.03136.i = phi i64 [ %.03133.i, %.lr.ph.i ], [ %.031.i, %bb.t ]
  %.035.i = phi i64 [ %i.be, %.lr.ph.i ], [ %i.br, %bb.t ]
  %.03234.i = phi i64 [ %i.bo, %.lr.ph.i ], [ %i.bw, %bb.t ]
  %i.br = add i64 %.035.i, -4294967296            ; 2 uses
  %i.bs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.03136.i, i64 %i.bq) ; 2 uses
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  %i.bu = zext i1 %i.bt to i64
  %i.bv = add nsw i64 %.03234.i, %i.ba
  %i.bw = add nsw i64 %i.bv, %i.bu                ; 3 uses
  %.031.i = extractvalue { i64, i1 } %i.bs, 0     ; 2 uses
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.t, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.t, %bb.s
  %.032.lcssa.i = phi i64 [ %i.bo, %bb.s ], [ %i.bw, %bb.t ]
  %.0.lcssa.i = phi i64 [ %i.be, %bb.s ], [ %i.br, %bb.t ]
  %.031.lcssa.i = phi i64 [ %.03133.i, %bb.s ], [ %.031.i, %bb.t ]
  %i.by = tail call i64 @llvm.fshl.i64(i64 %.032.lcssa.i, i64 %.031.lcssa.i, i64 32) ; 2 uses
  %.not26.i = icmp ugt i64 %i.bb, %i.by
  br i1 %.not26.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i
  %i.bz = udiv i64 %i.by, %i.ba
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  %i.ca = phi i64 [ %i.bz, %bb.u ], [ 4294967295, %._crit_edge.i ]
  %i.cb = or i64 %i.ca, %.0.lcssa.i
  br label %estimateDiv128To64.exit

estimateDiv128To64.exit:                          ; preds = %.estimateDiv128To64.exit_crit_edge, %bb.v
  %.pre-phi = phi i128 [ %.pre, %.estimateDiv128To64.exit_crit_edge ], [ %i.bf, %bb.v ] ; 2 uses
  %.020.i = phi i64 [ -1, %.estimateDiv128To64.exit_crit_edge ], [ %i.cb, %bb.v ] ; 3 uses
  %i.cc = zext i64 %.0325 to i128
  %i.cd = zext i64 %.020.i to i128                ; 2 uses
  %i.ce = mul nuw i128 %i.cd, %i.cc               ; 2 uses
  %i.cf = trunc i128 %i.ce to i64
  %i.cg = lshr i128 %i.ce, 64
  %i.ch = trunc nuw i128 %i.cg to i64
  %i.ci = mul nuw i128 %.pre-phi, %i.cd           ; 2 uses
  %i.cj = trunc i128 %i.ci to i64
  %i.ck = lshr i128 %i.ci, 64
  %i.cl = trunc nuw i128 %i.ck to i64
  %i.cm = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cj, i64 %i.ch) ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  %i.co = extractvalue { i64, i1 } %i.cm, 0
  %.neg344 = sext i1 %i.cn to i64
  %i.cp = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %i.cf) ; 2 uses
  %i.cq = extractvalue { i64, i1 } %i.cp, 1
  %i.cr = zext i1 %i.cq to i64
  %i.cs = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.0322, i64 %i.co) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  %i.cu = extractvalue { i64, i1 } %i.cs, 0
  %i.cv = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cu, i64 %i.cr) ; 2 uses
  %i.cw = extractvalue { i64, i1 } %i.cv, 1
  %i.cx = or i1 %i.ct, %i.cw
  %.neg.i266 = sext i1 %i.cx to i64
  %.neg332 = sub i64 %.0323, %i.cl
  %i.cy = add i64 %.neg332, %.neg344
  %i.cz = add i64 %i.cy, %.neg.i266               ; 2 uses
  %.0321336 = extractvalue { i64, i1 } %i.cp, 0   ; 2 uses
  %.1337 = extractvalue { i64, i1 } %i.cv, 0      ; 2 uses
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %estimateDiv128To64.exit, %.lr.ph
  %.1341 = phi i64 [ %.1, %.lr.ph ], [ %.1337, %estimateDiv128To64.exit ]
  %.0321340 = phi i64 [ %.0321, %.lr.ph ], [ %.0321336, %estimateDiv128To64.exit ]
  %.0260339 = phi i64 [ %i.db, %.lr.ph ], [ %.020.i, %estimateDiv128To64.exit ]
  %.1324338 = phi i64 [ %i.dm, %.lr.ph ], [ %i.cz, %estimateDiv128To64.exit ]
  %i.db = add i64 %.0260339, -1                   ; 2 uses
  %i.dc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0321340, i64 %.0325) ; 2 uses
  %i.dd = extractvalue { i64, i1 } %i.dc, 1
  %i.de = zext i1 %i.dd to i64
  %i.df = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.1341, i64 %.0326) ; 2 uses
  %i.dg = extractvalue { i64, i1 } %i.df, 1
  %i.dh = extractvalue { i64, i1 } %i.df, 0
  %i.di = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dh, i64 %i.de) ; 2 uses
  %i.dj = extractvalue { i64, i1 } %i.di, 1
  %i.dk = or i1 %i.dg, %i.dj
  %i.dl = zext i1 %i.dk to i64
  %i.dm = add nsw i64 %.1324338, %i.dl            ; 2 uses
  %.0321 = extractvalue { i64, i1 } %i.dc, 0      ; 2 uses
  %.1 = extractvalue { i64, i1 } %i.di, 0         ; 2 uses
  %i.dn = icmp slt i64 %i.dm, 0
  br i1 %i.dn, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %estimateDiv128To64.exit
  %.0260.lcssa = phi i64 [ %.020.i, %estimateDiv128To64.exit ], [ %i.db, %.lr.ph ]
  %.0321.lcssa = phi i64 [ %.0321336, %estimateDiv128To64.exit ], [ %.0321, %.lr.ph ]
  %.1.lcssa = phi i64 [ %.1337, %estimateDiv128To64.exit ], [ %.1, %.lr.ph ] ; 4 uses
  %.not.i267 = icmp ugt i64 %.0326, %.1.lcssa
  br i1 %.not.i267, label %bb.w, label %estimateDiv128To64.exit282

bb.w:                                             ; preds = %._crit_edge
  %i.do = lshr i64 %.0326, 32                     ; 3 uses
  %i.dp = and i64 %.0326, -4294967296             ; 2 uses
  %.not25.i269 = icmp ugt i64 %i.dp, %.1.lcssa
  br i1 %.not25.i269, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dq = udiv i64 %.1.lcssa, %i.do
  %i.dr = shl i64 %i.dq, 32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ds = phi i64 [ %i.dr, %bb.x ], [ -4294967296, %bb.w ] ; 3 uses
  %i.dt = zext i64 %i.ds to i128
  %i.du = mul nuw i128 %.pre-phi, %i.dt           ; 2 uses
  %i.dv = trunc i128 %i.du to i64
  %i.dw = lshr i128 %i.du, 64
  %i.dx = trunc nuw i128 %i.dw to i64
  %i.dy = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.0321.lcssa, i64 %i.dv) ; 2 uses
  %i.dz = extractvalue { i64, i1 } %i.dy, 1
  %.neg.i.i270 = sext i1 %i.dz to i64
  %i.ea = sub i64 %.1.lcssa, %i.dx
  %i.eb = add i64 %i.ea, %.neg.i.i270             ; 3 uses
  %.03133.i271 = extractvalue { i64, i1 } %i.dy, 0 ; 2 uses
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.i277, label %._crit_edge.i272

.lr.ph.i277:                                      ; preds = %bb.y
  %i.ed = shl i64 %.0326, 32
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i277
  %.03136.i278 = phi i64 [ %.03133.i271, %.lr.ph.i277 ], [ %.031.i281, %bb.z ]
  %.035.i279 = phi i64 [ %i.ds, %.lr.ph.i277 ], [ %i.ee, %bb.z ]
  %.03234.i280 = phi i64 [ %i.eb, %.lr.ph.i277 ], [ %i.ej, %bb.z ]
  %i.ee = add i64 %.035.i279, -4294967296         ; 2 uses
  %i.ef = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.03136.i278, i64 %i.ed) ; 2 uses
  %i.eg = extractvalue { i64, i1 } %i.ef, 1
  %i.eh = zext i1 %i.eg to i64
  %i.ei = add nsw i64 %.03234.i280, %i.do
  %i.ej = add nsw i64 %i.ei, %i.eh                ; 3 uses
  %.031.i281 = extractvalue { i64, i1 } %i.ef, 0  ; 2 uses
  %i.ek = icmp slt i64 %i.ej, 0
  br i1 %i.ek, label %bb.z, label %._crit_edge.i272, !llvm.loop !0

._crit_edge.i272:                                 ; preds = %bb.z, %bb.y
  %.032.lcssa.i273 = phi i64 [ %i.eb, %bb.y ], [ %i.ej, %bb.z ]
  %.0.lcssa.i274 = phi i64 [ %i.ds, %bb.y ], [ %i.ee, %bb.z ]
  %.031.lcssa.i275 = phi i64 [ %.03133.i271, %bb.y ], [ %.031.i281, %bb.z ]
  %i.el = tail call i64 @llvm.fshl.i64(i64 %.032.lcssa.i273, i64 %.031.lcssa.i275, i64 32) ; 2 uses
  %.not26.i276 = icmp ugt i64 %i.dp, %i.el
  br i1 %.not26.i276, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i272
  %i.em = udiv i64 %i.el, %i.do
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i272
  %i.en = phi i64 [ %i.em, %bb.aa ], [ 4294967295, %._crit_edge.i272 ]
  %i.eo = or i64 %i.en, %.0.lcssa.i274
  br label %estimateDiv128To64.exit282

estimateDiv128To64.exit282:                       ; preds = %._crit_edge, %bb.ab
  %.020.i268 = phi i64 [ %i.eo, %bb.ab ], [ -1, %._crit_edge ]
  %i.ep = zext i64 %.020.i268 to i128             ; 5 uses
  %i.eq = zext i64 %.0260.lcssa to i128           ; 5 uses
  %i.er = mul nuw i128 %i.ep, %i.eq               ; 2 uses
  %i.es = trunc i128 %i.er to i64                 ; 2 uses
  %i.et = lshr i128 %i.er, 64
  %i.eu = trunc nuw i128 %i.et to i64             ; 2 uses
  %i.ev = mul nuw i128 %i.ep, %i.ep
  %i.ew = lshr i128 %i.ev, 64
  %i.ex = trunc nuw i128 %i.ew to i64
  %i.ey = mul nuw i128 %i.eq, %i.eq               ; 2 uses
  %i.ez = trunc i128 %i.ey to i64
  %i.fa = lshr i128 %i.ey, 64
  %i.fb = trunc nuw i128 %i.fa to i64
  %i.fc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.es, i64 %i.es) ; 2 uses
  %i.fd = extractvalue { i64, i1 } %i.fc, 1
  %i.fe = extractvalue { i64, i1 } %i.fc, 0
  %i.ff = zext i1 %i.fd to i64
  %i.fg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.eu, i64 %i.eu) ; 2 uses
  %i.fh = extractvalue { i64, i1 } %i.fg, 1
  %i.fi = extractvalue { i64, i1 } %i.fg, 0
  %i.fj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fi, i64 %i.ff) ; 2 uses
  %i.fk = extractvalue { i64, i1 } %i.fj, 1
  %i.fl = extractvalue { i64, i1 } %i.fj, 0
  %i.fm = or i1 %i.fh, %i.fk
  %i.fn = zext i1 %i.fm to i64
  %i.fo = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fe, i64 %i.ex)
  %i.fp = extractvalue { i64, i1 } %i.fo, 1
  %i.fq = zext i1 %i.fp to i64
  %i.fr = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fl, i64 %i.ez) ; 2 uses
  %i.fs = extractvalue { i64, i1 } %i.fr, 1
  %i.ft = extractvalue { i64, i1 } %i.fr, 0
  %i.fu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ft, i64 %i.fq) ; 2 uses
  %i.fv = extractvalue { i64, i1 } %i.fu, 1
  %i.fw = extractvalue { i64, i1 } %i.fu, 0
  %i.fx = or i1 %i.fs, %i.fv
  %i.fy = zext i1 %i.fx to i64
  %i.fz = add nuw i64 %i.fn, %i.fb
  %i.ga = add i64 %i.fz, %i.fy
  %i.gb = shl nsw i32 %.0259, 1
  %i.gc = add nsw i32 %i.gb, -16382
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 19 uses
  %i.ge = tail call { i64, i16 } @normalizeRoundAndPackFloatx80(i8 noundef zeroext 0, i1 noundef zeroext false, i32 noundef %i.gc, i64 noundef %i.ga, i64 noundef %i.fw, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.gf = extractvalue { i64, i16 } %i.ge, 0      ; 9 uses
  %i.gg = extractvalue { i64, i16 } %i.ge, 1      ; 9 uses
  %i.gh = tail call { i64, i16 } @floatx80_mul(i64 -5625839917781114621, i16 16380, i64 %i.gf, i16 %i.gg, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.gi = extractvalue { i64, i16 } %i.gh, 0
  %i.gj = extractvalue { i64, i16 } %i.gh, 1
  %i.gk = tail call { i64, i16 } @floatx80_add(i64 -6026672766126824590, i16 16380, i64 %i.gi, i16 %i.gj, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.gl = extractvalue { i64, i16 } %i.gk, 0
  %i.gm = extractvalue { i64, i16 } %i.gk, 1
  %i.gn = tail call { i64, i16 } @floatx80_mul(i64 %i.gl, i16 %i.gm, i64 %i.gf, i16 %i.gg, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.go = extractvalue { i64, i16 } %i.gn, 0
  %i.gp = extractvalue { i64, i16 } %i.gn, 1
  %i.gq = tail call { i64, i16 } @floatx80_add(i64 -4249491527473637361, i16 16380, i64 %i.go, i16 %i.gp, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.gr = extractvalue { i64, i16 } %i.gq, 0
  %i.gs = extractvalue { i64, i16 } %i.gq, 1
  %i.gt = tail call { i64, i16 } @floatx80_mul(i64 %i.gr, i16 %i.gs, i64 %i.gf, i16 %i.gg, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.gu = extractvalue { i64, i16 } %i.gt, 0
  %i.gv = extractvalue { i64, i16 } %i.gt, 1
  %i.gw = tail call { i64, i16 } @floatx80_add(i64 -2069573934764629390, i16 16380, i64 %i.gu, i16 %i.gv, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.gx = extractvalue { i64, i16 } %i.gw, 0
  %i.gy = extractvalue { i64, i16 } %i.gw, 1
  %i.gz = tail call { i64, i16 } @floatx80_mul(i64 %i.gx, i16 %i.gy, i64 %i.gf, i16 %i.gg, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.ha = extractvalue { i64, i16 } %i.gz, 0
  %i.hb = extractvalue { i64, i16 } %i.gz, 1
  %i.hc = tail call { i64, i16 } @floatx80_add(i64 -8769279502842759913, i16 16381, i64 %i.ha, i16 %i.hb, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.hd = extractvalue { i64, i16 } %i.hc, 0
  %i.he = extractvalue { i64, i16 } %i.hc, 1
  %i.hf = tail call { i64, i16 } @floatx80_mul(i64 %i.hd, i16 %i.he, i64 %i.gf, i16 %i.gg, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.hg = extractvalue { i64, i16 } %i.hf, 0
  %i.hh = extractvalue { i64, i16 } %i.hf, 1
  %i.hi = tail call { i64, i16 } @floatx80_add(i64 -6618732435136755298, i16 16381, i64 %i.hg, i16 %i.hh, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.hj = extractvalue { i64, i16 } %i.hi, 0
  %i.hk = extractvalue { i64, i16 } %i.hi, 1
  %i.hl = tail call { i64, i16 } @floatx80_mul(i64 %i.hj, i16 %i.hk, i64 %i.gf, i16 %i.gg, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.hm = extractvalue { i64, i16 } %i.hl, 0
  %i.hn = extractvalue { i64, i16 } %i.hl, 1
  %i.ho = tail call { i64, i16 } @floatx80_add(i64 -3239300533298072983, i16 16381, i64 %i.hm, i16 %i.hn, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.hp = extractvalue { i64, i16 } %i.ho, 0
  %i.hq = extractvalue { i64, i16 } %i.ho, 1
  %i.hr = tail call { i64, i16 } @floatx80_mul(i64 %i.hp, i16 %i.hq, i64 %i.gf, i16 %i.gg, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.hs = extractvalue { i64, i16 } %i.hr, 0
  %i.ht = extractvalue { i64, i16 } %i.hr, 1
  %i.hu = tail call { i64, i16 } @floatx80_add(i64 -7801533595434114333, i16 16382, i64 %i.hs, i16 %i.ht, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.hv = extractvalue { i64, i16 } %i.hu, 0
  %i.hw = extractvalue { i64, i16 } %i.hu, 1
  %i.hx = tail call { i64, i16 } @floatx80_mul(i64 %i.hv, i16 %i.hw, i64 %i.gf, i16 %i.gg, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.hy = extractvalue { i64, i16 } %i.hx, 0
  %i.hz = extractvalue { i64, i16 } %i.hx, 1
  %i.ia = tail call { i64, i16 } @floatx80_add(i64 -704726609917121608, i16 16382, i64 %i.hy, i16 %i.hz, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.ib = extractvalue { i64, i16 } %i.ia, 0
  %i.ic = extractvalue { i64, i16 } %i.ia, 1
  %i.id = tail call { i64, i16 } @floatx80_mul(i64 %i.ib, i16 %i.ic, i64 %i.gf, i16 %i.gg, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.ie = extractvalue { i64, i16 } %i.id, 0
  %i.if = extractvalue { i64, i16 } %i.id, 1
  %i.ig = tail call { i64, i16 } @floatx80_add(i64 -8986525145430775013, i16 -16449, i64 %i.ie, i16 %i.if, ptr noundef nonnull %i.gd) #26 ; 2 uses
  %i.ih = extractvalue { i64, i16 } %i.ig, 0      ; 7 uses
  %i.ii = extractvalue { i64, i16 } %i.ig, 1      ; 3 uses
  %i.ij = and i16 %i.ii, 32767                    ; 4 uses
  %i.ik = zext nneg i16 %i.ij to i32
  %i.il = sub nsw i32 16384, %i.ik                ; 3 uses
  %.neg330 = trunc i16 %i.ii to i8
  %i.im = and i8 %.neg330, 63                     ; 2 uses
  %i.in = icmp eq i16 %i.ij, 16384
  br i1 %i.in, label %shift128RightJamming.exit285, label %bb.ac

bb.ac:                                            ; preds = %estimateDiv128To64.exit282
  %i.io = icmp samesign ugt i16 %i.ij, 16320
  br i1 %i.io, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ip = zext nneg i8 %i.im to i64
  %i.iq = shl i64 %i.ih, %i.ip
  %i.ir = zext nneg i32 %i.il to i64
  %i.is = lshr i64 %i.ih, %i.ir
  br label %shift128RightJamming.exit285

bb.ae:                                            ; preds = %bb.ac
  %i.it = icmp eq i16 %i.ij, 16320
  br i1 %i.it, label %shift128RightJamming.exit285, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iu = icmp samesign ult i32 %i.il, 128
  br i1 %i.iu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.iv = and i32 %i.il, 63
  %i.iw = zext nneg i32 %i.iv to i64
end_hunk_2
begin_hunk_3_@helper_xrstor:bb.a

valid_xrstor_header.exit:                         ; preds = %do_xsave_chk.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 11632
  %i.r = load i64, ptr %i.q, align 16
  %i.s = xor i64 %i.r, -1
  %i.t = and i64 %i.h, %i.s
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %valid_xrstor_header.exit.thread

valid_xrstor_header.exit.thread:                  ; preds = %do_xsave_chk.exit, %valid_xrstor_header.exit
  call void @raise_exception_ra(ptr noundef nonnull %0, i32 noundef 13, i64 noundef %i.b) #27
  unreachable

bb.e:                                             ; preds = %valid_xrstor_header.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 11632
  %i.w = load i64, ptr %i.v, align 16
  %i.x = and i64 %i.w, %2                         ; 2 uses
  %i.y = and i64 %i.x, %i.h
  %i.z = call i32 @xsave_area_size(i64 noundef %i.y, i1 noundef zeroext false) #26 ; 2 uses
  %i.aa = icmp ugt i32 %i.z, 576
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @access_prepare(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef %1, i32 noundef %i.z, i32 noundef 0, i64 noundef %i.b) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call fastcc void @do_xrstor(ptr noundef %3, i64 noundef %1, i64 noundef %i.x, i64 noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

declare i32 @xsave_area_size(i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_xrstor(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 26 uses
  %i.c = and i64 %2, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %3, 1
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @do_xrstor_fpu(ptr noundef %0, i64 noundef %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 740
  store i16 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 736
  store i32 0, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 882
  store i16 0, ptr %i.g, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 884
  store i16 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 888
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 742
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i16 895, ptr %i.j, align 2
  %i.k = load i8, ptr @tcg_allowed, align 1, !range !11, !noundef !12
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %do_fninit.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 904 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, -2031617
  store i64 %i.o, ptr %i.m, align 8
  br label %do_fninit.exit

do_fninit.exit:                                   ; preds = %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 744
  store i64 72340172838076673, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 752
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.q, i8 noundef 0, i64 noundef 128, i1 noundef false) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %do_fninit.exit, %bb.a
  %i.r = and i64 %2, 2
  %.not42 = icmp eq i64 %i.r, 0
  br i1 %.not42, label %do_xrstor_sse.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = add i64 %1, 24
  %i.u = tail call i32 @access_ldl(ptr noundef nonnull %0, i64 noundef %i.t) #26 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 944
  store i32 %i.u, ptr %i.v, align 16
  %i.w = load i8, ptr @tcg_allowed, align 1, !range !11, !noundef !12
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %do_xrstor_mxcsr.exit

bb.h:                                             ; preds = %bb.g
  %i.y = lshr i32 %i.u, 13
  %i.z = and i32 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 936 ; 2 uses
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @set_x86_rounding_mode.x86_round_mode, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = load i64, ptr %i.aa, align 8
  %i.af = and i8 %i.ad, 7
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 16
  %i.ai = and i64 %i.ae, -6815744
  %i.aj = or disjoint i64 %i.ah, %i.ai
  %i.ak = and i32 %i.u, 1
  %i.al = shl i32 %i.u, 13
  %i.am = and i32 %i.al, 16384
  %i.an = or disjoint i32 %i.am, %i.ak
  %i.ao = lshr i32 %i.u, 1
  %i.ap = and i32 %i.ao, 30
  %i.aq = or disjoint i32 %i.an, %i.ap
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = or disjoint i64 %i.aj, %i.ar
  %i.at = shl i32 %i.u, 16
  %i.au = shl i32 %i.u, 6
  %i.av = and i32 %i.au, 2097152
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = and i32 %i.at, 4194304
  %.masked.i.i.i = zext nneg i32 %i.ax to i64
  %i.ay = or disjoint i64 %i.as, %.masked.i.i.i
  %i.az = or disjoint i64 %i.ay, %i.aw
  store i64 %i.az, ptr %i.aa, align 8
  br label %do_xrstor_mxcsr.exit

do_xrstor_mxcsr.exit:                             ; preds = %bb.g, %bb.h
  %i.ba = and i64 %3, 2
  %.not43 = icmp eq i64 %i.ba, 0
  br i1 %.not43, label %bb.k, label %bb.i

bb.i:                                             ; preds = %do_xrstor_mxcsr.exit
  %i.bb = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 304
  %i.bd = load i32, ptr %i.bc, align 16
  %i.be = and i32 %i.bd, 32768
  %.not.i = icmp eq i32 %i.be, 0
  %..i = select i1 %.not.i, i64 8, i64 16
  %i.bf = add i64 %1, 160
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 960
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %.017.i = phi i64 [ %i.bf, %bb.i ], [ %i.bm, %bb.j ] ; 3 uses
  %i.bh = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %.017.i) #26
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.bg, i64 %indvars.iv.i ; 2 uses
  store i64 %i.bh, ptr %i.bi, align 16
  %i.bj = add i64 %.017.i, 8
  %i.bk = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.bj) #26
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.bk, ptr %i.bl, align 8
  %i.bm = add i64 %.017.i, 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %..i
  br i1 %exitcond.not.i, label %do_xrstor_sse.exit, label %bb.j, !llvm.loop !2

bb.k:                                             ; preds = %do_xrstor_mxcsr.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.bo = load i32, ptr %i.bn, align 16
  %i.bp = and i32 %i.bo, 32768
  %.not.i53 = icmp eq i32 %i.bp, 0
  %..i54 = select i1 %.not.i53, i64 8, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 960 ; 8 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i55 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.i56.7, %bb.l ] ; 9 uses
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %i.bq, i64 %indvars.iv.i55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  %i.bs = getelementptr inbounds nuw [64 x i8], ptr %i.bq, i64 %indvars.iv.i55
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw [64 x i8], ptr %i.bq, i64 %indvars.iv.i55
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %i.bq, i64 %indvars.iv.i55
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %i.bq, i64 %indvars.iv.i55
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.bq, i64 %indvars.iv.i55
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  %i.cc = getelementptr inbounds nuw [64 x i8], ptr %i.bq, i64 %indvars.iv.i55
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.bq, i64 %indvars.iv.i55
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 448
  %indvars.iv.next.i56.7 = add nuw nsw i64 %indvars.iv.i55, 8 ; 2 uses
  %exitcond.not.i57.7 = icmp eq i64 %indvars.iv.next.i56.7, %..i54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  br i1 %exitcond.not.i57.7, label %do_xrstor_sse.exit, label %bb.l, !llvm.loop !25

do_xrstor_sse.exit:                               ; preds = %bb.j, %bb.l, %bb.f
  %i.cg = and i64 %2, 4
  %.not44 = icmp eq i64 %i.cg, 0
  br i1 %.not44, label %do_xrstor_ymmh.exit, label %bb.m

bb.m:                                             ; preds = %do_xrstor_sse.exit
  %i.ch = and i64 %3, 4
  %.not45 = icmp eq i64 %i.ch, 0
  br i1 %.not45, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = add i64 %1, 576
  %i.cj = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 304
  %i.cl = load i32, ptr %i.ck, align 16
  %i.cm = and i32 %i.cl, 32768
  %.not.i58 = icmp eq i32 %i.cm, 0
  %..i59 = select i1 %.not.i58, i64 8, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 960
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.i60 = phi i64 [ 0, %bb.n ], [ %indvars.iv.next.i61, %bb.o ] ; 2 uses
  %.01415.i = phi i64 [ %i.ci, %bb.n ], [ %i.cu, %bb.o ] ; 3 uses
  %i.co = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %.01415.i) #26
  %i.cp = getelementptr inbounds nuw [64 x i8], ptr %i.cn, i64 %indvars.iv.i60 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %i.co, ptr %i.cq, align 16
  %i.cr = add i64 %.01415.i, 8
  %i.cs = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.cr) #26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i64 %i.cs, ptr %i.ct, align 8
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %i.cu = add i64 %.01415.i, 16
  %exitcond.not.i62 = icmp eq i64 %indvars.iv.next.i61, %..i59
  br i1 %exitcond.not.i62, label %do_xrstor_ymmh.exit, label %bb.o, !llvm.loop !26

bb.p:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.cw = load i32, ptr %i.cv, align 16
  %i.cx = and i32 %i.cw, 32768
  %.not.i63 = icmp eq i32 %i.cx, 0
  %..i64 = select i1 %.not.i63, i64 8, i64 16
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.i65 = phi i64 [ 0, %bb.p ], [ %indvars.iv.next.i66.7, %bb.q ] ; 9 uses
  %i.cy = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv.i65
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv.i65
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1040
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.db, i8 0, i64 16, i1 false)
  %i.dc = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv.i65
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dd, i8 0, i64 16, i1 false)
  %i.de = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv.i65
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  %i.dg = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv.i65
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false)
  %i.di = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv.i65
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  %i.dk = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv.i65
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  %i.dm = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv.i65
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1424
  %indvars.iv.next.i66.7 = add nuw nsw i64 %indvars.iv.i65, 8 ; 2 uses
  %exitcond.not.i67.7 = icmp eq i64 %indvars.iv.next.i66.7, %..i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dn, i8 0, i64 16, i1 false)
  br i1 %exitcond.not.i67.7, label %do_xrstor_ymmh.exit, label %bb.q, !llvm.loop !27

do_xrstor_ymmh.exit:                              ; preds = %bb.o, %bb.q, %do_xrstor_sse.exit
  %i.do = and i64 %2, 8
  %.not46 = icmp eq i64 %i.do, 0
  br i1 %.not46, label %bb.u, label %bb.r

bb.r:                                             ; preds = %do_xrstor_ymmh.exit
  %i.dp = and i64 %3, 8
  %.not47 = icmp eq i64 %i.dp, 0
  br i1 %.not47, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dq = add i64 %1, 960
  %i.dr = load ptr, ptr %i.a, align 8             ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 640
  %i.dt = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.dq) #26
  store i64 %i.dt, ptr %i.ds, align 16
  %i.du = add i64 %1, 968
  %i.dv = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.du) #26
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 648
  store i64 %i.dv, ptr %i.dw, align 8
  %i.dx = add i64 %1, 976
  %i.dy = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.dx) #26
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 656
  store i64 %i.dy, ptr %i.dz, align 16
  %i.ea = add i64 %1, 984
  %i.eb = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.ea) #26
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 664
  store i64 %i.eb, ptr %i.ec, align 8
  %i.ed = add i64 %1, 992
  %i.ee = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.ed) #26
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 672
  store i64 %i.ee, ptr %i.ef, align 16
  %i.eg = add i64 %1, 1000
  %i.eh = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.eg) #26
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dr, i64 680
  store i64 %i.eh, ptr %i.ei, align 8
  %i.ej = add i64 %1, 1008
  %i.ek = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.ej) #26
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 688
  store i64 %i.ek, ptr %i.el, align 16
  %i.em = add i64 %1, 1016
  %i.en = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.em) #26
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dr, i64 696
  store i64 %i.en, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 16
  %i.er = or i32 %i.eq, 67108864
  store i32 %i.er, ptr %i.ep, align 16
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.es, i8 noundef 0, i64 noundef 64, i1 noundef false) #26
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 16
  %i.ev = and i32 %i.eu, -67108865
  store i32 %i.ev, ptr %i.et, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %do_xrstor_ymmh.exit
  %i.ew = and i64 %2, 16
  %.not48 = icmp eq i64 %i.ew, 0
  br i1 %.not48, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ex = and i64 %3, 16
  %.not49 = icmp eq i64 %i.ex, 0
  br i1 %.not49, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ey = add i64 %1, 1024
  %i.ez = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fa = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.ey) #26
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 704
  store i64 %i.fa, ptr %i.fb, align 16
  %i.fc = add i64 %1, 1032
  %i.fd = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.fc) #26
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 712
  store i64 %i.fd, ptr %i.fe, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ff, i8 noundef 0, i64 noundef 16, i1 noundef false) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @cpu_sync_bndcs_hflags(ptr noundef %i.b) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u
  %i.fg = and i64 %2, 512
  %.not50 = icmp eq i64 %i.fg, 0
  br i1 %.not50, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = and i64 %3, 512
  %.not51 = icmp eq i64 %i.fh, 0
  br i1 %.not51, label %.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = add i64 %1, 2688
  %i.fj = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.fi) #26
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = load ptr, ptr %i.a, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %bb.ab
  %.sink75 = phi ptr [ %i.fl, %bb.ab ], [ %i.b, %bb.aa ]
  %.sink = phi i32 [ %i.fk, %bb.ab ], [ 0, %bb.aa ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.sink75, i64 12064
  store i32 %.sink, ptr %i.fm, align 16
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.z
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cpu_x86_fsave(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 {
bb.a:
  %3 = alloca %struct.X86Access, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %3, align 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 108, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i16 0, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.g, align 8
  %.not = icmp ult i64 %2, 108
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3097, ptr noundef nonnull @__PRETTY_FUNCTION__.cpu_x86_fsave) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  call fastcc void @do_fsave(ptr noundef %3, i64 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cpu_x86_frstor(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 {
bb.a:
  %3 = alloca %struct.X86Access, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %3, align 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 108, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i16 0, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.g, align 8
  %.not = icmp ult i64 %2, 108
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3109, ptr noundef nonnull @__PRETTY_FUNCTION__.cpu_x86_frstor) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  call fastcc void @do_frstor(ptr noundef %3, i64 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cpu_x86_fxsave(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 {
bb.a:
  %3 = alloca %struct.X86Access, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %3, align 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 512, ptr %i.c, align 8
end_hunk_3
begin_hunk_4_@cpu_x86_fxsave:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3121, ptr noundef nonnull @__PRETTY_FUNCTION__.cpu_x86_fxsave) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  call fastcc void @do_fxsave(ptr noundef %3, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cpu_x86_fxrstor(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 {
bb.a:
  %3 = alloca %struct.X86Access, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %3, align 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 512, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i16 0, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.g, align 8
  %.not = icmp ult i64 %2, 512
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3133, ptr noundef nonnull @__PRETTY_FUNCTION__.cpu_x86_fxrstor) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  call fastcc void @do_fxrstor(ptr noundef %3, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cpu_x86_xsave(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #13 {
bb.a:
  %4 = alloca %struct.X86Access, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %4, align 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 11632
  %i.f = load i64, ptr %i.e, align 16
  %i.g = xor i64 %i.f, -1
  %i.h = and i64 %3, %i.g
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 3148, ptr noundef nonnull @__PRETTY_FUNCTION__.cpu_x86_xsave) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = tail call i32 @xsave_area_size(i64 noundef %3, i1 noundef zeroext false) #26 ; 2 uses
  %i.l = trunc i32 %i.k to i16
  store i16 %i.l, ptr %i.j, align 8
  %.mask = and i32 %i.k, 65535
  %i.m = zext nneg i32 %.mask to i64
  %.not = icmp ult i64 %2, %i.m
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3150, ptr noundef nonnull @__PRETTY_FUNCTION__.cpu_x86_xsave) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 304
  %.val = load i32, ptr %i.n, align 16
  %i.o = and i32 %.val, 67108864
  %i.p = icmp eq i32 %i.o, 0
  %spec.select.i = select i1 %i.p, i64 -9, i64 -1
  call fastcc void @do_xsave_access(ptr noundef %4, i64 noundef 0, i64 noundef %3, i64 noundef %spec.select.i, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_xsave_access(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 -9, 0) %3, i64 noundef %4) unnamed_addr #13 {
bb.a:
  %i.a = and i64 %4, 1
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @do_xsave_fpu(ptr noundef %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = and i64 %2, 2
  %.not29 = icmp eq i64 %i.b, 0
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 936
  %.val.i.i = load i64, ptr %i.e, align 4
  %i.f = trunc i64 %.val.i.i to i32               ; 4 uses
  %i.g = and i32 %i.f, 1
  %i.h = lshr i32 %i.f, 13
  %i.i = and i32 %i.h, 2
  %i.j = shl i32 %i.f, 1
  %i.k = and i32 %i.j, 60
  %i.l = and i32 %i.f, 64
  %.not.i.i = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not.i.i, i32 0, i32 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 944 ; 2 uses
  %i.o = load i32, ptr %i.n, align 16
  %i.p = or i32 %i.g, %i.o
  %i.q = or i32 %i.p, %i.i
  %i.r = or i32 %i.q, %i.k
  %i.s = or i32 %i.r, %i.m                        ; 2 uses
  store i32 %i.s, ptr %i.n, align 16
  %i.t = add i64 %1, 24
  tail call void @access_stl(ptr noundef nonnull %0, i64 noundef %i.t, i32 noundef %i.s) #26
  %i.u = add i64 %1, 28
  tail call void @access_stl(ptr noundef nonnull %0, i64 noundef %i.u, i32 noundef 65535) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = and i64 %4, 2
  %.not30 = icmp eq i64 %i.v, 0
  br i1 %.not30, label %do_xsave_sse.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 304
  %i.z = load i32, ptr %i.y, align 16
  %i.aa = and i32 %i.z, 32768
  %.not.i = icmp eq i32 %i.aa, 0
  %..i = select i1 %.not.i, i64 8, i64 16
  %i.ab = add i64 %1, 160
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 960
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %.017.i = phi i64 [ %i.ab, %bb.f ], [ %i.ai, %bb.g ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %indvars.iv.i ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 16
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %.017.i, i64 noundef %i.ae) #26
  %i.af = add i64 %.017.i, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.af, i64 noundef %i.ah) #26
  %i.ai = add i64 %.017.i, 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %..i
  br i1 %exitcond.not.i, label %do_xsave_sse.exit, label %bb.g, !llvm.loop !1

do_xsave_sse.exit:                                ; preds = %bb.g, %bb.e
  %i.aj = and i64 %4, 4
  %.not31 = icmp eq i64 %i.aj, 0
  br i1 %.not31, label %do_xsave_ymmh.exit, label %bb.h

bb.h:                                             ; preds = %do_xsave_sse.exit
  %i.ak = add i64 %1, 576
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 304
  %i.ao = load i32, ptr %i.an, align 16
  %i.ap = and i32 %i.ao, 32768
  %.not.i35 = icmp eq i32 %i.ap, 0
  %..i36 = select i1 %.not.i35, i64 8, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 960
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i37 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next.i38, %bb.i ] ; 2 uses
  %.01415.i = phi i64 [ %i.ak, %bb.h ], [ %i.ax, %bb.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.aq, i64 %indvars.iv.i37 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 16
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %.01415.i, i64 noundef %i.at) #26
  %i.au = add i64 %.01415.i, 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.aw = load i64, ptr %i.av, align 8
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.au, i64 noundef %i.aw) #26
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i37, 1 ; 2 uses
  %i.ax = add i64 %.01415.i, 16
  %exitcond.not.i39 = icmp eq i64 %indvars.iv.next.i38, %..i36
  br i1 %exitcond.not.i39, label %do_xsave_ymmh.exit, label %bb.i, !llvm.loop !28

do_xsave_ymmh.exit:                               ; preds = %bb.i, %do_xsave_sse.exit
  %i.ay = and i64 %4, 8
  %.not32 = icmp eq i64 %i.ay, 0
  br i1 %.not32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %do_xsave_ymmh.exit
  %i.az = add i64 %1, 960
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8            ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 640
  %i.bd = load i64, ptr %i.bc, align 16
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.az, i64 noundef %i.bd) #26
  %i.be = add i64 %1, 968
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 648
  %i.bg = load i64, ptr %i.bf, align 8
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.be, i64 noundef %i.bg) #26
  %i.bh = add i64 %1, 976
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 656
  %i.bj = load i64, ptr %i.bi, align 16
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.bh, i64 noundef %i.bj) #26
  %i.bk = add i64 %1, 984
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 664
  %i.bm = load i64, ptr %i.bl, align 8
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.bk, i64 noundef %i.bm) #26
  %i.bn = add i64 %1, 992
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 672
  %i.bp = load i64, ptr %i.bo, align 16
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.bn, i64 noundef %i.bp) #26
  %i.bq = add i64 %1, 1000
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 680
  %i.bs = load i64, ptr %i.br, align 8
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.bq, i64 noundef %i.bs) #26
  %i.bt = add i64 %1, 1008
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 688
  %i.bv = load i64, ptr %i.bu, align 16
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.bt, i64 noundef %i.bv) #26
  %i.bw = add i64 %1, 1016
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 696
  %i.by = load i64, ptr %i.bx, align 8
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.bw, i64 noundef %i.by) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %do_xsave_ymmh.exit
  %i.bz = and i64 %4, 16
  %.not33 = icmp eq i64 %i.bz, 0
  br i1 %.not33, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = add i64 %1, 1024
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 704
  %i.ce = load i64, ptr %i.cd, align 16
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.ca, i64 noundef %i.ce) #26
  %i.cf = add i64 %1, 1032
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 712
  %i.ch = load i64, ptr %i.cg, align 8
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.cf, i64 noundef %i.ch) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ci = and i64 %4, 512
  %.not34 = icmp eq i64 %i.ci, 0
  br i1 %.not34, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = add i64 %1, 2688
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12064
  %i.cn = load i32, ptr %i.cm, align 16
  %i.co = zext i32 %i.cn to i64
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.cj, i64 noundef %i.co) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cp = add i64 %1, 512                         ; 2 uses
  %i.cq = tail call i64 @access_ldq(ptr noundef nonnull %0, i64 noundef %i.cp) #26
  %i.cr = xor i64 %2, -1
  %i.cs = and i64 %i.cq, %i.cr
  %i.ct = and i64 %3, %2
  %i.cu = or disjoint i64 %i.cs, %i.ct
  tail call void @access_stq(ptr noundef nonnull %0, i64 noundef %i.cp, i64 noundef %i.cu) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @cpu_x86_xrstor(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #13 {
bb.a:
  %4 = alloca %struct.X86Access, align 8          ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %4, align 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 11632
  %i.f = load i64, ptr %i.e, align 16
  %i.g = xor i64 %i.f, -1
  %i.h = and i64 %3, %i.g
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 3166, ptr noundef nonnull @__PRETTY_FUNCTION__.cpu_x86_xrstor) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = tail call i32 @xsave_area_size(i64 noundef %3, i1 noundef zeroext false) #26 ; 2 uses
  %i.l = trunc i32 %i.k to i16
  store i16 %i.l, ptr %i.j, align 8
  %.mask = and i32 %i.k, 65535
  %i.m = zext nneg i32 %.mask to i64
  %.not = icmp ult i64 %2, %i.m
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3168, ptr noundef nonnull @__PRETTY_FUNCTION__.cpu_x86_xrstor) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = call i64 @access_ldq(ptr noundef nonnull %4, i64 noundef 512) #26 ; 2 uses
  %i.o = call i64 @access_ldq(ptr noundef nonnull %4, i64 noundef 520) #26
  %i.p = call i64 @access_ldq(ptr noundef nonnull %4, i64 noundef 528) #26
  %i.q = icmp ne i64 %i.o, 0
  %i.r = icmp ne i64 %i.p, 0
  %or.cond.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.i, label %valid_xrstor_header.exit.thread, label %valid_xrstor_header.exit

valid_xrstor_header.exit:                         ; preds = %bb.e
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 11632
  %i.u = load i64, ptr %i.t, align 16
  %i.v = xor i64 %i.u, -1
  %i.w = and i64 %i.n, %i.v
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %valid_xrstor_header.exit.thread

bb.f:                                             ; preds = %valid_xrstor_header.exit
  call fastcc void @do_xrstor(ptr noundef %4, i64 noundef 0, i64 noundef %3, i64 noundef %i.n)
  br label %valid_xrstor_header.exit.thread

valid_xrstor_header.exit.thread:                  ; preds = %bb.e, %valid_xrstor_header.exit, %bb.f
  %.0.i8 = phi i1 [ true, %bb.f ], [ false, %valid_xrstor_header.exit ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i1 %.0.i8
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i64 @helper_xgetbv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 262144
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.e = ptrtoint ptr %i.d to i64
  tail call void @raise_exception_ra(ptr noundef nonnull %0, i32 noundef 6, i64 noundef %i.e) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i32 %1, label %bb.g [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11632
  %i.g = load i64, ptr %i.f, align 16
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 13864
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 4
  %.not8 = icmp eq i64 %i.j, 0
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 11632
  %i.l = load i64, ptr %i.k, align 16
  %i.m = getelementptr i8, ptr %0, i64 304
  %.val = load i32, ptr %i.m, align 16
  %i.n = and i32 %.val, 67108864
  %i.o = icmp eq i32 %i.n, 0
  %spec.select.i = select i1 %i.o, i64 -9, i64 -1
  %i.p = and i64 %spec.select.i, %i.l
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.q = tail call ptr @llvm.returnaddress.p0(i32 0)
end_hunk_4
begin_hunk_5_@helper_psrld_xmm:bb.a
  %i.l = lshr i32 %i.k, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = lshr i32 %i.o, %i.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.p, ptr %i.q, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pslld_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 2 uses
  %i.b = icmp ugt i64 %i.a, 31
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %i.a to i32            ; 4 uses
  %i.d = load i32, ptr %2, align 4
  %i.e = shl i32 %i.d, %i.c
  store i32 %i.e, ptr %1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = shl i32 %i.g, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = shl i32 %i.k, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = shl i32 %i.o, %i.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.p, ptr %i.q, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psrad_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8
  %spec.select11 = tail call i64 @llvm.umin.i64(i64 %i.a, i64 31)
  %spec.select = trunc nuw nsw i64 %spec.select11 to i32 ; 4 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = ashr i32 %i.b, %spec.select
  store i32 %i.c, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = ashr i32 %i.e, %spec.select
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = ashr i32 %i.i, %spec.select
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = ashr i32 %i.m, %spec.select
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.n, ptr %i.o, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psrlq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 3 uses
  %i.b = icmp ugt i64 %i.a, 63
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = lshr i64 %i.c, %i.a
  store i64 %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = lshr i64 %i.f, %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.g, ptr %i.h, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psllq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 3 uses
  %i.b = icmp ugt i64 %i.a, 63
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = shl i64 %i.c, %i.a
  store i64 %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = shl i64 %i.f, %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.g, ptr %i.h, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_psrldq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = load i32, ptr %3, align 8                ; 2 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16) ; 16 uses
  %i.d = sub i32 16, %spec.store.select           ; 6 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.split.us, label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %bb.a
  %i.f = sext i32 %i.d to i64
  br label %.split26.us.sink.split

.split.us:                                        ; preds = %bb.a
  %i.g = icmp samesign ult i32 %i.d, 16
  %wide.trip.count34 = zext nneg i32 %i.d to i64  ; 13 uses
  br i1 %i.g, label %.preheader21.us.us.preheader, label %vector.scevcheck

.preheader21.us.us.preheader:                     ; preds = %.split.us
  %xtraiter47 = and i64 %wide.trip.count34, 3     ; 3 uses
  %i.h = icmp ult i32 %i.d, 4
  br i1 %i.h, label %.preheader21.us.us.epil.preheader, label %.preheader21.us.us.preheader.new

.preheader21.us.us.preheader.new:                 ; preds = %.preheader21.us.us.preheader
  %unroll_iter = and i64 %wide.trip.count34, 12
  br label %.preheader21.us.us

vector.scevcheck:                                 ; preds = %.split.us
  %i.i = add nsw i64 %wide.trip.count34, -1       ; 2 uses
  %i.j = trunc nsw i64 %i.i to i32
  %i.k = add i32 %spec.store.select, %i.j
  %i.l = icmp slt i32 %i.k, %spec.store.select
  %i.m = icmp ugt i64 %i.i, 4294967295
  %i.n = or i1 %i.l, %i.m
  br i1 %i.n, label %.preheader21.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.o = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16)
  %smin = sext i32 %i.o to i64
  %i.p = add i64 %i.a, %smin
  %i.q = sub i64 %i.p, %i.b
  %diff.check = icmp ugt i64 %i.q, -32
  br i1 %diff.check, label %.preheader21.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i32 %i.d, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %wide.trip.count34, 28
  %n.vec = and i64 %wide.trip.count34, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = trunc nuw nsw i64 %index to i32
  %i.t = add i32 %spec.store.select, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <16 x i8>, ptr %i.v, align 1
  %wide.load41 = load <16 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %wide.load, ptr %i.x, align 1
  store <16 x i8> %wide.load41, ptr %i.y, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count34
  br i1 %cmp.n, label %.split26.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.preheader21.us.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %wide.trip.count34, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = trunc nuw nsw i64 %index43 to i32
  %i.ab = add i32 %spec.store.select, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  %wide.load44 = load <4 x i8>, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %index43
  store <4 x i8> %wide.load44, ptr %i.ae, align 1
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %n.vec42, %wide.trip.count34
  br i1 %cmp.n46, label %.split26.us, label %.preheader21.us.preheader

.preheader21.us.preheader:                        ; preds = %vector.memcheck, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count34, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader21.us.prol.loopexit, label %.preheader21.us.prol

.preheader21.us.prol:                             ; preds = %.preheader21.us.preheader, %.preheader21.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader21.us.prol ], [ %indvars.iv.ph, %.preheader21.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader21.us.prol ], [ 0, %.preheader21.us.preheader ]
  %i.ag = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.ah = add i32 %spec.store.select, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.ak, ptr %i.al, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader21.us.prol.loopexit, label %.preheader21.us.prol, !llvm.loop !31

.preheader21.us.prol.loopexit:                    ; preds = %.preheader21.us.prol, %.preheader21.us.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader21.us.preheader ], [ %indvars.iv.next.prol, %.preheader21.us.prol ]
  %i.am = sub nsw i64 %indvars.iv.ph, %wide.trip.count34
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %.split26.us, label %.preheader21.us

.preheader21.us.us:                               ; preds = %.preheader21.us.us, %.preheader21.us.us.preheader.new
  %indvars.iv31 = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %indvars.iv.next32.3, %.preheader21.us.us ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %niter.next.3, %.preheader21.us.us ]
  %i.ao = trunc nuw nsw i64 %indvars.iv31 to i32
  %i.ap = add i32 %spec.store.select, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv31
  store i8 %i.as, ptr %i.at, align 1
  %indvars.iv.next32 = or disjoint i64 %indvars.iv31, 1 ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv.next32 to i32
  %i.av = add i32 %spec.store.select, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next32
  store i8 %i.ay, ptr %i.az, align 1
  %indvars.iv.next32.1 = or disjoint i64 %indvars.iv31, 2 ; 2 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv.next32.1 to i32
  %i.bb = add i32 %spec.store.select, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next32.1
  store i8 %i.be, ptr %i.bf, align 1
  %indvars.iv.next32.2 = or disjoint i64 %indvars.iv31, 3 ; 2 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv.next32.2 to i32
  %i.bh = add i32 %spec.store.select, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %2, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next32.2
  store i8 %i.bk, ptr %i.bl, align 1
  %indvars.iv.next32.3 = add nuw nsw i64 %indvars.iv31, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.split26.us.sink.split.loopexit.unr-lcssa, label %.preheader21.us.us, !llvm.loop !32

.preheader21.us:                                  ; preds = %.preheader21.us.prol.loopexit, %.preheader21.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader21.us ], [ %indvars.iv.unr, %.preheader21.us.prol.loopexit ] ; 6 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv to i32
  %i.bn = add i32 %spec.store.select, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.bq, ptr %i.br, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bt = add i32 %spec.store.select, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %2, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.bw, ptr %i.bx, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.by = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.bz = add i32 %spec.store.select, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %2, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.cc, ptr %i.cd, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.cf = add i32 %spec.store.select, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %2, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.ci, ptr %i.cj, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count34
  br i1 %exitcond.not.3, label %.split26.us, label %.preheader21.us, !llvm.loop !33

.split26.us.sink.split.loopexit.unr-lcssa:        ; preds = %.preheader21.us.us
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %.split26.us.sink.split, label %.preheader21.us.us.epil.preheader

.preheader21.us.us.epil.preheader:                ; preds = %.split26.us.sink.split.loopexit.unr-lcssa, %.preheader21.us.us.preheader
  %indvars.iv31.epil.init = phi i64 [ 0, %.preheader21.us.us.preheader ], [ %indvars.iv.next32.3, %.split26.us.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod49 = icmp ne i64 %xtraiter47, 0
  tail call void @llvm.assume(i1 %lcmp.mod49)
  br label %.preheader21.us.us.epil

.preheader21.us.us.epil:                          ; preds = %.preheader21.us.us.epil, %.preheader21.us.us.epil.preheader
  %indvars.iv31.epil = phi i64 [ %indvars.iv.next32.epil, %.preheader21.us.us.epil ], [ %indvars.iv31.epil.init, %.preheader21.us.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader21.us.us.epil ], [ 0, %.preheader21.us.us.epil.preheader ]
  %i.ck = trunc nuw nsw i64 %indvars.iv31.epil to i32
  %i.cl = add i32 %spec.store.select, %i.ck
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %2, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv31.epil
  store i8 %i.co, ptr %i.cp, align 1
  %indvars.iv.next32.epil = add nuw nsw i64 %indvars.iv31.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter47
  br i1 %epil.iter.cmp.not, label %.split26.us.sink.split, label %.preheader21.us.us.epil, !llvm.loop !34

.split26.us.sink.split:                           ; preds = %.split26.us.sink.split.loopexit.unr-lcssa, %.preheader21.us.us.epil, %.preheader21.preheader
  %.sink = phi i64 [ %i.f, %.preheader21.preheader ], [ %wide.trip.count34, %.preheader21.us.us.epil ], [ %wide.trip.count34, %.split26.us.sink.split.loopexit.unr-lcssa ]
  %scevgep = getelementptr i8, ptr %1, i64 %.sink
  %i.cq = add i32 %spec.store.select, -1
  %i.cr = zext i32 %i.cq to i64
  %i.cs = add nuw nsw i64 %i.cr, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.cs, i1 false)
  br label %.split26.us

.split26.us:                                      ; preds = %.preheader21.us.prol.loopexit, %.preheader21.us, %middle.block, %vec.epilog.middle.block, %.split26.us.sink.split
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pslldq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = load i32, ptr %3, align 8                ; 3 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16) ; 13 uses
  %.not21 = icmp sgt i32 %i.c, 15
  br i1 %.not21, label %.split26.sink.split, label %.split

.split:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader20.us27.preheader, label %iter.check

iter.check:                                       ; preds = %.split
  %i.e = sext i32 %spec.store.select to i64       ; 3 uses
  %i.f = sub nsw i64 16, %i.e                     ; 6 uses
  %i.g = sub nsw i64 15, %i.e                     ; 2 uses
  %i.h = sub i32 15, %spec.store.select           ; 2 uses
  %i.i = trunc i64 %i.g to i32
  %i.j = sub i32 %i.h, %i.i
  %i.k = icmp sgt i32 %i.j, %i.h
  %i.l = icmp ugt i64 %i.g, 4294967295
  %i.m = or i1 %i.k, %i.l
  br i1 %i.m, label %.preheader20.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.n = sub i32 15, %spec.store.select
  %i.o = sext i32 %i.n to i64
  %i.p = add i64 %i.b, %i.o
  %i.q = sub i64 %i.p, %i.a
  %i.r = add i64 %i.q, -16
  %diff.check = icmp ult i64 %i.r, 31
  br i1 %diff.check, label %.preheader20.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i64 %i.f, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.f, 24
  %n.vec = and i64 %i.f, -32                      ; 4 uses
  %i.t = sub nsw i64 15, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = sub i64 15, %index                       ; 2 uses
  %i.v = trunc nsw i64 %i.u to i32
  %i.w = sub i32 %i.v, %spec.store.select
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -15
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -31
  %wide.load = load <16 x i8>, ptr %i.z, align 1
  %wide.load44 = load <16 x i8>, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.u ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -15
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -31
  store <16 x i8> %wide.load, ptr %i.ac, align 1
  store <16 x i8> %wide.load44, ptr %i.ad, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.split26, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %.preheader20.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.f, -8                     ; 3 uses
  %i.af = sub nsw i64 15, %n.vec45
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %i.ag = sub i64 15, %index46                    ; 2 uses
  %i.ah = trunc nsw i64 %i.ag to i32
  %i.ai = sub i32 %i.ah, %spec.store.select
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -7
  %wide.load47 = load <8 x i8>, ptr %i.al, align 1
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.ag
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -7
  store <8 x i8> %wide.load47, ptr %i.an, align 1
  %index.next48 = add nuw i64 %index46, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.f, %n.vec45
  br i1 %cmp.n49, label %.split26, label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 15, %iter.check ], [ 15, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  br label %.preheader20

.preheader20.us27.preheader:                      ; preds = %.split
  %i.ap = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 15)
  %umin = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.aq = sub nuw nsw i64 16, %umin               ; 2 uses
  %i.ar = xor i64 %umin, 15
  %xtraiter = and i64 %i.aq, 3                    ; 3 uses
  %i.as = icmp samesign ult i64 %i.ar, 3
  br i1 %i.as, label %.preheader20.us27.epil.preheader, label %.preheader20.us27.preheader.new

.preheader20.us27.preheader.new:                  ; preds = %.preheader20.us27.preheader
  %unroll_iter = and i64 %i.aq, 28
  br label %.preheader20.us27

.preheader20.us27:                                ; preds = %.preheader20.us27, %.preheader20.us27.preheader.new
  %indvars.iv35 = phi i64 [ 15, %.preheader20.us27.preheader.new ], [ %indvars.iv.next36.3, %.preheader20.us27 ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader20.us27.preheader.new ], [ %niter.next.3, %.preheader20.us27 ]
  %i.at = trunc nsw i64 %indvars.iv35 to i32
  %i.au = sub i32 %i.at, %spec.store.select
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds i8, ptr %1, i64 %indvars.iv35
  store i8 %i.ax, ptr %i.ay, align 1
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, -1 ; 2 uses
  %i.az = trunc nsw i64 %indvars.iv.next36 to i32
  %i.ba = sub i32 %i.az, %spec.store.select
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %2, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next36
  store i8 %i.bd, ptr %i.be, align 1
  %indvars.iv.next36.1 = add nsw i64 %indvars.iv35, -2 ; 2 uses
  %i.bf = trunc nsw i64 %indvars.iv.next36.1 to i32
  %i.bg = sub i32 %i.bf, %spec.store.select
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %2, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next36.1
  store i8 %i.bj, ptr %i.bk, align 1
  %indvars.iv.next36.2 = add nsw i64 %indvars.iv35, -3 ; 2 uses
  %i.bl = trunc nsw i64 %indvars.iv.next36.2 to i32
  %i.bm = sub i32 %i.bl, %spec.store.select
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next36.2
  store i8 %i.bp, ptr %i.bq, align 1
  %indvars.iv.next36.3 = add nsw i64 %indvars.iv35, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.split26.sink.split.loopexit.unr-lcssa, label %.preheader20.us27, !llvm.loop !37

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader20 ], [ %indvars.iv.ph, %.preheader20.preheader ] ; 4 uses
  %i.br = trunc nsw i64 %indvars.iv to i32
  %i.bs = sub i32 %i.br, %spec.store.select
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %2, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.bv, ptr %i.bw, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.e
  br i1 %.not.not, label %.preheader20, label %.split26, !llvm.loop !38

.split26.sink.split.loopexit.unr-lcssa:           ; preds = %.preheader20.us27
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split26.sink.split, label %.preheader20.us27.epil.preheader

.preheader20.us27.epil.preheader:                 ; preds = %.split26.sink.split.loopexit.unr-lcssa, %.preheader20.us27.preheader
  %indvars.iv35.epil.init = phi i64 [ 15, %.preheader20.us27.preheader ], [ %indvars.iv.next36.3, %.split26.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod54 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %.preheader20.us27.epil

.preheader20.us27.epil:                           ; preds = %.preheader20.us27.epil, %.preheader20.us27.epil.preheader
  %indvars.iv35.epil = phi i64 [ %indvars.iv35.epil.init, %.preheader20.us27.epil.preheader ], [ %indvars.iv.next36.epil, %.preheader20.us27.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader20.us27.epil.preheader ], [ %epil.iter.next, %.preheader20.us27.epil ]
  %i.bx = trunc nsw i64 %indvars.iv35.epil to i32
  %i.by = sub i32 %i.bx, %spec.store.select
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %2, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds i8, ptr %1, i64 %indvars.iv35.epil
  store i8 %i.cb, ptr %i.cc, align 1
  %indvars.iv.next36.epil = add nsw i64 %indvars.iv35.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split26.sink.split, label %.preheader20.us27.epil, !llvm.loop !39

.split26.sink.split:                              ; preds = %.split26.sink.split.loopexit.unr-lcssa, %.preheader20.us27.epil, %bb.a
  %i.cd = zext nneg i32 %spec.store.select to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.cd, i1 false)
  br label %.split26

.split26:                                         ; preds = %.preheader20, %middle.block, %vec.epilog.middle.block, %.split26.sink.split
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmulhuw_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i16, ptr %2, align 2
  %i.b = zext i16 %i.a to i32
  %i.c = load i16, ptr %3, align 2
  %i.d = zext i16 %i.c to i32
  %i.e = mul nuw i32 %i.d, %i.b
  %i.f = lshr i32 %i.e, 16
  %i.g = trunc nuw i32 %i.f to i16
  store i16 %i.g, ptr %1, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i16, ptr %i.h, align 2
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32
  %i.n = mul nuw i32 %i.m, %i.j
  %i.o = lshr i32 %i.n, 16
  %i.p = trunc nuw i32 %i.o to i16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.p, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.v = load i16, ptr %i.u, align 2
  %i.w = zext i16 %i.v to i32
  %i.x = mul nuw i32 %i.w, %i.t
  %i.y = lshr i32 %i.x, 16
  %i.z = trunc nuw i32 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  %i.ah = mul nuw i32 %i.ag, %i.ad
  %i.ai = lshr i32 %i.ah, 16
  %i.aj = trunc nuw i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.aj, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i16, ptr %i.al, align 2
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = mul nuw i32 %i.aq, %i.an
  %i.as = lshr i32 %i.ar, 16
  %i.at = trunc nuw i32 %i.as to i16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.at, ptr %i.au, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = zext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = mul nuw i32 %i.ba, %i.ax
  %i.bc = lshr i32 %i.bb, 16
  %i.bd = trunc nuw i32 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = zext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = mul nuw i32 %i.bk, %i.bh
  %i.bm = lshr i32 %i.bl, 16
  %i.bn = trunc nuw i32 %i.bm to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.bn, ptr %i.bo, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = zext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = zext i16 %i.bt to i32
  %i.bv = mul nuw i32 %i.bu, %i.br
  %i.bw = lshr i32 %i.bv, 16
  %i.bx = trunc nuw i32 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.bx, ptr %i.by, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmulhw_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i16, ptr %2, align 2
  %i.b = sext i16 %i.a to i32
  %i.c = load i16, ptr %3, align 2
  %i.d = sext i16 %i.c to i32
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = lshr i32 %i.e, 16
  %i.g = trunc nuw i32 %i.f to i16
  store i16 %i.g, ptr %1, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i16, ptr %i.h, align 2
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.l = load i16, ptr %i.k, align 2
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = lshr i32 %i.n, 16
  %i.p = trunc nuw i32 %i.o to i16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.p, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load i16, ptr %i.r, align 2
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.v = load i16, ptr %i.u, align 2
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = lshr i32 %i.x, 16
  %i.z = trunc nuw i32 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = lshr i32 %i.ah, 16
  %i.aj = trunc nuw i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.aj, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i16, ptr %i.al, align 2
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = lshr i32 %i.ar, 16
  %i.at = trunc nuw i32 %i.as to i16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.at, ptr %i.au, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = lshr i32 %i.bb, 16
  %i.bd = trunc nuw i32 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = sext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = sext i16 %i.bj to i32
  %i.bl = mul nsw i32 %i.bk, %i.bh
  %i.bm = lshr i32 %i.bl, 16
  %i.bn = trunc nuw i32 %i.bm to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.bn, ptr %i.bo, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = sext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = sext i16 %i.bt to i32
  %i.bv = mul nsw i32 %i.bu, %i.br
  %i.bw = lshr i32 %i.bv, 16
  %i.bx = trunc nuw i32 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.bx, ptr %i.by, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pavgb_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = add i64 %i.c, 16
  %i.e = add i64 %i.b, 16
  %i.f = add i64 %i.a, 16                         ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.d, %i.a
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound010 = icmp ugt i64 %i.e, %i.a
  %rt.bound111 = icmp ugt i64 %i.f, %i.b
  %rt.conflict12 = and i1 %rt.bound010, %rt.bound111
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict12
  br i1 %rt.conflict.all, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.g = load <16 x i8>, ptr %2, align 1
  %i.h = zext <16 x i8> %i.g to <16 x i16>
  %i.i = load <16 x i8>, ptr %3, align 1
  %i.j = zext <16 x i8> %i.i to <16 x i16>
  %i.k = add nuw nsw <16 x i16> %i.h, splat (i16 1)
  %i.l = add nuw nsw <16 x i16> %i.k, %i.j
  %i.m = lshr <16 x i16> %i.l, splat (i16 1)
  %i.n = trunc <16 x i16> %i.m to <16 x i8>
  store <16 x i8> %i.n, ptr %1, align 1
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.o = load i8, ptr %2, align 1
  %i.p = zext i8 %i.o to i16
  %i.q = load i8, ptr %3, align 1
  %i.r = zext i8 %i.q to i16
  %i.s = add nuw nsw i16 %i.p, 1
  %i.t = add nuw nsw i16 %i.s, %i.r
  %i.u = lshr i16 %i.t, 1
  %i.v = trunc nuw i16 %i.u to i8
  store i8 %i.v, ptr %1, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i16
  %i.ac = add nuw nsw i16 %i.y, 1
  %i.ad = add nuw nsw i16 %i.ac, %i.ab
  %i.ae = lshr i16 %i.ad, 1
  %i.af = trunc nuw i16 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i16
  %i.an = add nuw nsw i16 %i.aj, 1
  %i.ao = add nuw nsw i16 %i.an, %i.am
  %i.ap = lshr i16 %i.ao, 1
  %i.aq = trunc nuw i16 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i16
  %i.ay = add nuw nsw i16 %i.au, 1
  %i.az = add nuw nsw i16 %i.ay, %i.ax
  %i.ba = lshr i16 %i.az, 1
  %i.bb = trunc nuw i16 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i16
  %i.bj = add nuw nsw i16 %i.bf, 1
  %i.bk = add nuw nsw i16 %i.bj, %i.bi
  %i.bl = lshr i16 %i.bk, 1
  %i.bm = trunc nuw i16 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i16
  %i.bu = add nuw nsw i16 %i.bq, 1
  %i.bv = add nuw nsw i16 %i.bu, %i.bt
  %i.bw = lshr i16 %i.bv, 1
  %i.bx = trunc nuw i16 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i16
  %i.cf = add nuw nsw i16 %i.cb, 1
  %i.cg = add nuw nsw i16 %i.cf, %i.ce
  %i.ch = lshr i16 %i.cg, 1
  %i.ci = trunc nuw i16 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i16
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.co to i16
  %i.cq = add nuw nsw i16 %i.cm, 1
  %i.cr = add nuw nsw i16 %i.cq, %i.cp
  %i.cs = lshr i16 %i.cr, 1
  %i.ct = trunc nuw i16 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.ct, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = zext i8 %i.cw to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i16
  %i.db = add nuw nsw i16 %i.cx, 1
  %i.dc = add nuw nsw i16 %i.db, %i.da
  %i.dd = lshr i16 %i.dc, 1
  %i.de = trunc nuw i16 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i16
  %i.dm = add nuw nsw i16 %i.di, 1
  %i.dn = add nuw nsw i16 %i.dm, %i.dl
  %i.do = lshr i16 %i.dn, 1
  %i.dp = trunc nuw i16 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.dp, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = zext i8 %i.ds to i16
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = zext i8 %i.dv to i16
  %i.dx = add nuw nsw i16 %i.dt, 1
  %i.dy = add nuw nsw i16 %i.dx, %i.dw
  %i.dz = lshr i16 %i.dy, 1
  %i.ea = trunc nuw i16 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.ea, ptr %i.eb, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = zext i8 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = zext i8 %i.eg to i16
  %i.ei = add nuw nsw i16 %i.ee, 1
  %i.ej = add nuw nsw i16 %i.ei, %i.eh
  %i.ek = lshr i16 %i.ej, 1
  %i.el = trunc nuw i16 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.el, ptr %i.em, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i16
  %i.et = add nuw nsw i16 %i.ep, 1
  %i.eu = add nuw nsw i16 %i.et, %i.es
  %i.ev = lshr i16 %i.eu, 1
  %i.ew = trunc nuw i16 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.ew, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i16
  %i.fe = add nuw nsw i16 %i.fa, 1
  %i.ff = add nuw nsw i16 %i.fe, %i.fd
  %i.fg = lshr i16 %i.ff, 1
  %i.fh = trunc nuw i16 %i.fg to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.fh, ptr %i.fi, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = zext i8 %i.fk to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i16
  %i.fp = add nuw nsw i16 %i.fl, 1
  %i.fq = add nuw nsw i16 %i.fp, %i.fo
  %i.fr = lshr i16 %i.fq, 1
  %i.fs = trunc nuw i16 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.fs, ptr %i.ft, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = zext i8 %i.fy to i16
  %i.ga = add nuw nsw i16 %i.fw, 1
  %i.gb = add nuw nsw i16 %i.ga, %i.fz
  %i.gc = lshr i16 %i.gb, 1
end_hunk_5
begin_hunk_6_@helper_pcmpestri_xmm:bb.a
  %.0.i.i22 = tail call range(i32 0, 256) i32 @llvm.abs.i32(i32 range(i32 -255, 256) %i.n, i1 true)
  %.013.i23 = select i1 %or.cond.i21, i32 %i.h, i32 %.0.i.i22
  %i.o = tail call fastcc i32 @pcmpxstrx(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %i.a, i32 noundef %.013.i, i32 noundef %.013.i23) ; 3 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = and i32 %3, 64
  %.not14 = icmp eq i32 %i.p, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.o, i1 true)
  %i.r = xor i32 %i.q, 31
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.s = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %i.o, i1 true)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.t = lshr exact i32 16, %i.e
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.sink25 = phi i32 [ %i.t, %bb.e ], [ %i.r, %bb.c ], [ %i.s, %bb.d ]
  %i.u = zext nneg i32 %.sink25 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc i32 @pcmpxstrx(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) unnamed_addr #17 {
bb.a:
  %i.a = zext i8 %3 to i32                        ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, i32 15, i32 7           ; 6 uses
  %i.d = add i32 %4, -1                           ; 11 uses
  %i.e = add i32 %5, -1                           ; 12 uses
  %i.f = icmp slt i32 %i.d, %i.c
  %i.g = select i1 %i.f, i64 64, i64 0
  %i.h = icmp slt i32 %i.e, %i.c
  %i.i = select i1 %i.h, i64 128, i64 0
  %i.j = or disjoint i64 %i.g, %i.i               ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  store i64 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.l, align 8
  %i.m = lshr i32 %i.a, 2
  %i.n = and i32 %i.m, 3
  switch i32 %i.n, label %default.unreachable363 [
    i32 0, label %.preheader
    i32 1, label %.preheader181
    i32 2, label %bb.v
    i32 3, label %bb.ab
  ]

.preheader181:                                    ; preds = %bb.a
  %i.o = icmp sgt i32 %i.d, -1
  br i1 %i.o, label %.lr.ph244, label %.loopexit

.lr.ph244:                                        ; preds = %.preheader181
  %i.p = and i8 %3, 3                             ; 3 uses
  %i.q = or i32 %5, 1                             ; 2 uses
  %.1129235 = add i32 %i.q, -2                    ; 2 uses
  %i.r = icmp sgt i32 %.1129235, -1
  br i1 %i.r, label %.lr.ph244.split.us, label %.loopexit

.lr.ph244.split.us:                               ; preds = %.lr.ph244
  %i.s = zext nneg i32 %.1129235 to i64
  %i.t = zext nneg i32 %i.d to i64
  br label %.lr.ph244.split.us.split.split.us

.lr.ph244.split.us.split.split.us:                ; preds = %.lr.ph244.split.us, %._crit_edge240.us.us
  %indvars.iv342 = phi i64 [ %i.t, %.lr.ph244.split.us ], [ %indvars.iv.next343, %._crit_edge240.us.us ] ; 6 uses
  %.2243.us.us = phi i32 [ 0, %.lr.ph244.split.us ], [ %i.bk, %._crit_edge240.us.us ]
  %i.u = shl i32 %.2243.us.us, 1
  switch i8 %i.p, label %.lr.ph244.split.us.split.split.us.unreachabledefault [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.c
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph244.split.us.split.split.us
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv342
  %i.w = load i16, ptr %i.v, align 2
  %i.x = sext i16 %i.w to i32
  br label %pcmp_val.exit143.us.us

bb.c:                                             ; preds = %.lr.ph244.split.us.split.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv342
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  br label %pcmp_val.exit143.us.us

bb.d:                                             ; preds = %.lr.ph244.split.us.split.split.us
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv342
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32
  br label %pcmp_val.exit143.us.us

bb.e:                                             ; preds = %.lr.ph244.split.us.split.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv342
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  br label %pcmp_val.exit143.us.us

pcmp_val.exit143.us.us:                           ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i141.us.us = phi i32 [ %i.ag, %bb.e ], [ %i.ad, %bb.d ], [ %i.aa, %bb.c ], [ %i.x, %bb.b ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %pcmp_val.exit143.us.us, %bb.p
  %indvars.iv339 = phi i64 [ %i.s, %pcmp_val.exit143.us.us ], [ %indvars.iv.next340, %bb.p ] ; 7 uses
  %.3237.us.us = phi i32 [ %i.u, %pcmp_val.exit143.us.us ], [ %i.bk, %bb.p ] ; 2 uses
  %.1129.in236.us.us = phi i32 [ %i.q, %pcmp_val.exit143.us.us ], [ %i.bm, %bb.p ]
  switch i8 %i.p, label %.unreachabledefault [
    i8 0, label %bb.j
    i8 1, label %bb.i
    i8 2, label %bb.h
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv339
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = sext i16 %i.ai to i32
  br label %pcmp_val.exit146.us.us

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv339
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = sext i8 %i.al to i32
  br label %pcmp_val.exit146.us.us

bb.i:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv339
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i32
  br label %pcmp_val.exit146.us.us

bb.j:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv339
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  br label %pcmp_val.exit146.us.us

pcmp_val.exit146.us.us:                           ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i144.us.us = phi i32 [ %i.as, %bb.j ], [ %i.ap, %bb.i ], [ %i.am, %bb.h ], [ %i.aj, %bb.g ]
  %.not134.us.us = icmp slt i32 %.0.i144.us.us, %.0.i141.us.us
  br i1 %.not134.us.us, label %bb.p, label %bb.k

bb.k:                                             ; preds = %pcmp_val.exit146.us.us
  %i.at = add i32 %.1129.in236.us.us, -3
  %i.au = sext i32 %i.at to i64                   ; 4 uses
  switch i8 %i.p, label %.unreachabledefault390 [
    i8 0, label %bb.o
    i8 1, label %bb.n
    i8 2, label %bb.m
    i8 3, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds [2 x i8], ptr %1, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = sext i16 %i.aw to i32
  br label %pcmp_val.exit149.us.us

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds i8, ptr %1, i64 %i.au
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = sext i8 %i.az to i32
  br label %pcmp_val.exit149.us.us

bb.n:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds [2 x i8], ptr %1, i64 %i.au
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i32
  br label %pcmp_val.exit149.us.us

bb.o:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds i8, ptr %1, i64 %i.au
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  br label %pcmp_val.exit149.us.us

pcmp_val.exit149.us.us:                           ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.0.i147.us.us = phi i32 [ %i.bg, %bb.o ], [ %i.bd, %bb.n ], [ %i.ba, %bb.m ], [ %i.ax, %bb.l ]
  %i.bh = icmp sle i32 %.0.i147.us.us, %.0.i141.us.us
  %i.bi = zext i1 %i.bh to i32
  %i.bj = or i32 %.3237.us.us, %i.bi
  br label %bb.p

bb.p:                                             ; preds = %pcmp_val.exit149.us.us, %pcmp_val.exit146.us.us
  %i.bk = phi i32 [ %.3237.us.us, %pcmp_val.exit146.us.us ], [ %i.bj, %pcmp_val.exit149.us.us ] ; 3 uses
  %indvars.iv.next340 = add nsw i64 %indvars.iv339, -2
  %i.bl = icmp sgt i64 %indvars.iv339, 1
  %i.bm = trunc nuw nsw i64 %indvars.iv339 to i32
  br i1 %i.bl, label %bb.f, label %._crit_edge240.us.us, !llvm.loop !40

._crit_edge240.us.us:                             ; preds = %bb.p
  %indvars.iv.next343 = add nsw i64 %indvars.iv342, -1
  %i.bn = icmp sgt i64 %indvars.iv342, 0
  br i1 %i.bn, label %.lr.ph244.split.us.split.split.us, label %.loopexit, !llvm.loop !41

.preheader:                                       ; preds = %bb.a
  %i.bo = icmp sgt i32 %i.d, -1
  br i1 %i.bo, label %.lr.ph294, label %.loopexit

.lr.ph294:                                        ; preds = %.preheader
  %i.bp = and i8 %3, 3                            ; 2 uses
  %i.bq = icmp sgt i32 %i.e, -1
  %i.br = zext i32 %i.e to i64                    ; 13 uses
  %i.bs = zext nneg i32 %i.d to i64
  %i.bt = add nuw nsw i64 %i.br, 1                ; 8 uses
  %min.iters.check504 = icmp ult i32 %i.e, 7      ; 4 uses
  %n.vec564 = and i64 %i.bt, 4294967288           ; 3 uses
  %i.bu = sub nsw i64 %i.br, %n.vec564
  %cmp.n578 = icmp eq i64 %i.bt, %n.vec564
  %n.vec544 = and i64 %i.bt, 4294967288           ; 3 uses
  %i.bv = sub nsw i64 %i.br, %n.vec544
  %cmp.n558 = icmp eq i64 %i.bt, %n.vec544
  %n.vec524 = and i64 %i.bt, 4294967288           ; 3 uses
  %i.bw = sub nsw i64 %i.br, %n.vec524
  %cmp.n538 = icmp eq i64 %i.bt, %n.vec524
  %n.vec506 = and i64 %i.bt, 4294967288           ; 3 uses
  %i.bx = sub nsw i64 %i.br, %n.vec506
  %cmp.n518 = icmp eq i64 %i.bt, %n.vec506
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph294, %._crit_edge268
  %indvars.iv357 = phi i64 [ %i.bs, %.lr.ph294 ], [ %indvars.iv.next358, %._crit_edge268 ] ; 6 uses
  %.0293 = phi i32 [ 0, %.lr.ph294 ], [ %.1.lcssa, %._crit_edge268 ]
  %i.by = shl i32 %.0293, 1                       ; 9 uses
  switch i8 %i.bp, label %.unreachabledefault391 [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv357
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i32
  br label %pcmp_val.exit

bb.s:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv357
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = zext i16 %i.cd to i32
  br label %pcmp_val.exit

bb.t:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv357
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = sext i8 %i.cg to i32
  br label %pcmp_val.exit

bb.u:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv357
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = sext i16 %i.cj to i32
  br label %pcmp_val.exit

pcmp_val.exit:                                    ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i = phi i32 [ %i.cb, %bb.r ], [ %i.ce, %bb.s ], [ %i.ch, %bb.t ], [ %i.ck, %bb.u ] ; 8 uses
  br i1 %i.bq, label %.lr.ph267, label %._crit_edge268

.lr.ph267:                                        ; preds = %pcmp_val.exit
  switch i8 %i.bp, label %.lr.ph267.unreachabledefault [
    i8 0, label %pcmp_val.exit140.us.preheader
    i8 1, label %pcmp_val.exit140.us274.preheader
    i8 2, label %pcmp_val.exit140.us281.preheader
    i8 3, label %pcmp_val.exit140.us288.preheader
  ]

pcmp_val.exit140.us288.preheader:                 ; preds = %.lr.ph267
  br i1 %min.iters.check504, label %pcmp_val.exit140.us288.preheader590, label %vector.ph563

vector.ph563:                                     ; preds = %pcmp_val.exit140.us288.preheader
  %i.cl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.by, i64 0
  %broadcast.splatinsert565 = insertelement <4 x i32> poison, i32 %.0.i, i64 0
  %broadcast.splat566 = shufflevector <4 x i32> %broadcast.splatinsert565, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body567

vector.body567:                                   ; preds = %vector.body567, %vector.ph563
  %index568 = phi i64 [ 0, %vector.ph563 ], [ %index.next575, %vector.body567 ] ; 2 uses
  %vec.phi569 = phi <4 x i32> [ %i.cl, %vector.ph563 ], [ %i.cw, %vector.body567 ]
  %vec.phi570 = phi <4 x i32> [ zeroinitializer, %vector.ph563 ], [ %i.cx, %vector.body567 ]
  %i.cm = sub i64 %i.br, %index568
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -6
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -14
  %wide.load571 = load <4 x i16>, ptr %i.co, align 2
  %wide.load572 = load <4 x i16>, ptr %i.cp, align 2
  %reverse573 = shufflevector <4 x i16> %wide.load571, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse574 = shufflevector <4 x i16> %wide.load572, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cq = sext <4 x i16> %reverse573 to <4 x i32>
  %i.cr = sext <4 x i16> %reverse574 to <4 x i32>
  %i.cs = icmp eq <4 x i32> %broadcast.splat566, %i.cq
  %i.ct = icmp eq <4 x i32> %broadcast.splat566, %i.cr
  %i.cu = zext <4 x i1> %i.cs to <4 x i32>
  %i.cv = zext <4 x i1> %i.ct to <4 x i32>
  %i.cw = or <4 x i32> %vec.phi569, %i.cu         ; 2 uses
  %i.cx = or <4 x i32> %vec.phi570, %i.cv         ; 2 uses
  %index.next575 = add nuw i64 %index568, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next575, %n.vec564
  br i1 %i.cy, label %middle.block576, label %vector.body567, !llvm.loop !42

middle.block576:                                  ; preds = %vector.body567
  %bin.rdx577 = or <4 x i32> %i.cx, %i.cw
  %i.cz = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx577) ; 2 uses
  br i1 %cmp.n578, label %._crit_edge268, label %pcmp_val.exit140.us288.preheader590

pcmp_val.exit140.us288.preheader590:              ; preds = %pcmp_val.exit140.us288.preheader, %middle.block576
  %indvars.iv345.ph = phi i64 [ %i.br, %pcmp_val.exit140.us288.preheader ], [ %i.bu, %middle.block576 ]
  %.1266.us286.ph = phi i32 [ %i.by, %pcmp_val.exit140.us288.preheader ], [ %i.cz, %middle.block576 ]
  br label %pcmp_val.exit140.us288

pcmp_val.exit140.us281.preheader:                 ; preds = %.lr.ph267
  br i1 %min.iters.check504, label %pcmp_val.exit140.us281.preheader588, label %vector.ph543

vector.ph543:                                     ; preds = %pcmp_val.exit140.us281.preheader
  %i.da = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.by, i64 0
  %broadcast.splatinsert545 = insertelement <4 x i32> poison, i32 %.0.i, i64 0
  %broadcast.splat546 = shufflevector <4 x i32> %broadcast.splatinsert545, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body547

vector.body547:                                   ; preds = %vector.body547, %vector.ph543
  %index548 = phi i64 [ 0, %vector.ph543 ], [ %index.next555, %vector.body547 ] ; 2 uses
  %vec.phi549 = phi <4 x i32> [ %i.da, %vector.ph543 ], [ %i.dl, %vector.body547 ]
  %vec.phi550 = phi <4 x i32> [ zeroinitializer, %vector.ph543 ], [ %i.dm, %vector.body547 ]
  %i.db = sub i64 %i.br, %index548
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -3
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -7
  %wide.load551 = load <4 x i8>, ptr %i.dd, align 1
  %wide.load552 = load <4 x i8>, ptr %i.de, align 1
  %reverse553 = shufflevector <4 x i8> %wide.load551, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse554 = shufflevector <4 x i8> %wide.load552, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.df = sext <4 x i8> %reverse553 to <4 x i32>
  %i.dg = sext <4 x i8> %reverse554 to <4 x i32>
  %i.dh = icmp eq <4 x i32> %broadcast.splat546, %i.df
  %i.di = icmp eq <4 x i32> %broadcast.splat546, %i.dg
  %i.dj = zext <4 x i1> %i.dh to <4 x i32>
  %i.dk = zext <4 x i1> %i.di to <4 x i32>
  %i.dl = or <4 x i32> %vec.phi549, %i.dj         ; 2 uses
  %i.dm = or <4 x i32> %vec.phi550, %i.dk         ; 2 uses
  %index.next555 = add nuw i64 %index548, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next555, %n.vec544
  br i1 %i.dn, label %middle.block556, label %vector.body547, !llvm.loop !43

middle.block556:                                  ; preds = %vector.body547
  %bin.rdx557 = or <4 x i32> %i.dm, %i.dl
  %i.do = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx557) ; 2 uses
  br i1 %cmp.n558, label %._crit_edge268, label %pcmp_val.exit140.us281.preheader588

pcmp_val.exit140.us281.preheader588:              ; preds = %pcmp_val.exit140.us281.preheader, %middle.block556
  %indvars.iv348.ph = phi i64 [ %i.br, %pcmp_val.exit140.us281.preheader ], [ %i.bv, %middle.block556 ]
  %.1266.us279.ph = phi i32 [ %i.by, %pcmp_val.exit140.us281.preheader ], [ %i.do, %middle.block556 ]
  br label %pcmp_val.exit140.us281

pcmp_val.exit140.us274.preheader:                 ; preds = %.lr.ph267
  br i1 %min.iters.check504, label %pcmp_val.exit140.us274.preheader586, label %vector.ph523

vector.ph523:                                     ; preds = %pcmp_val.exit140.us274.preheader
  %i.dp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.by, i64 0
  %broadcast.splatinsert525 = insertelement <4 x i32> poison, i32 %.0.i, i64 0
  %broadcast.splat526 = shufflevector <4 x i32> %broadcast.splatinsert525, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body527

vector.body527:                                   ; preds = %vector.body527, %vector.ph523
  %index528 = phi i64 [ 0, %vector.ph523 ], [ %index.next535, %vector.body527 ] ; 2 uses
  %vec.phi529 = phi <4 x i32> [ %i.dp, %vector.ph523 ], [ %i.ea, %vector.body527 ]
  %vec.phi530 = phi <4 x i32> [ zeroinitializer, %vector.ph523 ], [ %i.eb, %vector.body527 ]
  %i.dq = sub i64 %i.br, %index528
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -6
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -14
  %wide.load531 = load <4 x i16>, ptr %i.ds, align 2
  %wide.load532 = load <4 x i16>, ptr %i.dt, align 2
  %reverse533 = shufflevector <4 x i16> %wide.load531, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse534 = shufflevector <4 x i16> %wide.load532, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.du = zext <4 x i16> %reverse533 to <4 x i32>
  %i.dv = zext <4 x i16> %reverse534 to <4 x i32>
  %i.dw = icmp eq <4 x i32> %broadcast.splat526, %i.du
  %i.dx = icmp eq <4 x i32> %broadcast.splat526, %i.dv
  %i.dy = zext <4 x i1> %i.dw to <4 x i32>
  %i.dz = zext <4 x i1> %i.dx to <4 x i32>
  %i.ea = or <4 x i32> %vec.phi529, %i.dy         ; 2 uses
  %i.eb = or <4 x i32> %vec.phi530, %i.dz         ; 2 uses
  %index.next535 = add nuw i64 %index528, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next535, %n.vec524
  br i1 %i.ec, label %middle.block536, label %vector.body527, !llvm.loop !44

middle.block536:                                  ; preds = %vector.body527
  %bin.rdx537 = or <4 x i32> %i.eb, %i.ea
  %i.ed = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx537) ; 2 uses
  br i1 %cmp.n538, label %._crit_edge268, label %pcmp_val.exit140.us274.preheader586

pcmp_val.exit140.us274.preheader586:              ; preds = %pcmp_val.exit140.us274.preheader, %middle.block536
  %indvars.iv351.ph = phi i64 [ %i.br, %pcmp_val.exit140.us274.preheader ], [ %i.bw, %middle.block536 ]
  %.1266.us272.ph = phi i32 [ %i.by, %pcmp_val.exit140.us274.preheader ], [ %i.ed, %middle.block536 ]
  br label %pcmp_val.exit140.us274

pcmp_val.exit140.us.preheader:                    ; preds = %.lr.ph267
  br i1 %min.iters.check504, label %pcmp_val.exit140.us.preheader585, label %vector.ph505

vector.ph505:                                     ; preds = %pcmp_val.exit140.us.preheader
  %i.ee = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.by, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next515, %vector.body507 ] ; 2 uses
  %vec.phi509 = phi <4 x i32> [ %i.ee, %vector.ph505 ], [ %i.ep, %vector.body507 ]
  %vec.phi510 = phi <4 x i32> [ zeroinitializer, %vector.ph505 ], [ %i.eq, %vector.body507 ]
  %i.ef = sub i64 %i.br, %index508
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -3
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -7
  %wide.load511 = load <4 x i8>, ptr %i.eh, align 1
  %wide.load512 = load <4 x i8>, ptr %i.ei, align 1
  %reverse513 = shufflevector <4 x i8> %wide.load511, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse514 = shufflevector <4 x i8> %wide.load512, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ej = zext <4 x i8> %reverse513 to <4 x i32>
  %i.ek = zext <4 x i8> %reverse514 to <4 x i32>
  %i.el = icmp eq <4 x i32> %broadcast.splat, %i.ej
  %i.em = icmp eq <4 x i32> %broadcast.splat, %i.ek
  %i.en = zext <4 x i1> %i.el to <4 x i32>
  %i.eo = zext <4 x i1> %i.em to <4 x i32>
  %i.ep = or <4 x i32> %vec.phi509, %i.en         ; 2 uses
  %i.eq = or <4 x i32> %vec.phi510, %i.eo         ; 2 uses
  %index.next515 = add nuw i64 %index508, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next515, %n.vec506
  br i1 %i.er, label %middle.block516, label %vector.body507, !llvm.loop !45

middle.block516:                                  ; preds = %vector.body507
  %bin.rdx517 = or <4 x i32> %i.eq, %i.ep
  %i.es = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx517) ; 2 uses
  br i1 %cmp.n518, label %._crit_edge268, label %pcmp_val.exit140.us.preheader585

pcmp_val.exit140.us.preheader585:                 ; preds = %pcmp_val.exit140.us.preheader, %middle.block516
  %indvars.iv354.ph = phi i64 [ %i.br, %pcmp_val.exit140.us.preheader ], [ %i.bx, %middle.block516 ]
  %.1266.us.ph = phi i32 [ %i.by, %pcmp_val.exit140.us.preheader ], [ %i.es, %middle.block516 ]
  br label %pcmp_val.exit140.us

pcmp_val.exit140.us:                              ; preds = %pcmp_val.exit140.us.preheader585, %pcmp_val.exit140.us
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %pcmp_val.exit140.us ], [ %indvars.iv354.ph, %pcmp_val.exit140.us.preheader585 ] ; 3 uses
  %.1266.us = phi i32 [ %i.ey, %pcmp_val.exit140.us ], [ %.1266.us.ph, %pcmp_val.exit140.us.preheader585 ]
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv354
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i32
  %i.ew = icmp eq i32 %.0.i, %i.ev
  %i.ex = zext i1 %i.ew to i32
  %i.ey = or i32 %.1266.us, %i.ex                 ; 2 uses
  %indvars.iv.next355 = add nsw i64 %indvars.iv354, -1
  %.not395 = icmp eq i64 %indvars.iv354, 0
  br i1 %.not395, label %._crit_edge268, label %pcmp_val.exit140.us, !llvm.loop !46

pcmp_val.exit140.us274:                           ; preds = %pcmp_val.exit140.us274.preheader586, %pcmp_val.exit140.us274
  %indvars.iv351 = phi i64 [ %indvars.iv.next352, %pcmp_val.exit140.us274 ], [ %indvars.iv351.ph, %pcmp_val.exit140.us274.preheader586 ] ; 3 uses
  %.1266.us272 = phi i32 [ %i.fe, %pcmp_val.exit140.us274 ], [ %.1266.us272.ph, %pcmp_val.exit140.us274.preheader586 ]
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv351
  %i.fa = load i16, ptr %i.ez, align 2
  %i.fb = zext i16 %i.fa to i32
  %i.fc = icmp eq i32 %.0.i, %i.fb
  %i.fd = zext i1 %i.fc to i32
  %i.fe = or i32 %.1266.us272, %i.fd              ; 2 uses
  %indvars.iv.next352 = add nsw i64 %indvars.iv351, -1
  %.not394 = icmp eq i64 %indvars.iv351, 0
  br i1 %.not394, label %._crit_edge268, label %pcmp_val.exit140.us274, !llvm.loop !47

pcmp_val.exit140.us281:                           ; preds = %pcmp_val.exit140.us281.preheader588, %pcmp_val.exit140.us281
  %indvars.iv348 = phi i64 [ %indvars.iv.next349, %pcmp_val.exit140.us281 ], [ %indvars.iv348.ph, %pcmp_val.exit140.us281.preheader588 ] ; 3 uses
  %.1266.us279 = phi i32 [ %i.fk, %pcmp_val.exit140.us281 ], [ %.1266.us279.ph, %pcmp_val.exit140.us281.preheader588 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv348
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = sext i8 %i.fg to i32
  %i.fi = icmp eq i32 %.0.i, %i.fh
  %i.fj = zext i1 %i.fi to i32
  %i.fk = or i32 %.1266.us279, %i.fj              ; 2 uses
  %indvars.iv.next349 = add nsw i64 %indvars.iv348, -1
  %.not393 = icmp eq i64 %indvars.iv348, 0
  br i1 %.not393, label %._crit_edge268, label %pcmp_val.exit140.us281, !llvm.loop !48

pcmp_val.exit140.us288:                           ; preds = %pcmp_val.exit140.us288.preheader590, %pcmp_val.exit140.us288
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %pcmp_val.exit140.us288 ], [ %indvars.iv345.ph, %pcmp_val.exit140.us288.preheader590 ] ; 3 uses
  %.1266.us286 = phi i32 [ %i.fq, %pcmp_val.exit140.us288 ], [ %.1266.us286.ph, %pcmp_val.exit140.us288.preheader590 ]
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv345
  %i.fm = load i16, ptr %i.fl, align 2
  %i.fn = sext i16 %i.fm to i32
  %i.fo = icmp eq i32 %.0.i, %i.fn
  %i.fp = zext i1 %i.fo to i32
  %i.fq = or i32 %.1266.us286, %i.fp              ; 2 uses
  %indvars.iv.next346 = add nsw i64 %indvars.iv345, -1
  %i.fr = icmp sgt i64 %indvars.iv345, 0
  br i1 %i.fr, label %pcmp_val.exit140.us288, label %._crit_edge268, !llvm.loop !49

._crit_edge268:                                   ; preds = %pcmp_val.exit140.us288, %pcmp_val.exit140.us281, %pcmp_val.exit140.us274, %pcmp_val.exit140.us, %middle.block576, %middle.block556, %middle.block536, %middle.block516, %pcmp_val.exit
  %.1.lcssa = phi i32 [ %i.by, %pcmp_val.exit ], [ %i.fe, %pcmp_val.exit140.us274 ], [ %i.fk, %pcmp_val.exit140.us281 ], [ %i.ey, %pcmp_val.exit140.us ], [ %i.es, %middle.block516 ], [ %i.ed, %middle.block536 ], [ %i.do, %middle.block556 ], [ %i.cz, %middle.block576 ], [ %i.fq, %pcmp_val.exit140.us288 ] ; 2 uses
  %indvars.iv.next358 = add nsw i64 %indvars.iv357, -1
  %i.fs = icmp sgt i64 %indvars.iv357, 0
  br i1 %i.fs, label %bb.q, label %.loopexit, !llvm.loop !50

bb.v:                                             ; preds = %bb.a
  %i.ft = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.e) ; 2 uses
  %i.fu = sub i32 %i.c, %i.ft
  %notmask = shl nsw i32 -1, %i.fu
  %i.fv = xor i32 %notmask, -1
  %i.fw = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.e) ; 3 uses
  %i.fx = sub i32 %i.ft, %i.fw
  %i.fy = shl i32 %i.fv, %i.fx                    ; 2 uses
  %i.fz = icmp sgt i32 %i.fw, -1
  br i1 %i.fz, label %.lr.ph233, label %.loopexit

.lr.ph233:                                        ; preds = %bb.v
  %i.ga = and i8 %3, 3
  %i.gb = zext nneg i32 %i.fw to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph233, %pcmp_val.exit155
  %indvars.iv336 = phi i64 [ %i.gb, %.lr.ph233 ], [ %indvars.iv.next337, %pcmp_val.exit155 ] ; 10 uses
  %.4231 = phi i32 [ %i.fy, %.lr.ph233 ], [ %i.hd, %pcmp_val.exit155 ]
  %i.gc = shl i32 %.4231, 1
  switch i8 %i.ga, label %.unreachabledefault392 [
    i8 0, label %bb.x
    i8 1, label %bb.y
    i8 2, label %bb.z
    i8 3, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv336
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = zext i8 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv336
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = zext i8 %i.gh to i32
  br label %pcmp_val.exit155

bb.y:                                             ; preds = %bb.w
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv336
  %i.gk = load i16, ptr %i.gj, align 2
  %i.gl = zext i16 %i.gk to i32
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv336
  %i.gn = load i16, ptr %i.gm, align 2
  %i.go = zext i16 %i.gn to i32
  br label %pcmp_val.exit155

bb.z:                                             ; preds = %bb.w
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv336
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = sext i8 %i.gq to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv336
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = sext i8 %i.gt to i32
  br label %pcmp_val.exit155

bb.aa:                                            ; preds = %bb.w
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv336
  %i.gw = load i16, ptr %i.gv, align 2
  %i.gx = sext i16 %i.gw to i32
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv336
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = sext i16 %i.gz to i32
  br label %pcmp_val.exit155

pcmp_val.exit155:                                 ; preds = %bb.x, %bb.y, %bb.z, %bb.aa
  %.0.i150163 = phi i32 [ %i.gf, %bb.x ], [ %i.gl, %bb.y ], [ %i.gr, %bb.z ], [ %i.gx, %bb.aa ]
  %.0.i153 = phi i32 [ %i.gi, %bb.x ], [ %i.go, %bb.y ], [ %i.gu, %bb.z ], [ %i.ha, %bb.aa ]
  %i.hb = icmp eq i32 %.0.i150163, %.0.i153
  %i.hc = zext i1 %i.hb to i32
  %i.hd = or disjoint i32 %i.gc, %i.hc            ; 2 uses
  %indvars.iv.next337 = add nsw i64 %indvars.iv336, -1
  %i.he = icmp sgt i64 %indvars.iv336, 0
  br i1 %i.he, label %bb.w, label %.loopexit, !llvm.loop !51

bb.ab:                                            ; preds = %bb.a
  %i.hf = icmp eq i32 %5, 0
  br i1 %i.hf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hg = shl nuw nsw i32 2, %i.c
  %i.hh = add nsw i32 %i.hg, -1
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.hi = icmp eq i32 %i.d, %i.c
  %i.hj = sub i32 %4, %5
  %i.hk = select i1 %i.hi, i32 %i.d, i32 %i.hj    ; 7 uses
  %i.hl = icmp sgt i32 %i.hk, -1
  br i1 %i.hl, label %.lr.ph229, label %.loopexit

.lr.ph229:                                        ; preds = %bb.ad
  %i.hm = and i8 %3, 3
  %i.hn = sub i32 %i.d, %i.hk
  %i.ho = zext nneg i32 %i.hk to i64
  %i.hp = zext nneg i32 %i.hk to i33
  %i.hq = zext nneg i32 %i.hk to i33
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph229, %._crit_edge
  %indvar423 = phi i33 [ 0, %.lr.ph229 ], [ %indvar.next424, %._crit_edge ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph229 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv333 = phi i64 [ %i.ho, %.lr.ph229 ], [ %indvars.iv.next334, %._crit_edge ] ; 11 uses
  %indvars.iv = phi i32 [ %i.hn, %.lr.ph229 ], [ %indvars.iv.next, %._crit_edge ] ; 6 uses
  %.5227 = phi i32 [ 0, %.lr.ph229 ], [ %i.np, %._crit_edge ]
  %i.hr = sub i33 %i.hq, %indvar423
  %i.hs = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.e)
  %i.ht = zext i32 %i.hs to i33
  %i.hu = add i33 %i.hr, %i.ht                    ; 2 uses
  %i.hv = shl i33 %i.hu, 1
  %i.hw = trunc i33 %indvar423 to i32
  %i.hx = sub i32 %i.hk, %i.hw
  %i.hy = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.e)
  %i.hz = add i32 %i.hx, %i.hy                    ; 2 uses
  %i.ia = sub i33 %i.hp, %indvar423
  %i.ib = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.e)
  %i.ic = zext i32 %i.ib to i33
  %i.id = add i33 %i.ia, %i.ic                    ; 2 uses
  %i.ie = shl i33 %i.id, 1
  %i.if = sub i32 %i.hk, %indvar
  %i.ig = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.e)
  %i.ih = add i32 %i.if, %i.ig                    ; 2 uses
  %i.ii = shl i32 %.5227, 1
  %i.ij = trunc nuw nsw i64 %indvars.iv333 to i32
  %i.ik = sub i32 %i.d, %i.ij
  %i.il = tail call i32 @llvm.smin.i32(i32 %i.ik, i32 %i.e)
  %i.im = icmp sgt i32 %i.il, -1
  br i1 %i.im, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ae
  %i.in = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.e) ; 9 uses
  %smin330 = sext i32 %i.in to i64                ; 17 uses
  %i.io = add nsw i64 %smin330, 1                 ; 12 uses
  switch i8 %i.hm, label %.lr.ph.unreachabledefault [
    i8 0, label %pcmp_val.exit161.us.preheader
    i8 1, label %pcmp_val.exit161.us201.preheader
    i8 2, label %pcmp_val.exit161.us209.preheader
    i8 3, label %pcmp_val.exit161.us217.preheader
  ]

pcmp_val.exit161.us217.preheader:                 ; preds = %.lr.ph
  %min.iters.check481 = icmp ult i64 %i.io, 16
  br i1 %min.iters.check481, label %pcmp_val.exit161.us217.preheader612, label %vector.scevcheck475

vector.scevcheck475:                              ; preds = %pcmp_val.exit161.us217.preheader
  %i.ip = zext i32 %i.in to i33
  %mul.overflow479 = icmp slt i32 %i.in, 0
  %i.iq = sub i33 %i.hu, %i.ip
  %i.ir = shl i33 %i.iq, 1
  %i.is = icmp sgt i33 %i.ir, %i.hv
  %i.it = or i1 %i.is, %mul.overflow479
  br i1 %i.it, label %pcmp_val.exit161.us217.preheader612, label %vector.ph482

vector.ph482:                                     ; preds = %vector.scevcheck475
  %n.vec483 = and i64 %i.io, 4294967288           ; 3 uses
  %i.iu = sub nsw i64 %smin330, %n.vec483
  br label %vector.body484

vector.body484:                                   ; preds = %vector.body484, %vector.ph482
  %index485 = phi i64 [ 0, %vector.ph482 ], [ %index.next496, %vector.body484 ] ; 2 uses
  %vec.phi486 = phi <4 x i1> [ zeroinitializer, %vector.ph482 ], [ %i.jj, %vector.body484 ]
  %vec.phi487 = phi <4 x i1> [ zeroinitializer, %vector.ph482 ], [ %i.jk, %vector.body484 ]
  %i.iv = sub i64 %smin330, %index485             ; 2 uses
  %i.iw = add nuw i64 %i.iv, %indvars.iv333
  %i.ix = shl i64 %i.iw, 32
  %i.iy = ashr exact i64 %i.ix, 31
  %i.iz = getelementptr inbounds i8, ptr %2, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 -6
  %i.jb = getelementptr inbounds i8, ptr %i.iz, i64 -14
  %wide.load488 = load <4 x i16>, ptr %i.ja, align 2
  %wide.load489 = load <4 x i16>, ptr %i.jb, align 2
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.iv ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -6
  %i.je = getelementptr inbounds i8, ptr %i.jc, i64 -14
  %wide.load492 = load <4 x i16>, ptr %i.jd, align 2
  %wide.load493 = load <4 x i16>, ptr %i.je, align 2
  %i.jf = icmp ne <4 x i16> %wide.load488, %wide.load492
  %i.jg = shufflevector <4 x i1> %i.jf, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.jh = icmp ne <4 x i16> %wide.load489, %wide.load493
  %i.ji = shufflevector <4 x i1> %i.jh, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.jj = or <4 x i1> %vec.phi486, %i.jg          ; 2 uses
  %i.jk = or <4 x i1> %vec.phi487, %i.ji          ; 2 uses
  %index.next496 = add nuw i64 %index485, 8       ; 2 uses
  %i.jl = icmp eq i64 %index.next496, %n.vec483
  br i1 %i.jl, label %middle.block497, label %vector.body484, !llvm.loop !52

middle.block497:                                  ; preds = %vector.body484
  %bin.rdx498 = or <4 x i1> %i.jk, %i.jj
  %bin.rdx498.fr = freeze <4 x i1> %bin.rdx498
  %i.jm = bitcast <4 x i1> %bin.rdx498.fr to i4
  %.not581 = icmp eq i4 %i.jm, 0
  %rdx.select499 = zext i1 %.not581 to i32        ; 2 uses
  %cmp.n500 = icmp eq i64 %i.io, %n.vec483
  br i1 %cmp.n500, label %._crit_edge, label %pcmp_val.exit161.us217.preheader612

pcmp_val.exit161.us217.preheader612:              ; preds = %vector.scevcheck475, %pcmp_val.exit161.us217.preheader, %middle.block497
  %indvars.iv322.ph = phi i64 [ %smin330, %vector.scevcheck475 ], [ %smin330, %pcmp_val.exit161.us217.preheader ], [ %i.iu, %middle.block497 ]
  %.0124197.us215.ph = phi i32 [ 1, %vector.scevcheck475 ], [ 1, %pcmp_val.exit161.us217.preheader ], [ %rdx.select499, %middle.block497 ]
  br label %pcmp_val.exit161.us217

pcmp_val.exit161.us209.preheader:                 ; preds = %.lr.ph
  %min.iters.check453 = icmp ult i64 %i.io, 8
  br i1 %min.iters.check453, label %pcmp_val.exit161.us209.preheader610, label %vector.scevcheck449

vector.scevcheck449:                              ; preds = %pcmp_val.exit161.us209.preheader
  %i.jn = sub i32 %i.hz, %i.in
  %i.jo = icmp sgt i32 %i.jn, %i.hz
  %i.jp = icmp slt i32 %i.in, 0
  %i.jq = or i1 %i.jo, %i.jp
  br i1 %i.jq, label %pcmp_val.exit161.us209.preheader610, label %vector.ph454

vector.ph454:                                     ; preds = %vector.scevcheck449
  %n.vec455 = and i64 %i.io, 4294967288           ; 3 uses
  %i.jr = sub nsw i64 %smin330, %n.vec455
  br label %vector.body456

vector.body456:                                   ; preds = %vector.body456, %vector.ph454
  %index457 = phi i64 [ 0, %vector.ph454 ], [ %index.next468, %vector.body456 ] ; 2 uses
  %vec.phi458 = phi <4 x i1> [ zeroinitializer, %vector.ph454 ], [ %i.kg, %vector.body456 ]
  %vec.phi459 = phi <4 x i1> [ zeroinitializer, %vector.ph454 ], [ %i.kh, %vector.body456 ]
  %i.js = sub i64 %smin330, %index457             ; 2 uses
  %i.jt = add nuw i64 %i.js, %indvars.iv333
  %i.ju = shl i64 %i.jt, 32
  %i.jv = ashr exact i64 %i.ju, 32
  %i.jw = getelementptr inbounds i8, ptr %2, i64 %i.jv ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 -3
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 -7
  %wide.load460 = load <4 x i8>, ptr %i.jx, align 1
  %wide.load461 = load <4 x i8>, ptr %i.jy, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 %i.js ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 -3
  %i.kb = getelementptr inbounds i8, ptr %i.jz, i64 -7
  %wide.load464 = load <4 x i8>, ptr %i.ka, align 1
  %wide.load465 = load <4 x i8>, ptr %i.kb, align 1
  %i.kc = icmp ne <4 x i8> %wide.load460, %wide.load464
  %i.kd = shufflevector <4 x i1> %i.kc, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ke = icmp ne <4 x i8> %wide.load461, %wide.load465
  %i.kf = shufflevector <4 x i1> %i.ke, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.kg = or <4 x i1> %vec.phi458, %i.kd          ; 2 uses
  %i.kh = or <4 x i1> %vec.phi459, %i.kf          ; 2 uses
  %index.next468 = add nuw i64 %index457, 8       ; 2 uses
  %i.ki = icmp eq i64 %index.next468, %n.vec455
  br i1 %i.ki, label %middle.block469, label %vector.body456, !llvm.loop !53

middle.block469:                                  ; preds = %vector.body456
  %bin.rdx470 = or <4 x i1> %i.kh, %i.kg
  %bin.rdx470.fr = freeze <4 x i1> %bin.rdx470
  %i.kj = bitcast <4 x i1> %bin.rdx470.fr to i4
  %.not582 = icmp eq i4 %i.kj, 0
  %rdx.select471 = zext i1 %.not582 to i32        ; 2 uses
  %cmp.n472 = icmp eq i64 %i.io, %n.vec455
  br i1 %cmp.n472, label %._crit_edge, label %pcmp_val.exit161.us209.preheader610

pcmp_val.exit161.us209.preheader610:              ; preds = %vector.scevcheck449, %pcmp_val.exit161.us209.preheader, %middle.block469
  %indvars.iv325.ph = phi i64 [ %smin330, %vector.scevcheck449 ], [ %smin330, %pcmp_val.exit161.us209.preheader ], [ %i.jr, %middle.block469 ]
  %.0124197.us207.ph = phi i32 [ 1, %vector.scevcheck449 ], [ 1, %pcmp_val.exit161.us209.preheader ], [ %rdx.select471, %middle.block469 ]
  br label %pcmp_val.exit161.us209

pcmp_val.exit161.us201.preheader:                 ; preds = %.lr.ph
  %min.iters.check427 = icmp ult i64 %i.io, 16
  br i1 %min.iters.check427, label %pcmp_val.exit161.us201.preheader608, label %vector.scevcheck422

vector.scevcheck422:                              ; preds = %pcmp_val.exit161.us201.preheader
  %i.kk = zext i32 %i.in to i33
  %mul.overflow = icmp slt i32 %i.in, 0
  %i.kl = sub i33 %i.id, %i.kk
  %i.km = shl i33 %i.kl, 1
  %i.kn = icmp sgt i33 %i.km, %i.ie
  %i.ko = or i1 %i.kn, %mul.overflow
  br i1 %i.ko, label %pcmp_val.exit161.us201.preheader608, label %vector.ph428

vector.ph428:                                     ; preds = %vector.scevcheck422
  %n.vec429 = and i64 %i.io, 4294967288           ; 3 uses
  %i.kp = sub nsw i64 %smin330, %n.vec429
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next442, %vector.body430 ] ; 2 uses
  %vec.phi432 = phi <4 x i1> [ zeroinitializer, %vector.ph428 ], [ %i.le, %vector.body430 ]
  %vec.phi433 = phi <4 x i1> [ zeroinitializer, %vector.ph428 ], [ %i.lf, %vector.body430 ]
  %i.kq = sub i64 %smin330, %index431             ; 2 uses
  %i.kr = add nuw i64 %i.kq, %indvars.iv333
  %i.ks = shl i64 %i.kr, 32
  %i.kt = ashr exact i64 %i.ks, 31
  %i.ku = getelementptr inbounds i8, ptr %2, i64 %i.kt ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 -6
  %i.kw = getelementptr inbounds i8, ptr %i.ku, i64 -14
  %wide.load434 = load <4 x i16>, ptr %i.kv, align 2
  %wide.load435 = load <4 x i16>, ptr %i.kw, align 2
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.kq ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 -6
  %i.kz = getelementptr inbounds i8, ptr %i.kx, i64 -14
  %wide.load438 = load <4 x i16>, ptr %i.ky, align 2
  %wide.load439 = load <4 x i16>, ptr %i.kz, align 2
  %i.la = icmp ne <4 x i16> %wide.load434, %wide.load438
  %i.lb = shufflevector <4 x i1> %i.la, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.lc = icmp ne <4 x i16> %wide.load435, %wide.load439
  %i.ld = shufflevector <4 x i1> %i.lc, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.le = or <4 x i1> %vec.phi432, %i.lb          ; 2 uses
  %i.lf = or <4 x i1> %vec.phi433, %i.ld          ; 2 uses
  %index.next442 = add nuw i64 %index431, 8       ; 2 uses
  %i.lg = icmp eq i64 %index.next442, %n.vec429
  br i1 %i.lg, label %middle.block443, label %vector.body430, !llvm.loop !54

middle.block443:                                  ; preds = %vector.body430
  %bin.rdx444 = or <4 x i1> %i.lf, %i.le
  %bin.rdx444.fr = freeze <4 x i1> %bin.rdx444
  %i.lh = bitcast <4 x i1> %bin.rdx444.fr to i4
  %.not583 = icmp eq i4 %i.lh, 0
  %rdx.select445 = zext i1 %.not583 to i32        ; 2 uses
  %cmp.n446 = icmp eq i64 %i.io, %n.vec429
  br i1 %cmp.n446, label %._crit_edge, label %pcmp_val.exit161.us201.preheader608

pcmp_val.exit161.us201.preheader608:              ; preds = %vector.scevcheck422, %pcmp_val.exit161.us201.preheader, %middle.block443
  %indvars.iv328.ph = phi i64 [ %smin330, %vector.scevcheck422 ], [ %smin330, %pcmp_val.exit161.us201.preheader ], [ %i.kp, %middle.block443 ]
  %.0124197.us199.ph = phi i32 [ 1, %vector.scevcheck422 ], [ 1, %pcmp_val.exit161.us201.preheader ], [ %rdx.select445, %middle.block443 ]
  br label %pcmp_val.exit161.us201

pcmp_val.exit161.us.preheader:                    ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %i.io, 8
  br i1 %min.iters.check, label %pcmp_val.exit161.us.preheader607, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %pcmp_val.exit161.us.preheader
  %i.li = sub i32 %i.ih, %i.in
  %i.lj = icmp sgt i32 %i.li, %i.ih
  %i.lk = icmp slt i32 %i.in, 0
  %i.ll = or i1 %i.lj, %i.lk
  br i1 %i.ll, label %pcmp_val.exit161.us.preheader607, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.io, 4294967288              ; 3 uses
  %i.lm = sub nsw i64 %smin330, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.mb, %vector.body ]
  %vec.phi415 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.mc, %vector.body ]
  %i.ln = sub i64 %smin330, %index                ; 2 uses
  %i.lo = add nuw i64 %i.ln, %indvars.iv333
  %i.lp = shl i64 %i.lo, 32
  %i.lq = ashr exact i64 %i.lp, 32
  %i.lr = getelementptr inbounds i8, ptr %2, i64 %i.lq ; 2 uses
  %i.ls = getelementptr inbounds i8, ptr %i.lr, i64 -3
  %i.lt = getelementptr inbounds i8, ptr %i.lr, i64 -7
  %wide.load = load <4 x i8>, ptr %i.ls, align 1
  %wide.load416 = load <4 x i8>, ptr %i.lt, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ln ; 2 uses
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 -3
  %i.lw = getelementptr inbounds i8, ptr %i.lu, i64 -7
  %wide.load418 = load <4 x i8>, ptr %i.lv, align 1
  %wide.load419 = load <4 x i8>, ptr %i.lw, align 1
  %i.lx = icmp ne <4 x i8> %wide.load, %wide.load418
  %i.ly = shufflevector <4 x i1> %i.lx, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.lz = icmp ne <4 x i8> %wide.load416, %wide.load419
  %i.ma = shufflevector <4 x i1> %i.lz, <4 x i1> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.mb = or <4 x i1> %vec.phi, %i.ly             ; 2 uses
  %i.mc = or <4 x i1> %vec.phi415, %i.ma          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.md = icmp eq i64 %index.next, %n.vec
  br i1 %i.md, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.mc, %i.mb
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.me = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not584 = icmp eq i4 %i.me, 0
  %rdx.select = zext i1 %.not584 to i32           ; 2 uses
  %cmp.n = icmp eq i64 %i.io, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %pcmp_val.exit161.us.preheader607

pcmp_val.exit161.us.preheader607:                 ; preds = %vector.scevcheck, %pcmp_val.exit161.us.preheader, %middle.block
  %indvars.iv331.ph = phi i64 [ %smin330, %vector.scevcheck ], [ %smin330, %pcmp_val.exit161.us.preheader ], [ %i.lm, %middle.block ]
  %.0124197.us.ph = phi i32 [ 1, %vector.scevcheck ], [ 1, %pcmp_val.exit161.us.preheader ], [ %rdx.select, %middle.block ]
  br label %pcmp_val.exit161.us

pcmp_val.exit161.us:                              ; preds = %pcmp_val.exit161.us.preheader607, %pcmp_val.exit161.us
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %pcmp_val.exit161.us ], [ %indvars.iv331.ph, %pcmp_val.exit161.us.preheader607 ] ; 4 uses
  %.0124197.us = phi i32 [ %i.mm, %pcmp_val.exit161.us ], [ %.0124197.us.ph, %pcmp_val.exit161.us.preheader607 ]
  %i.mf = add nuw i64 %indvars.iv331, %indvars.iv333
  %sext366 = shl i64 %i.mf, 32
  %i.mg = ashr exact i64 %sext366, 32
  %i.mh = getelementptr inbounds i8, ptr %2, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv331
  %i.mk = load i8, ptr %i.mj, align 1
  %i.ml = icmp eq i8 %i.mi, %i.mk
  %i.mm = select i1 %i.ml, i32 %.0124197.us, i32 0 ; 2 uses
  %indvars.iv.next332 = add nsw i64 %indvars.iv331, -1
  %i.mn = icmp sgt i64 %indvars.iv331, 0
  br i1 %i.mn, label %pcmp_val.exit161.us, label %._crit_edge, !llvm.loop !56

pcmp_val.exit161.us201:                           ; preds = %pcmp_val.exit161.us201.preheader608, %pcmp_val.exit161.us201
  %indvars.iv328 = phi i64 [ %indvars.iv.next329, %pcmp_val.exit161.us201 ], [ %indvars.iv328.ph, %pcmp_val.exit161.us201.preheader608 ] ; 4 uses
  %.0124197.us199 = phi i32 [ %i.mv, %pcmp_val.exit161.us201 ], [ %.0124197.us199.ph, %pcmp_val.exit161.us201.preheader608 ]
  %i.mo = add nuw i64 %indvars.iv328, %indvars.iv333
  %sext365 = shl i64 %i.mo, 32
  %i.mp = ashr exact i64 %sext365, 31
  %i.mq = getelementptr inbounds i8, ptr %2, i64 %i.mp
  %i.mr = load i16, ptr %i.mq, align 2
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv328
  %i.mt = load i16, ptr %i.ms, align 2
  %i.mu = icmp eq i16 %i.mr, %i.mt
  %i.mv = select i1 %i.mu, i32 %.0124197.us199, i32 0 ; 2 uses
  %indvars.iv.next329 = add nsw i64 %indvars.iv328, -1
  %i.mw = icmp sgt i64 %indvars.iv328, 0
  br i1 %i.mw, label %pcmp_val.exit161.us201, label %._crit_edge, !llvm.loop !57

pcmp_val.exit161.us209:                           ; preds = %pcmp_val.exit161.us209.preheader610, %pcmp_val.exit161.us209
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %pcmp_val.exit161.us209 ], [ %indvars.iv325.ph, %pcmp_val.exit161.us209.preheader610 ] ; 4 uses
  %.0124197.us207 = phi i32 [ %i.ne, %pcmp_val.exit161.us209 ], [ %.0124197.us207.ph, %pcmp_val.exit161.us209.preheader610 ]
  %i.mx = add nuw i64 %indvars.iv325, %indvars.iv333
  %sext364 = shl i64 %i.mx, 32
  %i.my = ashr exact i64 %sext364, 32
  %i.mz = getelementptr inbounds i8, ptr %2, i64 %i.my
  %i.na = load i8, ptr %i.mz, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv325
  %i.nc = load i8, ptr %i.nb, align 1
  %i.nd = icmp eq i8 %i.na, %i.nc
  %i.ne = select i1 %i.nd, i32 %.0124197.us207, i32 0 ; 2 uses
  %indvars.iv.next326 = add nsw i64 %indvars.iv325, -1
  %i.nf = icmp sgt i64 %indvars.iv325, 0
  br i1 %i.nf, label %pcmp_val.exit161.us209, label %._crit_edge, !llvm.loop !58

pcmp_val.exit161.us217:                           ; preds = %pcmp_val.exit161.us217.preheader612, %pcmp_val.exit161.us217
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %pcmp_val.exit161.us217 ], [ %indvars.iv322.ph, %pcmp_val.exit161.us217.preheader612 ] ; 4 uses
  %.0124197.us215 = phi i32 [ %i.nn, %pcmp_val.exit161.us217 ], [ %.0124197.us215.ph, %pcmp_val.exit161.us217.preheader612 ]
  %i.ng = add nuw i64 %indvars.iv322, %indvars.iv333
  %sext = shl i64 %i.ng, 32
  %i.nh = ashr exact i64 %sext, 31
  %i.ni = getelementptr inbounds i8, ptr %2, i64 %i.nh
  %i.nj = load i16, ptr %i.ni, align 2
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv322
  %i.nl = load i16, ptr %i.nk, align 2
  %i.nm = icmp eq i16 %i.nj, %i.nl
  %i.nn = select i1 %i.nm, i32 %.0124197.us215, i32 0 ; 2 uses
  %indvars.iv.next323 = add nsw i64 %indvars.iv322, -1
  %i.no = icmp sgt i64 %indvars.iv322, 0
  br i1 %i.no, label %pcmp_val.exit161.us217, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %pcmp_val.exit161.us217, %pcmp_val.exit161.us209, %pcmp_val.exit161.us201, %pcmp_val.exit161.us, %middle.block497, %middle.block469, %middle.block443, %middle.block, %bb.ae
  %.0124.lcssa = phi i32 [ 1, %bb.ae ], [ %i.mv, %pcmp_val.exit161.us201 ], [ %i.ne, %pcmp_val.exit161.us209 ], [ %i.mm, %pcmp_val.exit161.us ], [ %rdx.select, %middle.block ], [ %rdx.select445, %middle.block443 ], [ %rdx.select471, %middle.block469 ], [ %rdx.select499, %middle.block497 ], [ %i.nn, %pcmp_val.exit161.us217 ]
  %i.np = or i32 %.0124.lcssa, %i.ii              ; 2 uses
  %indvars.iv.next334 = add nsw i64 %indvars.iv333, -1
  %i.nq = icmp sgt i64 %indvars.iv333, 0
  %indvars.iv.next = add i32 %indvars.iv, 1
  %indvar.next = add i32 %indvar, 1
  %indvar.next424 = add i33 %indvar423, 1
  br i1 %i.nq, label %bb.ae, label %.loopexit, !llvm.loop !60

.unreachabledefault391:                           ; preds = %bb.q
  unreachable

.lr.ph267.unreachabledefault:                     ; preds = %.lr.ph267
  unreachable

.unreachabledefault:                              ; preds = %bb.f
  unreachable

.unreachabledefault390:                           ; preds = %bb.k
  unreachable

.lr.ph244.split.us.split.split.us.unreachabledefault: ; preds = %.lr.ph244.split.us.split.split.us
  unreachable

.unreachabledefault392:                           ; preds = %bb.w
  unreachable

.lr.ph.unreachabledefault:                        ; preds = %.lr.ph
  unreachable

default.unreachable363:                           ; preds = %bb.a
  unreachable

.loopexit:                                        ; preds = %._crit_edge, %pcmp_val.exit155, %._crit_edge240.us.us, %._crit_edge268, %.lr.ph244, %bb.ad, %bb.v, %.preheader181, %.preheader, %bb.ac
  %.6 = phi i32 [ %i.bk, %._crit_edge240.us.us ], [ %i.hd, %pcmp_val.exit155 ], [ 0, %.lr.ph244 ], [ %i.hh, %bb.ac ], [ 0, %.preheader ], [ 0, %.preheader181 ], [ 0, %bb.ad ], [ %.1.lcssa, %._crit_edge268 ], [ %i.fy, %bb.v ], [ %i.np, %._crit_edge ] ; 3 uses
  %i.nr = lshr i32 %i.a, 4
  %i.ns = and i32 %i.nr, 3
  switch i32 %i.ns, label %bb.ah [
    i32 1, label %bb.af
    i32 3, label %bb.ag
  ]

bb.af:                                            ; preds = %.loopexit
  %i.nt = shl nuw nsw i32 2, %i.c
  %i.nu = add nsw i32 %i.nt, -1
  %i.nv = xor i32 %.6, %i.nu
  br label %bb.ah

bb.ag:                                            ; preds = %.loopexit
  %notmask135 = shl nsw i32 -1, %4
  %i.nw = xor i32 %notmask135, %.6
  %i.nx = xor i32 %i.nw, -1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.loopexit
  %.7 = phi i32 [ %.6, %.loopexit ], [ %i.nv, %bb.af ], [ %i.nx, %bb.ag ] ; 3 uses
  %.not136 = icmp eq i32 %.7, 0
  br i1 %.not136, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ny = or disjoint i64 %i.j, 1
  store i64 %i.ny, ptr %i.k, align 8
  %i.nz = and i32 %.7, 1
  %.not137 = icmp eq i32 %i.nz, 0
  br i1 %.not137, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.oa = or disjoint i64 %i.j, 2049
  store i64 %i.oa, ptr %i.k, align 8
  br label %.thread

.thread:                                          ; preds = %bb.ah, %bb.aj, %bb.ai
  ret i32 %.7
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pcmpestrm_xmm(ptr nofree noundef captures(none) initializes((280, 288), (296, 300), (960, 976)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = trunc i32 %3 to i8
  %.not.i = icmp ult i32 %3, 256                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %sext.i = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext.i, 32
  %.012.i = select i1 %.not.i, i64 %i.d, i64 %i.c ; 3 uses
  %i.e = and i32 %3, 1
  %.not14.i = icmp eq i32 %i.e, 0                 ; 3 uses
  %..neg.i = select i1 %.not14.i, i64 -16, i64 -8 ; 2 uses
  %..i = select i1 %.not14.i, i64 16, i64 8       ; 3 uses
  %i.f = icmp sgt i64 %.012.i, %..i
  %i.g = icmp slt i64 %.012.i, %..neg.i
  %or.cond.i = or i1 %i.f, %i.g
  %i.h = trunc nuw nsw i64 %..i to i32            ; 2 uses
  %i.i = trunc nsw i64 %.012.i to i32
  %.0.i.i = tail call range(i32 0, 256) i32 @llvm.abs.i32(i32 range(i32 -255, 256) %i.i, i1 true)
  %.013.i = select i1 %or.cond.i, i32 %i.h, i32 %.0.i.i
  %i.j = load i64, ptr %0, align 8                ; 2 uses
  %sext.i30 = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext.i30, 32
  %.012.i31 = select i1 %.not.i, i64 %i.k, i64 %i.j ; 3 uses
  %i.l = icmp sgt i64 %.012.i31, %..i
  %i.m = icmp slt i64 %.012.i31, %..neg.i
  %or.cond.i35 = or i1 %i.l, %i.m
  %i.n = trunc nsw i64 %.012.i31 to i32
  %.0.i.i36 = tail call range(i32 0, 256) i32 @llvm.abs.i32(i32 range(i32 -255, 256) %i.n, i1 true)
  %.013.i37 = select i1 %or.cond.i35, i32 %i.h, i32 %.0.i.i36
  %i.o = tail call fastcc i32 @pcmpxstrx(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %i.a, i32 noundef %.013.i, i32 noundef %.013.i37) ; 10 uses
  %i.p = and i32 %3, 64
  %.not = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not27 = trunc i32 %i.o to i1                  ; 2 uses
  %i.r = shl i32 %i.o, 30
  %sext53 = ashr i32 %i.r, 31                     ; 2 uses
  %i.s = shl i32 %i.o, 29
  %sext54 = ashr i32 %i.s, 31                     ; 2 uses
  %i.t = shl i32 %i.o, 28
  %sext55 = ashr i32 %i.t, 31                     ; 2 uses
  %i.u = shl i32 %i.o, 27
  %sext56 = ashr i32 %i.u, 31                     ; 2 uses
  %i.v = shl i32 %i.o, 26
  %sext57 = ashr i32 %i.v, 31                     ; 2 uses
  %i.w = shl i32 %i.o, 25
  %sext58 = ashr i32 %i.w, 31                     ; 2 uses
  %i.x = shl i32 %i.o, 24
  %sext59 = ashr i32 %i.x, 31                     ; 2 uses
  br i1 %.not14.i, label %.preheader, label %.preheader38

.preheader38:                                     ; preds = %bb.b
  %i.y = sext i1 %.not27 to i16
  store i16 %i.y, ptr %i.q, align 8
  %i.z = trunc nsw i32 %sext53 to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 962
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = trunc nsw i32 %sext54 to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 964
  store i16 %i.ab, ptr %i.ac, align 4
  %i.ad = trunc nsw i32 %sext55 to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 966
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = trunc nsw i32 %sext56 to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i16 %i.af, ptr %i.ag, align 8
  %i.ah = trunc nsw i32 %sext57 to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 970
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = trunc nsw i32 %sext58 to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i16 %i.aj, ptr %i.ak, align 4
  %i.al = trunc nsw i32 %sext59 to i16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 974
  store i16 %i.al, ptr %i.am, align 2
  br label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.an = sext i1 %.not27 to i8
  store i8 %i.an, ptr %i.q, align 8
  %i.ao = trunc nsw i32 %sext53 to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 961
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = trunc nsw i32 %sext54 to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 962
  store i8 %i.aq, ptr %i.ar, align 2
  %i.as = trunc nsw i32 %sext55 to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 963
  store i8 %i.as, ptr %i.at, align 1
  %i.au = trunc nsw i32 %sext56 to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 964
  store i8 %i.au, ptr %i.av, align 4
  %i.aw = trunc nsw i32 %sext57 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 965
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = trunc nsw i32 %sext58 to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 966
  store i8 %i.ay, ptr %i.az, align 2
  %i.ba = trunc nsw i32 %sext59 to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 967
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %i.bd = shufflevector <8 x i32> %i.bc, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.be = shl <8 x i32> %i.bd, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.bg = ashr <8 x i32> %i.be, splat (i32 31)
  %i.bh = trunc nsw <8 x i32> %i.bg to <8 x i8>
  store <8 x i8> %i.bh, ptr %i.bf, align 8
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i64 0, ptr %i.bi, align 8
  %i.bj = zext i32 %i.o to i64
  store i64 %i.bj, ptr %i.q, align 16
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader38, %.preheader, %bb.c
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pcmpistri_xmm(ptr nofree noundef writeonly captures(none) initializes((8, 16), (280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = trunc i32 %3 to i8                       ; 3 uses
  %i.b = tail call fastcc i32 @pcmp_ilen(ptr noundef %2, i8 noundef zeroext %i.a)
  %i.c = tail call fastcc i32 @pcmp_ilen(ptr noundef %1, i8 noundef zeroext %i.a)
  %i.d = tail call fastcc i32 @pcmpxstrx(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %i.a, i32 noundef %i.b, i32 noundef %i.c) ; 3 uses
  %.not = icmp eq i32 %i.d, 0
end_hunk_6
begin_hunk_7_@pcmp_ilen:bb.a
  br i1 %.not11.5, label %.critedge, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ac = load i8, ptr %i.ab, align 1
  %.not11.6 = icmp eq i8 %i.ac, 0
  br i1 %.not11.6, label %.critedge, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ae = load i8, ptr %i.ad, align 1
  %.not11.7 = icmp eq i8 %i.ae, 0
  br i1 %.not11.7, label %.critedge, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i8, ptr %i.af, align 1
  %.not11.8 = icmp eq i8 %i.ag, 0
  br i1 %.not11.8, label %.critedge, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ai = load i8, ptr %i.ah, align 1
  %.not11.9 = icmp eq i8 %i.ai, 0
  br i1 %.not11.9, label %.critedge, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ak = load i8, ptr %i.aj, align 1
  %.not11.10 = icmp eq i8 %i.ak, 0
  br i1 %.not11.10, label %.critedge, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.am = load i8, ptr %i.al, align 1
  %.not11.11 = icmp eq i8 %i.am, 0
  br i1 %.not11.11, label %.critedge, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ao = load i8, ptr %i.an, align 1
  %.not11.12 = icmp eq i8 %i.ao, 0
  br i1 %.not11.12, label %.critedge, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.aq = load i8, ptr %i.ap, align 1
  %.not11.13 = icmp eq i8 %i.aq, 0
  br i1 %.not11.13, label %.critedge, label %.preheader.14

.preheader.14:                                    ; preds = %.preheader.13
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.as = load i8, ptr %i.ar, align 1
  %.not11.14 = icmp eq i8 %i.as, 0
  br i1 %.not11.14, label %.critedge, label %.preheader.15

.preheader.15:                                    ; preds = %.preheader.14
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.au = load i8, ptr %i.at, align 1
  %.not11.15 = icmp eq i8 %i.au, 0
  %spec.select21 = select i1 %.not11.15, i32 15, i32 16
  br label %.critedge

.critedge:                                        ; preds = %.preheader.15, %.preheader13.7, %.preheader13.preheader, %.preheader13.1, %.preheader13.2, %.preheader13.3, %.preheader13.4, %.preheader13.5, %.preheader13.6, %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %.preheader.10, %.preheader.11, %.preheader.12, %.preheader.13, %.preheader.14
  %.2 = phi i32 [ 8, %.preheader.8 ], [ 6, %.preheader13.6 ], [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ %spec.select21, %.preheader.15 ], [ 2, %.preheader.2 ], [ 10, %.preheader.10 ], [ 3, %.preheader.3 ], [ 14, %.preheader.14 ], [ 4, %.preheader.4 ], [ 9, %.preheader.9 ], [ 5, %.preheader.5 ], [ 13, %.preheader.13 ], [ 6, %.preheader.6 ], [ 11, %.preheader.11 ], [ 7, %.preheader.7 ], [ 12, %.preheader.12 ], [ 0, %.preheader13.preheader ], [ 4, %.preheader13.4 ], [ 1, %.preheader13.1 ], [ %spec.select, %.preheader13.7 ], [ 2, %.preheader13.2 ], [ 5, %.preheader13.5 ], [ 3, %.preheader13.3 ]
  ret i32 %.2
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pcmpistrm_xmm(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300), (960, 976)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = trunc i32 %3 to i8                       ; 3 uses
  %i.b = tail call fastcc i32 @pcmp_ilen(ptr noundef %2, i8 noundef zeroext %i.a)
  %i.c = tail call fastcc i32 @pcmp_ilen(ptr noundef %1, i8 noundef zeroext %i.a)
  %i.d = tail call fastcc i32 @pcmpxstrx(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %i.a, i32 noundef %i.b, i32 noundef %i.c) ; 10 uses
  %i.e = and i32 %3, 64
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %3, 1
  %.not26 = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %.not27 = trunc i32 %i.d to i1                  ; 2 uses
  %i.h = shl i32 %i.d, 30
  %sext44 = ashr i32 %i.h, 31                     ; 2 uses
  %i.i = shl i32 %i.d, 29
  %sext45 = ashr i32 %i.i, 31                     ; 2 uses
  %i.j = shl i32 %i.d, 28
  %sext46 = ashr i32 %i.j, 31                     ; 2 uses
  %i.k = shl i32 %i.d, 27
  %sext47 = ashr i32 %i.k, 31                     ; 2 uses
  %i.l = shl i32 %i.d, 26
  %sext48 = ashr i32 %i.l, 31                     ; 2 uses
  %i.m = shl i32 %i.d, 25
  %sext49 = ashr i32 %i.m, 31                     ; 2 uses
  %i.n = shl i32 %i.d, 24
  %sext50 = ashr i32 %i.n, 31                     ; 2 uses
  br i1 %.not26, label %.preheader, label %.preheader29

.preheader29:                                     ; preds = %bb.b
  %i.o = sext i1 %.not27 to i16
  store i16 %i.o, ptr %i.g, align 2
  %i.p = trunc nsw i32 %sext44 to i16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 962
  store i16 %i.p, ptr %i.q, align 2
  %i.r = trunc nsw i32 %sext45 to i16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 964
  store i16 %i.r, ptr %i.s, align 2
  %i.t = trunc nsw i32 %sext46 to i16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 966
  store i16 %i.t, ptr %i.u, align 2
  %i.v = trunc nsw i32 %sext47 to i16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i16 %i.v, ptr %i.w, align 2
  %i.x = trunc nsw i32 %sext48 to i16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 970
  store i16 %i.x, ptr %i.y, align 2
  %i.z = trunc nsw i32 %sext49 to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = trunc nsw i32 %sext50 to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 974
  store i16 %i.ab, ptr %i.ac, align 2
  br label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.ad = sext i1 %.not27 to i8
  store i8 %i.ad, ptr %i.g, align 1
  %i.ae = trunc nsw i32 %sext44 to i8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 961
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = trunc nsw i32 %sext45 to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 962
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = trunc nsw i32 %sext46 to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 963
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = trunc nsw i32 %sext47 to i8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 964
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = trunc nsw i32 %sext48 to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 965
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = trunc nsw i32 %sext49 to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 966
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = trunc nsw i32 %sext50 to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 967
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %i.at = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.au = shl <8 x i32> %i.at, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.aw = ashr <8 x i32> %i.au, splat (i32 31)
  %i.ax = trunc nsw <8 x i32> %i.aw to <8 x i8>
  store <8 x i8> %i.ax, ptr %i.av, align 1
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i64 0, ptr %i.az, align 8
  %i.ba = zext i32 %i.d to i64
  store i64 %i.ba, ptr %i.ay, align 16
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader29, %.preheader, %bb.c
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(none) uwtable
define dso_local i64 @helper_crc32(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #19 {
bb.a:
  %i.a = sub i32 64, %2
  %i.b = zext nneg i32 %i.a to i64
  %i.c = lshr i64 -1, %i.b
  %i.d = and i64 %i.c, %1
  %i.e = zext i32 %0 to i64
  %i.f = xor i64 %i.d, %i.e                       ; 3 uses
  %.not9 = icmp eq i32 %2, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.011.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.0710.prol = phi i32 [ %i.g, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.g = add i32 %.0710.prol, -1                  ; 2 uses
  %i.h = lshr i64 %.011.prol, 1
  %i.i = and i64 %.011.prol, 1
  %.not8.prol = icmp eq i64 %i.i, 0
  %i.j = select i1 %.not8.prol, i64 0, i64 2197175160
  %i.k = xor i64 %i.j, %i.h                       ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !61

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %.011.unr = phi i64 [ %i.f, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %.0710.unr = phi i32 [ %2, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %i.l = icmp ult i32 %2, 4
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.011 = phi i64 [ %i.ac, %.lr.ph ], [ %.011.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0710 = phi i32 [ %i.y, %.lr.ph ], [ %.0710.unr, %.lr.ph.prol.loopexit ]
  %i.m = lshr i64 %.011, 1
  %i.n = and i64 %.011, 1
  %.not8 = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not8, i64 0, i64 2197175160
  %i.p = xor i64 %i.o, %i.m
  %i.q = lshr i64 %i.p, 1
  %i.r = and i64 %.011, 2
  %.not8.1 = icmp eq i64 %i.r, 0
  %i.s = select i1 %.not8.1, i64 0, i64 2197175160
  %i.t = xor i64 %i.s, %i.q
  %i.u = lshr i64 %i.t, 1
  %i.v = and i64 %.011, 4
  %.not8.2 = icmp eq i64 %i.v, 0
  %i.w = select i1 %.not8.2, i64 0, i64 2197175160
  %i.x = xor i64 %i.w, %i.u
  %i.y = add i32 %.0710, -4                       ; 2 uses
  %i.z = lshr i64 %i.x, 1
  %i.aa = and i64 %.011, 8
  %.not8.3 = icmp eq i64 %i.aa, 0
  %i.ab = select i1 %.not8.3, i64 0, i64 2197175160
  %i.ac = xor i64 %i.ab, %i.z                     ; 2 uses
  %.not.3 = icmp eq i32 %i.y, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %i.f, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ac, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_pclmulqdq_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 1
  %i.b = lshr i32 %4, 4
  %.lobit = and i32 %i.b, 1
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.e = zext nneg i32 %.lobit to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.e
  %i.g = load i64, ptr %i.d, align 8              ; 2 uses
  %i.h = load i64, ptr %i.f, align 8              ; 2 uses
  %i.i = load i32, ptr @cpuinfo, align 4
  %i.j = and i32 %i.i, 524288
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.k = tail call fastcc i128 @clmul_64_accel(i64 noundef %i.g, i64 noundef %i.h)
  br label %clmul_64.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i128 @clmul_64_gen(i64 noundef %i.g, i64 noundef %i.h) #26
  br label %clmul_64.exit

clmul_64.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi i128 [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  store i128 %.0.i, ptr %1, align 16
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesdec_xmm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesdec_ISB_ISR_IMC_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesdec_ISB_ISR_IMC_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesdec_ISB_ISR_IMC_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesdec_ISB_ISR_IMC_AK.exit

aesdec_ISB_ISR_IMC_AK.exit:                       ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesdeclast_xmm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesdec_ISB_ISR_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesdec_ISB_ISR_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesdec_ISB_ISR_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesdec_ISB_ISR_AK.exit

aesdec_ISB_ISR_AK.exit:                           ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesenc_xmm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesenc_SB_SR_MC_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesenc_SB_SR_MC_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesenc_SB_SR_MC_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesenc_SB_SR_MC_AK.exit

aesenc_SB_SR_MC_AK.exit:                          ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesenclast_xmm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesenc_SB_SR_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesenc_SB_SR_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesenc_SB_SR_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesenc_SB_SR_AK.exit

aesenc_SB_SR_AK.exit:                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesimc_xmm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  tail call fastcc void @aesdec_IMC_accel(ptr noundef %1, <2 x i64> %.val.i)
  br label %aesdec_IMC.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesdec_IMC_gen(ptr noundef %1, ptr noundef %2) #26
  br label %aesdec_IMC.exit

aesdec_IMC.exit:                                  ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_aeskeygenassist_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 5
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 7
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.818.0.copyload = load i8, ptr %.sroa.818.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 13
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 14
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 15
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1
  %i.a = zext i8 %.sroa.4.0.copyload to i64
  %i.b = getelementptr inbounds nuw i8, ptr @AES_sbox, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  store i8 %i.c, ptr %1, align 1
  %i.d = zext i8 %.sroa.818.0.copyload to i64
  %i.e = getelementptr inbounds nuw i8, ptr @AES_sbox, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 %i.f, ptr %i.g, align 1
  %i.h = zext i8 %.sroa.5.0.copyload to i64
  %i.i = getelementptr inbounds nuw i8, ptr @AES_sbox, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.j, ptr %i.k, align 1
  %i.l = zext i8 %.sroa.9.0.copyload to i64
  %i.m = getelementptr inbounds nuw i8, ptr @AES_sbox, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.n, ptr %i.o, align 1
  %i.p = zext i8 %.sroa.6.0.copyload to i64
  %i.q = getelementptr inbounds nuw i8, ptr @AES_sbox, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.r, ptr %i.s, align 1
  %i.t = zext i8 %.sroa.10.0.copyload to i64
  %i.u = getelementptr inbounds nuw i8, ptr @AES_sbox, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.v, ptr %i.w, align 1
  %i.x = zext i8 %.sroa.7.0.copyload to i64
  %i.y = getelementptr inbounds nuw i8, ptr @AES_sbox, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = zext i8 %.sroa.11.0.copyload to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @AES_sbox, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = load i32, ptr %1, align 8               ; 2 uses
  %i.ag = tail call i32 @llvm.fshl.i32(i32 %i.af, i32 %i.af, i32 24)
  %i.ah = xor i32 %i.ag, %3
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = load i32, ptr %i.g, align 8             ; 2 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 24)
  %i.al = xor i32 %i.ak, %3
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.al, ptr %i.am, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpermilpd_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %3, align 8
  %i.d = lshr i64 %i.c, 1
  %i.e = and i64 %i.d, 1
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8
  %i.h = load i64, ptr %i.a, align 8
  %i.i = lshr i64 %i.h, 1
  %i.j = and i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  store i64 %i.g, ptr %1, align 8
  store i64 %i.l, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpermilps_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %3, align 4
  %i.h = and i32 %i.g, 3
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = load i32, ptr %i.a, align 4
  %i.m = and i32 %i.l, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = load i32, ptr %i.b, align 4
  %i.r = and i32 %i.q, 3
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4
  %i.v = load i32, ptr %i.c, align 4
  %i.w = and i32 %i.v, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  store i32 %i.k, ptr %1, align 4
  store i32 %i.p, ptr %i.d, align 4
  store i32 %i.u, ptr %i.e, align 4
  store i32 %i.z, ptr %i.f, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpermilpd_imm_xmm(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = and i32 %2, 1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i32 %2, 1
  %i.g = and i32 %i.f, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  store i64 %i.e, ptr %0, align 8
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpermilps_imm_xmm(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = and i32 %2, 3
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b
  %i.d = lshr i32 %2, 2
  %i.e = and i32 %i.d, 3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f
  %i.h = lshr i32 %2, 4
  %i.i = and i32 %i.h, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.l = lshr i32 %2, 6
  %i.m = and i32 %i.l, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.c, align 4
  %i.t = load i32, ptr %i.g, align 4
  %i.u = load i32, ptr %i.k, align 4
  %i.v = load i32, ptr %i.o, align 4
  store i32 %i.s, ptr %0, align 4
  store i32 %i.t, ptr %i.p, align 4
  store i32 %i.u, ptr %i.q, align 4
  store i32 %i.v, ptr %i.r, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpsrlvd_xmm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %3, align 4                ; 2 uses
  %i.b = icmp ult i32 %i.a, 32
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4
end_hunk_7
begin_hunk_8_@helper_sha1msg2:bb.a
  %i.s = tail call noundef i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.s, ptr %i.t, align 4
  %i.u = load i32, ptr %1, align 8
  %i.v = xor i32 %i.u, %i.f                       ; 2 uses
  %i.w = tail call noundef i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 1)
  store i32 %i.w, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_sha256rnds2(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 9 uses
  %i.k = load i32, ptr %2, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = load i32, ptr %1, align 8
  %i.o = and i32 %i.k, %i.j
  %i.p = xor i32 %i.j, -1
  %i.q = and i32 %i.m, %i.p
  %i.r = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.j, i32 26)
  %i.s = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.j, i32 21)
  %i.t = xor i32 %i.r, %i.s
  %i.u = tail call i32 @llvm.fshl.i32(i32 %i.j, i32 %i.j, i32 7)
  %i.v = xor i32 %i.t, %i.u
  %i.w = add i32 %i.o, %3
  %i.x = add i32 %i.w, %i.q
  %i.y = add i32 %i.x, %i.v
  %i.z = add i32 %i.y, %i.n                       ; 2 uses
  %i.aa = and i32 %i.d, %i.b
  %i.ab = xor i32 %i.f, %i.d
  %i.ac = and i32 %i.ab, %i.b
  %i.ad = and i32 %i.f, %i.d
  %i.ae = xor i32 %i.ac, %i.ad
  %i.af = tail call i32 @llvm.fshl.i32(i32 %i.b, i32 %i.b, i32 30)
  %i.ag = tail call i32 @llvm.fshl.i32(i32 %i.b, i32 %i.b, i32 19)
  %i.ah = xor i32 %i.af, %i.ag
  %i.ai = tail call i32 @llvm.fshl.i32(i32 %i.b, i32 %i.b, i32 10)
  %i.aj = xor i32 %i.ah, %i.ai
  %i.ak = add i32 %i.ae, %i.aj
  %i.al = add i32 %i.ak, %i.z                     ; 8 uses
  %i.am = add i32 %i.z, %i.h                      ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.al, ptr %i.an, align 8
  store i32 %i.am, ptr %0, align 8
  %i.ao = and i32 %i.am, %i.j
  %i.ap = xor i32 %i.am, -1
  %i.aq = and i32 %i.k, %i.ap
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 26)
  %i.as = tail call i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 21)
  %i.at = xor i32 %i.ar, %i.as
  %i.au = tail call i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 7)
  %i.av = xor i32 %i.at, %i.au
  %i.aw = add i32 %i.m, %4
  %i.ax = add i32 %i.aw, %i.aq
  %i.ay = add i32 %i.ax, %i.ao
  %i.az = add i32 %i.ay, %i.av                    ; 2 uses
  %i.ba = xor i32 %i.d, %i.b
  %i.bb = and i32 %i.al, %i.ba
  %i.bc = xor i32 %i.bb, %i.aa
  %i.bd = tail call i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 30)
  %i.be = tail call i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 19)
  %i.bf = xor i32 %i.bd, %i.be
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 10)
  %i.bh = xor i32 %i.bf, %i.bg
  %i.bi = add i32 %i.bh, %i.bc
  %i.bj = add i32 %i.bi, %i.az
  %i.bk = add i32 %i.az, %i.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bj, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bk, ptr %i.bm, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_sha256msg1(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %2, align 8                ; 5 uses
  %i.b = load i32, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 5 uses
  %i.e = tail call i32 @llvm.fshl.i32(i32 %i.d, i32 %i.d, i32 25)
  %i.f = tail call i32 @llvm.fshl.i32(i32 %i.d, i32 %i.d, i32 14)
  %i.g = xor i32 %i.e, %i.f
  %i.h = lshr i32 %i.d, 3
  %i.i = xor i32 %i.g, %i.h
  %i.j = add i32 %i.i, %i.b
  store i32 %i.j, ptr %0, align 8
  %i.k = load i32, ptr %i.c, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8              ; 5 uses
  %i.n = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %i.m, i32 25)
  %i.o = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %i.m, i32 14)
  %i.p = xor i32 %i.n, %i.o
  %i.q = lshr i32 %i.m, 3
  %i.r = xor i32 %i.p, %i.q
  %i.s = add i32 %i.r, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.s, ptr %i.t, align 4
  %i.u = load i32, ptr %i.l, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4              ; 5 uses
  %i.x = tail call i32 @llvm.fshl.i32(i32 %i.w, i32 %i.w, i32 25)
  %i.y = tail call i32 @llvm.fshl.i32(i32 %i.w, i32 %i.w, i32 14)
  %i.z = xor i32 %i.x, %i.y
  %i.aa = lshr i32 %i.w, 3
  %i.ab = xor i32 %i.z, %i.aa
  %i.ac = add i32 %i.ab, %i.u
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ac, ptr %i.ad, align 8
  %i.ae = load i32, ptr %i.v, align 4
  %i.af = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 25)
  %i.ag = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 14)
  %i.ah = xor i32 %i.af, %i.ag
  %i.ai = lshr i32 %i.a, 3
  %i.aj = xor i32 %i.ah, %i.ai
  %i.ak = add i32 %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ak, ptr %i.al, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_sha256msg2(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  %i.d = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 15)
  %i.e = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 13)
  %i.f = xor i32 %i.d, %i.e
  %i.g = lshr i32 %i.c, 10
  %i.h = xor i32 %i.f, %i.g
  %i.i = add i32 %i.h, %i.a                       ; 6 uses
  store i32 %i.i, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4              ; 5 uses
  %i.n = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %i.m, i32 15)
  %i.o = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %i.m, i32 13)
  %i.p = xor i32 %i.n, %i.o
  %i.q = lshr i32 %i.m, 10
  %i.r = xor i32 %i.p, %i.q
  %i.s = add i32 %i.r, %i.k                       ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = tail call i32 @llvm.fshl.i32(i32 %i.i, i32 %i.i, i32 15)
  %i.x = tail call i32 @llvm.fshl.i32(i32 %i.i, i32 %i.i, i32 13)
  %i.y = xor i32 %i.w, %i.x
  %i.z = lshr i32 %i.i, 10
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = add i32 %i.aa, %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = tail call i32 @llvm.fshl.i32(i32 %i.s, i32 %i.s, i32 15)
  %i.ag = tail call i32 @llvm.fshl.i32(i32 %i.s, i32 %i.s, i32 13)
  %i.ah = xor i32 %i.af, %i.ag
  %i.ai = lshr i32 %i.s, 10
  %i.aj = xor i32 %i.ah, %i.ai
  %i.ak = add i32 %i.aj, %i.ae
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ak, ptr %i.al, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psrlw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 3 uses
  %i.b = icmp ugt i64 %i.a, 15
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = add i64 %i.c, 32
  %i.f = add i64 %i.d, 32
  %rt.bound0 = icmp ugt i64 %i.e, %i.d
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.loopexit.loopexit16.rtscalar, label %.loopexit.loopexit16.rtvec

.loopexit:                                        ; preds = %.loopexit.loopexit16.rtvec, %.loopexit.loopexit16.rtscalar, %.preheader.preheader
  ret void

.loopexit.loopexit16.rtvec:                       ; preds = %.loopexit.loopexit16
  %i.g = trunc nuw nsw i64 %i.a to i32
  %i.h = load <8 x i16>, ptr %2, align 2
  %i.i = zext <8 x i16> %i.h to <8 x i32>
  %i.j = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %i.k = shufflevector <8 x i32> %i.j, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.l = lshr <8 x i32> %i.i, %i.k
  %i.m = trunc nuw <8 x i32> %i.l to <8 x i16>
  store <8 x i16> %i.m, ptr %1, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <8 x i16>, ptr %i.n, align 2
  %i.q = zext <8 x i16> %i.p to <8 x i32>
  %i.r = lshr <8 x i32> %i.q, %i.k
  %i.s = trunc nuw <8 x i32> %i.r to <8 x i16>
  store <8 x i16> %i.s, ptr %i.o, align 2
  br label %.loopexit

.loopexit.loopexit16.rtscalar:                    ; preds = %.loopexit.loopexit16
  %i.t = trunc nuw nsw i64 %i.a to i32            ; 16 uses
  %i.u = load i16, ptr %2, align 2
  %i.v = zext i16 %i.u to i32
  %i.w = lshr i32 %i.v, %i.t
  %i.x = trunc nuw i32 %i.w to i16
  store i16 %i.x, ptr %1, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = lshr i32 %i.aa, %i.t
  %i.ac = trunc nuw i32 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  %i.ah = lshr i32 %i.ag, %i.t
  %i.ai = trunc nuw i32 %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.ai, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = zext i16 %i.al to i32
  %i.an = lshr i32 %i.am, %i.t
  %i.ao = trunc nuw i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = zext i16 %i.ar to i32
  %i.at = lshr i32 %i.as, %i.t
  %i.au = trunc nuw i32 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = zext i16 %i.ax to i32
  %i.az = lshr i32 %i.ay, %i.t
  %i.ba = trunc nuw i32 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = zext i16 %i.bd to i32
  %i.bf = lshr i32 %i.be, %i.t
  %i.bg = trunc nuw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = lshr i32 %i.bk, %i.t
  %i.bm = trunc nuw i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = zext i16 %i.bp to i32
  %i.br = lshr i32 %i.bq, %i.t
  %i.bs = trunc nuw i32 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = zext i16 %i.bv to i32
  %i.bx = lshr i32 %i.bw, %i.t
  %i.by = trunc nuw i32 %i.bx to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.by, ptr %i.bz, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = zext i16 %i.cb to i32
  %i.cd = lshr i32 %i.cc, %i.t
  %i.ce = trunc nuw i32 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.ce, ptr %i.cf, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = zext i16 %i.ch to i32
  %i.cj = lshr i32 %i.ci, %i.t
  %i.ck = trunc nuw i32 %i.cj to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ck, ptr %i.cl, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = zext i16 %i.cn to i32
  %i.cp = lshr i32 %i.co, %i.t
  %i.cq = trunc nuw i32 %i.cp to i16
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.cq, ptr %i.cr, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = zext i16 %i.ct to i32
  %i.cv = lshr i32 %i.cu, %i.t
  %i.cw = trunc nuw i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.cw, ptr %i.cx, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = zext i16 %i.cz to i32
  %i.db = lshr i32 %i.da, %i.t
  %i.dc = trunc nuw i32 %i.db to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %i.dc, ptr %i.dd, align 2
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.df = load i16, ptr %i.de, align 2
  %i.dg = zext i16 %i.df to i32
  %i.dh = lshr i32 %i.dg, %i.t
  %i.di = trunc nuw i32 %i.dh to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.di, ptr %i.dj, align 2
  br label %.loopexit
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psllw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 3 uses
  %i.b = icmp ugt i64 %i.a, 15
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = add i64 %i.c, 32
  %i.f = add i64 %i.d, 32
  %rt.bound0 = icmp ugt i64 %i.e, %i.d
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.loopexit.loopexit16.rtscalar, label %.loopexit.loopexit16.rtvec

.loopexit:                                        ; preds = %.loopexit.loopexit16.rtvec, %.loopexit.loopexit16.rtscalar, %.preheader.preheader
  ret void

.loopexit.loopexit16.rtvec:                       ; preds = %.loopexit.loopexit16
  %i.g = trunc nuw nsw i64 %i.a to i32
  %i.h = load <8 x i16>, ptr %2, align 2
  %i.i = zext <8 x i16> %i.h to <8 x i32>
  %i.j = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %i.k = shufflevector <8 x i32> %i.j, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.l = shl nuw nsw <8 x i32> %i.i, %i.k
  %i.m = trunc <8 x i32> %i.l to <8 x i16>
  store <8 x i16> %i.m, ptr %1, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <8 x i16>, ptr %i.n, align 2
  %i.q = zext <8 x i16> %i.p to <8 x i32>
  %i.r = shl nuw nsw <8 x i32> %i.q, %i.k
  %i.s = trunc <8 x i32> %i.r to <8 x i16>
  store <8 x i16> %i.s, ptr %i.o, align 2
  br label %.loopexit

.loopexit.loopexit16.rtscalar:                    ; preds = %.loopexit.loopexit16
  %i.t = trunc nuw nsw i64 %i.a to i32            ; 16 uses
  %i.u = load i16, ptr %2, align 2
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, %i.t
  %i.x = trunc i32 %i.w to i16
  store i16 %i.x, ptr %1, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, %i.t
  %i.ac = trunc i32 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, %i.t
  %i.ai = trunc i32 %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.ai, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = zext i16 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, %i.t
  %i.ao = trunc i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = zext i16 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, %i.t
  %i.au = trunc i32 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = zext i16 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, %i.t
  %i.ba = trunc i32 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = zext i16 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, %i.t
  %i.bg = trunc i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, %i.t
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = zext i16 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, %i.t
  %i.bs = trunc i32 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = zext i16 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, %i.t
  %i.by = trunc i32 %i.bx to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.by, ptr %i.bz, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = zext i16 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, %i.t
  %i.ce = trunc i32 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.ce, ptr %i.cf, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = zext i16 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, %i.t
  %i.ck = trunc i32 %i.cj to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ck, ptr %i.cl, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = zext i16 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, %i.t
  %i.cq = trunc i32 %i.cp to i16
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.cq, ptr %i.cr, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = zext i16 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, %i.t
  %i.cw = trunc i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.cw, ptr %i.cx, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = zext i16 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, %i.t
  %i.dc = trunc i32 %i.db to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %i.dc, ptr %i.dd, align 2
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.df = load i16, ptr %i.de, align 2
  %i.dg = zext i16 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, %i.t
  %i.di = trunc i32 %i.dh to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.di, ptr %i.dj, align 2
  br label %.loopexit
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psraw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 32
  %i.d = add i64 %i.a, 32
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8
  %spec.select11 = tail call i64 @llvm.umin.i64(i64 %i.e, i64 15) ; 2 uses
  %i.f = load <8 x i16>, ptr %2, align 2
  %i.g = trunc nuw nsw i64 %spec.select11 to i16
  %i.h = insertelement <8 x i16> poison, i16 %i.g, i64 0
  %i.i = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.j = ashr <8 x i16> %i.f, %i.i
  store <8 x i16> %i.j, ptr %1, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load <8 x i16>, ptr %i.k, align 2
  %i.n = trunc nuw nsw i64 %spec.select11 to i16
  %i.o = insertelement <8 x i16> poison, i16 %i.n, i64 0
  %i.p = shufflevector <8 x i16> %i.o, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.q = ashr <8 x i16> %i.m, %i.p
  store <8 x i16> %i.q, ptr %i.l, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.r = load i64, ptr %3, align 8
  %spec.select11.scalar = tail call i64 @llvm.umin.i64(i64 %i.r, i64 15)
  %spec.select.scalar = trunc nuw nsw i64 %spec.select11.scalar to i32 ; 16 uses
  %i.s = load i16, ptr %2, align 2
  %i.t = sext i16 %i.s to i32
  %i.u = ashr i32 %i.t, %spec.select.scalar
  %i.v = trunc nsw i32 %i.u to i16
  store i16 %i.v, ptr %1, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.x = load i16, ptr %i.w, align 2
  %i.y = sext i16 %i.x to i32
  %i.z = ashr i32 %i.y, %spec.select.scalar
  %i.aa = trunc nsw i32 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = sext i16 %i.ad to i32
  %i.af = ashr i32 %i.ae, %spec.select.scalar
  %i.ag = trunc nsw i32 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.ag, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = sext i16 %i.aj to i32
  %i.al = ashr i32 %i.ak, %spec.select.scalar
  %i.am = trunc nsw i32 %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = sext i16 %i.ap to i32
  %i.ar = ashr i32 %i.aq, %spec.select.scalar
  %i.as = trunc nsw i32 %i.ar to i16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.as, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = sext i16 %i.av to i32
  %i.ax = ashr i32 %i.aw, %spec.select.scalar
  %i.ay = trunc nsw i32 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = sext i16 %i.bb to i32
  %i.bd = ashr i32 %i.bc, %spec.select.scalar
  %i.be = trunc nsw i32 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = sext i16 %i.bh to i32
  %i.bj = ashr i32 %i.bi, %spec.select.scalar
  %i.bk = trunc nsw i32 %i.bj to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.bk, ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = sext i16 %i.bn to i32
  %i.bp = ashr i32 %i.bo, %spec.select.scalar
  %i.bq = trunc nsw i32 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.bq, ptr %i.br, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = sext i16 %i.bt to i32
  %i.bv = ashr i32 %i.bu, %spec.select.scalar
  %i.bw = trunc nsw i32 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.bw, ptr %i.bx, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = sext i16 %i.bz to i32
  %i.cb = ashr i32 %i.ca, %spec.select.scalar
  %i.cc = trunc nsw i32 %i.cb to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.cc, ptr %i.cd, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.cf = load i16, ptr %i.ce, align 2
  %i.cg = sext i16 %i.cf to i32
  %i.ch = ashr i32 %i.cg, %spec.select.scalar
  %i.ci = trunc nsw i32 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ci, ptr %i.cj, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = sext i16 %i.cl to i32
  %i.cn = ashr i32 %i.cm, %spec.select.scalar
  %i.co = trunc nsw i32 %i.cn to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.co, ptr %i.cp, align 2
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = sext i16 %i.cr to i32
  %i.ct = ashr i32 %i.cs, %spec.select.scalar
  %i.cu = trunc nsw i32 %i.ct to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.cu, ptr %i.cv, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = sext i16 %i.cx to i32
  %i.cz = ashr i32 %i.cy, %spec.select.scalar
  %i.da = trunc nsw i32 %i.cz to i16
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %i.da, ptr %i.db, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = sext i16 %i.dd to i32
  %i.df = ashr i32 %i.de, %spec.select.scalar
  %i.dg = trunc nsw i32 %i.df to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.dg, ptr %i.dh, align 2
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psrld_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 2 uses
  %i.b = icmp ugt i64 %i.a, 31
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %i.a to i32            ; 8 uses
  %i.d = load i32, ptr %2, align 4
  %i.e = lshr i32 %i.d, %i.c
  store i32 %i.e, ptr %1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = lshr i32 %i.g, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = lshr i32 %i.k, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = lshr i32 %i.o, %i.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i32, ptr %i.r, align 4
  %i.t = lshr i32 %i.s, %i.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = lshr i32 %i.w, %i.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = lshr i32 %i.aa, %i.c
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = lshr i32 %i.ae, %i.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.af, ptr %i.ag, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pslld_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
end_hunk_8
begin_hunk_9_@helper_pslld_ymm:bb.a
  %i.w = load i32, ptr %i.v, align 4
  %i.x = shl i32 %i.w, %i.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = shl i32 %i.aa, %i.c
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = shl i32 %i.ae, %i.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.af, ptr %i.ag, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psrad_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8
  %spec.select11 = tail call i64 @llvm.umin.i64(i64 %i.a, i64 31)
  %spec.select = trunc nuw nsw i64 %spec.select11 to i32 ; 8 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = ashr i32 %i.b, %spec.select
  store i32 %i.c, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = ashr i32 %i.e, %spec.select
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = ashr i32 %i.i, %spec.select
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = ashr i32 %i.m, %spec.select
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i32, ptr %i.p, align 4
  %i.r = ashr i32 %i.q, %spec.select
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = ashr i32 %i.u, %spec.select
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.v, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load i32, ptr %i.x, align 4
  %i.z = ashr i32 %i.y, %spec.select
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = ashr i32 %i.ac, %spec.select
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.ad, ptr %i.ae, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psrlq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 5 uses
  %i.b = icmp ugt i64 %i.a, 63
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = lshr i64 %i.c, %i.a
  store i64 %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = lshr i64 %i.f, %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, %i.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = lshr i64 %i.n, %i.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.o, ptr %i.p, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psllq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 5 uses
  %i.b = icmp ugt i64 %i.a, 63
  br i1 %i.b, label %.preheader.preheader, label %.loopexit.loopexit16

.preheader.preheader:                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  br label %.loopexit

.loopexit.loopexit16:                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8
  %i.d = shl i64 %i.c, %i.a
  store i64 %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = shl i64 %i.f, %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = shl i64 %i.j, %i.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = shl i64 %i.n, %i.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.o, ptr %i.p, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit16, %.preheader.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_psrldq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = load i32, ptr %3, align 8                ; 3 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16) ; 30 uses
  %i.d = sub i32 16, %spec.store.select           ; 8 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.split.us, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = sext i32 %i.d to i64                     ; 7 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.f
  %i.g = add i32 %spec.store.select, -1
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.i, i1 false)
  %i.j = sub i32 17, %spec.store.select
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i64 17, %i.k                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.l, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.m = sub i32 17, %spec.store.select
  %i.n = zext i32 %i.m to i64
  %i.o = sub nsw i64 16, %i.n                     ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = add i32 %spec.store.select, -18
  %i.r = icmp ult i32 %i.q, %i.p
  %i.s = sub i32 32, %spec.store.select           ; 2 uses
  %i.t = add i32 %i.s, %i.p
  %i.u = icmp slt i32 %i.t, %i.s
  %i.v = icmp ugt i64 %i.o, 4294967295
  %i.w = or i1 %i.u, %i.v
  %i.x = or i1 %i.r, %i.w
  br i1 %i.x, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check62 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check62, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %i.l, 24
  %n.vec = and i64 %i.l, -32                      ; 4 uses
  %i.z = add nsw i64 %n.vec, %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = add i64 %index, %i.f
  %i.ab = shl i64 %i.aa, 32
  %i.ac = add i64 %i.ab, 68719476736
  %i.ad = ashr exact i64 %i.ac, 32
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <16 x i8> zeroinitializer, ptr %i.ae, align 1
  store <16 x i8> zeroinitializer, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.split27.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec63 = and i64 %i.l, -8                     ; 3 uses
  %i.ah = add nsw i64 %n.vec63, %i.f
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index64 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 2 uses
  %i.ai = add i64 %index64, %i.f
  %i.aj = shl i64 %i.ai, 32
  %i.ak = add i64 %i.aj, 68719476736
  %i.al = ashr exact i64 %i.ak, 32
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  store <8 x i8> zeroinitializer, ptr %i.am, align 1
  %index.next65 = add nuw i64 %index64, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next65, %n.vec63
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !64

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %i.l, %n.vec63
  br i1 %cmp.n66, label %.split27.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.1.ph = phi i64 [ %i.f, %iter.check ], [ %i.f, %vector.scevcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.split.us:                                        ; preds = %bb.a
  %i.ao = icmp samesign ult i32 %i.d, 16
  %i.ap = zext nneg i32 %i.d to i64               ; 30 uses
  br i1 %i.ao, label %.preheader21.us.us.preheader, label %vector.scevcheck68

vector.scevcheck68:                               ; preds = %.split.us
  %i.aq = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.ar = trunc nsw i64 %i.aq to i32
  %i.as = add i32 %spec.store.select, %i.ar
  %i.at = icmp slt i32 %i.as, %spec.store.select
  %i.au = icmp ugt i64 %i.aq, 4294967295
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %.preheader21.us.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck68
  %i.aw = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16)
  %smin = sext i32 %i.aw to i64
  %i.ax = add i64 %i.a, %smin
  %i.ay = sub i64 %i.ax, %i.b
  %diff.check = icmp ugt i64 %i.ay, -32
  br i1 %diff.check, label %.preheader21.us.preheader.preheader, label %vector.main.loop.iter.check69

vector.main.loop.iter.check69:                    ; preds = %vector.memcheck
  %min.iters.check70 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check70, label %vec.epilog.ph84, label %vector.ph71

vector.ph71:                                      ; preds = %vector.main.loop.iter.check69
  %i.az = and i64 %i.ap, 28
  %n.vec72 = and i64 %i.ap, 2147483616            ; 4 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next76, %vector.body73 ] ; 3 uses
  %i.ba = trunc nuw i64 %index74 to i32
  %i.bb = add i32 %spec.store.select, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <16 x i8>, ptr %i.bd, align 1
  %wide.load75 = load <16 x i8>, ptr %i.be, align 1
  %i.bf = shl i64 %index74, 32
  %i.bg = ashr exact i64 %i.bf, 32
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <16 x i8> %wide.load, ptr %i.bh, align 1
  store <16 x i8> %wide.load75, ptr %i.bi, align 1
  %index.next76 = add nuw i64 %index74, 32        ; 2 uses
  %i.bj = icmp eq i64 %index.next76, %n.vec72
  br i1 %i.bj, label %middle.block77, label %vector.body73, !llvm.loop !65

middle.block77:                                   ; preds = %vector.body73
  %cmp.n78 = icmp eq i64 %n.vec72, %i.ap
  br i1 %cmp.n78, label %vector.scevcheck92, label %vec.epilog.iter.check82

vec.epilog.iter.check82:                          ; preds = %middle.block77
  %min.epilog.iters.check83 = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check83, label %.preheader21.us.preheader.preheader, label %vec.epilog.ph84, !prof !16

vec.epilog.ph84:                                  ; preds = %vector.main.loop.iter.check69, %vec.epilog.iter.check82
  %vec.epilog.resume.val79 = phi i64 [ %n.vec72, %vec.epilog.iter.check82 ], [ 0, %vector.main.loop.iter.check69 ]
  %n.vec85 = and i64 %i.ap, 2147483644            ; 3 uses
  br label %vec.epilog.vector.body86

vec.epilog.vector.body86:                         ; preds = %vec.epilog.vector.body86, %vec.epilog.ph84
  %index87 = phi i64 [ %vec.epilog.resume.val79, %vec.epilog.ph84 ], [ %index.next89, %vec.epilog.vector.body86 ] ; 3 uses
  %i.bk = trunc nuw i64 %index87 to i32
  %i.bl = add i32 %spec.store.select, %i.bk
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  %wide.load88 = load <4 x i8>, ptr %i.bn, align 1
  %i.bo = shl i64 %index87, 32
  %i.bp = ashr exact i64 %i.bo, 32
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %i.bp
  store <4 x i8> %wide.load88, ptr %i.bq, align 1
  %index.next89 = add nuw i64 %index87, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next89, %n.vec85
  br i1 %i.br, label %vec.epilog.middle.block90, label %vec.epilog.vector.body86, !llvm.loop !66

vec.epilog.middle.block90:                        ; preds = %vec.epilog.vector.body86
  %cmp.n91 = icmp eq i64 %n.vec85, %i.ap
  br i1 %cmp.n91, label %vector.scevcheck92, label %.preheader21.us.preheader.preheader

.preheader21.us.preheader.preheader:              ; preds = %vector.memcheck, %vector.scevcheck68, %vec.epilog.iter.check82, %vec.epilog.middle.block90
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck68 ], [ 0, %vector.memcheck ], [ %n.vec72, %vec.epilog.iter.check82 ], [ %n.vec85, %vec.epilog.middle.block90 ] ; 5 uses
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader21.us.preheader.prol.loopexit, label %.preheader21.us.preheader.prol

.preheader21.us.preheader.prol:                   ; preds = %.preheader21.us.preheader.preheader
  %i.bs = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.bt = add i32 %spec.store.select, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %2, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.ph
  store i8 %i.bw, ptr %i.bx, align 1
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.preheader21.us.preheader.prol.loopexit

.preheader21.us.preheader.prol.loopexit:          ; preds = %.preheader21.us.preheader.prol, %.preheader21.us.preheader.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader21.us.preheader.preheader ], [ %indvars.iv.next.prol, %.preheader21.us.preheader.prol ]
  %i.by = add nsw i64 %i.ap, -1
  %i.bz = icmp eq i64 %indvars.iv.ph, %i.by
  br i1 %i.bz, label %vector.scevcheck92, label %.preheader21.us.preheader

.preheader21.us.us.preheader:                     ; preds = %.split.us
  %i.ca = add nsw i64 %i.ap, -1                   ; 2 uses
  %xtraiter153 = and i64 %i.ap, 1
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.epil.preheader, label %.preheader21.us.us.preheader.new

.preheader21.us.us.preheader.new:                 ; preds = %.preheader21.us.us.preheader
  %unroll_iter = and i64 %i.ap, 14
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader21.us.us.preheader.new
  %indvars.iv38 = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %indvars.iv.next39.1157, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader21.us.us.preheader.new ], [ %niter.next.1, %bb.b ]
  %i.cc = trunc nuw i64 %indvars.iv38 to i32
  %i.cd = add i32 %spec.store.select, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %2, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %sext56 = shl i64 %indvars.iv38, 32
  %i.ch = ashr exact i64 %sext56, 32
  %i.ci = getelementptr inbounds i8, ptr %1, i64 %i.ch
  store i8 %i.cg, ptr %i.ci, align 1
  %indvars.iv.next39 = or disjoint i64 %indvars.iv38, 1 ; 2 uses
  %i.cj = trunc nuw i64 %indvars.iv.next39 to i32
  %i.ck = add i32 %spec.store.select, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %2, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1
  %sext56.1 = shl i64 %indvars.iv.next39, 32
  %i.co = ashr exact i64 %sext56.1, 32
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %i.co
  store i8 %i.cn, ptr %i.cp, align 1
  %indvars.iv.next39.1157 = add nuw nsw i64 %indvars.iv38, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %bb.b, !llvm.loop !67

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %bb.b
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.preheader21.us.us.preheader
  %indvars.iv38.epil.init = phi i64 [ 0, %.preheader21.us.us.preheader ], [ %indvars.iv.next39.1157, %..preheader_crit_edge.us.us.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod155 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %i.cq = trunc nuw i64 %indvars.iv38.epil.init to i32
  %i.cr = add i32 %spec.store.select, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %2, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %sext56.epil = shl i64 %indvars.iv38.epil.init, 32
  %i.cv = ashr exact i64 %sext56.epil, 32
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %i.cv
  store i8 %i.cu, ptr %i.cw, align 1
  br label %..preheader_crit_edge.us.us.preheader

..preheader_crit_edge.us.us.preheader:            ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.epil.preheader
  %scevgep53 = getelementptr i8, ptr %1, i64 %i.ap
  %i.cx = add i32 %spec.store.select, -1
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep53, i8 0, i64 %i.cz, i1 false)
  %xtraiter159 = and i64 %i.ap, 1
  %i.da = icmp eq i64 %i.ca, 0
  br i1 %i.da, label %.epil.preheader158, label %..preheader_crit_edge.us.us.preheader.new

..preheader_crit_edge.us.us.preheader.new:        ; preds = %..preheader_crit_edge.us.us.preheader
  %unroll_iter162 = and i64 %i.ap, 14
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %..preheader_crit_edge.us.us.preheader.new
  %indvars.iv38.1 = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader.new ], [ %indvars.iv.next39.1.1, %bb.c ] ; 3 uses
  %niter163 = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader.new ], [ %niter163.next.1, %bb.c ]
  %i.db = trunc i64 %indvars.iv38.1 to i32
  %i.dc = add i32 %i.db, 16                       ; 2 uses
  %i.dd = add i32 %i.dc, %spec.store.select
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %2, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = sext i32 %i.dc to i64
  %i.di = getelementptr inbounds i8, ptr %1, i64 %i.dh
  store i8 %i.dg, ptr %i.di, align 1
  %i.dj = trunc i64 %indvars.iv38.1 to i32
  %i.dk = add i32 %i.dj, 17                       ; 2 uses
  %i.dl = add i32 %i.dk, %spec.store.select
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %2, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = sext i32 %i.dk to i64
  %i.dq = getelementptr inbounds i8, ptr %1, i64 %i.dp
  store i8 %i.do, ptr %i.dq, align 1
  %indvars.iv.next39.1.1 = add nuw nsw i64 %indvars.iv38.1, 2 ; 2 uses
  %niter163.next.1 = add i64 %niter163, 2         ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %iter.check135.unr-lcssa, label %bb.c, !llvm.loop !67

iter.check135.unr-lcssa:                          ; preds = %bb.c
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %iter.check135, label %.epil.preheader158

.epil.preheader158:                               ; preds = %iter.check135.unr-lcssa, %..preheader_crit_edge.us.us.preheader
  %indvars.iv38.1.epil.init = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader ], [ %indvars.iv.next39.1.1, %iter.check135.unr-lcssa ]
  %lcmp.mod161 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.dr = trunc i64 %indvars.iv38.1.epil.init to i32
  %i.ds = add i32 %i.dr, 16                       ; 2 uses
  %i.dt = add i32 %i.ds, %spec.store.select
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %2, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = sext i32 %i.ds to i64
  %i.dy = getelementptr inbounds i8, ptr %1, i64 %i.dx
  store i8 %i.dw, ptr %i.dy, align 1
  br label %iter.check135

iter.check135:                                    ; preds = %iter.check135.unr-lcssa, %.epil.preheader158
  %i.dz = sub i32 17, %spec.store.select
  %i.ea = zext i32 %i.dz to i64
  %i.eb = sub nsw i64 17, %i.ea                   ; 7 uses
  %min.iters.check123 = icmp ult i64 %i.eb, 8
  br i1 %min.iters.check123, label %..preheader_crit_edge.us.us.1.preheader, label %vector.scevcheck122

vector.scevcheck122:                              ; preds = %iter.check135
  %i.ec = sub i32 17, %spec.store.select
  %i.ed = zext i32 %i.ec to i64
  %i.ee = sub nsw i64 16, %i.ed                   ; 2 uses
  %i.ef = trunc i64 %i.ee to i32                  ; 2 uses
  %i.eg = add i32 %spec.store.select, -18
  %i.eh = icmp ult i32 %i.eg, %i.ef
  %i.ei = sub i32 32, %spec.store.select          ; 2 uses
  %i.ej = add i32 %i.ei, %i.ef
  %i.ek = icmp slt i32 %i.ej, %i.ei
  %i.el = icmp ugt i64 %i.ee, 4294967295
  %i.em = or i1 %i.ek, %i.el
  %i.en = or i1 %i.eh, %i.em
  br i1 %i.en, label %..preheader_crit_edge.us.us.1.preheader, label %vector.main.loop.iter.check124

vector.main.loop.iter.check124:                   ; preds = %vector.scevcheck122
  %min.iters.check125 = icmp ult i64 %i.eb, 32
  br i1 %min.iters.check125, label %vec.epilog.ph139, label %vector.ph126

vector.ph126:                                     ; preds = %vector.main.loop.iter.check124
  %i.eo = and i64 %i.eb, 24
  %n.vec127 = and i64 %i.eb, -32                  ; 4 uses
  %i.ep = or disjoint i64 %n.vec127, %i.ap
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next130, %vector.body128 ] ; 2 uses
  %i.eq = or disjoint i64 %index129, %i.ap
  %i.er = shl i64 %i.eq, 32
  %i.es = ashr exact i64 %i.er, 32
  %i.et = getelementptr i8, ptr %1, i64 %i.es     ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 16
  %i.ev = getelementptr i8, ptr %i.et, i64 32
  store <16 x i8> zeroinitializer, ptr %i.eu, align 1
  store <16 x i8> zeroinitializer, ptr %i.ev, align 1
  %index.next130 = add nuw i64 %index129, 32      ; 2 uses
  %i.ew = icmp eq i64 %index.next130, %n.vec127
  br i1 %i.ew, label %middle.block131, label %vector.body128, !llvm.loop !68

middle.block131:                                  ; preds = %vector.body128
  %cmp.n132 = icmp eq i64 %i.eb, %n.vec127
  br i1 %cmp.n132, label %.split27.us, label %vec.epilog.iter.check137

vec.epilog.iter.check137:                         ; preds = %middle.block131
  %min.epilog.iters.check138 = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check138, label %..preheader_crit_edge.us.us.1.preheader, label %vec.epilog.ph139, !prof !18

vec.epilog.ph139:                                 ; preds = %vector.main.loop.iter.check124, %vec.epilog.iter.check137
  %vec.epilog.resume.val133 = phi i64 [ %n.vec127, %vec.epilog.iter.check137 ], [ 0, %vector.main.loop.iter.check124 ]
  %n.vec140 = and i64 %i.eb, -8                   ; 3 uses
  %i.ex = add nsw i64 %n.vec140, %i.ap
  br label %vec.epilog.vector.body141

vec.epilog.vector.body141:                        ; preds = %vec.epilog.vector.body141, %vec.epilog.ph139
  %index142 = phi i64 [ %vec.epilog.resume.val133, %vec.epilog.ph139 ], [ %index.next143, %vec.epilog.vector.body141 ] ; 2 uses
  %i.ey = add nuw i64 %index142, %i.ap
  %i.ez = shl i64 %i.ey, 32
  %i.fa = add i64 %i.ez, 68719476736
  %i.fb = ashr exact i64 %i.fa, 32
  %i.fc = getelementptr inbounds i8, ptr %1, i64 %i.fb
  store <8 x i8> zeroinitializer, ptr %i.fc, align 1
  %index.next143 = add nuw i64 %index142, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next143, %n.vec140
  br i1 %i.fd, label %vec.epilog.middle.block144, label %vec.epilog.vector.body141, !llvm.loop !69

vec.epilog.middle.block144:                       ; preds = %vec.epilog.vector.body141
  %cmp.n145 = icmp eq i64 %i.eb, %n.vec140
  br i1 %cmp.n145, label %.split27.us, label %..preheader_crit_edge.us.us.1.preheader

..preheader_crit_edge.us.us.1.preheader:          ; preds = %vector.scevcheck122, %iter.check135, %vec.epilog.iter.check137, %vec.epilog.middle.block144
  %indvars.iv43.1.ph = phi i64 [ %i.ap, %iter.check135 ], [ %i.ap, %vector.scevcheck122 ], [ %i.ep, %vec.epilog.iter.check137 ], [ %i.ex, %vec.epilog.middle.block144 ]
  br label %..preheader_crit_edge.us.us.1

..preheader_crit_edge.us.us.1:                    ; preds = %..preheader_crit_edge.us.us.1.preheader, %..preheader_crit_edge.us.us.1
  %indvars.iv43.1 = phi i64 [ %indvars.iv.next44.1, %..preheader_crit_edge.us.us.1 ], [ %indvars.iv43.1.ph, %..preheader_crit_edge.us.us.1.preheader ] ; 2 uses
  %i.fe = shl i64 %indvars.iv43.1, 32
  %sext57 = add i64 %i.fe, 68719476736
  %i.ff = ashr exact i64 %sext57, 32
  %i.fg = getelementptr inbounds i8, ptr %1, i64 %i.ff
  store i8 0, ptr %i.fg, align 1
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43.1, 1 ; 2 uses
  %i.fh = and i64 %indvars.iv.next44.1, 4294967295
  %exitcond46.1.not = icmp eq i64 %i.fh, 16
  br i1 %exitcond46.1.not, label %.split27.us, label %..preheader_crit_edge.us.us.1, !llvm.loop !70

.preheader21.us.preheader:                        ; preds = %.preheader21.us.preheader.prol.loopexit, %.preheader21.us.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1150, %.preheader21.us.preheader ], [ %indvars.iv.unr, %.preheader21.us.preheader.prol.loopexit ] ; 4 uses
  %i.fi = trunc nuw i64 %indvars.iv to i32
  %i.fj = add i32 %spec.store.select, %i.fi
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %2, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1
  %sext55 = shl i64 %indvars.iv, 32
  %i.fn = ashr exact i64 %sext55, 32
  %i.fo = getelementptr inbounds i8, ptr %1, i64 %i.fn
  store i8 %i.fm, ptr %i.fo, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fp = trunc nuw i64 %indvars.iv.next to i32
  %i.fq = add i32 %spec.store.select, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %2, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1
  %sext55.1 = shl i64 %indvars.iv.next, 32
  %i.fu = ashr exact i64 %sext55.1, 32
  %i.fv = getelementptr inbounds i8, ptr %1, i64 %i.fu
  store i8 %i.ft, ptr %i.fv, align 1
  %indvars.iv.next.1150 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1150, %i.ap
  br i1 %exitcond.not.1, label %vector.scevcheck92, label %.preheader21.us.preheader, !llvm.loop !71

vector.scevcheck92:                               ; preds = %.preheader21.us.preheader.prol.loopexit, %.preheader21.us.preheader, %middle.block77, %vec.epilog.middle.block90
  %i.fw = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.fx = trunc nsw i64 %i.fw to i32
  %i.fy = icmp ugt i64 %i.fw, 2147483631
  %i.fz = add nsw i32 %spec.store.select, 16      ; 2 uses
  %i.ga = add i32 %i.fz, %i.fx
  %i.gb = icmp slt i32 %i.ga, %i.fz
  %i.gc = or i1 %i.gb, %i.fy
  br i1 %i.gc, label %..preheader_crit_edge.us.preheader, label %vector.memcheck93

vector.memcheck93:                                ; preds = %vector.scevcheck92
  %i.gd = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16)
  %smin94 = sext i32 %i.gd to i64
  %i.ge = add i64 %i.a, %smin94
  %i.gf = sub i64 %i.ge, %i.b
  %diff.check95 = icmp ugt i64 %i.gf, -32
  br i1 %diff.check95, label %..preheader_crit_edge.us.preheader, label %vector.main.loop.iter.check97

vector.main.loop.iter.check97:                    ; preds = %vector.memcheck93
  %min.iters.check98 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check98, label %vec.epilog.ph113, label %vector.ph99

vector.ph99:                                      ; preds = %vector.main.loop.iter.check97
  %i.gg = and i64 %i.ap, 28
  %n.vec100 = and i64 %i.ap, 2147483616           ; 4 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next105, %vector.body101 ] ; 2 uses
  %i.gh = trunc i64 %index102 to i32
  %i.gi = or disjoint i32 %i.gh, 16               ; 2 uses
  %i.gj = add i32 %i.gi, %spec.store.select
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %2, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %wide.load103 = load <16 x i8>, ptr %i.gl, align 1
  %wide.load104 = load <16 x i8>, ptr %i.gm, align 1
  %i.gn = sext i32 %i.gi to i64
  %i.go = getelementptr inbounds i8, ptr %1, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store <16 x i8> %wide.load103, ptr %i.go, align 1
  store <16 x i8> %wide.load104, ptr %i.gp, align 1
  %index.next105 = add nuw i64 %index102, 32      ; 2 uses
  %i.gq = icmp eq i64 %index.next105, %n.vec100
  br i1 %i.gq, label %middle.block106, label %vector.body101, !llvm.loop !72

middle.block106:                                  ; preds = %vector.body101
  %cmp.n107 = icmp eq i64 %n.vec100, %i.ap
  br i1 %cmp.n107, label %.split27.us, label %vec.epilog.iter.check111

vec.epilog.iter.check111:                         ; preds = %middle.block106
  %min.epilog.iters.check112 = icmp eq i64 %i.gg, 0
  br i1 %min.epilog.iters.check112, label %..preheader_crit_edge.us.preheader, label %vec.epilog.ph113, !prof !16

vec.epilog.ph113:                                 ; preds = %vector.main.loop.iter.check97, %vec.epilog.iter.check111
  %vec.epilog.resume.val108 = phi i64 [ %n.vec100, %vec.epilog.iter.check111 ], [ 0, %vector.main.loop.iter.check97 ]
  %n.vec114 = and i64 %i.ap, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body115

vec.epilog.vector.body115:                        ; preds = %vec.epilog.vector.body115, %vec.epilog.ph113
  %index116 = phi i64 [ %vec.epilog.resume.val108, %vec.epilog.ph113 ], [ %index.next118, %vec.epilog.vector.body115 ] ; 2 uses
  %i.gr = trunc i64 %index116 to i32
  %i.gs = add i32 %i.gr, 16                       ; 2 uses
  %i.gt = add i32 %i.gs, %spec.store.select
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %2, i64 %i.gu
  %wide.load117 = load <4 x i8>, ptr %i.gv, align 1
  %i.gw = sext i32 %i.gs to i64
  %i.gx = getelementptr inbounds i8, ptr %1, i64 %i.gw
  store <4 x i8> %wide.load117, ptr %i.gx, align 1
  %index.next118 = add nuw i64 %index116, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next118, %n.vec114
  br i1 %i.gy, label %vec.epilog.middle.block119, label %vec.epilog.vector.body115, !llvm.loop !73

vec.epilog.middle.block119:                       ; preds = %vec.epilog.vector.body115
  %cmp.n120 = icmp eq i64 %n.vec114, %i.ap
  br i1 %cmp.n120, label %.split27.us, label %..preheader_crit_edge.us.preheader

..preheader_crit_edge.us.preheader:               ; preds = %vector.memcheck93, %vector.scevcheck92, %vec.epilog.iter.check111, %vec.epilog.middle.block119
  %indvars.iv.135.ph = phi i64 [ 0, %vector.scevcheck92 ], [ 0, %vector.memcheck93 ], [ %n.vec100, %vec.epilog.iter.check111 ], [ %n.vec114, %vec.epilog.middle.block119 ] ; 4 uses
  %xtraiter151 = and i64 %i.ap, 1
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %..preheader_crit_edge.us.prol.loopexit, label %..preheader_crit_edge.us.prol

..preheader_crit_edge.us.prol:                    ; preds = %..preheader_crit_edge.us.preheader
  %i.gz = trunc nuw nsw i64 %indvars.iv.135.ph to i32
  %i.ha = add nuw i32 %i.gz, 16                   ; 2 uses
  %i.hb = add i32 %i.ha, %spec.store.select
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds i8, ptr %2, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = sext i32 %i.ha to i64
  %i.hg = getelementptr inbounds i8, ptr %1, i64 %i.hf
  store i8 %i.he, ptr %i.hg, align 1
  %indvars.iv.next.136.prol = or disjoint i64 %indvars.iv.135.ph, 1
  br label %..preheader_crit_edge.us.prol.loopexit

..preheader_crit_edge.us.prol.loopexit:           ; preds = %..preheader_crit_edge.us.prol, %..preheader_crit_edge.us.preheader
  %indvars.iv.135.unr = phi i64 [ %indvars.iv.135.ph, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next.136.prol, %..preheader_crit_edge.us.prol ]
  %i.hh = add nsw i64 %i.ap, -1
  %i.hi = icmp eq i64 %indvars.iv.135.ph, %i.hh
  br i1 %i.hi, label %.split27.us, label %..preheader_crit_edge.us

..preheader_crit_edge.us:                         ; preds = %..preheader_crit_edge.us.prol.loopexit, %..preheader_crit_edge.us
  %indvars.iv.135 = phi i64 [ %indvars.iv.next.136.1, %..preheader_crit_edge.us ], [ %indvars.iv.135.unr, %..preheader_crit_edge.us.prol.loopexit ] ; 3 uses
  %i.hj = trunc i64 %indvars.iv.135 to i32
  %i.hk = add i32 %i.hj, 16                       ; 2 uses
  %i.hl = add i32 %i.hk, %spec.store.select
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds i8, ptr %2, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = sext i32 %i.hk to i64
  %i.hq = getelementptr inbounds i8, ptr %1, i64 %i.hp
  store i8 %i.ho, ptr %i.hq, align 1
  %i.hr = trunc i64 %indvars.iv.135 to i32
  %i.hs = add i32 %i.hr, 17                       ; 2 uses
  %i.ht = add i32 %i.hs, %spec.store.select
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds i8, ptr %2, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = sext i32 %i.hs to i64
  %i.hy = getelementptr inbounds i8, ptr %1, i64 %i.hx
  store i8 %i.hw, ptr %i.hy, align 1
  %indvars.iv.next.136.1 = add nuw nsw i64 %indvars.iv.135, 2 ; 2 uses
  %exitcond.137.not.1 = icmp eq i64 %indvars.iv.next.136.1, %i.ap
  br i1 %exitcond.137.not.1, label %.split27.us, label %..preheader_crit_edge.us, !llvm.loop !74

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.1.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.hz = shl i64 %indvars.iv.1, 32
  %sext = add i64 %i.hz, 68719476736
  %i.ia = ashr exact i64 %sext, 32
  %i.ib = getelementptr inbounds i8, ptr %1, i64 %i.ia
  store i8 0, ptr %i.ib, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.ic = and i64 %indvars.iv.next.1, 4294967295
  %exitcond.1.not = icmp eq i64 %i.ic, 16
  br i1 %exitcond.1.not, label %.split27.us, label %vec.epilog.scalar.ph, !llvm.loop !75

.split27.us:                                      ; preds = %vec.epilog.scalar.ph, %..preheader_crit_edge.us.prol.loopexit, %..preheader_crit_edge.us, %..preheader_crit_edge.us.us.1, %middle.block, %vec.epilog.middle.block, %middle.block106, %vec.epilog.middle.block119, %middle.block131, %vec.epilog.middle.block144
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pslldq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i32, ptr %3, align 8                ; 4 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.c, i32 16) ; 22 uses
  %.not21 = icmp sgt i32 %i.c, 15
  br i1 %.not21, label %.preheader20.us.preheader, label %.split

.preheader20.us.preheader:                        ; preds = %bb.a
  %i.d = add nsw i32 %spec.store.select, -1
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = add nuw nsw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, i8 0, i64 %i.g, i1 false)
  br label %.split27.us.split

.split:                                           ; preds = %bb.a
  %i.h = icmp sgt i32 %i.c, 0
  br i1 %i.h, label %.preheader20.us28.preheader, label %iter.check

iter.check:                                       ; preds = %.split
  %i.i = sext i32 %spec.store.select to i64       ; 5 uses
  %i.j = sub nsw i64 16, %i.i                     ; 13 uses
  %i.k = sub nsw i64 15, %i.i                     ; 2 uses
  %i.l = sub i32 15, %spec.store.select           ; 2 uses
  %i.m = trunc i64 %i.k to i32
  %i.n = sub i32 %i.l, %i.m
  %i.o = icmp sgt i32 %i.n, %i.l
  %i.p = icmp ugt i64 %i.k, 4294967295
  %i.q = or i1 %i.o, %i.p
  br i1 %i.q, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.r = sub i32 15, %spec.store.select
  %i.s = sext i32 %i.r to i64
  %i.t = add i64 %i.b, %i.s
  %i.u = sub i64 %i.t, %i.a
  %i.v = add i64 %i.u, -16
  %diff.check = icmp ult i64 %i.v, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp ult i64 %i.j, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 4 uses
  %i.x = sub nsw i64 15, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = sub i64 15, %index                       ; 2 uses
  %i.z = trunc nsw i64 %i.y to i32
  %i.aa = sub i32 %i.z, %spec.store.select
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -15
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ad, align 1
  %wide.load53 = load <16 x i8>, ptr %i.ae, align 1
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -15
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -31
  store <16 x i8> %wide.load, ptr %i.ag, align 1
  store <16 x i8> %wide.load53, ptr %i.ah, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %iter.check76, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.j, -8                     ; 3 uses
  %i.aj = sub nsw i64 15, %n.vec54
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = sub i64 15, %index55                    ; 2 uses
  %i.al = trunc nsw i64 %i.ak to i32
  %i.am = sub i32 %i.al, %spec.store.select
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -7
  %wide.load56 = load <8 x i8>, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -7
  store <8 x i8> %wide.load56, ptr %i.ar, align 1
  %index.next57 = add nuw i64 %index55, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next57, %n.vec54
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.j, %n.vec54
  br i1 %cmp.n58, label %iter.check76, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 15, %iter.check ], [ 15, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader20.us28.preheader:                      ; preds = %.split
  %i.at = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %i.au = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 15)
  %umin = zext nneg i32 %i.au to i64              ; 2 uses
  %i.av = sub nuw nsw i64 16, %umin               ; 5 uses
  %i.aw = xor i64 %umin, 15
  %xtraiter = and i64 %i.av, 3                    ; 3 uses
  %i.ax = icmp samesign ult i64 %i.aw, 3
  br i1 %i.ax, label %.epil.preheader, label %.preheader20.us28.preheader.new

.preheader20.us28.preheader.new:                  ; preds = %.preheader20.us28.preheader
  %unroll_iter = and i64 %i.av, 28
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader20.us28.preheader.new
  %indvars.iv39 = phi i64 [ 15, %.preheader20.us28.preheader.new ], [ %indvars.iv.next40.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader20.us28.preheader.new ], [ %niter.next.3, %bb.b ]
  %i.ay = trunc nsw i64 %indvars.iv39 to i32
  %i.az = sub i32 %i.ay, %spec.store.select
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39
  store i8 %i.bc, ptr %i.bd, align 1
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1 ; 2 uses
  %i.be = trunc nsw i64 %indvars.iv.next40 to i32
  %i.bf = sub i32 %i.be, %spec.store.select
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40
  store i8 %i.bi, ptr %i.bj, align 1
  %indvars.iv.next40.197 = add nsw i64 %indvars.iv39, -2 ; 2 uses
  %i.bk = trunc nsw i64 %indvars.iv.next40.197 to i32
  %i.bl = sub i32 %i.bk, %spec.store.select
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.197
  store i8 %i.bo, ptr %i.bp, align 1
  %indvars.iv.next40.2 = add nsw i64 %indvars.iv39, -3 ; 2 uses
  %i.bq = trunc nsw i64 %indvars.iv.next40.2 to i32
  %i.br = sub i32 %i.bq, %spec.store.select
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %2, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.2
  store i8 %i.bu, ptr %i.bv, align 1
  %indvars.iv.next40.3 = add nsw i64 %indvars.iv39, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %..preheader_crit_edge.us.preheader.unr-lcssa, label %bb.b, !llvm.loop !78

..preheader_crit_edge.us.preheader.unr-lcssa:     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.preheader.unr-lcssa, %.preheader20.us28.preheader
  %indvars.iv39.epil.init = phi i64 [ 15, %.preheader20.us28.preheader ], [ %indvars.iv.next40.3, %..preheader_crit_edge.us.preheader.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv39.epil = phi i64 [ %indvars.iv.next40.epil, %bb.c ], [ %indvars.iv39.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.bw = trunc nsw i64 %indvars.iv39.epil to i32
  %i.bx = sub i32 %i.bw, %spec.store.select
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %2, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39.epil
  store i8 %i.ca, ptr %i.cb, align 1
  %indvars.iv.next40.epil = add nsw i64 %indvars.iv39.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.preheader, label %bb.c, !llvm.loop !79

..preheader_crit_edge.us.preheader:               ; preds = %bb.c, %..preheader_crit_edge.us.preheader.unr-lcssa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.at, i1 false)
  %xtraiter99 = and i64 %i.av, 1
  %i.cc = icmp eq i32 %i.c, 15
  br i1 %i.cc, label %.epil.preheader98, label %..preheader_crit_edge.us.preheader.new

..preheader_crit_edge.us.preheader.new:           ; preds = %..preheader_crit_edge.us.preheader
  %unroll_iter103 = and i64 %i.av, 30
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %..preheader_crit_edge.us.preheader.new
  %indvars.iv39.1 = phi i64 [ 15, %..preheader_crit_edge.us.preheader.new ], [ %indvars.iv.next40.1.1, %bb.d ] ; 3 uses
  %niter104 = phi i64 [ 0, %..preheader_crit_edge.us.preheader.new ], [ %niter104.next.1, %bb.d ]
  %i.cd = add nuw nsw i64 %indvars.iv39.1, 16     ; 2 uses
  %i.ce = trunc nsw i64 %i.cd to i32
  %i.cf = sub i32 %i.ce, %spec.store.select
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %2, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds i8, ptr %1, i64 %i.cd
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = add nsw i64 %indvars.iv39.1, 15         ; 2 uses
  %i.cl = trunc nsw i64 %i.ck to i32
  %i.cm = sub i32 %i.cl, %spec.store.select
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %2, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = getelementptr inbounds i8, ptr %1, i64 %i.ck
  store i8 %i.cp, ptr %i.cq, align 1
  %indvars.iv.next40.1.1 = add nsw i64 %indvars.iv39.1, -2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1.not = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1.not, label %..preheader_crit_edge.us.preheader.1.unr-lcssa, label %bb.d, !llvm.loop !78

..preheader_crit_edge.us.preheader.1.unr-lcssa:   ; preds = %bb.d
  %lcmp.mod101.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod101.not, label %..preheader_crit_edge.us.preheader.1, label %.epil.preheader98

.epil.preheader98:                                ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %..preheader_crit_edge.us.preheader
  %indvars.iv39.1.epil.init = phi i64 [ 15, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next40.1.1, %..preheader_crit_edge.us.preheader.1.unr-lcssa ]
  %lcmp.mod102 = trunc i64 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.cr = add nuw nsw i64 %indvars.iv39.1.epil.init, 16 ; 2 uses
  %i.cs = trunc nsw i64 %i.cr to i32
  %i.ct = sub i32 %i.cs, %spec.store.select
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %2, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = getelementptr inbounds i8, ptr %1, i64 %i.cr
  store i8 %i.cw, ptr %i.cx, align 1
  br label %..preheader_crit_edge.us.preheader.1

..preheader_crit_edge.us.preheader.1:             ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %.epil.preheader98
  %scevgep.1 = getelementptr i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 0, i64 %i.at, i1 false)
  br label %.split27.us.split

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.preheader, %..preheader_crit_edge
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %..preheader_crit_edge ], [ %indvars.iv.1.ph, %..preheader_crit_edge.preheader ] ; 3 uses
  %i.cy = add nsw i64 %indvars.iv.1, 16           ; 2 uses
  %i.cz = trunc nsw i64 %i.cy to i32
  %i.da = sub i32 %i.cz, %spec.store.select
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %2, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = getelementptr inbounds i8, ptr %1, i64 %i.cy
  store i8 %i.dd, ptr %i.de, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -1
  %.not.1.not = icmp sgt i64 %indvars.iv.1, %i.i
  br i1 %.not.1.not, label %..preheader_crit_edge, label %.split27.us.split, !llvm.loop !80

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.df = trunc nsw i64 %indvars.iv to i32
  %i.dg = sub i32 %i.df, %spec.store.select
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %2, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.dj, ptr %i.dk, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.i
  br i1 %.not.not, label %vec.epilog.scalar.ph, label %iter.check76, !llvm.loop !81

iter.check76:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %min.iters.check63 = icmp ult i64 %i.j, 8
  br i1 %min.iters.check63, label %..preheader_crit_edge.preheader, label %vector.scevcheck60

vector.scevcheck60:                               ; preds = %iter.check76
  %i.dl = sub nsw i64 15, %i.i                    ; 2 uses
  %i.dm = sub i32 31, %spec.store.select          ; 2 uses
  %i.dn = trunc i64 %i.dl to i32
  %i.do = sub i32 %i.dm, %i.dn
  %i.dp = icmp sgt i32 %i.do, %i.dm
  %i.dq = icmp ugt i64 %i.dl, 4294967295
  %i.dr = or i1 %i.dp, %i.dq
  br i1 %i.dr, label %..preheader_crit_edge.preheader, label %vector.memcheck61

vector.memcheck61:                                ; preds = %vector.scevcheck60
  %i.ds = sub i32 31, %spec.store.select
  %i.dt = sext i32 %i.ds to i64
  %i.du = add i64 %i.b, %i.dt
  %i.dv = sub i64 %i.du, %i.a
  %i.dw = add i64 %i.dv, -32
  %diff.check62 = icmp ult i64 %i.dw, 31
  br i1 %diff.check62, label %..preheader_crit_edge.preheader, label %vector.main.loop.iter.check64

vector.main.loop.iter.check64:                    ; preds = %vector.memcheck61
  %min.iters.check65 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check65, label %vec.epilog.ph80, label %vector.ph66

vector.ph66:                                      ; preds = %vector.main.loop.iter.check64
  %i.dx = and i64 %i.j, 24
  %n.vec67 = and i64 %i.j, -32                    ; 4 uses
  %i.dy = sub nsw i64 15, %n.vec67
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph66
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next72, %vector.body68 ] ; 2 uses
  %i.dz = sub i64 31, %index69                    ; 2 uses
  %i.ea = trunc nsw i64 %i.dz to i32
  %i.eb = sub i32 %i.ea, %spec.store.select
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %2, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -15
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 -31
  %wide.load70 = load <16 x i8>, ptr %i.ee, align 1
  %wide.load71 = load <16 x i8>, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds i8, ptr %1, i64 %i.dz ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -15
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -31
  store <16 x i8> %wide.load70, ptr %i.eh, align 1
  store <16 x i8> %wide.load71, ptr %i.ei, align 1
  %index.next72 = add nuw i64 %index69, 32        ; 2 uses
  %i.ej = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.ej, label %middle.block73, label %vector.body68, !llvm.loop !82

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.j, %n.vec67
  br i1 %cmp.n74, label %.split27.us.split, label %vec.epilog.iter.check78

vec.epilog.iter.check78:                          ; preds = %middle.block73
  %min.epilog.iters.check79 = icmp eq i64 %i.dx, 0
  br i1 %min.epilog.iters.check79, label %..preheader_crit_edge.preheader, label %vec.epilog.ph80, !prof !18

vec.epilog.ph80:                                  ; preds = %vector.main.loop.iter.check64, %vec.epilog.iter.check78
  %vec.epilog.resume.val75 = phi i64 [ %n.vec67, %vec.epilog.iter.check78 ], [ 0, %vector.main.loop.iter.check64 ]
  %n.vec81 = and i64 %i.j, -8                     ; 3 uses
  %i.ek = sub nsw i64 15, %n.vec81
  br label %vec.epilog.vector.body82

vec.epilog.vector.body82:                         ; preds = %vec.epilog.vector.body82, %vec.epilog.ph80
  %index83 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph80 ], [ %index.next85, %vec.epilog.vector.body82 ] ; 2 uses
  %i.el = sub i64 31, %index83                    ; 2 uses
  %i.em = trunc nsw i64 %i.el to i32
  %i.en = sub i32 %i.em, %spec.store.select
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr %2, i64 %i.eo
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -7
  %wide.load84 = load <8 x i8>, ptr %i.eq, align 1
  %i.er = getelementptr inbounds i8, ptr %1, i64 %i.el
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -7
  store <8 x i8> %wide.load84, ptr %i.es, align 1
  %index.next85 = add nuw i64 %index83, 8         ; 2 uses
  %i.et = icmp eq i64 %index.next85, %n.vec81
  br i1 %i.et, label %vec.epilog.middle.block86, label %vec.epilog.vector.body82, !llvm.loop !83

vec.epilog.middle.block86:                        ; preds = %vec.epilog.vector.body82
  %cmp.n87 = icmp eq i64 %i.j, %n.vec81
  br i1 %cmp.n87, label %.split27.us.split, label %..preheader_crit_edge.preheader

..preheader_crit_edge.preheader:                  ; preds = %vector.memcheck61, %vector.scevcheck60, %iter.check76, %vec.epilog.iter.check78, %vec.epilog.middle.block86
  %indvars.iv.1.ph = phi i64 [ 15, %iter.check76 ], [ 15, %vector.scevcheck60 ], [ 15, %vector.memcheck61 ], [ %i.dy, %vec.epilog.iter.check78 ], [ %i.ek, %vec.epilog.middle.block86 ]
  br label %..preheader_crit_edge

.split27.us.split:                                ; preds = %..preheader_crit_edge, %middle.block73, %vec.epilog.middle.block86, %..preheader_crit_edge.us.preheader.1, %.preheader20.us.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmulhuw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = add i64 %i.c, 32
  %i.e = add i64 %i.b, 32
  %i.f = add i64 %i.a, 32                         ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.d, %i.a
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound010 = icmp ugt i64 %i.e, %i.a
  %rt.bound111 = icmp ugt i64 %i.f, %i.b
  %rt.conflict12 = and i1 %rt.bound010, %rt.bound111
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict12
  br i1 %rt.conflict.all, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.g = load <8 x i16>, ptr %2, align 2
  %i.h = zext <8 x i16> %i.g to <8 x i32>
  %i.i = load <8 x i16>, ptr %3, align 2
  %i.j = zext <8 x i16> %i.i to <8 x i32>
  %i.k = mul nuw <8 x i32> %i.j, %i.h
  %i.l = lshr <8 x i32> %i.k, splat (i32 16)
  %i.m = trunc nuw <8 x i32> %i.l to <8 x i16>
  store <8 x i16> %i.m, ptr %1, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load <8 x i16>, ptr %i.n, align 2
  %i.r = zext <8 x i16> %i.q to <8 x i32>
  %i.s = load <8 x i16>, ptr %i.o, align 2
  %i.t = zext <8 x i16> %i.s to <8 x i32>
  %i.u = mul nuw <8 x i32> %i.t, %i.r
  %i.v = lshr <8 x i32> %i.u, splat (i32 16)
  %i.w = trunc nuw <8 x i32> %i.v to <8 x i16>
  store <8 x i16> %i.w, ptr %i.p, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.x = load i16, ptr %2, align 2
  %i.y = zext i16 %i.x to i32
  %i.z = load i16, ptr %3, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = mul nuw i32 %i.aa, %i.y
  %i.ac = lshr i32 %i.ab, 16
  %i.ad = trunc nuw i32 %i.ac to i16
  store i16 %i.ad, ptr %1, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i32
  %i.ak = mul nuw i32 %i.aj, %i.ag
  %i.al = lshr i32 %i.ak, 16
  %i.am = trunc nuw i32 %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = zext i16 %i.as to i32
  %i.au = mul nuw i32 %i.at, %i.aq
  %i.av = lshr i32 %i.au, 16
  %i.aw = trunc nuw i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.aw, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i32
  %i.be = mul nuw i32 %i.bd, %i.ba
  %i.bf = lshr i32 %i.be, 16
  %i.bg = trunc nuw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = zext i16 %i.bm to i32
  %i.bo = mul nuw i32 %i.bn, %i.bk
  %i.bp = lshr i32 %i.bo, 16
  %i.bq = trunc nuw i32 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.bq, ptr %i.br, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = zext i16 %i.bw to i32
  %i.by = mul nuw i32 %i.bx, %i.bu
  %i.bz = lshr i32 %i.by, 16
  %i.ca = trunc nuw i32 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ca, ptr %i.cb, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = zext i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = zext i16 %i.cg to i32
  %i.ci = mul nuw i32 %i.ch, %i.ce
  %i.cj = lshr i32 %i.ci, 16
  %i.ck = trunc nuw i32 %i.cj to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.ck, ptr %i.cl, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = zext i16 %i.cq to i32
  %i.cs = mul nuw i32 %i.cr, %i.co
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = trunc nuw i32 %i.ct to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.cu, ptr %i.cv, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = zext i16 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = zext i16 %i.da to i32
  %i.dc = mul nuw i32 %i.db, %i.cy
  %i.dd = lshr i32 %i.dc, 16
  %i.de = trunc nuw i32 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.de, ptr %i.df, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = zext i16 %i.dk to i32
  %i.dm = mul nuw i32 %i.dl, %i.di
  %i.dn = lshr i32 %i.dm, 16
  %i.do = trunc nuw i32 %i.dn to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.do, ptr %i.dp, align 2
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dr = load i16, ptr %i.dq, align 2
  %i.ds = zext i16 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.du = load i16, ptr %i.dt, align 2
  %i.dv = zext i16 %i.du to i32
  %i.dw = mul nuw i32 %i.dv, %i.ds
  %i.dx = lshr i32 %i.dw, 16
  %i.dy = trunc nuw i32 %i.dx to i16
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.dy, ptr %i.dz, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = zext i16 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.ee = load i16, ptr %i.ed, align 2
  %i.ef = zext i16 %i.ee to i32
  %i.eg = mul nuw i32 %i.ef, %i.ec
  %i.eh = lshr i32 %i.eg, 16
  %i.ei = trunc nuw i32 %i.eh to i16
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ei, ptr %i.ej, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = zext i16 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = zext i16 %i.eo to i32
  %i.eq = mul nuw i32 %i.ep, %i.em
  %i.er = lshr i32 %i.eq, 16
  %i.es = trunc nuw i32 %i.er to i16
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.es, ptr %i.et, align 2
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.ev = load i16, ptr %i.eu, align 2
  %i.ew = zext i16 %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.ey = load i16, ptr %i.ex, align 2
  %i.ez = zext i16 %i.ey to i32
  %i.fa = mul nuw i32 %i.ez, %i.ew
  %i.fb = lshr i32 %i.fa, 16
  %i.fc = trunc nuw i32 %i.fb to i16
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.fc, ptr %i.fd, align 2
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ff = load i16, ptr %i.fe, align 2
  %i.fg = zext i16 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.fi = load i16, ptr %i.fh, align 2
  %i.fj = zext i16 %i.fi to i32
  %i.fk = mul nuw i32 %i.fj, %i.fg
  %i.fl = lshr i32 %i.fk, 16
  %i.fm = trunc nuw i32 %i.fl to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %i.fm, ptr %i.fn, align 2
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.fp = load i16, ptr %i.fo, align 2
  %i.fq = zext i16 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.fs = load i16, ptr %i.fr, align 2
  %i.ft = zext i16 %i.fs to i32
  %i.fu = mul nuw i32 %i.ft, %i.fq
  %i.fv = lshr i32 %i.fu, 16
  %i.fw = trunc nuw i32 %i.fv to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.fw, ptr %i.fx, align 2
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmulhw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i16, ptr %2, align 2
  %i.b = sext i16 %i.a to i32
  %i.c = load i16, ptr %3, align 2
  %i.d = sext i16 %i.c to i32
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = lshr i32 %i.e, 16
  %i.g = trunc nuw i32 %i.f to i16
  store i16 %i.g, ptr %1, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i16, ptr %i.h, align 2
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.l = load i16, ptr %i.k, align 2
  %i.m = sext i16 %i.l to i32
  %i.n = mul nsw i32 %i.m, %i.j
  %i.o = lshr i32 %i.n, 16
  %i.p = trunc nuw i32 %i.o to i16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.p, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load i16, ptr %i.r, align 2
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.v = load i16, ptr %i.u, align 2
  %i.w = sext i16 %i.v to i32
  %i.x = mul nsw i32 %i.w, %i.t
  %i.y = lshr i32 %i.x, 16
  %i.z = trunc nuw i32 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = lshr i32 %i.ah, 16
  %i.aj = trunc nuw i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.aj, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i16, ptr %i.al, align 2
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = lshr i32 %i.ar, 16
  %i.at = trunc nuw i32 %i.as to i16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.at, ptr %i.au, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, %i.ax
  %i.bc = lshr i32 %i.bb, 16
  %i.bd = trunc nuw i32 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = sext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = sext i16 %i.bj to i32
  %i.bl = mul nsw i32 %i.bk, %i.bh
  %i.bm = lshr i32 %i.bl, 16
  %i.bn = trunc nuw i32 %i.bm to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.bn, ptr %i.bo, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = sext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = sext i16 %i.bt to i32
  %i.bv = mul nsw i32 %i.bu, %i.br
  %i.bw = lshr i32 %i.bv, 16
  %i.bx = trunc nuw i32 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.bx, ptr %i.by, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = sext i16 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = sext i16 %i.cd to i32
  %i.cf = mul nsw i32 %i.ce, %i.cb
  %i.cg = lshr i32 %i.cf, 16
  %i.ch = trunc nuw i32 %i.cg to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.ch, ptr %i.ci, align 2
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = sext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = sext i16 %i.cn to i32
  %i.cp = mul nsw i32 %i.co, %i.cl
  %i.cq = lshr i32 %i.cp, 16
  %i.cr = trunc nuw i32 %i.cq to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.cr, ptr %i.cs, align 2
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = sext i16 %i.cu to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = sext i16 %i.cx to i32
  %i.cz = mul nsw i32 %i.cy, %i.cv
  %i.da = lshr i32 %i.cz, 16
  %i.db = trunc nuw i32 %i.da to i16
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.db, ptr %i.dc, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.de = load i16, ptr %i.dd, align 2
  %i.df = sext i16 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = sext i16 %i.dh to i32
  %i.dj = mul nsw i32 %i.di, %i.df
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = trunc nuw i32 %i.dk to i16
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.dl, ptr %i.dm, align 2
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.do = load i16, ptr %i.dn, align 2
  %i.dp = sext i16 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dr = load i16, ptr %i.dq, align 2
  %i.ds = sext i16 %i.dr to i32
  %i.dt = mul nsw i32 %i.ds, %i.dp
  %i.du = lshr i32 %i.dt, 16
  %i.dv = trunc nuw i32 %i.du to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.dv, ptr %i.dw, align 2
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.dy = load i16, ptr %i.dx, align 2
  %i.dz = sext i16 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = sext i16 %i.eb to i32
  %i.ed = mul nsw i32 %i.ec, %i.dz
  %i.ee = lshr i32 %i.ed, 16
  %i.ef = trunc nuw i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.ef, ptr %i.eg, align 2
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ei = load i16, ptr %i.eh, align 2
  %i.ej = sext i16 %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = sext i16 %i.el to i32
  %i.en = mul nsw i32 %i.em, %i.ej
  %i.eo = lshr i32 %i.en, 16
  %i.ep = trunc nuw i32 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %i.ep, ptr %i.eq, align 2
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.es = load i16, ptr %i.er, align 2
  %i.et = sext i16 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.ev = load i16, ptr %i.eu, align 2
  %i.ew = sext i16 %i.ev to i32
  %i.ex = mul nsw i32 %i.ew, %i.et
  %i.ey = lshr i32 %i.ex, 16
  %i.ez = trunc nuw i32 %i.ey to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.ez, ptr %i.fa, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pavgb_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = add i64 %i.c, 32
  %i.e = add i64 %i.b, 32
  %i.f = add i64 %i.a, 32                         ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.d, %i.a
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound010 = icmp ugt i64 %i.e, %i.a
  %rt.bound111 = icmp ugt i64 %i.f, %i.b
  %rt.conflict12 = and i1 %rt.bound010, %rt.bound111
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict12
  br i1 %rt.conflict.all, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.g = load <16 x i8>, ptr %2, align 1
  %i.h = zext <16 x i8> %i.g to <16 x i16>
  %i.i = load <16 x i8>, ptr %3, align 1
  %i.j = zext <16 x i8> %i.i to <16 x i16>
  %i.k = add nuw nsw <16 x i16> %i.h, splat (i16 1)
  %i.l = add nuw nsw <16 x i16> %i.k, %i.j
  %i.m = lshr <16 x i16> %i.l, splat (i16 1)
  %i.n = trunc <16 x i16> %i.m to <16 x i8>
  store <16 x i8> %i.n, ptr %1, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load <16 x i8>, ptr %i.o, align 1
  %i.s = zext <16 x i8> %i.r to <16 x i16>
  %i.t = load <16 x i8>, ptr %i.p, align 1
  %i.u = zext <16 x i8> %i.t to <16 x i16>
  %i.v = add nuw nsw <16 x i16> %i.s, splat (i16 1)
  %i.w = add nuw nsw <16 x i16> %i.v, %i.u
  %i.x = lshr <16 x i16> %i.w, splat (i16 1)
  %i.y = trunc <16 x i16> %i.x to <16 x i8>
  store <16 x i8> %i.y, ptr %i.q, align 1
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.z = load i8, ptr %2, align 1
  %i.aa = zext i8 %i.z to i16
  %i.ab = load i8, ptr %3, align 1
  %i.ac = zext i8 %i.ab to i16
  %i.ad = add nuw nsw i16 %i.aa, 1
  %i.ae = add nuw nsw i16 %i.ad, %i.ac
  %i.af = lshr i16 %i.ae, 1
  %i.ag = trunc nuw i16 %i.af to i8
  store i8 %i.ag, ptr %1, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i16
  %i.an = add nuw nsw i16 %i.aj, 1
  %i.ao = add nuw nsw i16 %i.an, %i.am
  %i.ap = lshr i16 %i.ao, 1
  %i.aq = trunc nuw i16 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i16
  %i.ay = add nuw nsw i16 %i.au, 1
  %i.az = add nuw nsw i16 %i.ay, %i.ax
  %i.ba = lshr i16 %i.az, 1
  %i.bb = trunc nuw i16 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i16
  %i.bj = add nuw nsw i16 %i.bf, 1
  %i.bk = add nuw nsw i16 %i.bj, %i.bi
  %i.bl = lshr i16 %i.bk, 1
  %i.bm = trunc nuw i16 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i16
  %i.bu = add nuw nsw i16 %i.bq, 1
  %i.bv = add nuw nsw i16 %i.bu, %i.bt
  %i.bw = lshr i16 %i.bv, 1
  %i.bx = trunc nuw i16 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i16
  %i.cf = add nuw nsw i16 %i.cb, 1
  %i.cg = add nuw nsw i16 %i.cf, %i.ce
  %i.ch = lshr i16 %i.cg, 1
  %i.ci = trunc nuw i16 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i16
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.co to i16
  %i.cq = add nuw nsw i16 %i.cm, 1
  %i.cr = add nuw nsw i16 %i.cq, %i.cp
  %i.cs = lshr i16 %i.cr, 1
  %i.ct = trunc nuw i16 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ct, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = zext i8 %i.cw to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i16
  %i.db = add nuw nsw i16 %i.cx, 1
  %i.dc = add nuw nsw i16 %i.db, %i.da
  %i.dd = lshr i16 %i.dc, 1
  %i.de = trunc nuw i16 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i16
  %i.dm = add nuw nsw i16 %i.di, 1
  %i.dn = add nuw nsw i16 %i.dm, %i.dl
  %i.do = lshr i16 %i.dn, 1
  %i.dp = trunc nuw i16 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.dp, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = zext i8 %i.ds to i16
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = zext i8 %i.dv to i16
  %i.dx = add nuw nsw i16 %i.dt, 1
  %i.dy = add nuw nsw i16 %i.dx, %i.dw
  %i.dz = lshr i16 %i.dy, 1
  %i.ea = trunc nuw i16 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.ea, ptr %i.eb, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = zext i8 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = zext i8 %i.eg to i16
  %i.ei = add nuw nsw i16 %i.ee, 1
  %i.ej = add nuw nsw i16 %i.ei, %i.eh
  %i.ek = lshr i16 %i.ej, 1
  %i.el = trunc nuw i16 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.el, ptr %i.em, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i16
  %i.et = add nuw nsw i16 %i.ep, 1
  %i.eu = add nuw nsw i16 %i.et, %i.es
  %i.ev = lshr i16 %i.eu, 1
  %i.ew = trunc nuw i16 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.ew, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i16
  %i.fe = add nuw nsw i16 %i.fa, 1
  %i.ff = add nuw nsw i16 %i.fe, %i.fd
  %i.fg = lshr i16 %i.ff, 1
  %i.fh = trunc nuw i16 %i.fg to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.fh, ptr %i.fi, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = zext i8 %i.fk to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i16
  %i.fp = add nuw nsw i16 %i.fl, 1
  %i.fq = add nuw nsw i16 %i.fp, %i.fo
  %i.fr = lshr i16 %i.fq, 1
  %i.fs = trunc nuw i16 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.fs, ptr %i.ft, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = zext i8 %i.fy to i16
  %i.ga = add nuw nsw i16 %i.fw, 1
  %i.gb = add nuw nsw i16 %i.ga, %i.fz
  %i.gc = lshr i16 %i.gb, 1
end_hunk_9
begin_hunk_10_@helper_pavgb_ymm:bb.a
  %i.hd = zext i8 %i.hc to i16
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = zext i8 %i.hf to i16
  %i.hh = add nuw nsw i16 %i.hd, 1
  %i.hi = add nuw nsw i16 %i.hh, %i.hg
  %i.hj = lshr i16 %i.hi, 1
  %i.hk = trunc nuw i16 %i.hj to i8
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.hk, ptr %i.hl, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = zext i8 %i.hn to i16
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = zext i8 %i.hq to i16
  %i.hs = add nuw nsw i16 %i.ho, 1
  %i.ht = add nuw nsw i16 %i.hs, %i.hr
  %i.hu = lshr i16 %i.ht, 1
  %i.hv = trunc nuw i16 %i.hu to i8
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.hv, ptr %i.hw, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = zext i8 %i.hy to i16
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = zext i8 %i.ib to i16
  %i.id = add nuw nsw i16 %i.hz, 1
  %i.ie = add nuw nsw i16 %i.id, %i.ic
  %i.if = lshr i16 %i.ie, 1
  %i.ig = trunc nuw i16 %i.if to i8
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.ig, ptr %i.ih, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ij = load i8, ptr %i.ii, align 1
  %i.ik = zext i8 %i.ij to i16
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.im = load i8, ptr %i.il, align 1
  %i.in = zext i8 %i.im to i16
  %i.io = add nuw nsw i16 %i.ik, 1
  %i.ip = add nuw nsw i16 %i.io, %i.in
  %i.iq = lshr i16 %i.ip, 1
  %i.ir = trunc nuw i16 %i.iq to i8
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.ir, ptr %i.is, align 1
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 21
  %i.iu = load i8, ptr %i.it, align 1
  %i.iv = zext i8 %i.iu to i16
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = zext i8 %i.ix to i16
  %i.iz = add nuw nsw i16 %i.iv, 1
  %i.ja = add nuw nsw i16 %i.iz, %i.iy
  %i.jb = lshr i16 %i.ja, 1
  %i.jc = trunc nuw i16 %i.jb to i8
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %i.jc, ptr %i.jd, align 1
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.jf = load i8, ptr %i.je, align 1
  %i.jg = zext i8 %i.jf to i16
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = zext i8 %i.ji to i16
  %i.jk = add nuw nsw i16 %i.jg, 1
  %i.jl = add nuw nsw i16 %i.jk, %i.jj
  %i.jm = lshr i16 %i.jl, 1
  %i.jn = trunc nuw i16 %i.jm to i8
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %i.jn, ptr %i.jo, align 1
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 23
  %i.jq = load i8, ptr %i.jp, align 1
  %i.jr = zext i8 %i.jq to i16
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 23
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = zext i8 %i.jt to i16
  %i.jv = add nuw nsw i16 %i.jr, 1
  %i.jw = add nuw nsw i16 %i.jv, %i.ju
  %i.jx = lshr i16 %i.jw, 1
  %i.jy = trunc nuw i16 %i.jx to i8
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %i.jy, ptr %i.jz, align 1
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kb = load i8, ptr %i.ka, align 1
  %i.kc = zext i8 %i.kb to i16
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ke = load i8, ptr %i.kd, align 1
  %i.kf = zext i8 %i.ke to i16
  %i.kg = add nuw nsw i16 %i.kc, 1
  %i.kh = add nuw nsw i16 %i.kg, %i.kf
  %i.ki = lshr i16 %i.kh, 1
  %i.kj = trunc nuw i16 %i.ki to i8
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %i.kj, ptr %i.kk, align 1
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.km = load i8, ptr %i.kl, align 1
  %i.kn = zext i8 %i.km to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 25
  %i.kp = load i8, ptr %i.ko, align 1
  %i.kq = zext i8 %i.kp to i16
  %i.kr = add nuw nsw i16 %i.kn, 1
  %i.ks = add nuw nsw i16 %i.kr, %i.kq
  %i.kt = lshr i16 %i.ks, 1
  %i.ku = trunc nuw i16 %i.kt to i8
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %i.ku, ptr %i.kv, align 1
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.kx = load i8, ptr %i.kw, align 1
  %i.ky = zext i8 %i.kx to i16
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.la = load i8, ptr %i.kz, align 1
  %i.lb = zext i8 %i.la to i16
  %i.lc = add nuw nsw i16 %i.ky, 1
  %i.ld = add nuw nsw i16 %i.lc, %i.lb
  %i.le = lshr i16 %i.ld, 1
  %i.lf = trunc nuw i16 %i.le to i8
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.lf, ptr %i.lg, align 1
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 27
  %i.li = load i8, ptr %i.lh, align 1
  %i.lj = zext i8 %i.li to i16
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 27
  %i.ll = load i8, ptr %i.lk, align 1
  %i.lm = zext i8 %i.ll to i16
  %i.ln = add nuw nsw i16 %i.lj, 1
  %i.lo = add nuw nsw i16 %i.ln, %i.lm
  %i.lp = lshr i16 %i.lo, 1
  %i.lq = trunc nuw i16 %i.lp to i8
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.lq, ptr %i.lr, align 1
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.lt = load i8, ptr %i.ls, align 1
  %i.lu = zext i8 %i.lt to i16
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.lw = load i8, ptr %i.lv, align 1
  %i.lx = zext i8 %i.lw to i16
  %i.ly = add nuw nsw i16 %i.lu, 1
  %i.lz = add nuw nsw i16 %i.ly, %i.lx
  %i.ma = lshr i16 %i.lz, 1
  %i.mb = trunc nuw i16 %i.ma to i8
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %i.mb, ptr %i.mc, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.me = load i8, ptr %i.md, align 1
  %i.mf = zext i8 %i.me to i16
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.mh = load i8, ptr %i.mg, align 1
  %i.mi = zext i8 %i.mh to i16
  %i.mj = add nuw nsw i16 %i.mf, 1
  %i.mk = add nuw nsw i16 %i.mj, %i.mi
  %i.ml = lshr i16 %i.mk, 1
  %i.mm = trunc nuw i16 %i.ml to i8
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %i.mm, ptr %i.mn, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.mp = load i8, ptr %i.mo, align 1
  %i.mq = zext i8 %i.mp to i16
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.ms = load i8, ptr %i.mr, align 1
  %i.mt = zext i8 %i.ms to i16
  %i.mu = add nuw nsw i16 %i.mq, 1
  %i.mv = add nuw nsw i16 %i.mu, %i.mt
  %i.mw = lshr i16 %i.mv, 1
  %i.mx = trunc nuw i16 %i.mw to i8
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %i.mx, ptr %i.my, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.na = load i8, ptr %i.mz, align 1
  %i.nb = zext i8 %i.na to i16
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 31
  %i.nd = load i8, ptr %i.nc, align 1
  %i.ne = zext i8 %i.nd to i16
  %i.nf = add nuw nsw i16 %i.nb, 1
  %i.ng = add nuw nsw i16 %i.nf, %i.ne
  %i.nh = lshr i16 %i.ng, 1
  %i.ni = trunc nuw i16 %i.nh to i8
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %i.ni, ptr %i.nj, align 1
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pavgw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = add i64 %i.c, 32
  %i.e = add i64 %i.b, 32
  %i.f = add i64 %i.a, 32                         ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.d, %i.a
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound010 = icmp ugt i64 %i.e, %i.a
  %rt.bound111 = icmp ugt i64 %i.f, %i.b
  %rt.conflict12 = and i1 %rt.bound010, %rt.bound111
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict12
  br i1 %rt.conflict.all, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.g = load <8 x i16>, ptr %2, align 2
  %i.h = zext <8 x i16> %i.g to <8 x i32>
  %i.i = load <8 x i16>, ptr %3, align 2
  %i.j = zext <8 x i16> %i.i to <8 x i32>
  %i.k = add nuw nsw <8 x i32> %i.h, splat (i32 1)
  %i.l = add nuw nsw <8 x i32> %i.k, %i.j
  %i.m = lshr <8 x i32> %i.l, splat (i32 1)
  %i.n = trunc <8 x i32> %i.m to <8 x i16>
  store <8 x i16> %i.n, ptr %1, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load <8 x i16>, ptr %i.o, align 2
  %i.s = zext <8 x i16> %i.r to <8 x i32>
  %i.t = load <8 x i16>, ptr %i.p, align 2
  %i.u = zext <8 x i16> %i.t to <8 x i32>
  %i.v = add nuw nsw <8 x i32> %i.s, splat (i32 1)
  %i.w = add nuw nsw <8 x i32> %i.v, %i.u
  %i.x = lshr <8 x i32> %i.w, splat (i32 1)
  %i.y = trunc <8 x i32> %i.x to <8 x i16>
  store <8 x i16> %i.y, ptr %i.q, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.z = load i16, ptr %2, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = load i16, ptr %3, align 2
  %i.ac = zext i16 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.aa, 1
  %i.ae = add nuw nsw i32 %i.ad, %i.ac
  %i.af = lshr i32 %i.ae, 1
  %i.ag = trunc nuw i32 %i.af to i16
  store i16 %i.ag, ptr %1, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = zext i16 %i.al to i32
  %i.an = add nuw nsw i32 %i.aj, 1
  %i.ao = add nuw nsw i32 %i.an, %i.am
  %i.ap = lshr i32 %i.ao, 1
  %i.aq = trunc nuw i32 %i.ap to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.aq, ptr %i.ar, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.au, 1
  %i.az = add nuw nsw i32 %i.ay, %i.ax
  %i.ba = lshr i32 %i.az, 1
  %i.bb = trunc nuw i32 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add nuw nsw i32 %i.bf, 1
  %i.bk = add nuw nsw i32 %i.bj, %i.bi
  %i.bl = lshr i32 %i.bk, 1
  %i.bm = trunc nuw i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.bq, 1
  %i.bv = add nuw nsw i32 %i.bu, %i.bt
  %i.bw = lshr i32 %i.bv, 1
  %i.bx = trunc nuw i32 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.bx, ptr %i.by, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = zext i16 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = zext i16 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.cb, 1
  %i.cg = add nuw nsw i32 %i.cf, %i.ce
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = trunc nuw i32 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ci, ptr %i.cj, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = zext i16 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = zext i16 %i.co to i32
  %i.cq = add nuw nsw i32 %i.cm, 1
  %i.cr = add nuw nsw i32 %i.cq, %i.cp
  %i.cs = lshr i32 %i.cr, 1
  %i.ct = trunc nuw i32 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = zext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = zext i16 %i.cz to i32
  %i.db = add nuw nsw i32 %i.cx, 1
  %i.dc = add nuw nsw i32 %i.db, %i.da
  %i.dd = lshr i32 %i.dc, 1
  %i.de = trunc nuw i32 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.de, ptr %i.df, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = zext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = zext i16 %i.dk to i32
  %i.dm = add nuw nsw i32 %i.di, 1
  %i.dn = add nuw nsw i32 %i.dm, %i.dl
  %i.do = lshr i32 %i.dn, 1
  %i.dp = trunc nuw i32 %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.dp, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = zext i16 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.dv = load i16, ptr %i.du, align 2
  %i.dw = zext i16 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dt, 1
  %i.dy = add nuw nsw i32 %i.dx, %i.dw
  %i.dz = lshr i32 %i.dy, 1
  %i.ea = trunc nuw i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.ea, ptr %i.eb, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ed = load i16, ptr %i.ec, align 2
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.eg = load i16, ptr %i.ef, align 2
  %i.eh = zext i16 %i.eg to i32
  %i.ei = add nuw nsw i32 %i.ee, 1
  %i.ej = add nuw nsw i32 %i.ei, %i.eh
  %i.ek = lshr i32 %i.ej, 1
  %i.el = trunc nuw i32 %i.ek to i16
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.el, ptr %i.em, align 2
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = zext i16 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.er = load i16, ptr %i.eq, align 2
  %i.es = zext i16 %i.er to i32
  %i.et = add nuw nsw i32 %i.ep, 1
  %i.eu = add nuw nsw i32 %i.et, %i.es
  %i.ev = lshr i32 %i.eu, 1
  %i.ew = trunc nuw i32 %i.ev to i16
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ew, ptr %i.ex, align 2
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load i16, ptr %i.ey, align 2
  %i.fa = zext i16 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fc = load i16, ptr %i.fb, align 2
  %i.fd = zext i16 %i.fc to i32
  %i.fe = add nuw nsw i32 %i.fa, 1
  %i.ff = add nuw nsw i32 %i.fe, %i.fd
  %i.fg = lshr i32 %i.ff, 1
  %i.fh = trunc nuw i32 %i.fg to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.fh, ptr %i.fi, align 2
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.fk = load i16, ptr %i.fj, align 2
  %i.fl = zext i16 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.fn = load i16, ptr %i.fm, align 2
  %i.fo = zext i16 %i.fn to i32
  %i.fp = add nuw nsw i32 %i.fl, 1
  %i.fq = add nuw nsw i32 %i.fp, %i.fo
  %i.fr = lshr i32 %i.fq, 1
  %i.fs = trunc nuw i32 %i.fr to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.fs, ptr %i.ft, align 2
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.fv = load i16, ptr %i.fu, align 2
  %i.fw = zext i16 %i.fv to i32
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.fy = load i16, ptr %i.fx, align 2
  %i.fz = zext i16 %i.fy to i32
  %i.ga = add nuw nsw i32 %i.fw, 1
  %i.gb = add nuw nsw i32 %i.ga, %i.fz
  %i.gc = lshr i32 %i.gb, 1
end_hunk_10
begin_hunk_11_@helper_packssdw_ymm:.preheader22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpcklbw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader19:
  %i.a = load <8 x i8>, ptr %2, align 1
  %i.b = load <8 x i8>, ptr %3, align 1
  %i.c = shufflevector <8 x i8> %i.a, <8 x i8> %i.b, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.c, ptr %1, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <8 x i8>, ptr %i.d, align 1
  %i.h = load <8 x i8>, ptr %i.e, align 1
  %i.i = shufflevector <8 x i8> %i.g, <8 x i8> %i.h, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.i, ptr %i.f, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpcklwd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader19:
  %i.a = load <4 x i16>, ptr %2, align 2
  %i.b = load <4 x i16>, ptr %3, align 2
  %i.c = shufflevector <4 x i16> %i.a, <4 x i16> %i.b, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.c, ptr %1, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <4 x i16>, ptr %i.d, align 2
  %i.h = load <4 x i16>, ptr %i.e, align 2
  %i.i = shufflevector <4 x i16> %i.g, <4 x i16> %i.h, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.i, ptr %i.f, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpckldq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader19:
  %i.a = load <2 x i32>, ptr %2, align 4
  %i.b = load <2 x i32>, ptr %3, align 4
  %i.c = shufflevector <2 x i32> %i.a, <2 x i32> %i.b, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.c, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <2 x i32>, ptr %i.d, align 4
  %i.h = load <2 x i32>, ptr %i.e, align 4
  %i.i = shufflevector <2 x i32> %i.g, <2 x i32> %i.h, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.i, ptr %i.f, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpcklqdq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %2, align 8
  %i.b = load i64, ptr %3, align 8
  store i64 %i.a, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpckhbw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load <8 x i8>, ptr %i.a, align 1
  %i.d = load <8 x i8>, ptr %i.b, align 1
  %i.e = shufflevector <8 x i8> %i.c, <8 x i8> %i.d, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.e, ptr %1, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <8 x i8>, ptr %i.f, align 1
  %i.j = load <8 x i8>, ptr %i.g, align 1
  %i.k = shufflevector <8 x i8> %i.i, <8 x i8> %i.j, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.k, ptr %i.h, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpckhwd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load <4 x i16>, ptr %i.a, align 2
  %i.d = load <4 x i16>, ptr %i.b, align 2
  %i.e = shufflevector <4 x i16> %i.c, <4 x i16> %i.d, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.e, ptr %1, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <4 x i16>, ptr %i.f, align 2
  %i.j = load <4 x i16>, ptr %i.g, align 2
  %i.k = shufflevector <4 x i16> %i.i, <4 x i16> %i.j, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.k, ptr %i.h, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpckhdq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load <2 x i32>, ptr %i.a, align 4
  %i.d = load <2 x i32>, ptr %i.b, align 4
  %i.e = shufflevector <2 x i32> %i.c, <2 x i32> %i.d, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.e, ptr %1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x i32>, ptr %i.f, align 4
  %i.j = load <2 x i32>, ptr %i.g, align 4
  %i.k = shufflevector <2 x i32> %i.i, <2 x i32> %i.j, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.k, ptr %i.h, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_punpckhqdq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.b, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_pshufb_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !10
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.f ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %.not = icmp sgt i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %indvars.iv, 16
  %i.e = and i8 %i.c, 15
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  %i.i = load i8, ptr %i.h, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi i8 [ %i.i, %bb.c ], [ 0, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.j, ptr %i.k, align 2
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %.not.1 = icmp sgt i8 %i.m, -1
  br i1 %.not.1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = and i64 %indvars.iv, 16
  %i.o = and i8 %i.m, 15
  %i.p = zext nneg i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  %i.s = load i8, ptr %i.r, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi i8 [ %i.s, %bb.e ], [ 0, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.t, ptr %i.u, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32
  br i1 %exitcond.not.1, label %.preheader.preheader, label %bb.b, !llvm.loop !84

.preheader.preheader:                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_phaddw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader32:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <8 x i16>, ptr %2, align 2          ; 2 uses
  %i.d = load <8 x i16>, ptr %3, align 2          ; 2 uses
  %i.e = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.f = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.g = add <8 x i16> %i.e, %i.f
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <8 x i16>, ptr %i.a, align 2        ; 2 uses
  %i.i = load <8 x i16>, ptr %i.b, align 2        ; 2 uses
  %i.j = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.k = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.l = add <8 x i16> %i.j, %i.k
  store <8 x i16> %i.g, ptr %1, align 2
  store <8 x i16> %i.l, ptr %.sroa.12.0..sroa_idx, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_phsubw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader32:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <8 x i16>, ptr %2, align 2          ; 2 uses
  %i.d = load <8 x i16>, ptr %3, align 2          ; 2 uses
  %i.e = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.f = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.g = sub <8 x i16> %i.e, %i.f
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <8 x i16>, ptr %i.a, align 2        ; 2 uses
  %i.i = load <8 x i16>, ptr %i.b, align 2        ; 2 uses
  %i.j = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.k = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.l = sub <8 x i16> %i.j, %i.k
  store <8 x i16> %i.g, ptr %1, align 2
  store <8 x i16> %i.l, ptr %.sroa.12.0..sroa_idx, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_phaddsw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader33:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <8 x i16>, ptr %2, align 2          ; 2 uses
  %i.d = load <8 x i16>, ptr %3, align 2          ; 2 uses
  %i.e = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.f = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.g = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.e, <8 x i16> %i.f)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <8 x i16>, ptr %i.a, align 2        ; 2 uses
  %i.i = load <8 x i16>, ptr %i.b, align 2        ; 2 uses
  %i.j = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.k = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.l = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.j, <8 x i16> %i.k)
  store <8 x i16> %i.g, ptr %1, align 2
  store <8 x i16> %i.l, ptr %.sroa.12.0..sroa_idx, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_phsubsw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader33:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <8 x i16>, ptr %2, align 2          ; 2 uses
  %i.d = load <8 x i16>, ptr %3, align 2          ; 2 uses
  %i.e = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.f = shufflevector <8 x i16> %i.c, <8 x i16> %i.d, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.g = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %i.e, <8 x i16> %i.f)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <8 x i16>, ptr %i.a, align 2        ; 2 uses
  %i.i = load <8 x i16>, ptr %i.b, align 2        ; 2 uses
  %i.j = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.k = shufflevector <8 x i16> %i.h, <8 x i16> %i.i, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.l = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> %i.j, <8 x i16> %i.k)
  store <8 x i16> %i.g, ptr %1, align 2
  store <8 x i16> %i.l, ptr %.sroa.12.0..sroa_idx, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_phaddd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader32:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <4 x i32>, ptr %2, align 4          ; 2 uses
  %i.d = load <4 x i32>, ptr %3, align 4          ; 2 uses
  %i.e = shufflevector <4 x i32> %i.c, <4 x i32> %i.d, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.f = shufflevector <4 x i32> %i.c, <4 x i32> %i.d, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.g = add <4 x i32> %i.e, %i.f
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <4 x i32>, ptr %i.a, align 4        ; 2 uses
  %i.i = load <4 x i32>, ptr %i.b, align 4        ; 2 uses
  %i.j = shufflevector <4 x i32> %i.h, <4 x i32> %i.i, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.k = shufflevector <4 x i32> %i.h, <4 x i32> %i.i, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.l = add <4 x i32> %i.j, %i.k
  store <4 x i32> %i.g, ptr %1, align 4
  store <4 x i32> %i.l, ptr %.sroa.8.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_phsubd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
.preheader32:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <4 x i32>, ptr %2, align 4          ; 2 uses
  %i.d = load <4 x i32>, ptr %3, align 4          ; 2 uses
  %i.e = shufflevector <4 x i32> %i.c, <4 x i32> %i.d, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.f = shufflevector <4 x i32> %i.c, <4 x i32> %i.d, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.g = sub <4 x i32> %i.e, %i.f
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load <4 x i32>, ptr %i.a, align 4        ; 2 uses
  %i.i = load <4 x i32>, ptr %i.b, align 4        ; 2 uses
  %i.j = shufflevector <4 x i32> %i.h, <4 x i32> %i.i, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.k = shufflevector <4 x i32> %i.h, <4 x i32> %i.i, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.l = sub <4 x i32> %i.j, %i.k
  store <4 x i32> %i.g, ptr %1, align 4
  store <4 x i32> %i.l, ptr %.sroa.8.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmaddubsw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %3, align 1
  %i.b = sext i8 %i.a to i32
  %i.c = load i8, ptr %2, align 1
  %i.d = zext i8 %i.c to i32
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = sext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = add nsw i32 %i.l, %i.e
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -32768)
  %.0.i = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.n, i32 32767)
  %i.o = trunc nsw i32 %.0.i to i16
  store i16 %i.o, ptr %1, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = sext i8 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = mul nsw i32 %i.u, %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = mul nsw i32 %i.ab, %i.y
  %i.ad = add nsw i32 %i.ac, %i.v
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 -32768)
  %.0.i.1 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.ae, i32 32767)
  %i.af = trunc nsw i32 %.0.i.1 to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.af, ptr %i.ag, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = sext i8 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = mul nsw i32 %i.am, %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = sext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %i.au = mul nsw i32 %i.at, %i.aq
  %i.av = add nsw i32 %i.au, %i.an
  %i.aw = tail call i32 @llvm.smax.i32(i32 %i.av, i32 -32768)
  %.0.i.2 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.aw, i32 32767)
  %i.ax = trunc nsw i32 %.0.i.2 to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.ax, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = sext i8 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = mul nsw i32 %i.be, %i.bb
end_hunk_11
begin_hunk_12_@helper_pmaddubsw_ymm:bb.a
  store i16 %i.dr, ptr %i.ds, align 2
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = sext i8 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i32
  %i.dz = mul nsw i32 %i.dy, %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = sext i8 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = zext i8 %i.ee to i32
  %i.eg = mul nsw i32 %i.ef, %i.ec
  %i.eh = add nsw i32 %i.eg, %i.dz
  %i.ei = tail call i32 @llvm.smax.i32(i32 %i.eh, i32 -32768)
  %.0.i.7 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.ei, i32 32767)
  %i.ej = trunc nsw i32 %.0.i.7 to i16
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.ej, ptr %i.ek, align 2
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.em = load i8, ptr %i.el, align 1
  %i.en = sext i8 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = zext i8 %i.ep to i32
  %i.er = mul nsw i32 %i.eq, %i.en
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = sext i8 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i32
  %i.ey = mul nsw i32 %i.ex, %i.eu
  %i.ez = add nsw i32 %i.ey, %i.er
  %i.fa = tail call i32 @llvm.smax.i32(i32 %i.ez, i32 -32768)
  %.0.i.8 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.fa, i32 32767)
  %i.fb = trunc nsw i32 %.0.i.8 to i16
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.fb, ptr %i.fc, align 2
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = sext i8 %i.fe to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i32
  %i.fj = mul nsw i32 %i.fi, %i.ff
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = sext i8 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = zext i8 %i.fo to i32
  %i.fq = mul nsw i32 %i.fp, %i.fm
  %i.fr = add nsw i32 %i.fq, %i.fj
  %i.fs = tail call i32 @llvm.smax.i32(i32 %i.fr, i32 -32768)
  %.0.i.9 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.fs, i32 32767)
  %i.ft = trunc nsw i32 %.0.i.9 to i16
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.ft, ptr %i.fu, align 2
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = sext i8 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = zext i8 %i.fz to i32
  %i.gb = mul nsw i32 %i.ga, %i.fx
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = sext i8 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 21
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = zext i8 %i.gg to i32
  %i.gi = mul nsw i32 %i.gh, %i.ge
  %i.gj = add nsw i32 %i.gi, %i.gb
  %i.gk = tail call i32 @llvm.smax.i32(i32 %i.gj, i32 -32768)
  %.0.i.10 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.gk, i32 32767)
  %i.gl = trunc nsw i32 %.0.i.10 to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.gl, ptr %i.gm, align 2
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = sext i8 %i.go to i32
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = zext i8 %i.gr to i32
  %i.gt = mul nsw i32 %i.gs, %i.gp
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 23
  %i.gv = load i8, ptr %i.gu, align 1
  %i.gw = sext i8 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 23
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = zext i8 %i.gy to i32
  %i.ha = mul nsw i32 %i.gz, %i.gw
  %i.hb = add nsw i32 %i.ha, %i.gt
  %i.hc = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 -32768)
  %.0.i.11 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.hc, i32 32767)
  %i.hd = trunc nsw i32 %.0.i.11 to i16
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.hd, ptr %i.he, align 2
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = sext i8 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hj = load i8, ptr %i.hi, align 1
  %i.hk = zext i8 %i.hj to i32
  %i.hl = mul nsw i32 %i.hk, %i.hh
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 25
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = sext i8 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = zext i8 %i.hq to i32
  %i.hs = mul nsw i32 %i.hr, %i.ho
  %i.ht = add nsw i32 %i.hs, %i.hl
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 -32768)
  %.0.i.12 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.hu, i32 32767)
  %i.hv = trunc nsw i32 %.0.i.12 to i16
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.hv, ptr %i.hw, align 2
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = sext i8 %i.hy to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = zext i8 %i.ib to i32
  %i.id = mul nsw i32 %i.ic, %i.hz
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 27
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = sext i8 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 27
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = zext i8 %i.ii to i32
  %i.ik = mul nsw i32 %i.ij, %i.ig
  %i.il = add nsw i32 %i.ik, %i.id
  %i.im = tail call i32 @llvm.smax.i32(i32 %i.il, i32 -32768)
  %.0.i.13 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.im, i32 32767)
  %i.in = trunc nsw i32 %.0.i.13 to i16
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.in, ptr %i.io, align 2
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.iq = load i8, ptr %i.ip, align 1
  %i.ir = sext i8 %i.iq to i32
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.it = load i8, ptr %i.is, align 1
  %i.iu = zext i8 %i.it to i32
  %i.iv = mul nsw i32 %i.iu, %i.ir
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.ix = load i8, ptr %i.iw, align 1
  %i.iy = sext i8 %i.ix to i32
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.ja = load i8, ptr %i.iz, align 1
  %i.jb = zext i8 %i.ja to i32
  %i.jc = mul nsw i32 %i.jb, %i.iy
  %i.jd = add nsw i32 %i.jc, %i.iv
  %i.je = tail call i32 @llvm.smax.i32(i32 %i.jd, i32 -32768)
  %.0.i.14 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.je, i32 32767)
  %i.jf = trunc nsw i32 %.0.i.14 to i16
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %i.jf, ptr %i.jg, align 2
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = sext i8 %i.ji to i32
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.jl = load i8, ptr %i.jk, align 1
  %i.jm = zext i8 %i.jl to i32
  %i.jn = mul nsw i32 %i.jm, %i.jj
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 31
  %i.jp = load i8, ptr %i.jo, align 1
  %i.jq = sext i8 %i.jp to i32
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = zext i8 %i.js to i32
  %i.ju = mul nsw i32 %i.jt, %i.jq
  %i.jv = add nsw i32 %i.ju, %i.jn
  %i.jw = tail call i32 @llvm.smax.i32(i32 %i.jv, i32 -32768)
  %.0.i.15 = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.jw, i32 32767)
  %i.jx = trunc nsw i32 %.0.i.15 to i16
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.jx, ptr %i.jy, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmulhrsw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = add i64 %i.c, 32
  %i.e = add i64 %i.b, 32
  %i.f = add i64 %i.a, 32                         ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.d, %i.a
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound010 = icmp ugt i64 %i.e, %i.a
  %rt.bound111 = icmp ugt i64 %i.f, %i.b
  %rt.conflict12 = and i1 %rt.bound010, %rt.bound111
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict12
  br i1 %rt.conflict.all, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.g = load <8 x i16>, ptr %2, align 2
  %i.h = sext <8 x i16> %i.g to <8 x i32>
  %i.i = load <8 x i16>, ptr %3, align 2
  %i.j = sext <8 x i16> %i.i to <8 x i32>
  %i.k = mul nsw <8 x i32> %i.j, %i.h
  %i.l = add nsw <8 x i32> %i.k, splat (i32 16384)
  %i.m = lshr <8 x i32> %i.l, splat (i32 15)
  %i.n = trunc <8 x i32> %i.m to <8 x i16>
  store <8 x i16> %i.n, ptr %1, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load <8 x i16>, ptr %i.o, align 2
  %i.s = sext <8 x i16> %i.r to <8 x i32>
  %i.t = load <8 x i16>, ptr %i.p, align 2
  %i.u = sext <8 x i16> %i.t to <8 x i32>
  %i.v = mul nsw <8 x i32> %i.u, %i.s
  %i.w = add nsw <8 x i32> %i.v, splat (i32 16384)
  %i.x = lshr <8 x i32> %i.w, splat (i32 15)
  %i.y = trunc <8 x i32> %i.x to <8 x i16>
  store <8 x i16> %i.y, ptr %i.q, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.z = load i16, ptr %2, align 2
  %i.aa = sext i16 %i.z to i32
  %i.ab = load i16, ptr %3, align 2
  %i.ac = sext i16 %i.ab to i32
  %i.ad = mul nsw i32 %i.ac, %i.aa
  %i.ae = add nsw i32 %i.ad, 16384
  %i.af = lshr i32 %i.ae, 15
  %i.ag = trunc i32 %i.af to i16
  store i16 %i.ag, ptr %1, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = sext i16 %i.al to i32
  %i.an = mul nsw i32 %i.am, %i.aj
  %i.ao = add nsw i32 %i.an, 16384
  %i.ap = lshr i32 %i.ao, 15
  %i.aq = trunc i32 %i.ap to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.aq, ptr %i.ar, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.at = load i16, ptr %i.as, align 2
  %i.au = sext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = sext i16 %i.aw to i32
  %i.ay = mul nsw i32 %i.ax, %i.au
  %i.az = add nsw i32 %i.ay, 16384
  %i.ba = lshr i32 %i.az, 15
  %i.bb = trunc i32 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = sext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = sext i16 %i.bh to i32
  %i.bj = mul nsw i32 %i.bi, %i.bf
  %i.bk = add nsw i32 %i.bj, 16384
  %i.bl = lshr i32 %i.bk, 15
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = sext i16 %i.bs to i32
  %i.bu = mul nsw i32 %i.bt, %i.bq
  %i.bv = add nsw i32 %i.bu, 16384
  %i.bw = lshr i32 %i.bv, 15
  %i.bx = trunc i32 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.bx, ptr %i.by, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = sext i16 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = sext i16 %i.cd to i32
  %i.cf = mul nsw i32 %i.ce, %i.cb
  %i.cg = add nsw i32 %i.cf, 16384
  %i.ch = lshr i32 %i.cg, 15
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ci, ptr %i.cj, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = sext i16 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = sext i16 %i.co to i32
  %i.cq = mul nsw i32 %i.cp, %i.cm
  %i.cr = add nsw i32 %i.cq, 16384
  %i.cs = lshr i32 %i.cr, 15
  %i.ct = trunc i32 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = sext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = sext i16 %i.cz to i32
  %i.db = mul nsw i32 %i.da, %i.cx
  %i.dc = add nsw i32 %i.db, 16384
  %i.dd = lshr i32 %i.dc, 15
  %i.de = trunc i32 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.de, ptr %i.df, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = sext i16 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = sext i16 %i.dk to i32
  %i.dm = mul nsw i32 %i.dl, %i.di
  %i.dn = add nsw i32 %i.dm, 16384
  %i.do = lshr i32 %i.dn, 15
  %i.dp = trunc i32 %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.dp, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = sext i16 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.dv = load i16, ptr %i.du, align 2
  %i.dw = sext i16 %i.dv to i32
  %i.dx = mul nsw i32 %i.dw, %i.dt
  %i.dy = add nsw i32 %i.dx, 16384
  %i.dz = lshr i32 %i.dy, 15
  %i.ea = trunc i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.ea, ptr %i.eb, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ed = load i16, ptr %i.ec, align 2
  %i.ee = sext i16 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.eg = load i16, ptr %i.ef, align 2
  %i.eh = sext i16 %i.eg to i32
  %i.ei = mul nsw i32 %i.eh, %i.ee
  %i.ej = add nsw i32 %i.ei, 16384
  %i.ek = lshr i32 %i.ej, 15
  %i.el = trunc i32 %i.ek to i16
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.el, ptr %i.em, align 2
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = sext i16 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.er = load i16, ptr %i.eq, align 2
  %i.es = sext i16 %i.er to i32
  %i.et = mul nsw i32 %i.es, %i.ep
  %i.eu = add nsw i32 %i.et, 16384
  %i.ev = lshr i32 %i.eu, 15
  %i.ew = trunc i32 %i.ev to i16
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ew, ptr %i.ex, align 2
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load i16, ptr %i.ey, align 2
  %i.fa = sext i16 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fc = load i16, ptr %i.fb, align 2
  %i.fd = sext i16 %i.fc to i32
  %i.fe = mul nsw i32 %i.fd, %i.fa
  %i.ff = add nsw i32 %i.fe, 16384
  %i.fg = lshr i32 %i.ff, 15
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.fh, ptr %i.fi, align 2
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.fk = load i16, ptr %i.fj, align 2
  %i.fl = sext i16 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.fn = load i16, ptr %i.fm, align 2
  %i.fo = sext i16 %i.fn to i32
  %i.fp = mul nsw i32 %i.fo, %i.fl
  %i.fq = add nsw i32 %i.fp, 16384
  %i.fr = lshr i32 %i.fq, 15
  %i.fs = trunc i32 %i.fr to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.fs, ptr %i.ft, align 2
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.fv = load i16, ptr %i.fu, align 2
  %i.fw = sext i16 %i.fv to i32
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.fy = load i16, ptr %i.fx, align 2
  %i.fz = sext i16 %i.fy to i32
  %i.ga = mul nsw i32 %i.fz, %i.fw
  %i.gb = add nsw i32 %i.ga, 16384
  %i.gc = lshr i32 %i.gb, 15
  %i.gd = trunc i32 %i.gc to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %i.gd, ptr %i.ge, align 2
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.gg = load i16, ptr %i.gf, align 2
  %i.gh = sext i16 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.gj = load i16, ptr %i.gi, align 2
  %i.gk = sext i16 %i.gj to i32
  %i.gl = mul nsw i32 %i.gk, %i.gh
  %i.gm = add nsw i32 %i.gl, 16384
  %i.gn = lshr i32 %i.gm, 15
  %i.go = trunc i32 %i.gn to i16
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.go, ptr %i.gp, align 2
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_psignb_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.k
  ret void

bb.c:                                             ; preds = %bb.k, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.k ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1
  %i.h = sub i8 0, %i.g
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %i.i = phi i8 [ %i.h, %bb.f ], [ %i.e, %bb.e ], [ 0, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.i, ptr %i.j, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.o = load i8, ptr %i.n, align 1
  %i.p = sub i8 0, %i.o
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.1 = icmp eq i8 %i.l, 0
  br i1 %.not.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.r = load i8, ptr %i.q, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.s = phi i8 [ %i.p, %bb.h ], [ %i.r, %bb.j ], [ 0, %bb.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.s, ptr %i.t, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 32
  br i1 %exitcond.not.1, label %bb.b, label %bb.c, !llvm.loop !85
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_psignw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i16, ptr %3, align 2                ; 2 uses
  %i.b = icmp sgt i16 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i16, ptr %2, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = load i16, ptr %2, align 2
  %i.e = sub i16 0, %i.d
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %i.f = phi i16 [ %i.e, %bb.d ], [ %i.c, %bb.c ], [ 0, %bb.b ]
  store i16 %i.f, ptr %1, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.h = load i16, ptr %i.g, align 2              ; 2 uses
  %i.i = icmp sgt i16 %i.h, -1
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i16, ptr %i.j, align 2
  %i.l = sub i16 0, %i.k
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %.not.1 = icmp eq i16 %i.h, 0
  br i1 %.not.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.n = load i16, ptr %i.m, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.o = phi i16 [ %i.l, %bb.f ], [ %i.n, %bb.h ], [ 0, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.o, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  %i.s = icmp sgt i16 %i.r, -1
  br i1 %i.s, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i16, ptr %i.t, align 2
  %i.v = sub i16 0, %i.u
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %.not.2 = icmp eq i16 %i.r, 0
  br i1 %.not.2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load i16, ptr %i.w, align 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.y = phi i16 [ %i.v, %bb.j ], [ %i.x, %bb.l ], [ 0, %bb.k ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  %i.ac = icmp sgt i16 %i.ab, -1
  br i1 %i.ac, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = sub i16 0, %i.ae
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not.3 = icmp eq i16 %i.ab, 0
  br i1 %.not.3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ah = load i16, ptr %i.ag, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ai = phi i16 [ %i.af, %bb.n ], [ %i.ah, %bb.p ], [ 0, %bb.o ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.ai, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load i16, ptr %i.ak, align 2            ; 2 uses
  %i.am = icmp sgt i16 %i.al, -1
  br i1 %i.am, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = sub i16 0, %i.ao
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %.not.4 = icmp eq i16 %i.al, 0
  br i1 %.not.4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i16, ptr %i.aq, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.as = phi i16 [ %i.ap, %bb.r ], [ %i.ar, %bb.t ], [ 0, %bb.s ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.as, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.av = load i16, ptr %i.au, align 2            ; 2 uses
  %i.aw = icmp sgt i16 %i.av, -1
  br i1 %i.aw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = sub i16 0, %i.ay
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %.not.5 = icmp eq i16 %i.av, 0
  br i1 %.not.5, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bb = load i16, ptr %i.ba, align 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.bc = phi i16 [ %i.az, %bb.v ], [ %i.bb, %bb.x ], [ 0, %bb.w ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bf = load i16, ptr %i.be, align 2            ; 2 uses
  %i.bg = icmp sgt i16 %i.bf, -1
  br i1 %i.bg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = sub i16 0, %i.bi
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %.not.6 = icmp eq i16 %i.bf, 0
  br i1 %.not.6, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bl = load i16, ptr %i.bk, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bm = phi i16 [ %i.bj, %bb.z ], [ %i.bl, %bb.ab ], [ 0, %bb.aa ]
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.bp = load i16, ptr %i.bo, align 2            ; 2 uses
  %i.bq = icmp sgt i16 %i.bp, -1
  br i1 %i.bq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = sub i16 0, %i.bs
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %.not.7 = icmp eq i16 %i.bp, 0
  br i1 %.not.7, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bv = load i16, ptr %i.bu, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bw = phi i16 [ %i.bt, %bb.ad ], [ %i.bv, %bb.af ], [ 0, %bb.ae ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.bw, ptr %i.bx, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bz = load i16, ptr %i.by, align 2            ; 2 uses
  %i.ca = icmp sgt i16 %i.bz, -1
  br i1 %i.ca, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_12
begin_hunk_13_@helper_pblendvb_ymm:bb.a
  %i.bz = load i8, ptr %i.by, align 1
  %.not9.26 = icmp slt i8 %i.bz, 0
  %..26 = select i1 %.not9.26, ptr %3, ptr %2
  %.in.in.26 = getelementptr inbounds nuw i8, ptr %..26, i64 26
  %.in.26 = load i8, ptr %.in.in.26, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %.in.26, ptr %i.ca, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 27
  %i.cc = load i8, ptr %i.cb, align 1
  %.not9.27 = icmp slt i8 %i.cc, 0
  %..27 = select i1 %.not9.27, ptr %3, ptr %2
  %.in.in.27 = getelementptr inbounds nuw i8, ptr %..27, i64 27
  %.in.27 = load i8, ptr %.in.in.27, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %.in.27, ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.cf = load i8, ptr %i.ce, align 1
  %.not9.28 = icmp slt i8 %i.cf, 0
  %..28 = select i1 %.not9.28, ptr %3, ptr %2
  %.in.in.28 = getelementptr inbounds nuw i8, ptr %..28, i64 28
  %.in.28 = load i8, ptr %.in.in.28, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %.in.28, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 29
  %i.ci = load i8, ptr %i.ch, align 1
  %.not9.29 = icmp slt i8 %i.ci, 0
  %..29 = select i1 %.not9.29, ptr %3, ptr %2
  %.in.in.29 = getelementptr inbounds nuw i8, ptr %..29, i64 29
  %.in.29 = load i8, ptr %.in.in.29, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %.in.29, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 30
  %i.cl = load i8, ptr %i.ck, align 1
  %.not9.30 = icmp slt i8 %i.cl, 0
  %..30 = select i1 %.not9.30, ptr %3, ptr %2
  %.in.in.30 = getelementptr inbounds nuw i8, ptr %..30, i64 30
  %.in.30 = load i8, ptr %.in.in.30, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %.in.30, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 31
  %i.co = load i8, ptr %i.cn, align 1
  %.not9.31 = icmp slt i8 %i.co, 0
  %..31 = select i1 %.not9.31, ptr %3, ptr %2
  %.in.in.31 = getelementptr inbounds nuw i8, ptr %..31, i64 31
  %.in.31 = load i8, ptr %.in.in.31, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %.in.31, ptr %i.cp, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_blendvps_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %.not9 = icmp slt i32 %i.a, 0
  %. = select i1 %.not9, ptr %3, ptr %2
  %i.b = load i32, ptr %., align 4
  store i32 %i.b, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.not9.1 = icmp slt i32 %i.d, 0
  %..1 = select i1 %.not9.1, ptr %3, ptr %2
  %.in.1 = getelementptr inbounds nuw i8, ptr %..1, i64 4
  %i.e = load i32, ptr %.in.1, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i32, ptr %i.g, align 4
  %.not9.2 = icmp slt i32 %i.h, 0
  %..2 = select i1 %.not9.2, ptr %3, ptr %2
  %.in.2 = getelementptr inbounds nuw i8, ptr %..2, i64 8
  %i.i = load i32, ptr %.in.2, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %.not9.3 = icmp slt i32 %i.l, 0
  %..3 = select i1 %.not9.3, ptr %3, ptr %2
  %.in.3 = getelementptr inbounds nuw i8, ptr %..3, i64 12
  %i.m = load i32, ptr %.in.3, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %i.o, align 4
  %.not9.4 = icmp slt i32 %i.p, 0
  %..4 = select i1 %.not9.4, ptr %3, ptr %2
  %.in.4 = getelementptr inbounds nuw i8, ptr %..4, i64 16
  %i.q = load i32, ptr %.in.4, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.q, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %.not9.5 = icmp slt i32 %i.t, 0
  %..5 = select i1 %.not9.5, ptr %3, ptr %2
  %.in.5 = getelementptr inbounds nuw i8, ptr %..5, i64 20
  %i.u = load i32, ptr %.in.5, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.u, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.x = load i32, ptr %i.w, align 4
  %.not9.6 = icmp slt i32 %i.x, 0
  %..6 = select i1 %.not9.6, ptr %3, ptr %2
  %.in.6 = getelementptr inbounds nuw i8, ptr %..6, i64 24
  %i.y = load i32, ptr %.in.6, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ab = load i32, ptr %i.aa, align 4
  %.not9.7 = icmp slt i32 %i.ab, 0
  %..7 = select i1 %.not9.7, ptr %3, ptr %2
  %.in.7 = getelementptr inbounds nuw i8, ptr %..7, i64 28
  %i.ac = load i32, ptr %.in.7, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.ac, ptr %i.ad, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_blendvpd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %.not9 = icmp slt i64 %i.a, 0
  %. = select i1 %.not9, ptr %3, ptr %2
  %i.b = load i64, ptr %., align 8
  store i64 %i.b, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not9.1 = icmp slt i64 %i.d, 0
  %..1 = select i1 %.not9.1, ptr %3, ptr %2
  %.in.1 = getelementptr inbounds nuw i8, ptr %..1, i64 8
  %i.e = load i64, ptr %.in.1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %.not9.2 = icmp slt i64 %i.h, 0
  %..2 = select i1 %.not9.2, ptr %3, ptr %2
  %.in.2 = getelementptr inbounds nuw i8, ptr %..2, i64 16
  %i.i = load i64, ptr %.in.2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %.not9.3 = icmp slt i64 %i.l, 0
  %..3 = select i1 %.not9.3, ptr %3, ptr %2
  %.in.3 = getelementptr inbounds nuw i8, ptr %..3, i64 24
  %i.m = load i64, ptr %.in.3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.m, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_ptest_ymm(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x i64>, ptr %2, align 8          ; 2 uses
  %i.d = load <2 x i64>, ptr %1, align 8          ; 2 uses
  %i.e = xor <2 x i64> %i.d, <i64 -1, i64 0>
  %i.f = and <2 x i64> %i.c, %i.e
  %i.g = shufflevector <2 x i64> %i.f, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.h = xor <2 x i64> %i.d, <i64 0, i64 -1>
  %i.i = and <2 x i64> %i.c, %i.h
  %i.j = or <2 x i64> %i.g, %i.i
  %i.k = load <2 x i64>, ptr %i.b, align 8        ; 2 uses
  %i.l = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.m = xor <2 x i64> %i.l, <i64 0, i64 -1>
  %i.n = load <2 x i64>, ptr %i.a, align 8        ; 2 uses
  %i.o = shufflevector <2 x i64> %i.n, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.p = and <2 x i64> %i.o, %i.m
  %i.q = or <2 x i64> %i.p, %i.j
  %i.r = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.s = xor <2 x i64> %i.r, <i64 0, i64 -1>
  %i.t = shufflevector <2 x i64> %i.n, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.u = and <2 x i64> %i.t, %i.s
  %i.v = or <2 x i64> %i.u, %i.q
  %i.w = icmp eq <2 x i64> %i.v, zeroinitializer  ; 2 uses
  %i.x = extractelement <2 x i1> %i.w, i64 0
  %i.y = select i1 %i.x, i64 64, i64 0
  %i.z = extractelement <2 x i1> %i.w, i64 1
  %i.aa = zext i1 %i.z to i64
  %i.ab = or disjoint i64 %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.ad, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxbw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 32
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <8 x i8>, ptr %i.e, align 1
  %i.h = sext <8 x i8> %i.g to <8 x i16>
  store <8 x i16> %i.h, ptr %i.f, align 2
  %i.i = load <8 x i8>, ptr %2, align 1
  %i.j = sext <8 x i8> %i.i to <8 x i16>
  store <8 x i16> %i.j, ptr %1, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.l = load i8, ptr %i.k, align 1
  %i.m = sext i8 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.m, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.p = load i8, ptr %i.o, align 1
  %i.q = sext i8 %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %i.q, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.t = load i8, ptr %i.s, align 1
  %i.u = sext i8 %i.t to i16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.u, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sext i8 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = sext i8 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = sext i8 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.ag, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = sext i8 %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = sext i8 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = sext i8 %i.ar to i16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.as, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = sext i8 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.aw, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = sext i8 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = sext i8 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = sext i8 %i.bh to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.bi, ptr %i.bj, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = sext i8 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = sext i8 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.bq, ptr %i.br, align 2
  %i.bs = load i8, ptr %2, align 1
  %i.bt = sext i8 %i.bs to i16
  store i16 %i.bt, ptr %1, align 2
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxbd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.b = load i8, ptr %i.a, align 1
  %i.c = sext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.c, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.f = load i8, ptr %i.e, align 1
  %i.g = sext i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.j = load i8, ptr %i.i, align 1
  %i.k = sext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.k, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = sext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.r = load i8, ptr %i.q, align 1
  %i.s = sext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load i8, ptr %2, align 1
  %i.ad = sext i8 %i.ac to i32
  store i32 %i.ad, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxbq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = sext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 1
  %i.g = sext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = sext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load i8, ptr %2, align 1
  %i.n = sext i8 %i.m to i64
  store i64 %i.n, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxwd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = sext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.c, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.j = load i16, ptr %i.i, align 2
  %i.k = sext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.k, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i16, ptr %i.m, align 2
  %i.o = sext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.r = load i16, ptr %i.q, align 2
  %i.s = sext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = load i16, ptr %i.u, align 2
  %i.w = sext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = sext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load i16, ptr %2, align 2
  %i.ad = sext i16 %i.ac to i32
  store i32 %i.ad, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxwq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.b = load i16, ptr %i.a, align 2
  %i.c = sext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.j = load i16, ptr %i.i, align 2
  %i.k = sext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load i16, ptr %2, align 2
  %i.n = sext i16 %i.m to i64
  store i64 %i.n, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovsxdq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load i32, ptr %2, align 4
  %i.n = sext i32 %i.m to i64
  store i64 %i.n, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovzxbw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 32
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <8 x i8>, ptr %i.e, align 1
  %i.h = zext <8 x i8> %i.g to <8 x i16>
  store <8 x i16> %i.h, ptr %i.f, align 2
  %i.i = load <8 x i8>, ptr %2, align 1
  %i.j = zext <8 x i8> %i.i to <8 x i16>
  store <8 x i16> %i.j, ptr %1, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i16 %i.m, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 %i.q, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i16 %i.u, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.ag, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.as, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.aw, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.bi, ptr %i.bj, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.bq, ptr %i.br, align 2
  %i.bs = load i8, ptr %2, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %1, align 2
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovzxbd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.c, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.k, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load i8, ptr %2, align 1
  %i.ad = zext i8 %i.ac to i32
  store i32 %i.ad, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovzxbq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load i8, ptr %2, align 1
  %i.n = zext i8 %i.m to i64
  store i64 %i.n, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmovzxwd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.c, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i16, ptr %i.e, align 2
  %i.g = zext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.k, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = load i16, ptr %i.u, align 2
  %i.w = zext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.z = load i16, ptr %i.y, align 2
end_hunk_13
begin_hunk_14_@helper_dpps_ymm:bb.a
  %.050 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = tail call i32 @float32_add(i32 noundef %.051, i32 noundef %.050, ptr noundef nonnull %i.b) #26
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call i32 @float32_mul(i32 noundef %i.t, i32 noundef %i.v, ptr noundef nonnull %i.b) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.152 = phi i32 [ %i.w, %bb.f ], [ 0, %bb.e ]
  br i1 %.not55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = tail call i32 @float32_mul(i32 noundef %i.y, i32 noundef %i.aa, ptr noundef nonnull %i.b) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi i32 [ %i.ab, %bb.h ], [ 0, %bb.g ]
  %i.ac = tail call i32 @float32_add(i32 noundef %.152, i32 noundef %.1, ptr noundef nonnull %i.b) #26
  %i.ad = tail call i32 @float32_add(i32 noundef %i.r, i32 noundef %i.ac, ptr noundef nonnull %i.b) #26
  %i.ae = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.af = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ag = select <4 x i1> %i.i, <4 x i32> zeroinitializer, <4 x i32> %i.af
  store <4 x i32> %i.ag, ptr %1, align 4
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = tail call i32 @float32_mul(i32 noundef %i.ai, i32 noundef %i.ak, ptr noundef nonnull %i.b) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.051.1 = phi i32 [ %i.al, %bb.j ], [ 0, %bb.i ]
  br i1 %.not53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = tail call i32 @float32_mul(i32 noundef %i.an, i32 noundef %i.ap, ptr noundef nonnull %i.b) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.050.1 = phi i32 [ %i.aq, %bb.l ], [ 0, %bb.k ]
  %i.ar = tail call i32 @float32_add(i32 noundef %.051.1, i32 noundef %.050.1, ptr noundef nonnull %i.b) #26
  br i1 %.not54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = tail call i32 @float32_mul(i32 noundef %i.at, i32 noundef %i.av, ptr noundef nonnull %i.b) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.152.1 = phi i32 [ %i.aw, %bb.n ], [ 0, %bb.m ]
  br i1 %.not55, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = tail call i32 @float32_mul(i32 noundef %i.ay, i32 noundef %i.ba, ptr noundef nonnull %i.b) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.1 = phi i32 [ %i.bb, %bb.p ], [ 0, %bb.o ]
  %i.bc = tail call i32 @float32_add(i32 noundef %.152.1, i32 noundef %.1.1, ptr noundef nonnull %i.b) #26
  %i.bd = tail call i32 @float32_add(i32 noundef %i.ar, i32 noundef %i.bc, ptr noundef nonnull %i.b) #26
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = insertelement <4 x i32> poison, i32 %i.bd, i64 0
  %i.bg = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bh = select <4 x i1> %i.i, <4 x i32> zeroinitializer, <4 x i32> %i.bg
  store <4 x i32> %i.bh, ptr %i.be, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_mpsadbw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #16 {
.preheader.preheader:
  %i.a = shl i32 %4, 2
  %i.b = and i32 %i.a, 12
  %i.c = and i32 %4, 4                            ; 4 uses
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %i.d
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.h = zext nneg i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = zext nneg i32 %i.c to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = zext nneg i32 %i.c to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.q = load <4 x i8>, ptr %i.e, align 1
  %i.r = zext <4 x i8> %i.q to <4 x i16>          ; 4 uses
  %i.s = load <8 x i8>, ptr %i.g, align 1
  %i.t = load <8 x i8>, ptr %i.j, align 1
  %i.u = load <8 x i8>, ptr %i.m, align 1
  %i.v = load <8 x i8>, ptr %i.p, align 1
  %i.w = zext <8 x i8> %i.s to <8 x i16>
  %i.x = zext <8 x i8> %i.t to <8 x i16>
  %i.y = zext <8 x i8> %i.u to <8 x i16>
  %i.z = zext <8 x i8> %i.v to <8 x i16>
  %i.aa = shufflevector <4 x i16> %i.r, <4 x i16> poison, <8 x i32> zeroinitializer
  %i.ab = sub nsw <8 x i16> %i.w, %i.aa
  %i.ac = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ab, i1 true)
  %i.ad = shufflevector <4 x i16> %i.r, <4 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ae = sub nsw <8 x i16> %i.x, %i.ad
  %i.af = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ae, i1 true)
  %i.ag = add nuw nsw <8 x i16> %i.af, %i.ac
  %i.ah = shufflevector <4 x i16> %i.r, <4 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ai = sub nsw <8 x i16> %i.y, %i.ah
  %i.aj = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ai, i1 true)
  %i.ak = add nuw nsw <8 x i16> %i.aj, %i.ag
  %i.al = shufflevector <4 x i16> %i.r, <4 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.am = sub nsw <8 x i16> %i.z, %i.al
  %i.an = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.am, i1 true)
  %i.ao = add nuw nsw <8 x i16> %i.an, %i.ak
  store <8 x i16> %i.ao, ptr %1, align 2
  %i.ap = lshr i32 %4, 3                          ; 2 uses
  %i.aq = shl nuw nsw i32 %i.ap, 2
  %i.ar = and i32 %i.aq, 12
  %i.as = and i32 %i.ap, 4
  %i.at = or disjoint i32 %i.as, 16               ; 4 uses
  %i.au = zext nneg i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = zext nneg i32 %i.at to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.ax
  %i.az = zext nneg i32 %i.at to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = zext nneg i32 %i.at to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bf = zext nneg i32 %i.at to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load <4 x i8>, ptr %i.aw, align 1
  %i.bk = zext <4 x i8> %i.bj to <4 x i16>        ; 4 uses
  %i.bl = load <8 x i8>, ptr %i.ay, align 1
  %i.bm = load <8 x i8>, ptr %i.bb, align 1
  %i.bn = load <8 x i8>, ptr %i.be, align 1
  %i.bo = load <8 x i8>, ptr %i.bh, align 1
  %i.bp = zext <8 x i8> %i.bl to <8 x i16>
  %i.bq = zext <8 x i8> %i.bm to <8 x i16>
  %i.br = zext <8 x i8> %i.bn to <8 x i16>
  %i.bs = zext <8 x i8> %i.bo to <8 x i16>
  %i.bt = shufflevector <4 x i16> %i.bk, <4 x i16> poison, <8 x i32> zeroinitializer
  %i.bu = sub nsw <8 x i16> %i.bp, %i.bt
  %i.bv = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bu, i1 true)
  %i.bw = shufflevector <4 x i16> %i.bk, <4 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.bx = sub nsw <8 x i16> %i.bq, %i.bw
  %i.by = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.bx, i1 true)
  %i.bz = add nuw nsw <8 x i16> %i.by, %i.bv
  %i.ca = shufflevector <4 x i16> %i.bk, <4 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.cb = sub nsw <8 x i16> %i.br, %i.ca
  %i.cc = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cb, i1 true)
  %i.cd = add nuw nsw <8 x i16> %i.cc, %i.bz
  %i.ce = shufflevector <4 x i16> %i.bk, <4 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.cf = sub nsw <8 x i16> %i.bs, %i.ce
  %i.cg = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.cf, i1 true)
  %i.ch = add nuw nsw <8 x i16> %i.cg, %i.cd
  store <8 x i16> %i.ch, ptr %i.bi, align 2
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_pclmulqdq_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %4, 1
  %i.b = lshr i32 %4, 4
  %.lobit = and i32 %i.b, 1
  %i.c = zext nneg i32 %i.a to i64                ; 2 uses
  %i.d = zext nneg i32 %.lobit to i64             ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = load i32, ptr @cpuinfo, align 4
  %i.j = and i32 %i.i, 524288
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.k = tail call fastcc i128 @clmul_64_accel(i64 noundef %i.f, i64 noundef %i.h)
  br label %clmul_64.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i128 @clmul_64_gen(i64 noundef %i.f, i64 noundef %i.h) #26
  br label %clmul_64.exit

clmul_64.exit:                                    ; preds = %bb.b, %bb.c
  %.0.i = phi i128 [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  store i128 %.0.i, ptr %1, align 16
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = load i32, ptr @cpuinfo, align 4
  %i.t = and i32 %i.s, 524288
  %.not.i.1 = icmp eq i32 %i.t, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %clmul_64.exit
  %i.u = tail call fastcc i128 @clmul_64_accel(i64 noundef %i.o, i64 noundef %i.r)
  br label %clmul_64.exit.1

bb.e:                                             ; preds = %clmul_64.exit
  %i.v = tail call i128 @clmul_64_gen(i64 noundef %i.o, i64 noundef %i.r) #26
  br label %clmul_64.exit.1

clmul_64.exit.1:                                  ; preds = %bb.e, %bb.d
  %.0.i.1 = phi i128 [ %i.u, %bb.d ], [ %i.v, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i128 %.0.i.1, ptr %i.w, align 16
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesdec_ymm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesdec_ISB_ISR_IMC_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesdec_ISB_ISR_IMC_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesdec_ISB_ISR_IMC_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesdec_ISB_ISR_IMC_AK.exit

aesdec_ISB_ISR_IMC_AK.exit:                       ; preds = %bb.b, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = load i32, ptr @cpuinfo, align 4
  %i.g = and i32 %i.f, 262144
  %.not.i.1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %aesdec_ISB_ISR_IMC_AK.exit
  %.val.i.1 = load <2 x i64>, ptr %i.d, align 16
  %.val10.i.1 = load <2 x i64>, ptr %i.e, align 16
  tail call fastcc void @aesdec_ISB_ISR_IMC_AK_accel(ptr noundef nonnull %i.c, <2 x i64> %.val.i.1, <2 x i64> %.val10.i.1)
  br label %aesdec_ISB_ISR_IMC_AK.exit.1

bb.e:                                             ; preds = %aesdec_ISB_ISR_IMC_AK.exit
  tail call void @aesdec_ISB_ISR_IMC_AK_gen(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #26
  br label %aesdec_ISB_ISR_IMC_AK.exit.1

aesdec_ISB_ISR_IMC_AK.exit.1:                     ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesdeclast_ymm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesdec_ISB_ISR_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesdec_ISB_ISR_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesdec_ISB_ISR_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesdec_ISB_ISR_AK.exit

aesdec_ISB_ISR_AK.exit:                           ; preds = %bb.b, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = load i32, ptr @cpuinfo, align 4
  %i.g = and i32 %i.f, 262144
  %.not.i.1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %aesdec_ISB_ISR_AK.exit
  %.val.i.1 = load <2 x i64>, ptr %i.d, align 16
  %.val10.i.1 = load <2 x i64>, ptr %i.e, align 16
  tail call fastcc void @aesdec_ISB_ISR_AK_accel(ptr noundef nonnull %i.c, <2 x i64> %.val.i.1, <2 x i64> %.val10.i.1)
  br label %aesdec_ISB_ISR_AK.exit.1

bb.e:                                             ; preds = %aesdec_ISB_ISR_AK.exit
  tail call void @aesdec_ISB_ISR_AK_gen(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #26
  br label %aesdec_ISB_ISR_AK.exit.1

aesdec_ISB_ISR_AK.exit.1:                         ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesenc_ymm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesenc_SB_SR_MC_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesenc_SB_SR_MC_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesenc_SB_SR_MC_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesenc_SB_SR_MC_AK.exit

aesenc_SB_SR_MC_AK.exit:                          ; preds = %bb.b, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = load i32, ptr @cpuinfo, align 4
  %i.g = and i32 %i.f, 262144
  %.not.i.1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %aesenc_SB_SR_MC_AK.exit
  %.val.i.1 = load <2 x i64>, ptr %i.d, align 16
  %.val10.i.1 = load <2 x i64>, ptr %i.e, align 16
  tail call fastcc void @aesenc_SB_SR_MC_AK_accel(ptr noundef nonnull %i.c, <2 x i64> %.val.i.1, <2 x i64> %.val10.i.1)
  br label %aesenc_SB_SR_MC_AK.exit.1

bb.e:                                             ; preds = %aesenc_SB_SR_MC_AK.exit
  tail call void @aesenc_SB_SR_MC_AK_gen(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #26
  br label %aesenc_SB_SR_MC_AK.exit.1

aesenc_SB_SR_MC_AK.exit.1:                        ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_aesenclast_ymm(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = load i32, ptr @cpuinfo, align 4
  %i.b = and i32 %i.a, 262144
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  tail call fastcc void @aesenc_SB_SR_AK_accel(ptr noundef %1, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesenc_SB_SR_AK.exit

bb.c:                                             ; preds = %bb.a
  tail call void @aesenc_SB_SR_AK_gen(ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  br label %aesenc_SB_SR_AK.exit

aesenc_SB_SR_AK.exit:                             ; preds = %bb.b, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = load i32, ptr @cpuinfo, align 4
  %i.g = and i32 %i.f, 262144
  %.not.i.1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %aesenc_SB_SR_AK.exit
  %.val.i.1 = load <2 x i64>, ptr %i.d, align 16
  %.val10.i.1 = load <2 x i64>, ptr %i.e, align 16
  tail call fastcc void @aesenc_SB_SR_AK_accel(ptr noundef nonnull %i.c, <2 x i64> %.val.i.1, <2 x i64> %.val10.i.1)
  br label %aesenc_SB_SR_AK.exit.1

bb.e:                                             ; preds = %aesenc_SB_SR_AK.exit
  tail call void @aesenc_SB_SR_AK_gen(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #26
  br label %aesenc_SB_SR_AK.exit.1

aesenc_SB_SR_AK.exit.1:                           ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpermilpd_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %3, align 8
  %i.b = lshr i64 %i.a, 1
  %i.c = and i64 %i.b, 1
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = lshr i64 %i.g, 1
  %i.i = and i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  store i64 %i.e, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = lshr i64 %i.n, 1
  %i.p = and i64 %i.o, 1
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i64 %i.u, 1
  %i.w = and i64 %i.v, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.s, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.z, ptr %i.ab, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpermilps_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = and i32 %i.a, 3
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 3
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  store i32 %i.e, ptr %1, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.k, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.q, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.w, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 3
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, 3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.ag, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.an, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.au, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.bb, ptr %i.bf, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpermilpd_imm_ymm(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = and i32 %2, 1
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i32 %2, 1
  %i.f = and i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.d, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = lshr i32 %2, 2
  %i.l = and i32 %i.k, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = lshr i32 %2, 3
  %i.r = and i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.v, ptr %i.x, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_vpermilps_imm_ymm(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = and i32 %2, 3
  %i.b = lshr i32 %2, 2
  %i.c = and i32 %i.b, 3
  %i.d = lshr i32 %2, 4
  %i.e = and i32 %i.d, 3
  %i.f = lshr i32 %2, 6
  %i.g = and i32 %i.f, 3
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = zext nneg i32 %i.e to i64                ; 2 uses
  %i.j = zext nneg i32 %i.c to i64                ; 2 uses
  %i.k = zext nneg i32 %i.a to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h
  %i.s = load i32, ptr %i.r, align 4
  store i32 %i.m, ptr %0, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.o, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.q, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.s, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 4
end_hunk_14
begin_hunk_15_@aesdec_ISB_ISR_IMC_AK_gen
declare void @aesdec_ISB_ISR_IMC_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64>, <2 x i64>) #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesdec_ISB_ISR_AK_accel(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val, <2 x i64> %.0.val1) unnamed_addr #24 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %.0.val, <2 x i64> %.0.val1)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesdec_ISB_ISR_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64>, <2 x i64>) #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesenc_SB_SR_MC_AK_accel(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val, <2 x i64> %.0.val1) unnamed_addr #24 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.0.val, <2 x i64> %.0.val1)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesenc_SB_SR_MC_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64>, <2 x i64>) #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesenc_SB_SR_AK_accel(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val, <2 x i64> %.0.val1) unnamed_addr #24 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %.0.val, <2 x i64> %.0.val1)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesenc_SB_SR_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64>, <2 x i64>) #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesdec_IMC_accel(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val) unnamed_addr #24 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %.0.val)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesdec_IMC_gen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64>) #5

declare void @cpu_stl_mmu(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare void @cpu_stq_mmu(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @cpu_ldl_mmu(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @cpu_ldq_mmu(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.sadd.sat.v4i16(<4 x i16>, <4 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.ssub.sat.v4i16(<4 x i16>, <4 x i16>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smax.v16i16(<16 x i16>, <16 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smin.v16i16(<16 x i16>, <16 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umin.v16i16(<16 x i16>, <16 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16>, <8 x i16>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v8i16(<8 x i16>) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind sspstrong memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #15 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #16 = { nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #19 = { nofree noinline norecurse nosync nounwind sspstrong memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #20 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+pclmul,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{!2, !13}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"branch_weights", i32 4, i32 28}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!"branch_weights", i32 8, i32 24}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13, !14, !15}
!30 = distinct !{!30, !13, !14, !15}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13, !14}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !13, !14, !15}
!36 = distinct !{!36, !13, !14, !15}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13, !14}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13, !14, !15}
!43 = distinct !{!43, !13, !14, !15}
!44 = distinct !{!44, !13, !14, !15}
!45 = distinct !{!45, !13, !14, !15}
!46 = distinct !{!46, !13, !15, !14}
!47 = distinct !{!47, !13, !15, !14}
!48 = distinct !{!48, !13, !15, !14}
!49 = distinct !{!49, !13, !15, !14}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13, !14, !15}
!53 = distinct !{!53, !13, !14, !15}
!54 = distinct !{!54, !13, !14, !15}
!55 = distinct !{!55, !13, !14, !15}
!56 = distinct !{!56, !13, !14}
!57 = distinct !{!57, !13, !14}
!58 = distinct !{!58, !13, !14}
!59 = distinct !{!59, !13, !14}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13, !14, !15}
!64 = distinct !{!64, !13, !14, !15}
!65 = distinct !{!65, !13, !14, !15}
!66 = distinct !{!66, !13, !14, !15}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13, !14, !15}
!69 = distinct !{!69, !13, !14, !15}
!70 = distinct !{!70, !13, !14}
!71 = distinct !{!71, !13, !14}
!72 = distinct !{!72, !13, !14, !15}
!73 = distinct !{!73, !13, !14, !15}
!74 = distinct !{!74, !13, !14}
!75 = distinct !{!75, !13, !14}
!76 = distinct !{!76, !13, !14, !15}
!77 = distinct !{!77, !13, !14, !15}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !13, !14}
!81 = distinct !{!81, !13, !14}
!82 = distinct !{!82, !13, !14, !15}
!83 = distinct !{!83, !13, !14, !15}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
end_hunk_15
