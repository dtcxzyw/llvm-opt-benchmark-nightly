Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/crc32_chorba_c?download=true
begin_hunk_0_@crc32_chorba_118960_nondestructive:bb.a

bb.afc:                                           ; preds = %bb.afb
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @425) #6, !nosanitize !14
  br label %bb.afd, !nosanitize !14

bb.afd:                                           ; preds = %bb.afc, %bb.afb
  %i.cph = ptrtoint ptr %i.chh to i64, !nosanitize !14 ; 2 uses
  %i.cpi = and i64 %i.cph, 7, !nosanitize !14
  %i.cpj = icmp eq i64 %i.cpi, 0, !nosanitize !14
  br i1 %i.cpj, label %bb.aff, label %bb.afe, !prof !13, !nosanitize !14

bb.afe:                                           ; preds = %bb.afd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @427, i64 %i.cph) #6, !nosanitize !14
  br label %bb.aff, !nosanitize !14

bb.aff:                                           ; preds = %bb.afe, %bb.afd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 8 %i.chh, i64 %i.cpf, i1 false)
  %i.cpk = load i64, ptr %i.b, align 16, !tbaa !16
  %i.cpl = xor i64 %i.cpk, %.0950
  store i64 %i.cpl, ptr %i.b, align 16, !tbaa !16
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cpn = ptrtoint ptr %i.b to i64, !nosanitize !14 ; 9 uses
  %i.cpo = load i64, ptr %i.cpm, align 8, !tbaa !16
  %i.cpp = xor i64 %i.cpo, %.0949
  store i64 %i.cpp, ptr %i.cpm, align 8, !tbaa !16
  %i.cpq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %.not1189 = icmp eq ptr %i.b, inttoptr (i64 -16 to ptr)
  br i1 %.not1189, label %.thread1358, label %bb.afg, !prof !17, !nosanitize !14

.thread1358:                                      ; preds = %bb.aff
  %i.cpr = add i64 %i.cpn, 16, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @428, i64 %i.cpn, i64 %i.cpr) #6, !nosanitize !14
  %i.cps = load i64, ptr %i.cpq, align 16, !tbaa !16
  %i.cpt = xor i64 %i.cps, %.0948
  store i64 %i.cpt, ptr %i.cpq, align 16, !tbaa !16
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.afh

bb.afg:                                           ; preds = %bb.aff
  %i.cpv = load i64, ptr %i.cpq, align 16, !tbaa !16
  %i.cpw = xor i64 %i.cpv, %.0948
  store i64 %i.cpw, ptr %i.cpq, align 16, !tbaa !16
  %i.cpx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.not1190 = icmp ugt ptr %i.b, inttoptr (i64 -25 to ptr)
  br i1 %.not1190, label %bb.afh, label %bb.afi, !prof !19, !nosanitize !14

bb.afh:                                           ; preds = %.thread1358, %bb.afg
  %i.cpy = phi ptr [ %i.cpu, %.thread1358 ], [ %i.cpx, %bb.afg ]
  %i.cpz = add i64 %i.cpn, 24, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @429, i64 %i.cpn, i64 %i.cpz) #6, !nosanitize !14
  br label %bb.afi, !nosanitize !14

bb.afi:                                           ; preds = %bb.afg, %bb.afh
  %i.cqa = phi ptr [ %i.cpx, %bb.afg ], [ %i.cpy, %bb.afh ] ; 2 uses
  %i.cqb = load i64, ptr %i.cqa, align 8, !tbaa !16
  %i.cqc = xor i64 %i.cqb, %.0947
  store i64 %i.cqc, ptr %i.cqa, align 8, !tbaa !16
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.not1191 = icmp ugt ptr %i.b, inttoptr (i64 -33 to ptr)
  br i1 %.not1191, label %bb.afj, label %bb.afk, !prof !17, !nosanitize !14

bb.afj:                                           ; preds = %bb.afi
  %i.cqe = add i64 %i.cpn, 32, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @430, i64 %i.cpn, i64 %i.cqe) #6, !nosanitize !14
  br label %bb.afk, !nosanitize !14

bb.afk:                                           ; preds = %bb.afi, %bb.afj
  %i.cqf = load i64, ptr %i.cqd, align 16, !tbaa !16
  %i.cqg = xor i64 %i.cqf, %.0946
  store i64 %i.cqg, ptr %i.cqd, align 16, !tbaa !16
  br label %bb.afl

bb.afl:                                           ; preds = %bb.afx, %bb.afk
  %.01019 = phi i32 [ 0, %bb.afk ], [ %i.cqy, %bb.afx ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.afk ], [ %i.cqz, %bb.afx ] ; 6 uses
  br i1 %i.cpg, label %bb.afm, label %bb.afn, !prof !17, !nosanitize !14

bb.afm:                                           ; preds = %bb.afl
  call void @__ubsan_handle_sub_overflow(ptr nonnull @431, i64 %2, i64 %.3) #7, !nosanitize !14
  br label %bb.afn, !nosanitize !14

bb.afn:                                           ; preds = %bb.afm, %bb.afl
  %exitcond1480.not = icmp eq i64 %.0, %indvars.iv1478
  br i1 %exitcond1480.not, label %bb.afo, label %bb.afp

bb.afo:                                           ; preds = %bb.afn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.01019

bb.afp:                                           ; preds = %bb.afn
  %i.cqh = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0
  %i.cqi = add i64 %.0, %i.cpn, !nosanitize !14   ; 2 uses
  %.not1192 = icmp ult i64 %i.cqi, %i.cpn, !nosanitize !14
  br i1 %.not1192, label %bb.afq, label %bb.afr, !prof !17, !nosanitize !14

bb.afq:                                           ; preds = %bb.afp
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @432, i64 %i.cpn, i64 %i.cqi) #6, !nosanitize !14
  br label %bb.afr, !nosanitize !14

bb.afr:                                           ; preds = %bb.afp, %bb.afq
  %i.cqj = load i8, ptr %i.cqh, align 1, !tbaa !22
  %i.cqk = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0, i64 %.3), !nosanitize !14 ; 2 uses
  %i.cql = extractvalue { i64, i1 } %i.cqk, 0, !nosanitize !14
  %i.cqm = extractvalue { i64, i1 } %i.cqk, 1, !nosanitize !14
  br i1 %i.cqm, label %bb.afs, label %bb.aft, !prof !17, !nosanitize !14

bb.afs:                                           ; preds = %bb.afr
  call void @__ubsan_handle_add_overflow(ptr nonnull @433, i64 %.0, i64 %.3) #7, !nosanitize !14
  br label %bb.aft, !nosanitize !14

bb.aft:                                           ; preds = %bb.afr, %bb.afs
  %i.cqn = and i64 %i.cql, 131071                 ; 2 uses
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cqn
  %i.cqp = add i64 %i.cqn, %i.f, !nosanitize !14  ; 2 uses
  %.not1194 = icmp ult i64 %i.cqp, %i.f, !nosanitize !14
  br i1 %.not1194, label %bb.afu, label %bb.afv, !prof !17, !nosanitize !14

bb.afu:                                           ; preds = %bb.aft
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @434, i64 %i.f, i64 %i.cqp) #6, !nosanitize !14
  br label %bb.afv, !nosanitize !14

bb.afv:                                           ; preds = %bb.aft, %bb.afu
  %i.cqq = load i8, ptr %i.cqo, align 1, !tbaa !22
  %.01019.tr = trunc i32 %.01019 to i8
  %i.cqr = xor i8 %i.cqj, %.01019.tr
  %.narrow = xor i8 %i.cqr, %i.cqq
  %i.cqs = zext i8 %.narrow to i64                ; 2 uses
  %i.cqt = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.cqs
  %i.cqu = shl nuw nsw i64 %i.cqs, 2
  %i.cqv = add i64 %i.cqu, ptrtoint (ptr @crc_table to i64), !nosanitize !14 ; 2 uses
  %.not1196 = icmp ult i64 %i.cqv, ptrtoint (ptr @crc_table to i64), !nosanitize !14
  br i1 %.not1196, label %bb.afw, label %bb.afx, !prof !17, !nosanitize !14

bb.afw:                                           ; preds = %bb.afv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @435, i64 ptrtoint (ptr @crc_table to i64), i64 %i.cqv) #6, !nosanitize !14
  br label %bb.afx, !nosanitize !14

bb.afx:                                           ; preds = %bb.afv, %bb.afw
  %i.cqw = load i32, ptr %i.cqt, align 4, !tbaa !23
  %i.cqx = lshr i32 %.01019, 8
  %i.cqy = xor i32 %i.cqw, %i.cqx
  %i.cqz = add i64 %.0, 1
  br label %bb.afl, !llvm.loop !28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_out_of_bounds(ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: uwtable
declare void @__ubsan_handle_shift_out_of_bounds(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: uwtable
declare void @__ubsan_handle_nonnull_arg(ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @crc32_chorba_32768_nondestructive(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !12 {
bb.a:
  %i.a = alloca [4096 x i64], align 16            ; 50 uses
  %i.b = alloca [9 x i64], align 16               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32768) %i.a, i8 0, i64 32768, i1 false)
  %i.c = zext i32 %0 to i64
  store i64 %i.c, ptr %i.a, align 16, !tbaa !16
  %i.d = ptrtoint ptr %1 to i64                   ; 39 uses
  %i.e = icmp ne ptr %1, null                     ; 19 uses
  %i.f = ptrtoint ptr %i.a to i64                 ; 135 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.gs, %bb.a
  %.0195 = phi i64 [ 0, %bb.a ], [ %i.rs, %bb.gs ] ; 88 uses
  %i.g = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0195, i64 2400), !nosanitize !14 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 0, !nosanitize !14 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.g, 1, !nosanitize !14
  br i1 %i.i, label %bb.c, label %bb.d, !prof !17, !nosanitize !14

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_add_overflow(ptr nonnull @437, i64 %.0195, i64 2400) #7, !nosanitize !14
  br label %bb.d, !nosanitize !14

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.h, i64 64), !nosanitize !14 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 0, !nosanitize !14
  %i.l = extractvalue { i64, i1 } %i.j, 1, !nosanitize !14
  br i1 %i.l, label %bb.e, label %bb.f, !prof !17, !nosanitize !14

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_add_overflow(ptr nonnull @438, i64 %i.h, i64 64) #7, !nosanitize !14
  br label %bb.f, !nosanitize !14

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = icmp ult i64 %i.k, %2
  br i1 %i.m, label %bb.g, label %bb.gt

bb.g:                                             ; preds = %bb.f
  %i.n = lshr i64 %.0195, 3                       ; 42 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n ; 2 uses
  %i.p = icmp sgt i64 %.0195, -1                  ; 2 uses
  %i.q = add i64 %.0195, %i.d, !nosanitize !14    ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = xor i1 %i.e, %i.r
  %i.t = icmp uge i64 %i.q, %i.d, !nosanitize !14
  %i.u = and i1 %i.t, %i.s
  %i.v = and i1 %i.p, %i.u
  br i1 %i.v, label %bb.i, label %bb.h, !prof !13, !nosanitize !14

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @439, i64 %i.d, i64 %i.q) #6, !nosanitize !14
  br label %bb.i, !nosanitize !14

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = ptrtoint ptr %i.o to i64, !nosanitize !14 ; 2 uses
  %i.x = and i64 %i.w, 7, !nosanitize !14
  %i.y = icmp eq i64 %i.x, 0, !nosanitize !14
  %i.z = and i1 %i.e, %i.y
  br i1 %i.z, label %bb.k, label %bb.j, !prof !13, !nosanitize !14

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @441, i64 %i.w) #6, !nosanitize !14
  br label %bb.k, !nosanitize !14

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !16
  %i.ab = icmp ult i64 %.0195, 32768
  br i1 %i.ab, label %bb.m, label %bb.l, !prof !13, !nosanitize !14

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @442, i64 %i.n) #6, !nosanitize !14
  br label %bb.m, !nosanitize !14

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n
  %i.ad = add i64 %.0195, %i.f, !nosanitize !14   ; 2 uses
  %i.ae = icmp uge i64 %i.ad, %i.f, !nosanitize !14
  %i.af = and i1 %i.p, %i.ae, !nosanitize !14
  br i1 %i.af, label %bb.o, label %bb.n, !prof !13, !nosanitize !14

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @443, i64 %i.f, i64 %i.ad) #6, !nosanitize !14
  br label %bb.o, !nosanitize !14

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !16
  %i.ah = xor i64 %i.ag, %i.aa                    ; 4 uses
  %i.ai = add nuw nsw i64 %i.n, 1                 ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai ; 2 uses
  %i.ak = icmp ult i64 %.0195, 9223372036854775800 ; 2 uses
  %i.al = shl nuw nsw i64 %i.ai, 3                ; 2 uses
  %i.am = add i64 %i.al, %i.d, !nosanitize !14    ; 3 uses
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = icmp uge i64 %i.am, %i.d, !nosanitize !14
  %i.ap = and i1 %i.an, %i.ao
  %i.aq = and i1 %i.ap, %i.e
  %i.ar = and i1 %i.ak, %i.aq
  br i1 %i.ar, label %bb.q, label %bb.p, !prof !13, !nosanitize !14

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @444, i64 %i.d, i64 %i.am) #6, !nosanitize !14
  br label %bb.q, !nosanitize !14

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = ptrtoint ptr %i.aj to i64, !nosanitize !14 ; 2 uses
  %i.at = and i64 %i.as, 7, !nosanitize !14
  %i.au = icmp eq i64 %i.at, 0, !nosanitize !14
  br i1 %i.au, label %bb.s, label %bb.r, !prof !13, !nosanitize !14

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @445, i64 %i.as) #6, !nosanitize !14
  br label %bb.s, !nosanitize !14

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.av = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.aw = icmp ult i64 %.0195, 32760
  br i1 %i.aw, label %bb.u, label %bb.t, !prof !13, !nosanitize !14

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @446, i64 %i.ai) #6, !nosanitize !14
  br label %bb.u, !nosanitize !14

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai
  %i.ay = add i64 %i.al, %i.f, !nosanitize !14    ; 2 uses
  %i.az = icmp uge i64 %i.ay, %i.f, !nosanitize !14
  %i.ba = and i1 %i.ak, %i.az, !nosanitize !14
  br i1 %i.ba, label %bb.w, label %bb.v, !prof !13, !nosanitize !14

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @447, i64 %i.f, i64 %i.ay) #6, !nosanitize !14
  br label %bb.w, !nosanitize !14

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !16
  %i.bc = xor i64 %i.bb, %i.av                    ; 4 uses
  %i.bd = add nuw nsw i64 %i.n, 2                 ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd ; 2 uses
  %i.bf = icmp ult i64 %.0195, 9223372036854775792 ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bd, 3                ; 2 uses
  %i.bh = add i64 %i.bg, %i.d, !nosanitize !14    ; 3 uses
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = icmp uge i64 %i.bh, %i.d, !nosanitize !14
  %i.bk = and i1 %i.bi, %i.bj
  %i.bl = and i1 %i.bk, %i.e
  %i.bm = and i1 %i.bf, %i.bl
  br i1 %i.bm, label %bb.y, label %bb.x, !prof !13, !nosanitize !14

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @448, i64 %i.d, i64 %i.bh) #6, !nosanitize !14
  br label %bb.y, !nosanitize !14

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bn = ptrtoint ptr %i.be to i64, !nosanitize !14 ; 2 uses
  %i.bo = and i64 %i.bn, 7, !nosanitize !14
  %i.bp = icmp eq i64 %i.bo, 0, !nosanitize !14
  br i1 %i.bp, label %bb.aa, label %bb.z, !prof !13, !nosanitize !14

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @449, i64 %i.bn) #6, !nosanitize !14
  br label %bb.aa, !nosanitize !14

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bq = load i64, ptr %i.be, align 8, !tbaa !16
  %i.br = icmp ult i64 %.0195, 32752
  br i1 %i.br, label %bb.ac, label %bb.ab, !prof !13, !nosanitize !14

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @450, i64 %i.bd) #6, !nosanitize !14
  br label %bb.ac, !nosanitize !14

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bd
  %i.bt = add i64 %i.bg, %i.f, !nosanitize !14    ; 2 uses
  %i.bu = icmp uge i64 %i.bt, %i.f, !nosanitize !14
  %i.bv = and i1 %i.bf, %i.bu, !nosanitize !14
  br i1 %i.bv, label %bb.ae, label %bb.ad, !prof !13, !nosanitize !14

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @451, i64 %i.f, i64 %i.bt) #6, !nosanitize !14
  br label %bb.ae, !nosanitize !14

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.bw = load i64, ptr %i.bs, align 8, !tbaa !16
  %i.bx = xor i64 %i.bw, %i.bq                    ; 4 uses
  %i.by = add nuw nsw i64 %i.n, 3                 ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.by ; 2 uses
  %i.ca = icmp ult i64 %.0195, 9223372036854775784 ; 2 uses
  %i.cb = shl nuw nsw i64 %i.by, 3                ; 2 uses
  %i.cc = add i64 %i.cb, %i.d, !nosanitize !14    ; 3 uses
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = icmp uge i64 %i.cc, %i.d, !nosanitize !14
  %i.cf = and i1 %i.cd, %i.ce
  %i.cg = and i1 %i.cf, %i.e
  %i.ch = and i1 %i.ca, %i.cg
  br i1 %i.ch, label %bb.ag, label %bb.af, !prof !13, !nosanitize !14

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @452, i64 %i.d, i64 %i.cc) #6, !nosanitize !14
  br label %bb.ag, !nosanitize !14

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ci = ptrtoint ptr %i.bz to i64, !nosanitize !14 ; 2 uses
  %i.cj = and i64 %i.ci, 7, !nosanitize !14
  %i.ck = icmp eq i64 %i.cj, 0, !nosanitize !14
  br i1 %i.ck, label %bb.ai, label %bb.ah, !prof !13, !nosanitize !14

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @453, i64 %i.ci) #6, !nosanitize !14
  br label %bb.ai, !nosanitize !14

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cl = load i64, ptr %i.bz, align 8, !tbaa !16
  %i.cm = icmp ult i64 %.0195, 32744
end_hunk_0
begin_hunk_1_@crc32_chorba_32768_nondestructive:bb.a
  br label %bb.fk, !nosanitize !14

bb.fk:                                            ; preds = %bb.fi, %bb.fj
  %i.pd = load i64, ptr %i.ox, align 8, !tbaa !16
  %i.pe = xor i64 %i.pd, %i.fy
  store i64 %i.pe, ptr %i.ox, align 8, !tbaa !16
  %i.pf = add nuw nsw i64 %i.n, 300               ; 3 uses
  %i.pg = icmp ult i64 %.0195, 30368
  br i1 %i.pg, label %bb.fm, label %bb.fl, !prof !13, !nosanitize !14

bb.fl:                                            ; preds = %bb.fk
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @520, i64 %i.pf) #6, !nosanitize !14
  br label %bb.fm, !nosanitize !14

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.pf
  %i.pi = icmp ult i64 %.0195, 9223372036854773408
  %i.pj = shl nuw nsw i64 %i.pf, 3
  %i.pk = add i64 %i.pj, %i.f, !nosanitize !14    ; 2 uses
  %i.pl = icmp uge i64 %i.pk, %i.f, !nosanitize !14
  %i.pm = and i1 %i.pi, %i.pl, !nosanitize !14
  br i1 %i.pm, label %bb.fo, label %bb.fn, !prof !13, !nosanitize !14

bb.fn:                                            ; preds = %bb.fm
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @521, i64 %i.f, i64 %i.pk) #6, !nosanitize !14
  br label %bb.fo, !nosanitize !14

bb.fo:                                            ; preds = %bb.fm, %bb.fn
  store i64 %i.ah, ptr %i.ph, align 8, !tbaa !16
  %i.pn = add nuw nsw i64 %i.n, 301               ; 3 uses
  %i.po = icmp ult i64 %.0195, 30360
  br i1 %i.po, label %bb.fq, label %bb.fp, !prof !13, !nosanitize !14

bb.fp:                                            ; preds = %bb.fo
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @522, i64 %i.pn) #6, !nosanitize !14
  br label %bb.fq, !nosanitize !14

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.pn
  %i.pq = icmp ult i64 %.0195, 9223372036854773400
  %i.pr = shl nuw nsw i64 %i.pn, 3
  %i.ps = add i64 %i.pr, %i.f, !nosanitize !14    ; 2 uses
  %i.pt = icmp uge i64 %i.ps, %i.f, !nosanitize !14
  %i.pu = and i1 %i.pq, %i.pt, !nosanitize !14
  br i1 %i.pu, label %bb.fs, label %bb.fr, !prof !13, !nosanitize !14

bb.fr:                                            ; preds = %bb.fq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @523, i64 %i.f, i64 %i.ps) #6, !nosanitize !14
  br label %bb.fs, !nosanitize !14

bb.fs:                                            ; preds = %bb.fq, %bb.fr
  store i64 %i.bc, ptr %i.pp, align 8, !tbaa !16
  %i.pv = add nuw nsw i64 %i.n, 302               ; 3 uses
  %i.pw = icmp ult i64 %.0195, 30352
  br i1 %i.pw, label %bb.fu, label %bb.ft, !prof !13, !nosanitize !14

bb.ft:                                            ; preds = %bb.fs
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @524, i64 %i.pv) #6, !nosanitize !14
  br label %bb.fu, !nosanitize !14

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.pv
  %i.py = icmp ult i64 %.0195, 9223372036854773392
  %i.pz = shl nuw nsw i64 %i.pv, 3
  %i.qa = add i64 %i.pz, %i.f, !nosanitize !14    ; 2 uses
  %i.qb = icmp uge i64 %i.qa, %i.f, !nosanitize !14
  %i.qc = and i1 %i.py, %i.qb, !nosanitize !14
  br i1 %i.qc, label %bb.fw, label %bb.fv, !prof !13, !nosanitize !14

bb.fv:                                            ; preds = %bb.fu
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @525, i64 %i.f, i64 %i.qa) #6, !nosanitize !14
  br label %bb.fw, !nosanitize !14

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  store i64 %i.bx, ptr %i.px, align 8, !tbaa !16
  %i.qd = add nuw nsw i64 %i.n, 303               ; 3 uses
  %i.qe = icmp ult i64 %.0195, 30344
  br i1 %i.qe, label %bb.fy, label %bb.fx, !prof !13, !nosanitize !14

bb.fx:                                            ; preds = %bb.fw
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @526, i64 %i.qd) #6, !nosanitize !14
  br label %bb.fy, !nosanitize !14

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.qd
  %i.qg = icmp ult i64 %.0195, 9223372036854773384
  %i.qh = shl nuw nsw i64 %i.qd, 3
  %i.qi = add i64 %i.qh, %i.f, !nosanitize !14    ; 2 uses
  %i.qj = icmp uge i64 %i.qi, %i.f, !nosanitize !14
  %i.qk = and i1 %i.qg, %i.qj, !nosanitize !14
  br i1 %i.qk, label %bb.ga, label %bb.fz, !prof !13, !nosanitize !14

bb.fz:                                            ; preds = %bb.fy
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @527, i64 %i.f, i64 %i.qi) #6, !nosanitize !14
  br label %bb.ga, !nosanitize !14

bb.ga:                                            ; preds = %bb.fy, %bb.fz
  store i64 %i.cs, ptr %i.qf, align 8, !tbaa !16
  %i.ql = add nuw nsw i64 %i.n, 304               ; 3 uses
  %i.qm = icmp ult i64 %.0195, 30336
  br i1 %i.qm, label %bb.gc, label %bb.gb, !prof !13, !nosanitize !14

bb.gb:                                            ; preds = %bb.ga
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @528, i64 %i.ql) #6, !nosanitize !14
  br label %bb.gc, !nosanitize !14

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ql
  %i.qo = icmp ult i64 %.0195, 9223372036854773376
  %i.qp = shl nuw nsw i64 %i.ql, 3
  %i.qq = add i64 %i.qp, %i.f, !nosanitize !14    ; 2 uses
  %i.qr = icmp uge i64 %i.qq, %i.f, !nosanitize !14
  %i.qs = and i1 %i.qo, %i.qr, !nosanitize !14
  br i1 %i.qs, label %bb.ge, label %bb.gd, !prof !13, !nosanitize !14

bb.gd:                                            ; preds = %bb.gc
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @529, i64 %i.f, i64 %i.qq) #6, !nosanitize !14
  br label %bb.ge, !nosanitize !14

bb.ge:                                            ; preds = %bb.gc, %bb.gd
  store i64 %i.dn, ptr %i.qn, align 8, !tbaa !16
  %i.qt = add nuw nsw i64 %i.n, 305               ; 3 uses
  %i.qu = icmp ult i64 %.0195, 30328
  br i1 %i.qu, label %bb.gg, label %bb.gf, !prof !13, !nosanitize !14

bb.gf:                                            ; preds = %bb.ge
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @530, i64 %i.qt) #6, !nosanitize !14
  br label %bb.gg, !nosanitize !14

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.qt
  %i.qw = icmp ult i64 %.0195, 9223372036854773368
  %i.qx = shl nuw nsw i64 %i.qt, 3
  %i.qy = add i64 %i.qx, %i.f, !nosanitize !14    ; 2 uses
  %i.qz = icmp uge i64 %i.qy, %i.f, !nosanitize !14
  %i.ra = and i1 %i.qw, %i.qz, !nosanitize !14
  br i1 %i.ra, label %bb.gi, label %bb.gh, !prof !13, !nosanitize !14

bb.gh:                                            ; preds = %bb.gg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @531, i64 %i.f, i64 %i.qy) #6, !nosanitize !14
  br label %bb.gi, !nosanitize !14

bb.gi:                                            ; preds = %bb.gg, %bb.gh
  store i64 %i.ei, ptr %i.qv, align 8, !tbaa !16
  %i.rb = add nuw nsw i64 %i.n, 306               ; 3 uses
  %i.rc = icmp ult i64 %.0195, 30320
  br i1 %i.rc, label %bb.gk, label %bb.gj, !prof !13, !nosanitize !14

bb.gj:                                            ; preds = %bb.gi
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @532, i64 %i.rb) #6, !nosanitize !14
  br label %bb.gk, !nosanitize !14

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.rb
  %i.re = icmp ult i64 %.0195, 9223372036854773360
  %i.rf = shl nuw nsw i64 %i.rb, 3
  %i.rg = add i64 %i.rf, %i.f, !nosanitize !14    ; 2 uses
  %i.rh = icmp uge i64 %i.rg, %i.f, !nosanitize !14
  %i.ri = and i1 %i.re, %i.rh, !nosanitize !14
  br i1 %i.ri, label %bb.gm, label %bb.gl, !prof !13, !nosanitize !14

bb.gl:                                            ; preds = %bb.gk
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @533, i64 %i.f, i64 %i.rg) #6, !nosanitize !14
  br label %bb.gm, !nosanitize !14

bb.gm:                                            ; preds = %bb.gk, %bb.gl
  store i64 %i.fd, ptr %i.rd, align 8, !tbaa !16
  %i.rj = add nuw nsw i64 %i.n, 307               ; 3 uses
  %i.rk = icmp ult i64 %.0195, 30312
  br i1 %i.rk, label %bb.go, label %bb.gn, !prof !13, !nosanitize !14

bb.gn:                                            ; preds = %bb.gm
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @534, i64 %i.rj) #6, !nosanitize !14
  br label %bb.go, !nosanitize !14

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.rj
  %i.rm = icmp ult i64 %.0195, 9223372036854773352
  %i.rn = shl nuw nsw i64 %i.rj, 3
  %i.ro = add i64 %i.rn, %i.f, !nosanitize !14    ; 2 uses
  %i.rp = icmp uge i64 %i.ro, %i.f, !nosanitize !14
  %i.rq = and i1 %i.rm, %i.rp, !nosanitize !14
  br i1 %i.rq, label %bb.gq, label %bb.gp, !prof !13, !nosanitize !14

bb.gp:                                            ; preds = %bb.go
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @535, i64 %i.f, i64 %i.ro) #6, !nosanitize !14
  br label %bb.gq, !nosanitize !14

bb.gq:                                            ; preds = %bb.go, %bb.gp
  store i64 %i.fy, ptr %i.rl, align 8, !tbaa !16
  %i.rr = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0195, i64 64), !nosanitize !14 ; 2 uses
  %i.rs = extractvalue { i64, i1 } %i.rr, 0, !nosanitize !14
  %i.rt = extractvalue { i64, i1 } %i.rr, 1, !nosanitize !14
  br i1 %i.rt, label %bb.gr, label %bb.gs, !prof !17, !nosanitize !14

bb.gr:                                            ; preds = %bb.gq
  call void @__ubsan_handle_add_overflow(ptr nonnull @536, i64 %.0195, i64 64) #7, !nosanitize !14
  br label %bb.gs, !nosanitize !14

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  br label %bb.b, !llvm.loop !29

bb.gt:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  br label %bb.gu

bb.gu:                                            ; preds = %bb.jg, %bb.gt
  %.1 = phi i64 [ %.0195, %bb.gt ], [ %i.aam, %bb.jg ] ; 27 uses
  %.0194 = phi i64 [ 0, %bb.gt ], [ %i.aak, %bb.jg ] ; 2 uses
  %.0193 = phi i64 [ 0, %bb.gt ], [ %i.aae, %bb.jg ] ; 2 uses
  %.0192 = phi i64 [ 0, %bb.gt ], [ %i.aag, %bb.jg ] ; 3 uses
  %.0191 = phi i64 [ 0, %bb.gt ], [ %i.aah, %bb.jg ] ; 2 uses
  %.0190 = phi i64 [ 0, %bb.gt ], [ %i.aab, %bb.jg ] ; 2 uses
  %i.ru = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.1, i64 72), !nosanitize !14 ; 2 uses
  %i.rv = extractvalue { i64, i1 } %i.ru, 0, !nosanitize !14
  %i.rw = extractvalue { i64, i1 } %i.ru, 1, !nosanitize !14
  br i1 %i.rw, label %bb.gv, label %bb.gw, !prof !17, !nosanitize !14

bb.gv:                                            ; preds = %bb.gu
  call void @__ubsan_handle_add_overflow(ptr nonnull @537, i64 %.1, i64 72) #7, !nosanitize !14
  br label %bb.gw, !nosanitize !14

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.rx = icmp ult i64 %i.rv, %2
  %i.ry = lshr i64 %.1, 3                         ; 6 uses
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ry ; 4 uses
  %i.sa = icmp sgt i64 %.1, -1                    ; 3 uses
  br i1 %i.rx, label %bb.gx, label %bb.jh

bb.gx:                                            ; preds = %bb.gw
  %i.sb = add i64 %.1, %i.d, !nosanitize !14      ; 3 uses
  %i.sc = icmp eq i64 %i.sb, 0
  %i.sd = xor i1 %i.e, %i.sc
  %i.se = icmp uge i64 %i.sb, %i.d, !nosanitize !14
  %i.sf = and i1 %i.se, %i.sd
  %i.sg = and i1 %i.sa, %i.sf
  br i1 %i.sg, label %bb.gz, label %bb.gy, !prof !13, !nosanitize !14

bb.gy:                                            ; preds = %bb.gx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @538, i64 %i.d, i64 %i.sb) #6, !nosanitize !14
  br label %bb.gz, !nosanitize !14

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.sh = ptrtoint ptr %i.rz to i64, !nosanitize !14 ; 2 uses
  %i.si = and i64 %i.sh, 7, !nosanitize !14
  %i.sj = icmp eq i64 %i.si, 0, !nosanitize !14
  %i.sk = and i1 %i.e, %i.sj
  br i1 %i.sk, label %bb.hb, label %bb.ha, !prof !13, !nosanitize !14

bb.ha:                                            ; preds = %bb.gz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @539, i64 %i.sh) #6, !nosanitize !14
  br label %bb.hb, !nosanitize !14

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.sl = load i64, ptr %i.rz, align 8, !tbaa !16
  %i.sm = icmp ult i64 %.1, 32768
  br i1 %i.sm, label %bb.hd, label %bb.hc, !prof !13, !nosanitize !14

bb.hc:                                            ; preds = %bb.hb
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @540, i64 %i.ry) #6, !nosanitize !14
  br label %bb.hd, !nosanitize !14

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ry
  %i.so = add i64 %.1, %i.f, !nosanitize !14      ; 2 uses
  %i.sp = icmp uge i64 %i.so, %i.f, !nosanitize !14
  %i.sq = and i1 %i.sa, %i.sp, !nosanitize !14
  br i1 %i.sq, label %bb.hf, label %bb.he, !prof !13, !nosanitize !14

bb.he:                                            ; preds = %bb.hd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @541, i64 %i.f, i64 %i.so) #6, !nosanitize !14
  br label %bb.hf, !nosanitize !14

bb.hf:                                            ; preds = %bb.hd, %bb.he
  %i.sr = load i64, ptr %i.sn, align 8, !tbaa !16
  %i.ss = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.1, i64 8), !nosanitize !14 ; 2 uses
  %i.st = extractvalue { i64, i1 } %i.ss, 0, !nosanitize !14 ; 3 uses
  %i.su = extractvalue { i64, i1 } %i.ss, 1, !nosanitize !14
  br i1 %i.su, label %bb.hg, label %bb.hh, !prof !17, !nosanitize !14

bb.hg:                                            ; preds = %bb.hf
  call void @__ubsan_handle_add_overflow(ptr nonnull @542, i64 %.1, i64 8) #7, !nosanitize !14
  br label %bb.hh, !nosanitize !14

bb.hh:                                            ; preds = %bb.hf, %bb.hg
  %i.sv = lshr i64 %i.st, 3
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.sv ; 2 uses
  %i.sx = icmp sgt i64 %i.st, -1
  %i.sy = and i64 %i.st, -8
  %i.sz = add i64 %i.sy, %i.d, !nosanitize !14    ; 3 uses
  %i.ta = icmp eq i64 %i.sz, 0
  %i.tb = xor i1 %i.e, %i.ta
  %i.tc = icmp uge i64 %i.sz, %i.d, !nosanitize !14
  %i.td = and i1 %i.sx, %i.tc, !nosanitize !14
  %i.te = and i1 %i.tb, %i.td, !nosanitize !14
  br i1 %i.te, label %bb.hj, label %bb.hi, !prof !13, !nosanitize !14

bb.hi:                                            ; preds = %bb.hh
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @543, i64 %i.d, i64 %i.sz) #6, !nosanitize !14
  br label %bb.hj, !nosanitize !14

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.tf = ptrtoint ptr %i.sw to i64, !nosanitize !14 ; 2 uses
  %i.tg = and i64 %i.tf, 7, !nosanitize !14
  %i.th = icmp eq i64 %i.tg, 0, !nosanitize !14
  %i.ti = and i1 %i.e, %i.th
  br i1 %i.ti, label %bb.hl, label %bb.hk, !prof !13, !nosanitize !14

bb.hk:                                            ; preds = %bb.hj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @544, i64 %i.tf) #6, !nosanitize !14
  br label %bb.hl, !nosanitize !14

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.tj = load i64, ptr %i.sw, align 8, !tbaa !16
  %i.tk = add nuw nsw i64 %i.ry, 1                ; 3 uses
  %i.tl = icmp ult i64 %.1, 32760
  br i1 %i.tl, label %bb.hn, label %bb.hm, !prof !13, !nosanitize !14

bb.hm:                                            ; preds = %bb.hl
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @545, i64 %i.tk) #6, !nosanitize !14
  br label %bb.hn, !nosanitize !14

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.tk
  %i.tn = icmp ult i64 %.1, 9223372036854775800
  %i.to = shl nuw nsw i64 %i.tk, 3
  %i.tp = add i64 %i.to, %i.f, !nosanitize !14    ; 2 uses
  %i.tq = icmp uge i64 %i.tp, %i.f, !nosanitize !14
  %i.tr = and i1 %i.tn, %i.tq, !nosanitize !14
  br i1 %i.tr, label %bb.hp, label %bb.ho, !prof !13, !nosanitize !14

bb.ho:                                            ; preds = %bb.hn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @546, i64 %i.f, i64 %i.tp) #6, !nosanitize !14
  br label %bb.hp, !nosanitize !14

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  %i.ts = load i64, ptr %i.tm, align 8, !tbaa !16
  %i.tt = xor i64 %i.sl, %i.sr
  %i.tu = xor i64 %i.tt, %.0194                   ; 19 uses
  %i.tv = xor i64 %i.tj, %i.ts
  %i.tw = xor i64 %i.tv, %.0193                   ; 19 uses
  %i.tx = icmp ult i64 %i.tu, 140737488355328
  br i1 %i.tx, label %bb.hr, label %bb.hq, !prof !13, !nosanitize !14

bb.hq:                                            ; preds = %bb.hp
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @547, i64 %i.tu, i64 17) #7, !nosanitize !14
  br label %bb.hr, !nosanitize !14

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.ty = icmp ult i64 %i.tu, 512
  br i1 %i.ty, label %.thread256, label %bb.hs, !prof !13, !nosanitize !14

.thread256:                                       ; preds = %bb.hr
  %i.tz = mul nuw i64 %i.tu, 36028797019095040
  %i.ua = shl nuw nsw i64 %i.tu, 19
  br label %bb.hv

bb.hs:                                            ; preds = %bb.hr
  %i.ub = shl i64 %i.tu, 17
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @548, i64 %i.tu, i64 55) #7, !nosanitize !14
  %i.uc = shl i64 %i.tu, 55
  %i.ud = xor i64 %i.ub, %i.uc                    ; 2 uses
  %i.ue = lshr i64 %i.tu, 9                       ; 2 uses
  %i.uf = icmp ult i64 %i.tu, 35184372088832
  br i1 %i.uf, label %bb.ht, label %.thread257, !prof !19, !nosanitize !14

.thread257:                                       ; preds = %bb.hs
  %i.ug = lshr i64 %i.tu, 47
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @549, i64 %i.tu, i64 19) #7, !nosanitize !14
  %i.uh = shl i64 %i.tu, 19
  %i.ui = or disjoint i64 %i.ug, %i.uh
  %i.uj = xor i64 %i.ui, %i.ue
  %i.uk = lshr i64 %i.tu, 45
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.ul = shl nuw i64 %i.tu, 19
  %i.um = xor i64 %i.ue, %i.ul                    ; 2 uses
  %i.un = icmp samesign ult i64 %i.tu, 1048576
  br i1 %i.un, label %bb.hv, label %bb.hu, !prof !20, !nosanitize !14

bb.hu:                                            ; preds = %.thread257, %bb.ht
  %i.uo = phi i64 [ %i.uk, %.thread257 ], [ 0, %bb.ht ]
  %i.up = phi i64 [ %i.uj, %.thread257 ], [ %i.um, %bb.ht ]
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @550, i64 %i.tu, i64 44) #7, !nosanitize !14
  br label %bb.hv, !nosanitize !14

bb.hv:                                            ; preds = %.thread256, %bb.hu, %bb.ht
  %i.uq = phi i64 [ 0, %.thread256 ], [ %i.uo, %bb.hu ], [ 0, %bb.ht ]
  %i.ur = phi i64 [ %i.ua, %.thread256 ], [ %i.up, %bb.hu ], [ %i.um, %bb.ht ]
  %i.us = phi i64 [ %i.tz, %.thread256 ], [ %i.ud, %bb.hu ], [ %i.ud, %bb.ht ]
  %i.ut = shl i64 %i.tu, 44
  %i.uu = add nuw nsw i64 %i.uq, %i.ut
  %i.uv = lshr i64 %i.tu, 20
  %i.uw = icmp ult i64 %i.tw, 140737488355328
  br i1 %i.uw, label %bb.hw, label %.thread258, !prof !13, !nosanitize !14

.thread258:                                       ; preds = %bb.hv
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @551, i64 %i.tw, i64 17) #7, !nosanitize !14
  br label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.ux = icmp samesign ult i64 %i.tw, 512
  br i1 %i.ux, label %.thread260, label %bb.hx, !prof !21, !nosanitize !14

.thread260:                                       ; preds = %bb.hw
  %i.uy = mul nuw i64 %i.tw, 36028797019095040
  %i.uz = shl nuw nsw i64 %i.tw, 19
  br label %bb.ia

bb.hx:                                            ; preds = %bb.hw, %.thread258
  %i.va = shl i64 %i.tw, 17
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @552, i64 %i.tw, i64 55) #7, !nosanitize !14
end_hunk_1
begin_hunk_2_@crc32_chorba_32768_nondestructive:bb.a
bb.ij:                                            ; preds = %bb.ii
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @559, i64 %i.f, i64 %i.ws) #6, !nosanitize !14
  br label %bb.ik, !nosanitize !14

bb.ik:                                            ; preds = %bb.ii, %bb.ij
  %i.wv = load i64, ptr %i.wp, align 8, !tbaa !16
  %i.ww = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.1, i64 24), !nosanitize !14 ; 2 uses
  %i.wx = extractvalue { i64, i1 } %i.ww, 0, !nosanitize !14 ; 3 uses
  %i.wy = extractvalue { i64, i1 } %i.ww, 1, !nosanitize !14
  br i1 %i.wy, label %bb.il, label %bb.im, !prof !17, !nosanitize !14

bb.il:                                            ; preds = %bb.ik
  call void @__ubsan_handle_add_overflow(ptr nonnull @560, i64 %.1, i64 24) #7, !nosanitize !14
  br label %bb.im, !nosanitize !14

bb.im:                                            ; preds = %bb.ik, %bb.il
  %i.wz = lshr i64 %i.wx, 3
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.wz ; 2 uses
  %i.xb = icmp sgt i64 %i.wx, -1
  %i.xc = and i64 %i.wx, -8
  %i.xd = add i64 %i.xc, %i.d, !nosanitize !14    ; 3 uses
  %i.xe = icmp eq i64 %i.xd, 0
  %i.xf = xor i1 %i.e, %i.xe
  %i.xg = icmp uge i64 %i.xd, %i.d, !nosanitize !14
  %i.xh = and i1 %i.xb, %i.xg, !nosanitize !14
  %i.xi = and i1 %i.xf, %i.xh, !nosanitize !14
  br i1 %i.xi, label %bb.io, label %bb.in, !prof !13, !nosanitize !14

bb.in:                                            ; preds = %bb.im
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @561, i64 %i.d, i64 %i.xd) #6, !nosanitize !14
  br label %bb.io, !nosanitize !14

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.xj = ptrtoint ptr %i.xa to i64, !nosanitize !14 ; 2 uses
  %i.xk = and i64 %i.xj, 7, !nosanitize !14
  %i.xl = icmp eq i64 %i.xk, 0, !nosanitize !14
  %i.xm = and i1 %i.e, %i.xl
  br i1 %i.xm, label %bb.iq, label %bb.ip, !prof !13, !nosanitize !14

bb.ip:                                            ; preds = %bb.io
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @562, i64 %i.xj) #6, !nosanitize !14
  br label %bb.iq, !nosanitize !14

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %i.xn = load i64, ptr %i.xa, align 8, !tbaa !16
  %i.xo = add nuw nsw i64 %i.ry, 3                ; 3 uses
  %i.xp = icmp ult i64 %.1, 32744
  br i1 %i.xp, label %bb.is, label %bb.ir, !prof !13, !nosanitize !14

bb.ir:                                            ; preds = %bb.iq
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @563, i64 %i.xo) #6, !nosanitize !14
  br label %bb.is, !nosanitize !14

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.xo
  %i.xr = icmp ult i64 %.1, 9223372036854775784
  %i.xs = shl nuw nsw i64 %i.xo, 3
  %i.xt = add i64 %i.xs, %i.f, !nosanitize !14    ; 2 uses
  %i.xu = icmp uge i64 %i.xt, %i.f, !nosanitize !14
  %i.xv = and i1 %i.xr, %i.xu, !nosanitize !14
  br i1 %i.xv, label %bb.iu, label %bb.it, !prof !13, !nosanitize !14

bb.it:                                            ; preds = %bb.is
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @564, i64 %i.f, i64 %i.xt) #6, !nosanitize !14
  br label %bb.iu, !nosanitize !14

bb.iu:                                            ; preds = %bb.is, %bb.it
  %i.xw = load i64, ptr %i.xq, align 8, !tbaa !16
  %i.xx = xor i64 %i.us, %i.wm
  %i.xy = xor i64 %i.xx, %i.wv
  %i.xz = xor i64 %i.xy, %.0192                   ; 19 uses
  %i.ya = xor i64 %i.ur, %i.vr
  %i.yb = xor i64 %i.ya, %i.xn
  %i.yc = xor i64 %i.yb, %i.xw
  %i.yd = xor i64 %i.yc, %.0191                   ; 19 uses
  %i.ye = icmp ult i64 %i.xz, 140737488355328
  br i1 %i.ye, label %bb.iv, label %.thread262, !prof !13, !nosanitize !14

.thread262:                                       ; preds = %bb.iu
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @565, i64 %i.xz, i64 17) #7, !nosanitize !14
  br label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.yf = icmp samesign ult i64 %i.xz, 512
  br i1 %i.yf, label %.thread264, label %bb.iw, !prof !21, !nosanitize !14

.thread264:                                       ; preds = %bb.iv
  %i.yg = mul nuw i64 %i.xz, 36028797019095040
  %i.yh = shl nuw nsw i64 %i.xz, 19
  br label %bb.iz

bb.iw:                                            ; preds = %bb.iv, %.thread262
  %i.yi = shl i64 %i.xz, 17
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @566, i64 %i.xz, i64 55) #7, !nosanitize !14
  %i.yj = shl i64 %i.xz, 55
  %i.yk = xor i64 %i.yi, %i.yj                    ; 2 uses
  %i.yl = lshr i64 %i.xz, 9                       ; 2 uses
  %i.ym = icmp ult i64 %i.xz, 35184372088832
  br i1 %i.ym, label %bb.ix, label %.thread265, !prof !19, !nosanitize !14

.thread265:                                       ; preds = %bb.iw
  %i.yn = lshr i64 %i.xz, 47
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @567, i64 %i.xz, i64 19) #7, !nosanitize !14
  %i.yo = shl i64 %i.xz, 19
  %i.yp = or disjoint i64 %i.yn, %i.yo
  %i.yq = xor i64 %i.yp, %i.yl
  %i.yr = lshr i64 %i.xz, 45
  br label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.ys = shl nuw i64 %i.xz, 19
  %i.yt = xor i64 %i.yl, %i.ys                    ; 2 uses
  %i.yu = icmp samesign ult i64 %i.xz, 1048576
  br i1 %i.yu, label %bb.iz, label %bb.iy, !prof !20, !nosanitize !14

bb.iy:                                            ; preds = %.thread265, %bb.ix
  %i.yv = phi i64 [ %i.yr, %.thread265 ], [ 0, %bb.ix ]
  %i.yw = phi i64 [ %i.yq, %.thread265 ], [ %i.yt, %bb.ix ]
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @568, i64 %i.xz, i64 44) #7, !nosanitize !14
  br label %bb.iz, !nosanitize !14

bb.iz:                                            ; preds = %.thread264, %bb.iy, %bb.ix
  %i.yx = phi i64 [ 0, %.thread264 ], [ %i.yv, %bb.iy ], [ 0, %bb.ix ]
  %i.yy = phi i64 [ %i.yh, %.thread264 ], [ %i.yw, %bb.iy ], [ %i.yt, %bb.ix ]
  %i.yz = phi i64 [ %i.yg, %.thread264 ], [ %i.yk, %bb.iy ], [ %i.yk, %bb.ix ]
  %i.za = shl i64 %i.xz, 44
  %i.zb = add nuw nsw i64 %i.yx, %i.za
  %i.zc = lshr i64 %i.xz, 20
  %i.zd = icmp ult i64 %i.yd, 140737488355328
  br i1 %i.zd, label %bb.ja, label %.thread266, !prof !13, !nosanitize !14

.thread266:                                       ; preds = %bb.iz
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @569, i64 %i.yd, i64 17) #7, !nosanitize !14
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.ze = icmp samesign ult i64 %i.yd, 512
  br i1 %i.ze, label %.thread268, label %bb.jb, !prof !21, !nosanitize !14

.thread268:                                       ; preds = %bb.ja
  %i.zf = mul nuw i64 %i.yd, 36028797019095040
  %i.zg = shl nuw nsw i64 %i.yd, 19
  br label %bb.je

bb.jb:                                            ; preds = %bb.ja, %.thread266
  %i.zh = shl i64 %i.yd, 17
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @570, i64 %i.yd, i64 55) #7, !nosanitize !14
  %i.zi = shl i64 %i.yd, 55
  %i.zj = xor i64 %i.zh, %i.zi                    ; 2 uses
  %i.zk = lshr i64 %i.yd, 9                       ; 2 uses
  %i.zl = icmp ult i64 %i.yd, 35184372088832
  br i1 %i.zl, label %bb.jc, label %.thread269, !prof !19, !nosanitize !14

.thread269:                                       ; preds = %bb.jb
  %i.zm = lshr i64 %i.yd, 47
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @571, i64 %i.yd, i64 19) #7, !nosanitize !14
  %i.zn = shl i64 %i.yd, 19
  %i.zo = or disjoint i64 %i.zm, %i.zn
  %i.zp = xor i64 %i.zo, %i.zk
  %i.zq = lshr i64 %i.yd, 45
  br label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.zr = shl nuw i64 %i.yd, 19
  %i.zs = xor i64 %i.zk, %i.zr                    ; 2 uses
  %i.zt = icmp samesign ult i64 %i.yd, 1048576
  br i1 %i.zt, label %bb.je, label %bb.jd, !prof !20, !nosanitize !14

bb.jd:                                            ; preds = %.thread269, %bb.jc
  %i.zu = phi i64 [ %i.zq, %.thread269 ], [ 0, %bb.jc ]
  %i.zv = phi i64 [ %i.zp, %.thread269 ], [ %i.zs, %bb.jc ]
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @572, i64 %i.yd, i64 44) #7, !nosanitize !14
  br label %bb.je, !nosanitize !14

bb.je:                                            ; preds = %.thread268, %bb.jd, %bb.jc
  %i.zw = phi i64 [ 0, %.thread268 ], [ %i.zu, %bb.jd ], [ 0, %bb.jc ]
  %i.zx = phi i64 [ %i.zg, %.thread268 ], [ %i.zv, %bb.jd ], [ %i.zs, %bb.jc ]
  %i.zy = phi i64 [ %i.zf, %.thread268 ], [ %i.zj, %bb.jd ], [ %i.zj, %bb.jc ]
  %i.zz = shl i64 %i.yd, 44
  %i.aaa = add nuw nsw i64 %i.zw, %i.zz
  %i.aab = lshr i64 %i.yd, 20
  %i.aac = xor i64 %i.vt, %i.uv
  %i.aad = xor i64 %i.aac, %i.yy
  %i.aae = xor i64 %i.aad, %i.zy
  %i.aaf = xor i64 %i.zb, %i.vu
  %i.aag = xor i64 %i.aaf, %i.zx
  %i.aah = xor i64 %i.aaa, %i.zc
  %i.aai = xor i64 %i.uu, %i.vq
  %i.aaj = xor i64 %i.aai, %i.yz
  %i.aak = xor i64 %i.aaj, %.0190
  %i.aal = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.1, i64 32), !nosanitize !14 ; 2 uses
  %i.aam = extractvalue { i64, i1 } %i.aal, 0, !nosanitize !14
  %i.aan = extractvalue { i64, i1 } %i.aal, 1, !nosanitize !14
  br i1 %i.aan, label %bb.jf, label %bb.jg, !prof !17, !nosanitize !14

bb.jf:                                            ; preds = %bb.je
  call void @__ubsan_handle_add_overflow(ptr nonnull @573, i64 %.1, i64 32) #7, !nosanitize !14
  br label %bb.jg, !nosanitize !14

bb.jg:                                            ; preds = %bb.jf, %bb.je
  br label %bb.gu, !llvm.loop !30

bb.jh:                                            ; preds = %bb.gw
  %i.aao = and i64 %.1, -8
  %i.aap = add i64 %i.aao, %i.d, !nosanitize !14  ; 3 uses
  %i.aaq = icmp eq i64 %i.aap, 0
  %i.aar = xor i1 %i.e, %i.aaq
  %i.aas = icmp uge i64 %i.aap, %i.d, !nosanitize !14
  %i.aat = and i1 %i.aas, %i.aar
  %i.aau = and i1 %i.aat, %i.sa
  br i1 %i.aau, label %bb.jj, label %bb.ji, !prof !13, !nosanitize !14

bb.ji:                                            ; preds = %bb.jh
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @574, i64 %i.d, i64 %i.aap) #6, !nosanitize !14
  br label %bb.jj, !nosanitize !14

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %i.aav = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 %.1), !nosanitize !14 ; 2 uses
  %i.aaw = extractvalue { i64, i1 } %i.aav, 0, !nosanitize !14 ; 2 uses
  %i.aax = extractvalue { i64, i1 } %i.aav, 1, !nosanitize !14 ; 2 uses
  br i1 %i.aax, label %bb.jk, label %bb.jl, !prof !17, !nosanitize !14

bb.jk:                                            ; preds = %bb.jj
  call void @__ubsan_handle_sub_overflow(ptr nonnull @575, i64 %2, i64 %.1) #7, !nosanitize !14
  br label %bb.jl, !nosanitize !14

bb.jl:                                            ; preds = %bb.jj, %bb.jk
  br i1 %i.e, label %bb.jn, label %bb.jm, !prof !13, !nosanitize !14

bb.jm:                                            ; preds = %bb.jl
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @576) #6, !nosanitize !14
  br label %bb.jn, !nosanitize !14

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  %i.aay = ptrtoint ptr %i.rz to i64, !nosanitize !14 ; 2 uses
  %i.aaz = and i64 %i.aay, 7, !nosanitize !14
  %i.aba = icmp eq i64 %i.aaz, 0, !nosanitize !14
  br i1 %i.aba, label %bb.jp, label %bb.jo, !prof !13, !nosanitize !14

bb.jo:                                            ; preds = %bb.jn
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @578, i64 %i.aay) #6, !nosanitize !14
  br label %bb.jp, !nosanitize !14

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 8 %i.rz, i64 %i.aaw, i1 false)
  %i.abb = load i64, ptr %i.b, align 16, !tbaa !16
  %i.abc = xor i64 %i.abb, %.0194
  store i64 %i.abc, ptr %i.b, align 16, !tbaa !16
  %i.abd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.abe = ptrtoint ptr %i.b to i64, !nosanitize !14 ; 9 uses
  %i.abf = load i64, ptr %i.abd, align 8, !tbaa !16
  %i.abg = xor i64 %i.abf, %.0193
  store i64 %i.abg, ptr %i.abd, align 8, !tbaa !16
  %i.abh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %.not248 = icmp eq ptr %i.b, inttoptr (i64 -16 to ptr)
  br i1 %.not248, label %.thread270, label %bb.jq, !prof !17, !nosanitize !14

.thread270:                                       ; preds = %bb.jp
  %i.abi = add i64 %i.abe, 16, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @579, i64 %i.abe, i64 %i.abi) #6, !nosanitize !14
  %i.abj = load i64, ptr %i.abh, align 16, !tbaa !16
  %i.abk = xor i64 %i.abj, %.0192
  store i64 %i.abk, ptr %i.abh, align 16, !tbaa !16
  %i.abl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.abm = load i64, ptr %i.abh, align 16, !tbaa !16
  %i.abn = xor i64 %i.abm, %.0192
  store i64 %i.abn, ptr %i.abh, align 16, !tbaa !16
  %i.abo = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.not249 = icmp ugt ptr %i.b, inttoptr (i64 -25 to ptr)
  br i1 %.not249, label %bb.jr, label %bb.js, !prof !19, !nosanitize !14

bb.jr:                                            ; preds = %.thread270, %bb.jq
  %i.abp = phi ptr [ %i.abl, %.thread270 ], [ %i.abo, %bb.jq ]
  %i.abq = add i64 %i.abe, 24, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @580, i64 %i.abe, i64 %i.abq) #6, !nosanitize !14
  br label %bb.js, !nosanitize !14

bb.js:                                            ; preds = %bb.jq, %bb.jr
  %i.abr = phi ptr [ %i.abo, %bb.jq ], [ %i.abp, %bb.jr ] ; 2 uses
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !16
  %i.abt = xor i64 %i.abs, %.0191
  store i64 %i.abt, ptr %i.abr, align 8, !tbaa !16
  %i.abu = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.not250 = icmp ugt ptr %i.b, inttoptr (i64 -33 to ptr)
  br i1 %.not250, label %bb.jt, label %bb.ju, !prof !17, !nosanitize !14

bb.jt:                                            ; preds = %bb.js
  %i.abv = add i64 %i.abe, 32, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @581, i64 %i.abe, i64 %i.abv) #6, !nosanitize !14
  br label %bb.ju, !nosanitize !14

bb.ju:                                            ; preds = %bb.js, %bb.jt
  %i.abw = load i64, ptr %i.abu, align 16, !tbaa !16
  %i.abx = xor i64 %i.abw, %.0190
  store i64 %i.abx, ptr %i.abu, align 16, !tbaa !16
  br label %bb.jv

bb.jv:                                            ; preds = %bb.kh, %bb.ju
  %.0196 = phi i32 [ 0, %bb.ju ], [ %i.aco, %bb.kh ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.ju ], [ %i.acp, %bb.kh ] ; 6 uses
  br i1 %i.aax, label %bb.jw, label %bb.jx, !prof !17, !nosanitize !14

bb.jw:                                            ; preds = %bb.jv
  call void @__ubsan_handle_sub_overflow(ptr nonnull @582, i64 %2, i64 %.1) #7, !nosanitize !14
  br label %bb.jx, !nosanitize !14

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %3 = icmp ult i64 %.0, %i.aaw
  br i1 %3, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0196

bb.jz:                                            ; preds = %bb.jx
  %i.aby = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0
  %i.abz = add i64 %.0, %i.abe, !nosanitize !14   ; 2 uses
  %.not251 = icmp ult i64 %i.abz, %i.abe, !nosanitize !14
  br i1 %.not251, label %bb.ka, label %bb.kb, !prof !17, !nosanitize !14

bb.ka:                                            ; preds = %bb.jz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @583, i64 %i.abe, i64 %i.abz) #6, !nosanitize !14
  br label %bb.kb, !nosanitize !14

bb.kb:                                            ; preds = %bb.jz, %bb.ka
  %i.aca = load i8, ptr %i.aby, align 1, !tbaa !22
  %i.acb = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0, i64 %.1), !nosanitize !14 ; 2 uses
  %i.acc = extractvalue { i64, i1 } %i.acb, 0, !nosanitize !14 ; 2 uses
  %i.acd = extractvalue { i64, i1 } %i.acb, 1, !nosanitize !14
  br i1 %i.acd, label %bb.kc, label %bb.kd, !prof !17, !nosanitize !14

bb.kc:                                            ; preds = %bb.kb
  call void @__ubsan_handle_add_overflow(ptr nonnull @584, i64 %.0, i64 %.1) #7, !nosanitize !14
  br label %bb.kd, !nosanitize !14

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %i.ace = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.acc
  %i.acf = add i64 %i.acc, %i.f, !nosanitize !14  ; 2 uses
  %.not253 = icmp ult i64 %i.acf, %i.f, !nosanitize !14
  br i1 %.not253, label %bb.ke, label %bb.kf, !prof !17, !nosanitize !14

bb.ke:                                            ; preds = %bb.kd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @585, i64 %i.f, i64 %i.acf) #6, !nosanitize !14
  br label %bb.kf, !nosanitize !14

bb.kf:                                            ; preds = %bb.kd, %bb.ke
  %i.acg = load i8, ptr %i.ace, align 1, !tbaa !22
  %.0196.tr = trunc i32 %.0196 to i8
  %i.ach = xor i8 %i.aca, %.0196.tr
  %.narrow = xor i8 %i.ach, %i.acg
  %i.aci = zext i8 %.narrow to i64                ; 2 uses
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.aci
  %i.ack = shl nuw nsw i64 %i.aci, 2
  %i.acl = add i64 %i.ack, ptrtoint (ptr @crc_table to i64), !nosanitize !14 ; 2 uses
  %.not255 = icmp ult i64 %i.acl, ptrtoint (ptr @crc_table to i64), !nosanitize !14
  br i1 %.not255, label %bb.kg, label %bb.kh, !prof !17, !nosanitize !14

bb.kg:                                            ; preds = %bb.kf
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @586, i64 ptrtoint (ptr @crc_table to i64), i64 %i.acl) #6, !nosanitize !14
  br label %bb.kh, !nosanitize !14

bb.kh:                                            ; preds = %bb.kf, %bb.kg
  %i.acm = load i32, ptr %i.acj, align 4, !tbaa !23
  %i.acn = lshr i32 %.0196, 8
  %i.aco = xor i32 %i.acm, %i.acn
  %i.acp = add nuw i64 %.0, 1
  br label %bb.jv, !llvm.loop !31
}

; Function Attrs: nounwind uwtable
define hidden i32 @crc32_chorba_small_nondestructive(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !12 {
bb.a:
  %i.a = alloca [9 x i64], align 16               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = zext i32 %0 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 135 uses
  %i.d = icmp ne ptr %1, null                     ; 56 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0800 = phi i64 [ %i.b, %bb.a ], [ %i.bkh, %.backedge ] ; 2 uses
  %.0798 = phi i64 [ 0, %bb.a ], [ %i.bkb, %.backedge ] ; 2 uses
  %.0796 = phi i64 [ 0, %bb.a ], [ %i.bkd, %.backedge ] ; 2 uses
  %.0794 = phi i64 [ 0, %bb.a ], [ %i.bke, %.backedge ] ; 2 uses
  %.0792 = phi i64 [ 0, %bb.a ], [ %i.bjy, %.backedge ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.bkj, %.backedge ] ; 15 uses
  %i.e = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0, i64 256), !nosanitize !14 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 0, !nosanitize !14 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.e, 1, !nosanitize !14
  br i1 %i.g, label %bb.c, label %bb.d, !prof !17, !nosanitize !14

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_add_overflow(ptr nonnull @587, i64 %.0, i64 256) #7, !nosanitize !14
  br label %bb.d, !nosanitize !14

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 40), !nosanitize !14 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 0, !nosanitize !14 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.h, 1, !nosanitize !14
  br i1 %i.j, label %bb.e, label %bb.f, !prof !17, !nosanitize !14

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_add_overflow(ptr nonnull @588, i64 %i.f, i64 40) #7, !nosanitize !14
  br label %bb.f, !nosanitize !14

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.i, i64 32), !nosanitize !14 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 0, !nosanitize !14 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.k, 1, !nosanitize !14
  br i1 %i.m, label %bb.g, label %bb.h, !prof !17, !nosanitize !14

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_add_overflow(ptr nonnull @589, i64 %i.i, i64 32) #7, !nosanitize !14
  br label %bb.h, !nosanitize !14

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.l, i64 32), !nosanitize !14 ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 0, !nosanitize !14
  %i.p = extractvalue { i64, i1 } %i.n, 1, !nosanitize !14
  br i1 %i.p, label %bb.i, label %bb.j, !prof !17, !nosanitize !14

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_add_overflow(ptr nonnull @590, i64 %i.l, i64 32) #7, !nosanitize !14
  br label %bb.j, !nosanitize !14

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = icmp ult i64 %i.o, %2
  br i1 %i.q, label %bb.k, label %.preheader

bb.k:                                             ; preds = %bb.j
  %i.r = lshr i64 %.0, 3                          ; 8 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.t = icmp sgt i64 %.0, -1
  %i.u = add i64 %.0, %i.c, !nosanitize !14       ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = xor i1 %i.d, %i.v
  %i.x = icmp uge i64 %i.u, %i.c, !nosanitize !14
  %i.y = and i1 %i.t, %i.x, !nosanitize !14
  %i.z = and i1 %i.w, %i.y, !nosanitize !14
  br i1 %i.z, label %bb.m, label %bb.l, !prof !13, !nosanitize !14

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @591, i64 %i.c, i64 %i.u) #6, !nosanitize !14
  br label %bb.m, !nosanitize !14

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = ptrtoint ptr %i.s to i64, !nosanitize !14 ; 2 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !14
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !14
  %i.ad = and i1 %i.d, %i.ac
  br i1 %i.ad, label %bb.o, label %bb.n, !prof !13, !nosanitize !14

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @592, i64 %i.aa) #6, !nosanitize !14
  br label %bb.o, !nosanitize !14

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !16
  %i.af = add nuw nsw i64 %i.r, 1                 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.ah = icmp ult i64 %.0, 9223372036854775800
  %i.ai = shl i64 %i.af, 3
  %i.aj = add i64 %i.ai, %i.c, !nosanitize !14    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = xor i1 %i.d, %i.ak
  %i.am = icmp uge i64 %i.aj, %i.c, !nosanitize !14
  %i.an = and i1 %i.ah, %i.am, !nosanitize !14
  %i.ao = and i1 %i.al, %i.an, !nosanitize !14
  br i1 %i.ao, label %bb.q, label %bb.p, !prof !13, !nosanitize !14

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @593, i64 %i.c, i64 %i.aj) #6, !nosanitize !14
  br label %bb.q, !nosanitize !14

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ap = ptrtoint ptr %i.ag to i64, !nosanitize !14 ; 2 uses
  %i.aq = and i64 %i.ap, 7, !nosanitize !14
  %i.ar = icmp eq i64 %i.aq, 0, !nosanitize !14
  br i1 %i.ar, label %bb.s, label %bb.r, !prof !13, !nosanitize !14

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @594, i64 %i.ap) #6, !nosanitize !14
  br label %bb.s, !nosanitize !14

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.at = add nuw nsw i64 %i.r, 2                 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.at ; 2 uses
  %i.av = icmp ult i64 %.0, 9223372036854775792
  %i.aw = shl i64 %i.at, 3
  %i.ax = add i64 %i.aw, %i.c, !nosanitize !14    ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = xor i1 %i.d, %i.ay
  %i.ba = icmp uge i64 %i.ax, %i.c, !nosanitize !14
  %i.bb = and i1 %i.av, %i.ba, !nosanitize !14
  %i.bc = and i1 %i.az, %i.bb, !nosanitize !14
  br i1 %i.bc, label %bb.u, label %bb.t, !prof !13, !nosanitize !14

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @595, i64 %i.c, i64 %i.ax) #6, !nosanitize !14
  br label %bb.u, !nosanitize !14

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bd = ptrtoint ptr %i.au to i64, !nosanitize !14 ; 2 uses
  %i.be = and i64 %i.bd, 7, !nosanitize !14
  %i.bf = icmp eq i64 %i.be, 0, !nosanitize !14
  br i1 %i.bf, label %bb.w, label %bb.v, !prof !13, !nosanitize !14

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @596, i64 %i.bd) #6, !nosanitize !14
  br label %bb.w, !nosanitize !14

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bg = load i64, ptr %i.au, align 8, !tbaa !16
  %i.bh = add nuw nsw i64 %i.r, 3                 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh ; 2 uses
  %i.bj = icmp ult i64 %.0, 9223372036854775784
  %i.bk = shl i64 %i.bh, 3
  %i.bl = add i64 %i.bk, %i.c, !nosanitize !14    ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = xor i1 %i.d, %i.bm
  %i.bo = icmp uge i64 %i.bl, %i.c, !nosanitize !14
  %i.bp = and i1 %i.bj, %i.bo, !nosanitize !14
  %i.bq = and i1 %i.bn, %i.bp, !nosanitize !14
  br i1 %i.bq, label %bb.y, label %bb.x, !prof !13, !nosanitize !14

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @597, i64 %i.c, i64 %i.bl) #6, !nosanitize !14
  br label %bb.y, !nosanitize !14

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.br = ptrtoint ptr %i.bi to i64, !nosanitize !14 ; 2 uses
  %i.bs = and i64 %i.br, 7, !nosanitize !14
  %i.bt = icmp eq i64 %i.bs, 0, !nosanitize !14
  br i1 %i.bt, label %bb.aa, label %bb.z, !prof !13, !nosanitize !14

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @598, i64 %i.br) #6, !nosanitize !14
  br label %bb.aa, !nosanitize !14

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bu = load i64, ptr %i.bi, align 8, !tbaa !16
  %i.bv = add nuw nsw i64 %i.r, 4                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.bx = icmp ult i64 %.0, 9223372036854775776
  %i.by = shl i64 %i.bv, 3
  %i.bz = add i64 %i.by, %i.c, !nosanitize !14    ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = xor i1 %i.d, %i.ca
  %i.cc = icmp uge i64 %i.bz, %i.c, !nosanitize !14
  %i.cd = and i1 %i.bx, %i.cc, !nosanitize !14
  %i.ce = and i1 %i.cb, %i.cd, !nosanitize !14
  br i1 %i.ce, label %bb.ac, label %bb.ab, !prof !13, !nosanitize !14

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @599, i64 %i.c, i64 %i.bz) #6, !nosanitize !14
  br label %bb.ac, !nosanitize !14

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cf = ptrtoint ptr %i.bw to i64, !nosanitize !14 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !nosanitize !14
  %i.ch = icmp eq i64 %i.cg, 0, !nosanitize !14
  br i1 %i.ch, label %bb.ae, label %bb.ad, !prof !13, !nosanitize !14

bb.ad:                                            ; preds = %bb.ac
end_hunk_2
