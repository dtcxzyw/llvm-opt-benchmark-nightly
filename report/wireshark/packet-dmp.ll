inline.NumInlined: 80
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@register_dmp_id:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(96) %i.ez, ptr noundef align 8 dereferenceable(96) %.076, i64 96, i1 false)
  %i.fa = call ptr @wmem_file_scope()
  %i.fb = load i32, ptr @proto_dmp, align 4
  call void @p_add_proto_data(ptr noundef %i.fa, ptr noundef %0, i32 noundef %i.fb, i32 noundef 0, ptr noundef %i.ez)
  br label %bb.ai

bb.af:                                            ; preds = %copy_address_wmem.exit91
  %i.fc = call ptr @wmem_file_scope()
  %i.fd = load i32, ptr @proto_dmp, align 4
  %i.fe = call ptr @p_get_proto_data(ptr noundef %i.fc, ptr noundef %0, i32 noundef %i.fd, i32 noundef 0) ; 5 uses
  %i.ff = icmp ne ptr %i.de, null
  %i.fg = icmp ne ptr %i.fe, null
  %or.cond3 = select i1 %i.ff, i1 %i.fg, i1 false
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @dmp, i64 16), align 8
  %i.fi = icmp ne i32 %i.fh, 4
  %or.cond5 = select i1 %or.cond3, i1 %i.fi, i1 false
  br i1 %or.cond5, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.fj = getelementptr i8, ptr %i.fe, i64 12     ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.fm = getelementptr i8, ptr %i.de, i64 12
  %i.fn = load i32, ptr %i.fm, align 4
  store i32 %i.fn, ptr %i.fj, align 4
  br label %.thread

bb.ai:                                            ; preds = %bb.af, %bb.ae
  %.075 = phi ptr [ %i.fe, %bb.af ], [ %i.ez, %bb.ae ] ; 2 uses
  %.not88 = icmp eq ptr %.075, null
  br i1 %.not88, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.739, ptr noundef nonnull @.str.740, i32 noundef 1453, ptr noundef nonnull @.str.741) #21
  unreachable

.thread:                                          ; preds = %bb.ag, %bb.ah, %bb.ai
  %.07596 = phi ptr [ %.075, %bb.ai ], [ %i.fe, %bb.ah ], [ %i.fe, %bb.ag ]
  store ptr %.07596, ptr getelementptr inbounds nuw (i8, ptr @dmp, i64 72), align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @get_nat_pol_id_short(i32 noundef range(i32 0, 63) %0) unnamed_addr #9 {
bb.a:
  %switch.maskindex = zext nneg i32 %0 to i64
  %switch.shifted = lshr i64 8953156055454449663, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.split.loop.exit

switch.lookup:                                    ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.get_nat_pol_id_short, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.b = load ptr, ptr %switch.load, align 8
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.a, %switch.lookup
  %.05 = phi ptr [ %i.b, %switch.lookup ], [ @.str.727, %bb.a ]
  ret ptr %.05
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc zeroext i1 @dmp_dec_xbyte_sic(i64 noundef range(i64 0, 17592186044416) %0, ptr nofree noundef writeonly captures(none) %1, i8 noundef zeroext range(i8 3, 9) %2, i1 noundef zeroext %3) unnamed_addr #10 {
bb.a:
  %i.a = zext nneg i8 %2 to i32                   ; 9 uses
  %.093 = select i1 %3, double 7.400000e+01, double 3.600000e+01 ; 9 uses
  %i.b = load ptr, ptr @g_ascii_table, align 8    ; 9 uses
  %wide.trip.count110 = zext nneg i8 %2 to i64    ; 2 uses
  br i1 %3, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.t
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %bb.t ], [ 0, %bb.a ] ; 3 uses
  %.091102.us = phi i64 [ %.recomposed, %bb.t ], [ %0, %bb.a ] ; 2 uses
  %.094100.us = phi i1 [ %spec.select, %bb.t ], [ false, %bb.a ] ; 15 uses
  %i.c = trunc nuw nsw i64 %indvars.iv108 to i32
  %i.d = xor i32 %i.c, -1
  %i.e = add nsw i32 %i.d, %i.a
  %i.f = sitofp i32 %i.e to double
  %i.g = tail call double @pow(double noundef %.093, double noundef %i.f) #19
  %i.h = fptoui double %i.g to i64                ; 3 uses
  %i.i = udiv i64 %.091102.us, %i.h               ; 2 uses
  %i.j = mul i64 %i.i, %i.h                       ; 0 uses
  %.recomposed = urem i64 %.091102.us, %i.h
  %i.k = trunc i64 %i.i to i8                     ; 7 uses
  %i.l = getelementptr i8, ptr %1, i64 %indvars.iv108 ; 2 uses
  %i.m = icmp slt i8 %i.k, 10
  br i1 %i.m, label %bb.s, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.n = icmp samesign ult i8 %i.k, 36
  br i1 %i.n, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ult i8 %i.k, 62
  br i1 %i.o, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.k, label %bb.p [
    i8 62, label %bb.o
    i8 63, label %bb.n
    i8 64, label %bb.m
    i8 65, label %bb.l
    i8 66, label %bb.k
    i8 67, label %bb.j
    i8 68, label %bb.i
    i8 69, label %bb.h
    i8 70, label %bb.g
    i8 71, label %bb.f
    i8 72, label %bb.e
    i8 73, label %bb.t
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  br label %bb.t

bb.g:                                             ; preds = %bb.d
  br label %bb.t

bb.h:                                             ; preds = %bb.d
  br label %bb.t

bb.i:                                             ; preds = %bb.d
  br label %bb.t

bb.j:                                             ; preds = %bb.d
  br label %bb.t

bb.k:                                             ; preds = %bb.d
  br label %bb.t

bb.l:                                             ; preds = %bb.d
  br label %bb.t

bb.m:                                             ; preds = %bb.d
  br label %bb.t

bb.n:                                             ; preds = %bb.d
  br label %bb.t

bb.o:                                             ; preds = %bb.d
  br label %bb.t

bb.p:                                             ; preds = %bb.d
  br label %bb.t

bb.q:                                             ; preds = %bb.c
  %i.p = add nuw nsw i8 %i.k, 61
  br label %bb.t

bb.r:                                             ; preds = %bb.b
  %i.q = add nuw nsw i8 %i.k, 55
  br label %bb.t

bb.s:                                             ; preds = %.split.us
  %i.r = add nsw i8 %i.k, 48
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.sink = phi i8 [ %i.r, %bb.s ], [ %i.q, %bb.r ], [ %i.p, %bb.q ], [ 42, %bb.p ], [ 39, %bb.o ], [ 40, %bb.n ], [ 41, %bb.m ], [ 43, %bb.l ], [ 44, %bb.k ], [ 45, %bb.j ], [ 46, %bb.i ], [ 47, %bb.h ], [ 58, %bb.g ], [ 61, %bb.f ], [ 63, %bb.e ], [ 32, %bb.d ] ; 3 uses
  %.1.us = phi i1 [ %.094100.us, %bb.s ], [ %.094100.us, %bb.r ], [ %.094100.us, %bb.q ], [ true, %bb.p ], [ %.094100.us, %bb.o ], [ %.094100.us, %bb.n ], [ %.094100.us, %bb.m ], [ %.094100.us, %bb.l ], [ %.094100.us, %bb.k ], [ %.094100.us, %bb.j ], [ %.094100.us, %bb.i ], [ %.094100.us, %bb.h ], [ %.094100.us, %bb.g ], [ %.094100.us, %bb.f ], [ %.094100.us, %bb.e ], [ %.094100.us, %bb.d ]
  store i8 %.sink, ptr %i.l, align 1
  %i.s = zext i8 %.sink to i64
  %i.t = getelementptr [2 x i8], ptr %i.b, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  %i.v = and i16 %i.u, 64
  %.not.us = icmp eq i16 %i.v, 0                  ; 2 uses
  %spec.store.select = select i1 %.not.us, i8 42, i8 %.sink
  store i8 %spec.store.select, ptr %i.l, align 1
  %spec.select = select i1 %.not.us, i1 true, i1 %.1.us ; 2 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count110
  br i1 %exitcond111.not, label %.split104.us, label %.split.us, !llvm.loop !21

.split:                                           ; preds = %bb.a
  %i.w = add nsw i32 %i.a, -1
  %i.x = sitofp i32 %i.w to double
  %i.y = tail call double @pow(double noundef %.093, double noundef %i.x) #19
  %i.z = fptoui double %i.y to i64                ; 3 uses
  %i.aa = udiv i64 %0, %i.z                       ; 2 uses
  %i.ab = mul i64 %i.aa, %i.z                     ; 0 uses
  %.recomposed123 = urem i64 %0, %i.z             ; 2 uses
  %i.ac = trunc i64 %i.aa to i8                   ; 4 uses
  %i.ad = icmp slt i8 %i.ac, 10                   ; 2 uses
  %i.ae = icmp samesign ugt i8 %i.ac, 35          ; 2 uses
  %i.af = add nuw nsw i8 %i.ac, 55
  %spec.select120 = select i1 %i.ae, i8 42, i8 %i.af
  %i.ag = add nsw i8 %i.ac, 48
  %.sink116 = select i1 %i.ad, i8 %i.ag, i8 %spec.select120 ; 3 uses
  %.1 = select i1 %i.ad, i1 false, i1 %i.ae
  store i8 %.sink116, ptr %1, align 1
  %i.ah = zext i8 %.sink116 to i64
  %i.ai = getelementptr [2 x i8], ptr %i.b, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = and i16 %i.aj, 64
  %.not = icmp eq i16 %i.ak, 0                    ; 2 uses
  %spec.store.select117 = select i1 %.not, i8 42, i8 %.sink116
  store i8 %spec.store.select117, ptr %1, align 1
  %spec.select118 = select i1 %.not, i1 true, i1 %.1 ; 2 uses
  %i.al = add nsw i32 %i.a, -2
  %i.am = sitofp i32 %i.al to double
  %i.an = tail call double @pow(double noundef %.093, double noundef %i.am) #19
  %i.ao = fptoui double %i.an to i64              ; 3 uses
  %i.ap = udiv i64 %.recomposed123, %i.ao         ; 2 uses
  %i.aq = mul i64 %i.ap, %i.ao                    ; 0 uses
  %.recomposed124 = urem i64 %.recomposed123, %i.ao ; 2 uses
  %i.ar = trunc i64 %i.ap to i8                   ; 4 uses
  %i.as = getelementptr i8, ptr %1, i64 1         ; 2 uses
  %i.at = icmp slt i8 %i.ar, 10
  br i1 %i.at, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.split
  %i.au = icmp samesign ugt i8 %i.ar, 35          ; 2 uses
  %i.av = add nuw nsw i8 %i.ar, 55
  %spec.select120.1 = select i1 %i.au, i8 42, i8 %i.av
  %spec.select121.1 = select i1 %i.au, i1 true, i1 %spec.select118
  br label %.split.2

bb.v:                                             ; preds = %.split
  %i.aw = add nsw i8 %i.ar, 48
  br label %.split.2

.split.2:                                         ; preds = %bb.v, %bb.u
  %.sink116.1 = phi i8 [ %spec.select120.1, %bb.u ], [ %i.aw, %bb.v ] ; 3 uses
  %.1.1 = phi i1 [ %spec.select121.1, %bb.u ], [ %spec.select118, %bb.v ]
  store i8 %.sink116.1, ptr %i.as, align 1
  %i.ax = zext i8 %.sink116.1 to i64
  %i.ay = getelementptr [2 x i8], ptr %i.b, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = and i16 %i.az, 64
  %.not.1 = icmp eq i16 %i.ba, 0                  ; 2 uses
  %spec.store.select117.1 = select i1 %.not.1, i8 42, i8 %.sink116.1
  store i8 %spec.store.select117.1, ptr %i.as, align 1
  %spec.select118.1 = select i1 %.not.1, i1 true, i1 %.1.1 ; 2 uses
  %i.bb = add nsw i32 %i.a, -3
  %i.bc = sitofp i32 %i.bb to double
  %i.bd = tail call double @pow(double noundef %.093, double noundef %i.bc) #19
  %i.be = fptoui double %i.bd to i64              ; 3 uses
  %i.bf = udiv i64 %.recomposed124, %i.be         ; 2 uses
  %i.bg = mul i64 %i.bf, %i.be                    ; 0 uses
  %.recomposed125 = urem i64 %.recomposed124, %i.be ; 2 uses
  %i.bh = trunc i64 %i.bf to i8                   ; 4 uses
  %i.bi = getelementptr i8, ptr %1, i64 2         ; 2 uses
  %i.bj = icmp slt i8 %i.bh, 10
  br i1 %i.bj, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.split.2
  %i.bk = icmp samesign ugt i8 %i.bh, 35          ; 2 uses
  %i.bl = add nuw nsw i8 %i.bh, 55
  %spec.select120.2 = select i1 %i.bk, i8 42, i8 %i.bl
  %spec.select121.2 = select i1 %i.bk, i1 true, i1 %spec.select118.1
  br label %bb.y

bb.x:                                             ; preds = %.split.2
  %i.bm = add nsw i8 %i.bh, 48
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink116.2 = phi i8 [ %spec.select120.2, %bb.w ], [ %i.bm, %bb.x ] ; 3 uses
  %.1.2 = phi i1 [ %spec.select121.2, %bb.w ], [ %spec.select118.1, %bb.x ]
  store i8 %.sink116.2, ptr %i.bi, align 1
  %i.bn = zext i8 %.sink116.2 to i64
  %i.bo = getelementptr [2 x i8], ptr %i.b, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = and i16 %i.bp, 64
  %.not.2 = icmp eq i16 %i.bq, 0                  ; 2 uses
  %spec.store.select117.2 = select i1 %.not.2, i8 42, i8 %.sink116.2
  store i8 %spec.store.select117.2, ptr %i.bi, align 1
  %spec.select118.2 = select i1 %.not.2, i1 true, i1 %.1.2 ; 3 uses
  %exitcond.not.2 = icmp eq i8 %2, 3
  br i1 %exitcond.not.2, label %.split104.us, label %.split.3

.split.3:                                         ; preds = %bb.y
  %i.br = add nsw i32 %i.a, -4
  %i.bs = sitofp i32 %i.br to double
  %i.bt = tail call double @pow(double noundef %.093, double noundef %i.bs) #19
  %i.bu = fptoui double %i.bt to i64              ; 3 uses
  %i.bv = udiv i64 %.recomposed125, %i.bu         ; 2 uses
  %i.bw = mul i64 %i.bv, %i.bu                    ; 0 uses
  %.recomposed126 = urem i64 %.recomposed125, %i.bu ; 2 uses
  %i.bx = trunc i64 %i.bv to i8                   ; 4 uses
  %i.by = getelementptr i8, ptr %1, i64 3         ; 2 uses
  %i.bz = icmp slt i8 %i.bx, 10
  br i1 %i.bz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.split.3
  %i.ca = icmp samesign ugt i8 %i.bx, 35          ; 2 uses
  %i.cb = add nuw nsw i8 %i.bx, 55
  %spec.select120.3 = select i1 %i.ca, i8 42, i8 %i.cb
  %spec.select121.3 = select i1 %i.ca, i1 true, i1 %spec.select118.2
  br label %bb.ab

bb.aa:                                            ; preds = %.split.3
  %i.cc = add nsw i8 %i.bx, 48
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink116.3 = phi i8 [ %spec.select120.3, %bb.z ], [ %i.cc, %bb.aa ] ; 3 uses
  %.1.3 = phi i1 [ %spec.select121.3, %bb.z ], [ %spec.select118.2, %bb.aa ]
  store i8 %.sink116.3, ptr %i.by, align 1
  %i.cd = zext i8 %.sink116.3 to i64
  %i.ce = getelementptr [2 x i8], ptr %i.b, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2
  %i.cg = and i16 %i.cf, 64
  %.not.3 = icmp eq i16 %i.cg, 0                  ; 2 uses
  %spec.store.select117.3 = select i1 %.not.3, i8 42, i8 %.sink116.3
  store i8 %spec.store.select117.3, ptr %i.by, align 1
  %spec.select118.3 = select i1 %.not.3, i1 true, i1 %.1.3 ; 3 uses
  %exitcond.not.3 = icmp eq i8 %2, 4
  br i1 %exitcond.not.3, label %.split104.us, label %.split.4

.split.4:                                         ; preds = %bb.ab
  %i.ch = add nsw i32 %i.a, -5
  %i.ci = sitofp i32 %i.ch to double
  %i.cj = tail call double @pow(double noundef %.093, double noundef %i.ci) #19
  %i.ck = fptoui double %i.cj to i64              ; 3 uses
  %i.cl = udiv i64 %.recomposed126, %i.ck         ; 2 uses
  %i.cm = mul i64 %i.cl, %i.ck                    ; 0 uses
  %.recomposed127 = urem i64 %.recomposed126, %i.ck ; 2 uses
  %i.cn = trunc i64 %i.cl to i8                   ; 4 uses
  %i.co = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %i.cp = icmp slt i8 %i.cn, 10
  br i1 %i.cp, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.split.4
  %i.cq = icmp samesign ugt i8 %i.cn, 35          ; 2 uses
  %i.cr = add nuw nsw i8 %i.cn, 55
  %spec.select120.4 = select i1 %i.cq, i8 42, i8 %i.cr
  %spec.select121.4 = select i1 %i.cq, i1 true, i1 %spec.select118.3
  br label %bb.ae

bb.ad:                                            ; preds = %.split.4
  %i.cs = add nsw i8 %i.cn, 48
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink116.4 = phi i8 [ %spec.select120.4, %bb.ac ], [ %i.cs, %bb.ad ] ; 3 uses
  %.1.4 = phi i1 [ %spec.select121.4, %bb.ac ], [ %spec.select118.3, %bb.ad ]
  store i8 %.sink116.4, ptr %i.co, align 1
  %i.ct = zext i8 %.sink116.4 to i64
  %i.cu = getelementptr [2 x i8], ptr %i.b, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = and i16 %i.cv, 64
  %.not.4 = icmp eq i16 %i.cw, 0                  ; 2 uses
  %spec.store.select117.4 = select i1 %.not.4, i8 42, i8 %.sink116.4
  store i8 %spec.store.select117.4, ptr %i.co, align 1
  %spec.select118.4 = select i1 %.not.4, i1 true, i1 %.1.4 ; 3 uses
  %exitcond.not.4 = icmp eq i8 %2, 5
  br i1 %exitcond.not.4, label %.split104.us, label %.split.5

.split.5:                                         ; preds = %bb.ae
  %i.cx = add nsw i32 %i.a, -6
  %i.cy = sitofp i32 %i.cx to double
  %i.cz = tail call double @pow(double noundef %.093, double noundef %i.cy) #19
  %i.da = fptoui double %i.cz to i64              ; 3 uses
  %i.db = udiv i64 %.recomposed127, %i.da         ; 2 uses
  %i.dc = mul i64 %i.db, %i.da                    ; 0 uses
  %.recomposed128 = urem i64 %.recomposed127, %i.da ; 2 uses
  %i.dd = trunc i64 %i.db to i8                   ; 4 uses
  %i.de = getelementptr i8, ptr %1, i64 5         ; 2 uses
  %i.df = icmp slt i8 %i.dd, 10
  br i1 %i.df, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.split.5
  %i.dg = icmp samesign ugt i8 %i.dd, 35          ; 2 uses
  %i.dh = add nuw nsw i8 %i.dd, 55
  %spec.select120.5 = select i1 %i.dg, i8 42, i8 %i.dh
  %spec.select121.5 = select i1 %i.dg, i1 true, i1 %spec.select118.4
  br label %bb.ah

bb.ag:                                            ; preds = %.split.5
  %i.di = add nsw i8 %i.dd, 48
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink116.5 = phi i8 [ %spec.select120.5, %bb.af ], [ %i.di, %bb.ag ] ; 3 uses
  %.1.5 = phi i1 [ %spec.select121.5, %bb.af ], [ %spec.select118.4, %bb.ag ]
  store i8 %.sink116.5, ptr %i.de, align 1
  %i.dj = zext i8 %.sink116.5 to i64
  %i.dk = getelementptr [2 x i8], ptr %i.b, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2
  %i.dm = and i16 %i.dl, 64
  %.not.5 = icmp eq i16 %i.dm, 0                  ; 2 uses
  %spec.store.select117.5 = select i1 %.not.5, i8 42, i8 %.sink116.5
  store i8 %spec.store.select117.5, ptr %i.de, align 1
  %spec.select118.5 = select i1 %.not.5, i1 true, i1 %.1.5 ; 3 uses
  %exitcond.not.5 = icmp eq i8 %2, 6
  br i1 %exitcond.not.5, label %.split104.us, label %.split.6

.split.6:                                         ; preds = %bb.ah
  %i.dn = add nsw i32 %i.a, -7
  %i.do = sitofp i32 %i.dn to double
  %i.dp = tail call double @pow(double noundef %.093, double noundef %i.do) #19
  %i.dq = fptoui double %i.dp to i64              ; 3 uses
  %i.dr = udiv i64 %.recomposed128, %i.dq         ; 2 uses
  %i.ds = mul i64 %i.dr, %i.dq                    ; 0 uses
  %.recomposed129 = urem i64 %.recomposed128, %i.dq
  %i.dt = trunc i64 %i.dr to i8                   ; 4 uses
  %i.du = getelementptr i8, ptr %1, i64 6         ; 2 uses
  %i.dv = icmp slt i8 %i.dt, 10
  br i1 %i.dv, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.split.6
  %i.dw = icmp samesign ugt i8 %i.dt, 35          ; 2 uses
  %i.dx = add nuw nsw i8 %i.dt, 55
  %spec.select120.6 = select i1 %i.dw, i8 42, i8 %i.dx
  %spec.select121.6 = select i1 %i.dw, i1 true, i1 %spec.select118.5
  br label %bb.ak

bb.aj:                                            ; preds = %.split.6
  %i.dy = add nsw i8 %i.dt, 48
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sink116.6 = phi i8 [ %spec.select120.6, %bb.ai ], [ %i.dy, %bb.aj ] ; 3 uses
  %.1.6 = phi i1 [ %spec.select121.6, %bb.ai ], [ %spec.select118.5, %bb.aj ]
  store i8 %.sink116.6, ptr %i.du, align 1
  %i.dz = zext i8 %.sink116.6 to i64
  %i.ea = getelementptr [2 x i8], ptr %i.b, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = and i16 %i.eb, 64
  %.not.6 = icmp eq i16 %i.ec, 0                  ; 2 uses
  %spec.store.select117.6 = select i1 %.not.6, i8 42, i8 %.sink116.6
  store i8 %spec.store.select117.6, ptr %i.du, align 1
  %spec.select118.6 = select i1 %.not.6, i1 true, i1 %.1.6 ; 3 uses
  %exitcond.not.6 = icmp eq i8 %2, 7
  br i1 %exitcond.not.6, label %.split104.us, label %.split.7

.split.7:                                         ; preds = %bb.ak
  %i.ed = add nsw i32 %i.a, -8
  %i.ee = sitofp i32 %i.ed to double
  %i.ef = tail call double @pow(double noundef %.093, double noundef %i.ee) #19
  %i.eg = fptoui double %i.ef to i64
  %i.eh = udiv i64 %.recomposed129, %i.eg
  %i.ei = trunc i64 %i.eh to i8                   ; 4 uses
  %i.ej = getelementptr i8, ptr %1, i64 7         ; 2 uses
  %i.ek = icmp slt i8 %i.ei, 10
  br i1 %i.ek, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.split.7
  %i.el = icmp samesign ugt i8 %i.ei, 35          ; 2 uses
  %i.em = add nuw nsw i8 %i.ei, 55
  %spec.select120.7 = select i1 %i.el, i8 42, i8 %i.em
  %spec.select121.7 = select i1 %i.el, i1 true, i1 %spec.select118.6
  br label %bb.an

bb.am:                                            ; preds = %.split.7
  %i.en = add nsw i8 %i.ei, 48
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sink116.7 = phi i8 [ %spec.select120.7, %bb.al ], [ %i.en, %bb.am ] ; 3 uses
  %.1.7 = phi i1 [ %spec.select121.7, %bb.al ], [ %spec.select118.6, %bb.am ]
  store i8 %.sink116.7, ptr %i.ej, align 1
  %i.eo = zext i8 %.sink116.7 to i64
  %i.ep = getelementptr [2 x i8], ptr %i.b, i64 %i.eo
  %i.eq = load i16, ptr %i.ep, align 2
  %i.er = and i16 %i.eq, 64
  %.not.7 = icmp eq i16 %i.er, 0                  ; 2 uses
  %spec.store.select117.7 = select i1 %.not.7, i8 42, i8 %.sink116.7
  store i8 %spec.store.select117.7, ptr %i.ej, align 1
  %spec.select118.7 = select i1 %.not.7, i1 true, i1 %.1.7
  br label %.split104.us

.split104.us:                                     ; preds = %bb.y, %bb.ab, %bb.ae, %bb.ah, %bb.ak, %bb.an, %bb.t
  %.us-phi = phi i1 [ %spec.select, %bb.t ], [ %spec.select118.7, %bb.an ], [ %spec.select118.6, %bb.ak ], [ %spec.select118.2, %bb.y ], [ %spec.select118.3, %bb.ab ], [ %spec.select118.4, %bb.ae ], [ %spec.select118.5, %bb.ah ]
  %i.es = getelementptr i8, ptr %1, i64 %wide.trip.count110
  store i8 0, ptr %i.es, align 1
  ret i1 %.us-phi
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare void @nstime_set_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_memdup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_strsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_throw(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_child_uncompress_zlib(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @nstime_delta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_time(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { allocsize(0) }
attributes #19 = { nounwind }
attributes #20 = { allocsize(1) }
attributes #21 = { noreturn }
attributes #22 = { allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
end_hunk_0
