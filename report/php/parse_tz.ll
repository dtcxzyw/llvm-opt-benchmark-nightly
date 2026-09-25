Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/parse_tz?download=true
inline.NumInlined: 48
inline.NumDeleted: 23
begin_hunk_0_@integrate_posix_string:bb.a

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !102
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !65   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37   ; 5 uses
  %.not.i = icmp eq i64 %i.j, 0
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.pre.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !39 ; 4 uses
  br i1 %.not.i, label %find_ttinfo_index.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.016.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.f ] ; 3 uses
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %.pre.pre, i64 %.016.i ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !41
  %i.n = icmp eq i32 %i.m, %i.g
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !42
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !44   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.w = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.v) #17
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %find_ttinfo_index.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.y = add nuw i64 %.016.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %i.j
  br i1 %exitcond.not.i, label %find_ttinfo_index.exit.thread, label %bb.c, !llvm.loop !101

find_ttinfo_index.exit.thread:                    ; preds = %bb.f, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 -9999999, ptr %i.z, align 8, !tbaa !66
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre38 = load ptr, ptr %.phi.trans.insert37, align 8, !tbaa !44
  br label %bb.g

find_ttinfo_index.exit:                           ; preds = %bb.e
  %i.aa = trunc i64 %.016.i to i32                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !66
  %i.ac = icmp eq i32 %i.aa, -9999999
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %find_ttinfo_index.exit.thread, %find_ttinfo_index.exit
  %i.ad = phi ptr [ %.pre38, %find_ttinfo_index.exit.thread ], [ %i.r, %find_ttinfo_index.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = getelementptr inbounds nuw [20 x i8], ptr %.pre.pre, i64 %i.j ; 2 uses
  store i32 %i.g, ptr %i.af, align 4, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !38 ; 3 uses
  %i.aj = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.h) #17
  %i.ak = add i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = add i64 %i.ak, 1                        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.an = tail call ptr @_erealloc(ptr noundef %i.ad, i64 noundef %i.al) #18 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ai
  %i.ap = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.h) #17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull readonly align 1 %i.h, i64 %i.ap, i1 false)
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !38
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ak
  store i8 0, ptr %i.ar, align 1, !tbaa !55
  %i.as = trunc i64 %i.ai to i32
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.au = load i64, ptr %i.i, align 8, !tbaa !37  ; 3 uses
  %i.av = getelementptr inbounds nuw [20 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %i.as, ptr %i.aw, align 4, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 0, ptr %i.ay, align 4, !tbaa !46
  %i.az = add i64 %i.au, 1
  store i64 %i.az, ptr %i.i, align 8, !tbaa !37
  %i.ba = trunc i64 %i.au to i32
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  store i32 %i.ba, ptr %i.bc, align 8, !tbaa !66
  br label %bb.n

bb.h:                                             ; preds = %find_ttinfo_index.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !67 ; 5 uses
  %.not24 = icmp eq ptr %i.be, null
  br i1 %.not24, label %bb.n, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !103
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i26
  %.016.i27 = phi i64 [ 0, %.lr.ph.i26 ], [ %i.bu, %bb.l ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [20 x i8], ptr %.pre.pre, i64 %.016.i27 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !41
  %i.bk = icmp eq i32 %i.bj, %i.bh
  br i1 %i.bk, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !42
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !43
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bq
  %i.bs = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.be, ptr noundef nonnull dereferenceable(1) %i.br) #17
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %find_ttinfo_index.exit30, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bu = add nuw i64 %.016.i27, 1                ; 2 uses
  %exitcond.not.i28 = icmp eq i64 %i.bu, %i.j
  br i1 %exitcond.not.i28, label %find_ttinfo_index.exit30.thread, label %bb.i, !llvm.loop !101

find_ttinfo_index.exit30.thread:                  ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 -9999999, ptr %i.bv, align 4, !tbaa !68
  br label %bb.m

find_ttinfo_index.exit30:                         ; preds = %bb.k
  %i.bw = trunc i64 %.016.i27 to i32              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !68
  %i.by = icmp eq i32 %i.bw, -9999999
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %find_ttinfo_index.exit30.thread, %find_ttinfo_index.exit30
  %i.bz = getelementptr inbounds nuw [20 x i8], ptr %.pre.pre, i64 %i.j ; 2 uses
  store i32 %i.bh, ptr %i.bz, align 4, !tbaa !41
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 1, ptr %i.ca, align 4, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !38 ; 3 uses
  %i.cd = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.be) #17
  %i.ce = add i64 %i.cd, %i.cc                    ; 2 uses
  %i.cf = add i64 %i.ce, 1                        ; 2 uses
  %i.cg = tail call ptr @_erealloc(ptr noundef %i.r, i64 noundef %i.cf) #18 ; 2 uses
  store ptr %i.cg, ptr %i.k, align 8, !tbaa !44
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cc
  %i.ci = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.be) #17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr nonnull readonly align 1 %i.be, i64 %i.ci, i1 false)
  store i64 %i.cf, ptr %i.cb, align 8, !tbaa !38
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ce
  store i8 0, ptr %i.ck, align 1, !tbaa !55
  %i.cl = trunc i64 %i.cc to i32
  %i.cm = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !39
  %i.cn = load i64, ptr %i.i, align 8, !tbaa !37  ; 3 uses
  %i.co = getelementptr inbounds nuw [20 x i8], ptr %i.cm, i64 %i.cn ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %i.cl, ptr %i.cp, align 4, !tbaa !43
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !45
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i32 0, ptr %i.cr, align 4, !tbaa !46
  %i.cs = add i64 %i.cn, 1
  store i64 %i.cs, ptr %i.i, align 8, !tbaa !37
  %i.ct = trunc i64 %i.cn to i32
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 52
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !68
  br label %bb.n

bb.n:                                             ; preds = %find_ttinfo_index.exit30, %bb.h, %bb.a, %bb.m, %bb.g
  %.0 = phi i32 [ 1, %bb.g ], [ 1, %bb.m ], [ 1, %bb.h ], [ 0, %bb.a ], [ 1, %find_ttinfo_index.exit30 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_location(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((136, 160)) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77     ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.4.0.copyload.a = load i32, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 1
  %i.c = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.4.0.copyload.a)
  %2 = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload)
  %3 = uitofp i32 %i.c to double
  %i.d = uitofp i32 %2 to double
  %i.e = insertelement <2 x double> poison, double %i.d, i64 0
  %i.f = insertelement <2 x double> %i.e, double %3, i64 1
  %i.g = fdiv <2 x double> %i.f, splat (double 1.000000e+05)
  %i.h = fadd <2 x double> %i.g, <double -9.000000e+01, double -1.800000e+02>
  store <2 x double> %i.h, ptr %i.b, align 8, !tbaa !104
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.5.0.copyload) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store ptr %i.j, ptr %0, align 8, !tbaa !77
  %i.k = add i32 %i.i, 1
  %i.l = zext i32 %i.k to i64
  %i.m = tail call noalias ptr @_emalloc(i64 noundef %i.l) #16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.m, ptr %i.n, align 8, !tbaa !25
  %i.o = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.p = zext i32 %i.i to i64                     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.o, i64 %i.p, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  store i8 0, ptr %i.q, align 1, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store ptr %i.r, ptr %0, align 8, !tbaa !77
  ret void
}

declare void @timelib_posix_str_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @timelib_tzinfo_clone(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76
  %i.b = tail call noalias dereferenceable_or_null(176) ptr @_ecalloc(i64 noundef 1, i64 noundef 176) #14 ; 13 uses
  %i.c = tail call noalias ptr @_estrdup(ptr noundef %i.a) #15
  store ptr %i.c, ptr %i.b, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load <4 x i32>, ptr %i.d, align 8, !tbaa !72
  store <4 x i32> %i.f, ptr %i.e, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load <2 x i32>, ptr %i.g, align 8, !tbaa !72
  store <2 x i32> %i.i, ptr %i.h, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load <2 x i64>, ptr %i.j, align 8, !tbaa !48
  store <2 x i64> %i.l, ptr %i.k, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36   ; 2 uses
  %i.q = load <2 x i64>, ptr %i.m, align 8, !tbaa !48
  store <2 x i64> %i.q, ptr %i.n, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load <2 x i64>, ptr %i.r, align 8, !tbaa !48
  %i.v = load i64, ptr %i.r, align 8, !tbaa !37
  store <2 x i64> %i.u, ptr %i.s, align 8, !tbaa !48
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = shl i64 %i.p, 3
  %i.x = tail call noalias ptr @_emalloc(i64 noundef %i.w) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.x, ptr %i.y, align 8, !tbaa !47
  %i.z = load i64, ptr %i.o, align 8, !tbaa !36
  %i.aa = tail call noalias ptr @_emalloc(i64 noundef %i.z) #16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !36  ; 2 uses
  %i.af = shl i64 %i.ae, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.x, ptr align 8 %i.ad, i64 %i.af, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ah, i64 %i.ae, i1 false)
  %.pre = load i64, ptr %i.r, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ai = phi i64 [ %.pre, %bb.b ], [ %i.v, %bb.a ]
  %i.aj = mul i64 %i.ai, 20
  %i.ak = tail call noalias ptr @_emalloc(i64 noundef %i.aj) #16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.ao = load i64, ptr %i.r, align 8, !tbaa !37
  %i.ap = mul i64 %i.ao, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ak, ptr align 4 %i.an, i64 %i.ap, i1 false)
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !38
  %i.ar = tail call noalias ptr @_emalloc(i64 noundef %i.aq) #16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !44
  %i.av = load i64, ptr %i.t, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.au, i64 %i.av, i1 false)
  %i.aw = load i64, ptr %i.m, align 8, !tbaa !35  ; 2 uses
  %.not233 = icmp eq i64 %i.aw, 0
  br i1 %.not233, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = shl i64 %i.aw, 4
  %i.ay = tail call noalias ptr @_emalloc(i64 noundef %i.ax) #16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57
  %i.bc = load i64, ptr %i.m, align 8, !tbaa !35
  %i.bd = shl i64 %i.bc, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ay, ptr align 8 %i.bb, i64 %i.bd, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !61 ; 2 uses
  %.not234 = icmp eq ptr %i.bf, null
  br i1 %.not234, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = tail call noalias ptr @_estrdup(ptr noundef nonnull %i.bf) #15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret ptr %i.b
}

declare noalias ptr @_emalloc_8() local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noalias ptr @_estrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @timelib_fetch_timezone_offset(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 5 uses
  %.not49 = icmp eq ptr %i.d, null
  br i1 %.not49, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %.not50 = icmp eq ptr %i.f, null
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %2, align 8, !tbaa !78
  %i.g = tail call ptr @timelib_fetch_posix_timezone_offset(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null) #15
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !37
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  store i64 -9223372036854775808, ptr %2, align 8, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  br label %bb.n

bb.g:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.n = icmp slt i64 %1, %i.m
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 -9223372036854775808, ptr %2, align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.q = add i64 %i.b, -1                         ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !48   ; 2 uses
  %.not51 = icmp slt i64 %1, %i.s
  br i1 %.not51, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62
  %.not52 = icmp eq ptr %i.u, null
  br i1 %.not52, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_0
