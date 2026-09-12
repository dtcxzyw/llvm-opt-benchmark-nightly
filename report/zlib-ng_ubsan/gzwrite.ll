Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/gzwrite?download=true
begin_hunk_0_@gz_write:bb.a
bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %i.b) #13, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 4 uses
  %i.g = and i64 %i.f, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12     ; 3 uses
  br i1 %i.h, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @118, i64 %i.f) #13, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i32, ptr %i.e, align 8, !tbaa !23
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = call fastcc i32 @gz_write_init(ptr noundef %0)
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %.critedge71, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %i.d, label %bb.j, label %bb.i, !prof !13, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @119, i64 %i.b) #13, !nosanitize !12
  br label %bb.j, !nosanitize !12

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !24
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.d, label %.critedge, label %bb.l, !prof !13, !nosanitize !12

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @120, i64 %i.b) #13, !nosanitize !12
  store i32 0, ptr %i.m, align 8, !tbaa !24
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @121, i64 %i.b) #13, !nosanitize !12
  br label %bb.m, !nosanitize !12

.critedge:                                        ; preds = %bb.k
  store i32 0, ptr %i.m, align 8, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25
  %i.q = call fastcc i32 @gz_zero(ptr noundef %0, i64 noundef %i.p)
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %.critedge71, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  br i1 %i.d, label %bb.p, label %bb.o, !prof !13, !nosanitize !12

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @122, i64 %i.b) #13, !nosanitize !12
  br label %bb.p, !nosanitize !12

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.h, label %bb.r, label %bb.q, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @123, i64 %i.f) #13, !nosanitize !12
  br label %bb.r, !nosanitize !12

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.s = load i32, ptr %i.e, align 8, !tbaa !23
  %i.t = zext i32 %i.s to i64
  %i.u = icmp ult i64 %2, %i.t
  br i1 %i.u, label %.preheader, label %bb.bj

.preheader:                                       ; preds = %bb.r
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %bb.bi
  %.059 = phi ptr [ %i.bt, %bb.bi ], [ %1, %.preheader ] ; 4 uses
  %.057 = phi i64 [ %i.cb, %bb.bi ], [ %2, %.preheader ] ; 3 uses
  br i1 %i.d, label %bb.u, label %bb.t, !prof !13, !nosanitize !12

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @124, i64 %i.b) #13, !nosanitize !12
  br label %bb.u, !nosanitize !12

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.z = load i32, ptr %i.w, align 8, !tbaa !45
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  br i1 %i.d, label %bb.x, label %bb.w, !prof !13, !nosanitize !12

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @125, i64 %i.b) #13, !nosanitize !12
  br label %bb.x, !nosanitize !12

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !26
  br i1 %i.d, label %bb.z, label %bb.y, !prof !13, !nosanitize !12

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @126, i64 %i.b) #13, !nosanitize !12
  br label %bb.z, !nosanitize !12

bb.z:                                             ; preds = %bb.y, %bb.x
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !46
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u
  br i1 %i.d, label %bb.ac, label %bb.ab, !prof !13, !nosanitize !12

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @127, i64 %i.b) #13, !nosanitize !12
  br label %bb.ac, !nosanitize !12

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !46  ; 3 uses
  br i1 %i.d, label %bb.ae, label %bb.ad, !prof !13, !nosanitize !12

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @128, i64 %i.b) #13, !nosanitize !12
  br label %bb.ae, !nosanitize !12

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ad = load i32, ptr %i.w, align 8, !tbaa !45
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.ag = ptrtoint ptr %i.ac to i64, !nosanitize !12 ; 3 uses
  %i.ah = add i64 %i.ae, %i.ag, !nosanitize !12   ; 3 uses
  %i.ai = icmp ne ptr %i.ac, null, !nosanitize !12
  %i.aj = icmp eq i64 %i.ah, 0
  %i.ak = xor i1 %i.ai, %i.aj
  %i.al = icmp uge i64 %i.ah, %i.ag, !nosanitize !12
  %i.am = and i1 %i.al, %i.ak, !nosanitize !12
  br i1 %i.am, label %bb.ag, label %bb.af, !prof !13, !nosanitize !12

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @129, i64 %i.ag, i64 %i.ah) #13, !nosanitize !12
  br label %bb.ag, !nosanitize !12

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %i.d, label %bb.ai, label %bb.ah, !prof !13, !nosanitize !12

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @130, i64 %i.b) #13, !nosanitize !12
  br label %bb.ai, !nosanitize !12

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.ao = ptrtoint ptr %i.af to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = trunc i64 %i.aq to i32
  br i1 %i.d, label %bb.ak, label %bb.aj, !prof !13, !nosanitize !12

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @131, i64 %i.b) #13, !nosanitize !12
  br label %bb.ak, !nosanitize !12

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %i.h, label %bb.am, label %bb.al, !prof !13, !nosanitize !12

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @132, i64 %i.f) #13, !nosanitize !12
  br label %bb.am, !nosanitize !12

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.as = load i32, ptr %i.e, align 8, !tbaa !23  ; 2 uses
  %i.at = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.as, i32 %i.ar), !nosanitize !12 ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 0, !nosanitize !12
  %i.av = extractvalue { i32, i1 } %i.at, 1, !nosanitize !12
  br i1 %i.av, label %bb.an, label %bb.ao, !prof !27, !nosanitize !12

bb.an:                                            ; preds = %bb.am
  %i.aw = zext i32 %i.as to i64, !nosanitize !12
  %i.ax = and i64 %i.aq, 4294967295
  call void @__ubsan_handle_sub_overflow(ptr nonnull @133, i64 %i.aw, i64 %i.ax) #14, !nosanitize !12
  br label %bb.ao, !nosanitize !12

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ay = zext i32 %i.au to i64
  %spec.select75 = call i64 @llvm.umin.i64(i64 %.057, i64 %i.ay) ; 9 uses
  %spec.select = trunc nuw i64 %spec.select75 to i32
  br i1 %i.d, label %bb.aq, label %bb.ap, !prof !13, !nosanitize !12

bb.ap:                                            ; preds = %bb.ao
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @134, i64 %i.b) #13, !nosanitize !12
  br label %bb.aq, !nosanitize !12

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !26  ; 4 uses
  %i.ba = and i64 %i.aq, 4294967295               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  %i.bc = ptrtoint ptr %i.az to i64, !nosanitize !12 ; 3 uses
  %i.bd = add i64 %i.ba, %i.bc, !nosanitize !12   ; 3 uses
  %i.be = icmp ne ptr %i.az, null, !nosanitize !12
  %i.bf = icmp eq i64 %i.bd, 0
  %i.bg = xor i1 %i.be, %i.bf
  %i.bh = icmp uge i64 %i.bd, %i.bc, !nosanitize !12
  %i.bi = and i1 %i.bh, %i.bg, !nosanitize !12
  br i1 %i.bi, label %bb.as, label %bb.ar, !prof !13, !nosanitize !12

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @135, i64 %i.bc, i64 %i.bd) #13, !nosanitize !12
  br label %bb.as, !nosanitize !12

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.not68 = icmp eq ptr %i.az, null
  br i1 %.not68, label %bb.at, label %bb.au, !prof !27, !nosanitize !12

bb.at:                                            ; preds = %bb.as
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @136) #13, !nosanitize !12
  br label %bb.au, !nosanitize !12

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.bj = icmp ne ptr %.059, null, !nosanitize !12 ; 2 uses
  br i1 %i.bj, label %bb.aw, label %bb.av, !prof !13, !nosanitize !12

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @137) #13, !nosanitize !12
  br label %bb.aw, !nosanitize !12

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %.059, i64 %spec.select75, i1 false)
  br i1 %i.d, label %bb.ay, label %bb.ax, !prof !13, !nosanitize !12

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @138, i64 %i.b) #13, !nosanitize !12
  br label %bb.ay, !nosanitize !12

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.bk = load i32, ptr %i.w, align 8, !tbaa !45  ; 2 uses
  %i.bl = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.bk, i32 %spec.select), !nosanitize !12 ; 2 uses
  %i.bm = extractvalue { i32, i1 } %i.bl, 0, !nosanitize !12
  %i.bn = extractvalue { i32, i1 } %i.bl, 1, !nosanitize !12
  br i1 %i.bn, label %bb.az, label %bb.ba, !prof !27, !nosanitize !12

bb.az:                                            ; preds = %bb.ay
  %i.bo = zext i32 %i.bk to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow(ptr nonnull @139, i64 %i.bo, i64 %spec.select75) #14, !nosanitize !12
  br label %bb.ba, !nosanitize !12

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i32 %i.bm, ptr %i.w, align 8, !tbaa !45
  br i1 %i.d, label %.critedge87, label %bb.bb, !prof !13, !nosanitize !12

bb.bb:                                            ; preds = %bb.ba
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @140, i64 %i.b) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @141, i64 %i.b) #13, !nosanitize !12
  br label %.critedge87, !nosanitize !12

.critedge87:                                      ; preds = %bb.bb, %bb.ba
  %i.bp = load i64, ptr %i.y, align 8, !tbaa !28  ; 2 uses
  %i.bq = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bp, i64 %spec.select75), !nosanitize !12 ; 2 uses
  %i.br = extractvalue { i64, i1 } %i.bq, 0, !nosanitize !12
  %i.bs = extractvalue { i64, i1 } %i.bq, 1, !nosanitize !12
  br i1 %i.bs, label %bb.bc, label %bb.bd, !prof !27, !nosanitize !12

bb.bc:                                            ; preds = %.critedge87
  call void @__ubsan_handle_add_overflow(ptr nonnull @142, i64 %i.bp, i64 %spec.select75) #13, !nosanitize !12
  br label %bb.bd, !nosanitize !12

bb.bd:                                            ; preds = %bb.bc, %.critedge87
  store i64 %i.br, ptr %i.y, align 8, !tbaa !28
  %i.bt = getelementptr inbounds nuw i8, ptr %.059, i64 %spec.select75
  %i.bu = ptrtoint ptr %.059 to i64, !nosanitize !12 ; 3 uses
  %i.bv = add i64 %spec.select75, %i.bu, !nosanitize !12 ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = xor i1 %i.bj, %i.bw
  %i.by = icmp uge i64 %i.bv, %i.bu, !nosanitize !12
  %i.bz = and i1 %i.by, %i.bx, !nosanitize !12
  br i1 %i.bz, label %bb.bf, label %bb.be, !prof !13, !nosanitize !12

bb.be:                                            ; preds = %bb.bd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @143, i64 %i.bu, i64 %i.bv) #13, !nosanitize !12
  br label %bb.bf, !nosanitize !12

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ca = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.057, i64 %spec.select75), !nosanitize !12 ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 0, !nosanitize !12 ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.ca, 1, !nosanitize !12
  br i1 %i.cc, label %bb.bg, label %bb.bh, !prof !27, !nosanitize !12

bb.bg:                                            ; preds = %bb.bf
  call void @__ubsan_handle_sub_overflow(ptr nonnull @144, i64 %.057, i64 %spec.select75) #14, !nosanitize !12
  br label %bb.bh, !nosanitize !12

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.not69 = icmp eq i64 %i.cb, 0
  br i1 %.not69, label %.critedge71, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cd = call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0)
  %i.ce = icmp eq i32 %i.cd, -1
  br i1 %i.ce, label %.critedge71, label %bb.s

bb.bj:                                            ; preds = %bb.r
  br i1 %i.d, label %bb.bl, label %bb.bk, !prof !13, !nosanitize !12

bb.bk:                                            ; preds = %bb.bj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @145, i64 %i.b) #13, !nosanitize !12
  br label %bb.bl, !nosanitize !12

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !45
  %.not65 = icmp eq i32 %i.ch, 0
  br i1 %.not65, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ci = call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0)
  %i.cj = icmp eq i32 %i.ci, -1
  br i1 %i.cj, label %.critedge71, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  br i1 %i.d, label %bb.bp, label %bb.bo, !prof !13, !nosanitize !12

bb.bo:                                            ; preds = %bb.bn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @146, i64 %i.b) #13, !nosanitize !12
  br label %bb.bp, !nosanitize !12

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  store ptr %1, ptr %i.cf, align 8, !tbaa !46
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.by, %bb.bp
  %.158 = phi i64 [ %2, %bb.bp ], [ %i.cr, %bb.by ] ; 3 uses
  %spec.select7074 = call i64 @llvm.umin.i64(i64 %.158, i64 4294967295) ; 5 uses
  %spec.select70 = trunc nuw i64 %spec.select7074 to i32 ; 2 uses
  br i1 %i.d, label %.critedge89, label %bb.br, !prof !13, !nosanitize !12

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @147, i64 %i.b) #13, !nosanitize !12
  store i32 %spec.select70, ptr %i.cg, align 8, !tbaa !45
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @148, i64 %i.b) #13, !nosanitize !12
  br label %bb.bs, !nosanitize !12

.critedge89:                                      ; preds = %bb.bq
  store i32 %spec.select70, ptr %i.cg, align 8, !tbaa !45
  br label %bb.bs

bb.bs:                                            ; preds = %.critedge89, %bb.br
  br i1 %i.d, label %.critedge91, label %bb.bt, !prof !13, !nosanitize !12

bb.bt:                                            ; preds = %bb.bs
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @149, i64 %i.b) #13, !nosanitize !12
  br label %.critedge91, !nosanitize !12

.critedge91:                                      ; preds = %bb.bs, %bb.bt
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !28 ; 2 uses
  %i.cm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cl, i64 %spec.select7074), !nosanitize !12 ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 0, !nosanitize !12
  %i.co = extractvalue { i64, i1 } %i.cm, 1, !nosanitize !12
  br i1 %i.co, label %bb.bu, label %bb.bv, !prof !27, !nosanitize !12

bb.bu:                                            ; preds = %.critedge91
  call void @__ubsan_handle_add_overflow(ptr nonnull @150, i64 %i.cl, i64 %spec.select7074) #13, !nosanitize !12
  br label %bb.bv, !nosanitize !12

bb.bv:                                            ; preds = %bb.bu, %.critedge91
  store i64 %i.cn, ptr %i.ck, align 8, !tbaa !28
  %i.cp = call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0)
  %.not66 = icmp eq i32 %i.cp, -1
  br i1 %.not66, label %.critedge71, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.cq = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.158, i64 %spec.select7074), !nosanitize !12 ; 2 uses
  %i.cr = extractvalue { i64, i1 } %i.cq, 0, !nosanitize !12 ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cq, 1, !nosanitize !12
  br i1 %i.cs, label %bb.bx, label %bb.by, !prof !27, !nosanitize !12

bb.bx:                                            ; preds = %bb.bw
  call void @__ubsan_handle_sub_overflow(ptr nonnull @151, i64 %.158, i64 %spec.select7074) #14, !nosanitize !12
  br label %bb.by, !nosanitize !12

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.not67 = icmp eq i64 %i.cr, 0
  br i1 %.not67, label %.critedge71, label %bb.bq, !llvm.loop !43

.critedge71:                                      ; preds = %bb.bv, %bb.by, %bb.bh, %bb.bi, %bb.bm, %bb.m, %bb.g, %bb.a
  %.4 = phi i64 [ %2, %bb.bh ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.bm ], [ 0, %bb.m ], [ 0, %bb.bi ], [ 0, %bb.bv ], [ %2, %bb.by ]
  ret i64 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @zng_gzfwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 !func_sanitize !47 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq ptr %3, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %3 to i64, !nosanitize !12  ; 3 uses
  %i.d = and i64 %i.c, 7, !nosanitize !12
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !12     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @5, i64 %i.c) #13, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@zng_gzvprintf:bb.a
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = xor i1 %i.ao, %i.bn
  %i.bp = icmp uge i64 %i.bm, %i.bl, !nosanitize !12
  %i.bq = and i1 %i.bp, %i.bo, !nosanitize !12
  br i1 %i.bq, label %bb.aq, label %bb.ap, !prof !13, !nosanitize !12

bb.ap:                                            ; preds = %bb.ao
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @57, i64 %i.bl, i64 %i.bm) #13, !nosanitize !12
  br label %bb.aq, !nosanitize !12

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  br i1 %i.ao, label %bb.as, label %bb.ar, !prof !13, !nosanitize !12

bb.ar:                                            ; preds = %bb.aq
  %i.br = ptrtoint ptr %i.bk to i64, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @59, i64 %i.br) #13, !nosanitize !12
  br label %bb.as, !nosanitize !12

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store i8 0, ptr %i.bk, align 1, !tbaa !33
  br i1 %i.d, label %bb.au, label %bb.at, !prof !13, !nosanitize !12

bb.at:                                            ; preds = %bb.as
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @60, i64 %i.b) #13, !nosanitize !12
  br label %bb.au, !nosanitize !12

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.bs = load i32, ptr %i.m, align 8, !tbaa !23
  %i.bt = zext i32 %i.bs to i64
  %i.bu = call i32 @vsnprintf(ptr noundef nonnull %i.ax, i64 noundef %i.bt, ptr noundef %1, ptr noundef %2) #13 ; 7 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.co, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.d, label %bb.ax, label %bb.aw, !prof !13, !nosanitize !12

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @61, i64 %i.b) #13, !nosanitize !12
  br label %bb.ax, !nosanitize !12

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.bw = load i32, ptr %i.m, align 8, !tbaa !23
  %.not56 = icmp ult i32 %i.bu, %i.bw
  br i1 %.not56, label %bb.ay, label %bb.co

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.d, label %bb.ba, label %bb.az, !prof !13, !nosanitize !12

bb.az:                                            ; preds = %bb.ay
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @62, i64 %i.b) #13, !nosanitize !12
  br label %bb.ba, !nosanitize !12

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.bx = load i32, ptr %i.m, align 8, !tbaa !23  ; 2 uses
  %i.by = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.bx, i32 1), !nosanitize !12 ; 2 uses
  %i.bz = extractvalue { i32, i1 } %i.by, 0, !nosanitize !12
  %i.ca = extractvalue { i32, i1 } %i.by, 1, !nosanitize !12
  br i1 %i.ca, label %bb.bb, label %bb.bc, !prof !27, !nosanitize !12

bb.bb:                                            ; preds = %bb.ba
  %i.cb = zext nneg i32 %i.bx to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @63, i64 %i.cb, i64 1) #14, !nosanitize !12
  br label %bb.bc, !nosanitize !12

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.cc = zext i32 %i.bz to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cc ; 2 uses
  %i.ce = add i64 %i.cc, %i.bl, !nosanitize !12   ; 2 uses
  %i.cf = icmp uge i64 %i.ce, %i.bl, !nosanitize !12
  %i.cg = and i1 %i.ao, %i.cf
  br i1 %i.cg, label %bb.be, label %bb.bd, !prof !13, !nosanitize !12

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @64, i64 %i.bl, i64 %i.ce) #13, !nosanitize !12
  br label %bb.be, !nosanitize !12

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br i1 %i.ao, label %bb.bg, label %bb.bf, !prof !13, !nosanitize !12

bb.bf:                                            ; preds = %bb.be
  %i.ch = ptrtoint ptr %i.cd to i64, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @65, i64 %i.ch) #13, !nosanitize !12
  br label %bb.bg, !nosanitize !12

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ci = load i8, ptr %i.cd, align 1, !tbaa !33
  %.not57 = icmp eq i8 %i.ci, 0
  br i1 %.not57, label %bb.bh, label %bb.co

bb.bh:                                            ; preds = %bb.bg
  %i.cj = load i32, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.ck = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.cj, i32 %i.bu), !nosanitize !12 ; 2 uses
  %i.cl = extractvalue { i32, i1 } %i.ck, 0, !nosanitize !12
  %i.cm = extractvalue { i32, i1 } %i.ck, 1, !nosanitize !12
  br i1 %i.cm, label %bb.bi, label %bb.bj, !prof !27, !nosanitize !12

bb.bi:                                            ; preds = %bb.bh
  %i.cn = zext i32 %i.cj to i64, !nosanitize !12
  %i.co = zext i32 %i.bu to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow(ptr nonnull @66, i64 %i.cn, i64 %i.co) #14, !nosanitize !12
  br label %bb.bj, !nosanitize !12

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  store i32 %i.cl, ptr %i.z, align 8, !tbaa !31
  %i.cp = sext i32 %i.bu to i64                   ; 2 uses
  br i1 %i.d, label %.critedge64, label %bb.bk, !prof !13, !nosanitize !12

bb.bk:                                            ; preds = %bb.bj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @67, i64 %i.b) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @68, i64 %i.b) #13, !nosanitize !12
  br label %.critedge64, !nosanitize !12

.critedge64:                                      ; preds = %bb.bj, %bb.bk
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !28 ; 2 uses
  %i.cs = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.cr, i64 %i.cp), !nosanitize !12 ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 0, !nosanitize !12
  %i.cu = extractvalue { i64, i1 } %i.cs, 1, !nosanitize !12
  br i1 %i.cu, label %bb.bl, label %bb.bm, !prof !27, !nosanitize !12

bb.bl:                                            ; preds = %.critedge64
  call void @__ubsan_handle_add_overflow(ptr nonnull @69, i64 %i.cr, i64 %i.cp) #13, !nosanitize !12
  br label %bb.bm, !nosanitize !12

bb.bm:                                            ; preds = %bb.bl, %.critedge64
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !28
  %i.cv = load i32, ptr %i.z, align 8, !tbaa !31
  br i1 %i.d, label %bb.bo, label %bb.bn, !prof !13, !nosanitize !12

bb.bn:                                            ; preds = %bb.bm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @70, i64 %i.b) #13, !nosanitize !12
  br label %bb.bo, !nosanitize !12

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.cw = load i32, ptr %i.m, align 8, !tbaa !23
  %.not58 = icmp ult i32 %i.cv, %i.cw
  br i1 %.not58, label %bb.co, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.cx = load i32, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  br i1 %i.d, label %bb.br, label %bb.bq, !prof !13, !nosanitize !12

bb.bq:                                            ; preds = %bb.bp
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @71, i64 %i.b) #13, !nosanitize !12
  br label %bb.br, !nosanitize !12

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.cy = load i32, ptr %i.m, align 8, !tbaa !23  ; 2 uses
  %i.cz = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.cx, i32 %i.cy), !nosanitize !12 ; 2 uses
  %i.da = extractvalue { i32, i1 } %i.cz, 0, !nosanitize !12 ; 2 uses
  %i.db = extractvalue { i32, i1 } %i.cz, 1, !nosanitize !12
  br i1 %i.db, label %bb.bs, label %bb.bt, !prof !27, !nosanitize !12

bb.bs:                                            ; preds = %bb.br
  %i.dc = zext i32 %i.cx to i64, !nosanitize !12
  %i.dd = zext i32 %i.cy to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @72, i64 %i.dc, i64 %i.dd) #14, !nosanitize !12
  br label %bb.bt, !nosanitize !12

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %i.d, label %bb.bv, label %bb.bu, !prof !13, !nosanitize !12

bb.bu:                                            ; preds = %bb.bt
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @73, i64 %i.b) #13, !nosanitize !12
  br label %bb.bv, !nosanitize !12

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.de = load i32, ptr %i.m, align 8, !tbaa !23
  store i32 %i.de, ptr %i.z, align 8, !tbaa !31
  %i.df = call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef 0)
  %i.dg = icmp eq i32 %i.df, -1
  br i1 %i.dg, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.d, label %bb.by, label %bb.bx, !prof !13, !nosanitize !12

bb.bx:                                            ; preds = %bb.bw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @74, i64 %i.b) #13, !nosanitize !12
  br label %bb.by, !nosanitize !12

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.dh = load i32, ptr %i.k, align 4, !tbaa !22
  br label %bb.co

bb.bz:                                            ; preds = %bb.bv
  br i1 %i.d, label %bb.cb, label %bb.ca, !prof !13, !nosanitize !12

bb.ca:                                            ; preds = %bb.bz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @75, i64 %i.b) #13, !nosanitize !12
  br label %bb.cb, !nosanitize !12

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.di = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 2 uses
  br i1 %i.d, label %bb.cd, label %bb.cc, !prof !13, !nosanitize !12

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @76, i64 %i.b) #13, !nosanitize !12
  br label %bb.cd, !nosanitize !12

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.dj = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 4 uses
  br i1 %i.d, label %bb.cf, label %bb.ce, !prof !13, !nosanitize !12

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @77, i64 %i.b) #13, !nosanitize !12
  br label %bb.cf, !nosanitize !12

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %i.dk = load i32, ptr %i.m, align 8, !tbaa !23
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl
  %i.dn = ptrtoint ptr %i.dj to i64, !nosanitize !12 ; 3 uses
  %i.do = add i64 %i.dl, %i.dn, !nosanitize !12   ; 3 uses
  %i.dp = icmp ne ptr %i.dj, null, !nosanitize !12
  %i.dq = icmp eq i64 %i.do, 0
  %i.dr = xor i1 %i.dp, %i.dq
  %i.ds = icmp uge i64 %i.do, %i.dn, !nosanitize !12
  %i.dt = and i1 %i.ds, %i.dr, !nosanitize !12
  br i1 %i.dt, label %bb.ch, label %bb.cg, !prof !13, !nosanitize !12

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @78, i64 %i.dn, i64 %i.do) #13, !nosanitize !12
  br label %bb.ch, !nosanitize !12

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.du = zext i32 %i.da to i64
  %.not59 = icmp eq ptr %i.di, null, !nosanitize !12
  br i1 %.not59, label %bb.ci, label %bb.cj, !prof !27, !nosanitize !12

bb.ci:                                            ; preds = %bb.ch
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @79) #13, !nosanitize !12
  br label %bb.cj, !nosanitize !12

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.not60 = icmp eq ptr %i.dj, null
  br i1 %.not60, label %bb.ck, label %bb.cl, !prof !27, !nosanitize !12

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @80) #13, !nosanitize !12
  br label %bb.cl, !nosanitize !12

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %i.dm, i64 %i.du, i1 false)
  br i1 %i.d, label %bb.cn, label %bb.cm, !prof !13, !nosanitize !12

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @81, i64 %i.b) #13, !nosanitize !12
  br label %bb.cn, !nosanitize !12

bb.cn:                                            ; preds = %bb.cl, %bb.cm
  %i.dv = load ptr, ptr %i.ae, align 8, !tbaa !26
  store ptr %i.dv, ptr %i.e, align 8, !tbaa !32
  store i32 %i.da, ptr %i.z, align 8, !tbaa !31
  br label %bb.co

bb.co:                                            ; preds = %bb.bo, %bb.cn, %bb.au, %bb.ax, %bb.bg, %bb.e, %bb.h, %bb.a, %bb.by, %bb.x, %bb.o
  %.0 = phi i32 [ 0, %bb.au ], [ -2, %bb.a ], [ %i.r, %bb.o ], [ %i.y, %bb.x ], [ -2, %bb.e ], [ %i.dh, %bb.by ], [ -2, %bb.h ], [ 0, %bb.bg ], [ 0, %bb.ax ], [ %i.bu, %bb.cn ], [ %i.bu, %bb.bo ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_write_init(ptr noundef nonnull %0) unnamed_addr #0 !func_sanitize !53 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !12  ; 9 uses
  %i.b = and i64 %i.a, 7, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12     ; 5 uses
  br i1 %i.c, label %bb.b, label %.thread, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @gz_buffer_alloc(ptr noundef nonnull %0) #13
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

.thread:                                          ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @168, i64 %i.a) #13, !nosanitize !12
  %i.e = call i32 @gz_buffer_alloc(ptr noundef nonnull %0) #13
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #13
  br label %.thread26

bb.d:                                             ; preds = %.thread
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @169, i64 %i.a) #13, !nosanitize !12
  br label %bb.e, !nosanitize !12

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64, !nosanitize !12 ; 2 uses
  %i.i = and i64 %i.h, 7, !nosanitize !12
  %i.j = icmp eq i64 %i.i, 0, !nosanitize !12
  br i1 %i.j, label %bb.g, label %bb.f, !prof !13, !nosanitize !12

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @170, i64 %i.h) #13, !nosanitize !12
  br label %bb.g, !nosanitize !12

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = load i32, ptr %i.g, align 8, !tbaa !34
  %.not22 = icmp eq i32 %i.k, 0
  br i1 %.not22, label %bb.h, label %.thread26

bb.h:                                             ; preds = %bb.g
  br i1 %i.c, label %bb.j, label %bb.i, !prof !13, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @171, i64 %i.a) #13, !nosanitize !12
  br label %bb.j, !nosanitize !12

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35
  br i1 %i.c, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @172, i64 %i.a) #13, !nosanitize !12
  br label %bb.l, !nosanitize !12

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.o = load i32, ptr %i.n, align 4, !tbaa !36
  %i.p = call i32 @zng_deflateInit2(ptr noundef nonnull %i.f, i32 noundef %i.m, i32 noundef 8, i32 noundef 31, i32 noundef 8, i32 noundef %i.o) #13 ; 2 uses
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @gz_buffer_free(ptr noundef nonnull %0) #13
  %i.q = icmp eq i32 %i.p, -4
  br i1 %i.q, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.4) #13
  br label %.thread26

bb.o:                                             ; preds = %bb.m
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.5) #13
  br label %.thread26

bb.p:                                             ; preds = %bb.l
  store ptr null, ptr %i.f, align 8, !tbaa !32
  br i1 %i.c, label %.critedge28, label %bb.q, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @173, i64 %i.a) #13, !nosanitize !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.s, ptr %i.t, align 8, !tbaa !37
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @174, i64 %i.a) #13, !nosanitize !12
  br label %bb.r, !nosanitize !12

.critedge28:                                      ; preds = %bb.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.v, ptr %i.w, align 8, !tbaa !37
  br label %bb.r

bb.r:                                             ; preds = %.critedge28, %bb.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.y, ptr %i.z, align 8, !tbaa !39
  br i1 %i.c, label %.critedge, label %bb.s, !prof !13, !nosanitize !12

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @175, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @176, i64 %i.a) #13, !nosanitize !12
  br label %.critedge, !nosanitize !12

.critedge:                                        ; preds = %bb.r, %bb.s
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !40
  br label %.thread26

.thread26:                                        ; preds = %bb.o, %bb.n, %bb.g, %.critedge, %bb.c
  %.1 = phi i32 [ -1, %bb.c ], [ 0, %bb.g ], [ 0, %.critedge ], [ -1, %bb.n ], [ -1, %bb.o ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #4

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_comp(ptr noundef nonnull %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 !func_sanitize !55 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !12  ; 20 uses
  %i.b = and i64 %i.a, 7, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12     ; 13 uses
  br i1 %i.c, label %.thread, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @177, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @178, i64 %i.a) #13, !nosanitize !12
  br label %.thread, !nosanitize !12

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 3 uses
  %i.g = and i64 %i.f, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12     ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %.thread
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @179, i64 %i.f) #13, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %.thread
  %i.i = load i32, ptr %i.e, align 8, !tbaa !23
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = call fastcc i32 @gz_write_init(ptr noundef %0)
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.bc, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.c, label %bb.h, label %bb.g, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @180, i64 %i.a) #13, !nosanitize !12
  br label %bb.h, !nosanitize !12

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.c, label %bb.k, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @181, i64 %i.a) #13, !nosanitize !12
  br label %bb.k, !nosanitize !12

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !41
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !31
  %i.t = zext i32 %i.s to i64
  %i.u = call i64 @write(i32 noundef %i.p, ptr noundef %i.q, i64 noundef %i.t) #13 ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = trunc i64 %i.u to i32
  %i.x = load i32, ptr %i.r, align 8, !tbaa !31
  %.not60 = icmp eq i32 %i.x, %i.w
  br i1 %.not60, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = call ptr @__errno_location() #16         ; 3 uses
  %i.z = icmp ne ptr %i.y, null, !nosanitize !12
  %i.aa = ptrtoint ptr %i.y to i64, !nosanitize !12 ; 2 uses
  %i.ab = and i64 %i.aa, 3, !nosanitize !12
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !12
  %i.ad = and i1 %i.z, %i.ac, !nosanitize !12
  br i1 %i.ad, label %bb.o, label %bb.n, !prof !13, !nosanitize !12

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @182, i64 %i.aa) #13, !nosanitize !12
  br label %bb.o, !nosanitize !12

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ae = load i32, ptr %i.y, align 4, !tbaa !56
  %i.af = call ptr @strerror(i32 noundef %i.ae) #13
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %i.af) #13
  br label %bb.bc

bb.p:                                             ; preds = %bb.l
  store i32 0, ptr %i.r, align 8, !tbaa !31
  br label %bb.bc

bb.q:                                             ; preds = %bb.h
  br i1 %i.c, label %bb.s, label %bb.r, !prof !13, !nosanitize !12

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @183, i64 %i.a) #13, !nosanitize !12
  br label %bb.s, !nosanitize !12

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !57
  %.not55 = icmp eq i32 %i.ah, 0
  br i1 %.not55, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !31
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.bc, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = call i32 @zng_deflateReset(ptr noundef nonnull %i.d) #13 ; 0 uses
  br i1 %i.c, label %bb.w, label %bb.v, !prof !13, !nosanitize !12

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @184, i64 %i.a) #13, !nosanitize !12
  br label %bb.w, !nosanitize !12

bb.w:                                             ; preds = %bb.u, %bb.v
  store i32 0, ptr %i.ag, align 8, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %.not56 = icmp ne i32 %1, 0
  %i.an = icmp ne i32 %1, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ax, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ %i.bx, %bb.ax ]
  %i.as = load i32, ptr %i.am, align 8, !tbaa !37
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = icmp eq i32 %.0, 1
  %or.cond = or i1 %i.an, %i.au
  %or.cond62 = and i1 %.not56, %or.cond
  br i1 %or.cond62, label %bb.z, label %bb.at

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !39
  br i1 %i.c, label %.critedge, label %bb.aa, !prof !13, !nosanitize !12

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @185, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @186, i64 %i.a) #13, !nosanitize !12
  br label %.critedge, !nosanitize !12

.critedge:                                        ; preds = %bb.aa, %bb.z
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %.not57 = icmp eq i32 %i.ba, 0
  br i1 %.not57, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  br i1 %i.c, label %bb.ad, label %bb.ac, !prof !13, !nosanitize !12

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @187, i64 %i.a) #13, !nosanitize !12
  br label %bb.ad, !nosanitize !12

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.bb = load i32, ptr %i.aq, align 4, !tbaa !41
  br i1 %i.c, label %.critedge73, label %bb.ae, !prof !13, !nosanitize !12

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @188, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @189, i64 %i.a) #13, !nosanitize !12
  br label %.critedge73, !nosanitize !12

.critedge73:                                      ; preds = %bb.ae, %bb.ad
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.bd = and i64 %i.az, 4294967295
  %i.be = call i64 @write(i32 noundef %i.bb, ptr noundef %i.bc, i64 noundef %i.bd) #13 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, -1
  %i.bg = trunc i64 %i.be to i32
  %.not58 = icmp eq i32 %i.bg, %i.ba
  %or.cond61 = and i1 %i.bf, %.not58
  br i1 %or.cond61, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.critedge73
  %i.bh = call ptr @__errno_location() #16        ; 3 uses
  %i.bi = icmp ne ptr %i.bh, null, !nosanitize !12
  %i.bj = ptrtoint ptr %i.bh to i64, !nosanitize !12 ; 2 uses
  %i.bk = and i64 %i.bj, 3, !nosanitize !12
  %i.bl = icmp eq i64 %i.bk, 0, !nosanitize !12
  %i.bm = and i1 %i.bi, %i.bl, !nosanitize !12
  br i1 %i.bm, label %bb.ah, label %bb.ag, !prof !13, !nosanitize !12

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @190, i64 %i.bj) #13, !nosanitize !12
  br label %bb.ah, !nosanitize !12

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bn = load i32, ptr %i.bh, align 4, !tbaa !56
  %i.bo = call ptr @strerror(i32 noundef %i.bn) #13
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %i.bo) #13
  br label %bb.bc

bb.ai:                                            ; preds = %.critedge73, %.critedge
  %i.bp = load i32, ptr %i.am, align 8, !tbaa !37
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.c, label %bb.al, label %bb.ak, !prof !13, !nosanitize !12

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @191, i64 %i.a) #13, !nosanitize !12
  br label %bb.al, !nosanitize !12

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %i.h, label %bb.an, label %bb.am, !prof !13, !nosanitize !12

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @192, i64 %i.f) #13, !nosanitize !12
  br label %bb.an, !nosanitize !12

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.br = load i32, ptr %i.e, align 8, !tbaa !23
  store i32 %i.br, ptr %i.am, align 8, !tbaa !37
  br i1 %i.c, label %.critedge79, label %bb.ao, !prof !13, !nosanitize !12

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @193, i64 %i.a) #13, !nosanitize !12
  %i.bs = load ptr, ptr %i.ar, align 8, !tbaa !38
  store ptr %i.bs, ptr %i.ao, align 8, !tbaa !39
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @194, i64 %i.a) #13, !nosanitize !12
  br label %bb.ap, !nosanitize !12

.critedge79:                                      ; preds = %bb.an
  %i.bt = load ptr, ptr %i.ar, align 8, !tbaa !38
  store ptr %i.bt, ptr %i.ao, align 8, !tbaa !39
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge79, %bb.ao
  %i.bu = load ptr, ptr %i.ar, align 8, !tbaa !38
  br i1 %i.c, label %.critedge75, label %bb.aq, !prof !13, !nosanitize !12

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @195, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @196, i64 %i.a) #13, !nosanitize !12
  br label %.critedge75, !nosanitize !12

.critedge75:                                      ; preds = %bb.aq, %bb.ap
  store ptr %i.bu, ptr %i.ap, align 8, !tbaa !40
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge75, %bb.ai
  %i.bv = load ptr, ptr %i.ao, align 8, !tbaa !39
  br i1 %i.c, label %.critedge77, label %bb.as, !prof !13, !nosanitize !12

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @197, i64 %i.a) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @198, i64 %i.a) #13, !nosanitize !12
  br label %.critedge77, !nosanitize !12

.critedge77:                                      ; preds = %bb.as, %bb.ar
  store ptr %i.bv, ptr %i.ap, align 8, !tbaa !40
  br label %bb.at

bb.at:                                            ; preds = %.critedge77, %bb.y
  %i.bw = load i32, ptr %i.am, align 8, !tbaa !37 ; 3 uses
  %i.bx = call i32 @zng_deflate(ptr noundef nonnull %i.d, i32 noundef %1) #13 ; 2 uses
  %i.by = icmp eq i32 %i.bx, -2
  br i1 %i.by, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.6) #13
  br label %bb.bc

bb.av:                                            ; preds = %bb.at
  %i.bz = load i32, ptr %i.am, align 8, !tbaa !37 ; 3 uses
  %i.ca = icmp ult i32 %i.bw, %i.bz
  br i1 %i.ca, label %bb.aw, label %bb.ax, !prof !27, !nosanitize !12

bb.aw:                                            ; preds = %bb.av
  %i.cb = zext i32 %i.bw to i64, !nosanitize !12
  %i.cc = zext i32 %i.bz to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @199, i64 %i.cb, i64 %i.cc) #14, !nosanitize !12
  br label %bb.ax, !nosanitize !12

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.not59 = icmp eq i32 %i.bw, %i.bz
  br i1 %.not59, label %bb.ay, label %bb.x, !llvm.loop !54

bb.ay:                                            ; preds = %bb.ax
  %2 = icmp eq i32 %1, 4
  br i1 %2, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  br i1 %i.c, label %bb.bb, label %bb.ba, !prof !13, !nosanitize !12

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @200, i64 %i.a) #13, !nosanitize !12
  br label %bb.bb, !nosanitize !12

bb.bb:                                            ; preds = %bb.az, %bb.ba
  store i32 1, ptr %i.ag, align 8, !tbaa !57
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ay, %bb.bb, %bb.t, %bb.e, %bb.au, %bb.ah, %bb.p, %bb.o
  %.049 = phi i32 [ 0, %bb.t ], [ -1, %bb.o ], [ 0, %bb.p ], [ -1, %bb.e ], [ -1, %bb.ah ], [ -1, %bb.au ], [ 0, %bb.bb ], [ 0, %bb.ay ]
  ret i32 %.049
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_gzprintf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #0 !func_sanitize !58 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @zng_gzvprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_gzflush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !func_sanitize !30 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 7 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12     ; 6 uses
  br i1 %i.d, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @82, i64 %i.b) #13, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12
  br i1 %i.h, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @83, i64 %i.f) #13, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i32, ptr %i.e, align 8, !tbaa !21
  %.not = icmp eq i32 %i.i, 31153
  br i1 %.not, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @84, i64 %i.b) #13, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !22
  %.not17 = icmp ne i32 %i.k, 0
  %or.cond = icmp ugt i32 %1, 4
  %or.cond19 = or i1 %or.cond, %.not17
  br i1 %or.cond19, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.d, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @85, i64 %i.b) #13, !nosanitize !12
  br label %bb.l, !nosanitize !12

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %.not18 = icmp eq i32 %i.m, 0
  br i1 %.not18, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.d, label %.critedge, label %bb.n, !prof !13, !nosanitize !12

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @86, i64 %i.b) #13, !nosanitize !12
  store i32 0, ptr %i.l, align 8, !tbaa !24
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @87, i64 %i.b) #13, !nosanitize !12
  br label %bb.o, !nosanitize !12

.critedge:                                        ; preds = %bb.m
  store i32 0, ptr %i.l, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.n
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25
  %i.p = call fastcc i32 @gz_zero(ptr noundef %0, i64 noundef %i.o)
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.d, label %.sink.split, label %.sink.split.sink.split, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.o, %bb.l
  %i.r = call fastcc i32 @gz_comp(ptr noundef %0, i32 noundef %1) ; 0 uses
  br i1 %i.d, label %.sink.split, label %.sink.split.sink.split, !prof !13, !nosanitize !12

.sink.split.sink.split:                           ; preds = %bb.q, %bb.p
  %.sink = phi ptr [ @88, %bb.p ], [ @89, %bb.q ]
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull %.sink, i64 %i.b) #13, !nosanitize !12
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.q, %bb.p
  %i.s = load i32, ptr %i.j, align 4, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.f, %bb.i, %bb.a
  %.0 = phi i32 [ -2, %bb.i ], [ -2, %bb.a ], [ -2, %bb.f ], [ %i.s, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_gzsetparams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !func_sanitize !59 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 15 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12     ; 11 uses
  br i1 %i.d, label %.thread, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @90, i64 %i.b) #13, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @91, i64 %i.b) #13, !nosanitize !12
  br label %.thread, !nosanitize !12

.thread:                                          ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !12 ; 2 uses
  %i.h = and i64 %i.g, 7, !nosanitize !12
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !12
  br i1 %i.i, label %bb.e, label %bb.d, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %.thread
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @92, i64 %i.g) #13, !nosanitize !12
  br label %bb.e, !nosanitize !12

bb.e:                                             ; preds = %bb.d, %.thread
  %i.j = load i32, ptr %i.f, align 8, !tbaa !21
  %.not = icmp eq i32 %i.j, 31153
  br i1 %.not, label %bb.f, label %bb.am

bb.f:                                             ; preds = %bb.e
  br i1 %i.d, label %bb.h, label %bb.g, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @93, i64 %i.b) #13, !nosanitize !12
  br label %bb.h, !nosanitize !12

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  %.not27 = icmp eq i32 %i.l, 0
  br i1 %.not27, label %bb.i, label %bb.am

bb.i:                                             ; preds = %bb.h
  br i1 %i.d, label %bb.k, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @94, i64 %i.b) #13, !nosanitize !12
  br label %bb.k, !nosanitize !12

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %.not28 = icmp eq i32 %i.n, 0
  br i1 %.not28, label %bb.l, label %bb.am

bb.l:                                             ; preds = %bb.k
end_hunk_1
