Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurm_protocol_defs?download=true
inline.NumInlined: 73
inline.NumDeleted: 9
begin_hunk_0_@node_state_flag_string:bb.a
  %.18 = and i32 %.pn, %.014                      ; 2 uses
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.232, ptr noundef nonnull %.1.i9) #23
  %i.k = and i32 %.18, -16                        ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %node_state_flag_string_single.exit.thread.loopexit, label %.preheader.i.preheader, !llvm.loop !2

node_state_flag_string_single.exit.thread.loopexit: ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8
  br label %node_state_flag_string_single.exit.thread

node_state_flag_string_single.exit.thread:        ; preds = %node_state_flag_string_single.exit.thread.loopexit, %bb.a
  %i.l = phi ptr [ %.pre, %node_state_flag_string_single.exit.thread.loopexit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %i.l
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local ptr @node_state_flag_string_single(ptr nofree noundef captures(none) %0) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 3 uses
  %i.b = and i32 %i.a, -16                        ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %.preheader

bb.b:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 21
  br i1 %exitcond, label %bb.d, label %.preheader, !llvm.loop !1

.preheader:                                       ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @node_state_flags, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 16             ; 2 uses
  %i.e = and i32 %i.d, %i.b
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.f = xor i32 %i.d, -1
  %i.g = and i32 %i.a, %i.f
  store i32 %i.g, ptr %0, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = add i32 %i.b, -1
  %i.k = and i32 %i.a, %i.j
  store i32 %i.k, ptr %0, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.1 = phi ptr [ @.str.90, %bb.d ], [ %i.i, %bb.c ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @node_state_string(i32 noundef %0) #0 {
bb.a:
  %i.a = and i32 %0, 15                           ; 7 uses
  %i.b = zext i32 %0 to i64                       ; 57 uses
  %i.c = and i64 %i.b, 134217728
  %.not = icmp eq i64 %i.c, 0
  %i.d = and i64 %i.b, 1024
  %.not259 = icmp eq i64 %i.d, 0                  ; 4 uses
  %i.e = and i64 %i.b, 512
  %i.f = icmp ne i64 %i.e, 0                      ; 2 uses
  %i.g = and i64 %i.b, 8192
  %.not148 = icmp eq i64 %i.g, 0
  %i.h = and i64 %i.b, 32768
  %.not149.not = icmp eq i64 %i.h, 0              ; 9 uses
  %i.i = and i64 %i.b, 1048576
  %.not160.not = icmp eq i64 %i.i, 0
  %i.j = and i64 %i.b, 256
  %.not151 = icmp eq i64 %i.j, 0
  %i.k = and i64 %i.b, 2048
  %.not152.not = icmp eq i64 %i.k, 0              ; 12 uses
  %i.l = and i64 %i.b, 2097152
  %.not153 = icmp eq i64 %i.l, 0                  ; 2 uses
  %i.m = and i64 %i.b, 8388608
  %.not157.not = icmp eq i64 %i.m, 0              ; 5 uses
  %i.n = and i64 %i.b, 4194304
  %.not158 = icmp eq i64 %i.n, 0
  br i1 %.not158, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  br i1 %.not149.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = and i32 %0, 13
  %i.p = icmp eq i32 %i.o, 1
  %i.q = icmp eq i32 %i.a, 5
  %i.r = or i1 %i.p, %i.q
  %or.cond5 = or i1 %i.r, %i.f
  br i1 %or.cond5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.str.170..str.234 = select i1 %.not152.not, ptr @.str.170, ptr @.str.234
  br label %bb.aj

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.s = and i64 %i.b, 1114112
  %or.cond7.not = icmp eq i64 %i.s, 0
  br i1 %or.cond7.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %i.a, label %bb.g [
    i32 5, label %bb.h
    i32 3, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %.str.237..str.236 = select i1 %.not152.not, ptr @.str.237, ptr @.str.236
  %spec.select = select i1 %.not160.not, ptr %.str.237..str.236, ptr @.str.235
  br label %bb.aj

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.e
  br i1 %i.f, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  br i1 %.not259, label %switch.early.test, label %bb.j

switch.early.test:                                ; preds = %bb.i
  switch i32 %i.a, label %bb.l [
    i32 5, label %bb.j
    i32 3, label %bb.j
  ]

bb.j:                                             ; preds = %switch.early.test, %switch.early.test, %bb.i
  %i.t = and i64 %i.b, 1081344
  %brmerge.not = icmp eq i64 %i.t, 0
  %.str.238.mux = select i1 %.not149.not, ptr @.str.239, ptr @.str.238
  %i.u = and i64 %i.b, 1146880
  %brmerge162.not = icmp eq i64 %i.u, 0
  %.str.238.mux.mux = select i1 %brmerge.not, ptr @.str.240, ptr %.str.238.mux
  %i.v = and i64 %i.b, 1163264
  %brmerge163.not = icmp eq i64 %i.v, 0
  %.str.238.mux.mux.mux = select i1 %brmerge162.not, ptr @.str.241, ptr %.str.238.mux.mux
  %i.w = and i64 %i.b, 1425408
  %brmerge164.not = icmp eq i64 %i.w, 0
  %.str.238.mux.mux.mux.mux = select i1 %brmerge163.not, ptr @.str.242, ptr %.str.238.mux.mux.mux
  %i.x = and i64 %i.b, 1429504
  %brmerge165.not = icmp eq i64 %i.x, 0
  %.str.238.mux.mux.mux.mux.mux = select i1 %brmerge164.not, ptr @.str.243, ptr %.str.238.mux.mux.mux.mux
  br i1 %brmerge165.not, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %bb.j
  %.str.246..str.245 = select i1 %.not152.not, ptr @.str.246, ptr @.str.245
  %spec.select166 = select i1 %.not157.not, ptr %.str.246..str.245, ptr @.str.244
  br label %bb.aj

bb.l:                                             ; preds = %switch.early.test
  %i.y = and i64 %i.b, 1081344
  %brmerge169.not = icmp eq i64 %i.y, 0
  %.str.247.mux = select i1 %.not149.not, ptr @.str.248, ptr @.str.247
  %i.z = and i64 %i.b, 1146880
  %brmerge171.not = icmp eq i64 %i.z, 0
  %.str.247.mux.mux = select i1 %brmerge169.not, ptr @.str.249, ptr %.str.247.mux
  %i.aa = and i64 %i.b, 1163264
  %brmerge173.not = icmp eq i64 %i.aa, 0
  %.str.247.mux.mux.mux = select i1 %brmerge171.not, ptr @.str.250, ptr %.str.247.mux.mux
  %i.ab = and i64 %i.b, 1425408
  %brmerge175.not = icmp eq i64 %i.ab, 0
  %.str.247.mux.mux.mux.mux = select i1 %brmerge173.not, ptr @.str.251, ptr %.str.247.mux.mux.mux
  %i.ac = and i64 %i.b, 1429504
  %brmerge177.not = icmp eq i64 %i.ac, 0
  %.str.247.mux.mux.mux.mux.mux = select i1 %brmerge175.not, ptr @.str.252, ptr %.str.247.mux.mux.mux.mux
  br i1 %brmerge177.not, label %bb.m, label %bb.aj

bb.m:                                             ; preds = %bb.l
  %.str.255..str.254 = select i1 %.not152.not, ptr @.str.255, ptr @.str.254
  %spec.select178 = select i1 %.not157.not, ptr %.str.255..str.254, ptr @.str.253
  br label %bb.aj

bb.n:                                             ; preds = %bb.h
  br i1 %.not148, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not259, label %switch.early.test161, label %bb.p

switch.early.test161:                             ; preds = %bb.o
  switch i32 %i.a, label %bb.q [
    i32 5, label %bb.p
    i32 3, label %bb.p
  ]

bb.p:                                             ; preds = %switch.early.test161, %switch.early.test161, %bb.o
  %.str.257..str.256 = select i1 %.not152.not, ptr @.str.257, ptr @.str.256
  br label %bb.aj

bb.q:                                             ; preds = %switch.early.test161
  %.str.259..str.258 = select i1 %.not152.not, ptr @.str.259, ptr @.str.258
  br label %bb.aj

bb.r:                                             ; preds = %bb.n
  %i.ad = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  %switch.tableidx = add nsw i32 %i.af, -4        ; 3 uses
  %i.ag = icmp ult i32 %switch.tableidx, 23
  %switch.shifted = lshr i32 5891341, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.ag, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.s

bb.s:                                             ; preds = %.split, %bb.r
  switch i32 %i.a, label %bb.x [
    i32 1, label %bb.t
    i32 3, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.ah = and i64 %i.b, 1081344
  %brmerge181.not = icmp eq i64 %i.ah, 0
  %.str.272.mux = select i1 %.not149.not, ptr @.str.273, ptr @.str.272
  %i.ai = and i64 %i.b, 1146880
  %brmerge183.not = icmp eq i64 %i.ai, 0
  %.str.272.mux.mux = select i1 %brmerge181.not, ptr @.str.274, ptr %.str.272.mux
  %i.aj = and i64 %i.b, 1163264
  %brmerge185.not = icmp eq i64 %i.aj, 0
  %.str.272.mux.mux.mux = select i1 %brmerge183.not, ptr @.str.275, ptr %.str.272.mux.mux
  %i.ak = and i64 %i.b, 1425408
  %brmerge187.not = icmp eq i64 %i.ak, 0
  %.str.272.mux.mux.mux.mux = select i1 %brmerge185.not, ptr @.str.276, ptr %.str.272.mux.mux.mux
  %i.al = and i64 %i.b, 1429504
  %brmerge189.not = icmp eq i64 %i.al, 0
  %.str.272.mux.mux.mux.mux.mux = select i1 %brmerge187.not, ptr @.str.277, ptr %.str.272.mux.mux.mux.mux
  br i1 %brmerge189.not, label %bb.u, label %bb.aj

bb.u:                                             ; preds = %bb.t
  %.str.280..str.279 = select i1 %.not152.not, ptr @.str.280, ptr @.str.279
  %spec.select190 = select i1 %.not157.not, ptr %.str.280..str.279, ptr @.str.278
  br label %bb.aj

bb.v:                                             ; preds = %bb.s
  %i.am = and i64 %i.b, 1081344
  %brmerge193.not = icmp eq i64 %i.am, 0
  %.str.281.mux = select i1 %.not149.not, ptr @.str.282, ptr @.str.281
  %i.an = and i64 %i.b, 1146880
  %brmerge195.not = icmp eq i64 %i.an, 0
  %.str.281.mux.mux = select i1 %brmerge193.not, ptr @.str.283, ptr %.str.281.mux
  %i.ao = and i64 %i.b, 1163264
  %brmerge197.not = icmp eq i64 %i.ao, 0
  %.str.281.mux.mux.mux = select i1 %brmerge195.not, ptr @.str.284, ptr %.str.281.mux.mux
  %i.ap = and i64 %i.b, 1425408
  %brmerge199.not = icmp eq i64 %i.ap, 0
  %.str.281.mux.mux.mux.mux = select i1 %brmerge197.not, ptr @.str.285, ptr %.str.281.mux.mux.mux
  %i.aq = and i64 %i.b, 1429504
  %brmerge201.not = icmp eq i64 %i.aq, 0
  %.str.281.mux.mux.mux.mux.mux = select i1 %brmerge199.not, ptr @.str.286, ptr %.str.281.mux.mux.mux.mux
  %i.ar = and i64 %i.b, 9818112
  %brmerge202.not = icmp eq i64 %i.ar, 0
  %.str.281.mux.mux.mux.mux.mux.mux = select i1 %brmerge201.not, ptr @.str.287, ptr %.str.281.mux.mux.mux.mux.mux
  br i1 %brmerge202.not, label %bb.w, label %bb.aj

bb.w:                                             ; preds = %bb.v
  %.str.289..str.290 = select i1 %.not259, ptr @.str.290, ptr @.str.289
  %spec.select203 = select i1 %.not152.not, ptr %.str.289..str.290, ptr @.str.288
  br label %bb.aj

bb.x:                                             ; preds = %bb.s
  br i1 %.not259, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.as = and i64 %i.b, 1081344
  %brmerge206.not = icmp eq i64 %i.as, 0
  %.str.291.mux = select i1 %.not149.not, ptr @.str.292, ptr @.str.291
  %i.at = and i64 %i.b, 1146880
  %brmerge208.not = icmp eq i64 %i.at, 0
  %.str.291.mux.mux = select i1 %brmerge206.not, ptr @.str.293, ptr %.str.291.mux
  %i.au = and i64 %i.b, 1163264
  %brmerge210.not = icmp eq i64 %i.au, 0
  %.str.291.mux.mux.mux = select i1 %brmerge208.not, ptr @.str.294, ptr %.str.291.mux.mux
  %i.av = and i64 %i.b, 1425408
  %brmerge212.not = icmp eq i64 %i.av, 0
  %.str.291.mux.mux.mux.mux = select i1 %brmerge210.not, ptr @.str.295, ptr %.str.291.mux.mux.mux
  %i.aw = and i64 %i.b, 1429504
  %brmerge214.not = icmp eq i64 %i.aw, 0
  %.str.291.mux.mux.mux.mux.mux = select i1 %brmerge212.not, ptr @.str.296, ptr %.str.291.mux.mux.mux.mux
  br i1 %brmerge214.not, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %bb.y
  %.str.67..str.298 = select i1 %.not152.not, ptr @.str.67, ptr @.str.298
  %spec.select215 = select i1 %.not157.not, ptr %.str.67..str.298, ptr @.str.297
  br label %bb.aj

bb.aa:                                            ; preds = %bb.x
  switch i32 %i.a, label %bb.ah [
    i32 2, label %bb.ab
    i32 5, label %bb.ad
    i32 6, label %bb.af
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ax = and i64 %i.b, 1081344
  %brmerge218.not = icmp eq i64 %i.ax, 0
  %.str.299.mux = select i1 %.not149.not, ptr @.str.300, ptr @.str.299
  %i.ay = and i64 %i.b, 1146880
  %brmerge220.not = icmp eq i64 %i.ay, 0
  %.str.299.mux.mux = select i1 %brmerge218.not, ptr @.str.301, ptr %.str.299.mux
  %i.az = and i64 %i.b, 1163264
  %brmerge222.not = icmp eq i64 %i.az, 0
  %.str.299.mux.mux.mux = select i1 %brmerge220.not, ptr @.str.302, ptr %.str.299.mux.mux
  %i.ba = and i64 %i.b, 1425408
  %brmerge224.not = icmp eq i64 %i.ba, 0
  %.str.299.mux.mux.mux.mux = select i1 %brmerge222.not, ptr @.str.303, ptr %.str.299.mux.mux.mux
  %i.bb = and i64 %i.b, 1429504
  %brmerge226.not = icmp eq i64 %i.bb, 0
  %.str.299.mux.mux.mux.mux.mux = select i1 %brmerge224.not, ptr @.str.304, ptr %.str.299.mux.mux.mux.mux
  %i.bc = and i64 %i.b, 9818112
  %brmerge228.not = icmp eq i64 %i.bc, 0
  %.str.299.mux.mux.mux.mux.mux.mux = select i1 %brmerge226.not, ptr @.str.305, ptr %.str.299.mux.mux.mux.mux.mux
  %i.bd = and i64 %i.b, 9820160
  %brmerge229.not = icmp eq i64 %i.bd, 0
  %.str.299.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge228.not, ptr @.str.306, ptr %.str.299.mux.mux.mux.mux.mux.mux
  %i.be = and i64 %i.b, 9820192
  %brmerge230.not = icmp eq i64 %i.be, 0
  %.str.299.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge229.not, ptr @.str.307, ptr %.str.299.mux.mux.mux.mux.mux.mux.mux
  br i1 %brmerge230.not, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %.str.142..str.309 = select i1 %.not153, ptr @.str.142, ptr @.str.309
  %spec.select231 = select i1 %.not, ptr %.str.142..str.309, ptr @.str.308
  br label %bb.aj

bb.ad:                                            ; preds = %bb.aa
  %i.bf = and i64 %i.b, 1081344
  %brmerge234.not = icmp eq i64 %i.bf, 0
  %.str.310.mux = select i1 %.not149.not, ptr @.str.311, ptr @.str.310
  %i.bg = and i64 %i.b, 1146880
  %brmerge236.not = icmp eq i64 %i.bg, 0
  %.str.310.mux.mux = select i1 %brmerge234.not, ptr @.str.312, ptr %.str.310.mux
  %i.bh = and i64 %i.b, 1163264
  %brmerge238.not = icmp eq i64 %i.bh, 0
  %.str.310.mux.mux.mux = select i1 %brmerge236.not, ptr @.str.313, ptr %.str.310.mux.mux
  %i.bi = and i64 %i.b, 1425408
  %brmerge240.not = icmp eq i64 %i.bi, 0
  %.str.310.mux.mux.mux.mux = select i1 %brmerge238.not, ptr @.str.314, ptr %.str.310.mux.mux.mux
  %i.bj = and i64 %i.b, 1429504
  %brmerge242.not = icmp eq i64 %i.bj, 0
  %.str.310.mux.mux.mux.mux.mux = select i1 %brmerge240.not, ptr @.str.315, ptr %.str.310.mux.mux.mux.mux
  %i.bk = and i64 %i.b, 9818112
  %brmerge244.not = icmp eq i64 %i.bk, 0
  %.str.310.mux.mux.mux.mux.mux.mux = select i1 %brmerge242.not, ptr @.str.316, ptr %.str.310.mux.mux.mux.mux.mux
  br i1 %brmerge244.not, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %.str.144..str.318 = select i1 %.not153, ptr @.str.144, ptr @.str.318
  %spec.select245 = select i1 %.not152.not, ptr %.str.144..str.318, ptr @.str.317
  br label %bb.aj

bb.af:                                            ; preds = %bb.aa
  %i.bl = and i64 %i.b, 1081344
  %brmerge248.not = icmp eq i64 %i.bl, 0
  %.str.319.mux = select i1 %.not149.not, ptr @.str.320, ptr @.str.319
  %i.bm = and i64 %i.b, 1146880
  %brmerge250.not = icmp eq i64 %i.bm, 0
  %.str.319.mux.mux = select i1 %brmerge248.not, ptr @.str.321, ptr %.str.319.mux
  %i.bn = and i64 %i.b, 1163264
  %brmerge252.not = icmp eq i64 %i.bn, 0
  %.str.319.mux.mux.mux = select i1 %brmerge250.not, ptr @.str.322, ptr %.str.319.mux.mux
  %i.bo = and i64 %i.b, 1425408
  %brmerge254.not = icmp eq i64 %i.bo, 0
  %.str.319.mux.mux.mux.mux = select i1 %brmerge252.not, ptr @.str.323, ptr %.str.319.mux.mux.mux
  %i.bp = and i64 %i.b, 1429504
  %brmerge256.not = icmp eq i64 %i.bp, 0
  %.str.319.mux.mux.mux.mux.mux = select i1 %brmerge254.not, ptr @.str.324, ptr %.str.319.mux.mux.mux.mux
  br i1 %brmerge256.not, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %.str.327..str.326 = select i1 %.not152.not, ptr @.str.327, ptr @.str.326
  %spec.select257 = select i1 %.not157.not, ptr %.str.327..str.326, ptr @.str.325
  br label %bb.aj

bb.ah:                                            ; preds = %bb.aa
  br i1 %.not151, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bq = icmp eq i32 %i.a, 0
  %.str.13..str.329 = select i1 %.not152.not, ptr @.str.13, ptr @.str.329
  %spec.select258 = select i1 %i.bq, ptr %.str.13..str.329, ptr @.str.90
  br label %bb.aj

switch.lookup:                                    ; preds = %.split
  %i.br = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.node_state_string, i64 %i.br
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %switch.lookup, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.z, %bb.w, %bb.u, %bb.m, %bb.k, %bb.g, %bb.af, %bb.ad, %bb.ab, %bb.y, %bb.v, %bb.t, %bb.l, %bb.j, %bb.ah, %bb.q, %bb.p, %bb.d, %bb.a
  %.0 = phi ptr [ @.str.233, %bb.a ], [ %switch.load, %switch.lookup ], [ %.str.238.mux.mux.mux.mux.mux, %bb.j ], [ %spec.select, %bb.g ], [ %.str.310.mux.mux.mux.mux.mux.mux, %bb.ad ], [ %spec.select178, %bb.m ], [ %.str.319.mux.mux.mux.mux.mux, %bb.af ], [ %.str.281.mux.mux.mux.mux.mux.mux, %bb.v ], [ %spec.select245, %bb.ae ], [ %.str.272.mux.mux.mux.mux.mux, %bb.t ], [ %spec.select258, %bb.ai ], [ %.str.247.mux.mux.mux.mux.mux, %bb.l ], [ %spec.select166, %bb.k ], [ %spec.select257, %bb.ag ], [ %spec.select190, %bb.u ], [ %spec.select215, %bb.z ], [ %.str.299.mux.mux.mux.mux.mux.mux.mux.mux, %bb.ab ], [ %spec.select203, %bb.w ], [ %spec.select231, %bb.ac ], [ %.str.257..str.256, %bb.p ], [ %.str.170..str.234, %bb.d ], [ %.str.259..str.258, %bb.q ], [ %.str.291.mux.mux.mux.mux.mux, %bb.y ], [ @.str.328, %bb.ah ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @node_state_string_compact(i32 noundef %0) #0 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 57 uses
  %i.b = and i64 %i.a, 134217728
  %.not = icmp eq i64 %i.b, 0
  %i.c = and i64 %i.a, 1024
end_hunk_0
