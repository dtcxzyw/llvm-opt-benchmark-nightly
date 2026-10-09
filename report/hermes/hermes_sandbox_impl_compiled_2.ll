Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_2?download=true
inline.NumInlined: 21302
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3AsetStorageEndIndex0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AArrayImpl0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29:bb.a
bb.u:                                             ; preds = %bb.t
  %i.cz = add i32 %2, 816
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AwriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCPointerBase0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCCell0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.cz, i32 noundef %i.cx, i32 noundef %.0.copyload.i352) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.da = zext i32 %i.cx to i64
  %.val318 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val318, i64 %i.da
  store i32 %.0.copyload.i352, ptr %i.db, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.j, %bb.m, %bb.o, %bb.v, %bb.e, %bb.s, %bb.g, %bb.c
  %.0 = phi i32 [ %i.w, %bb.c ], [ 0, %bb.s ], [ 0, %bb.g ], [ 1, %bb.e ], [ 1, %bb.v ], [ 1, %bb.o ], [ 1, %bb.m ], [ 1, %bb.j ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3AreadSignedLEB1280x28llvh0x3A0x3AArrayRef0x3Cunsigned0x20char0x3E0x2C0x20unsigned0x20int0x2C0x20long0x20long0x2A0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = zext i32 %1 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.d = add i32 %.0.copyload.i, %2               ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.058 = phi i32 [ 0, %bb.a ], [ %i.n, %bb.b ]   ; 2 uses
  %.057 = phi i32 [ %i.d, %bb.a ], [ %i.m, %bb.b ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.b ]
  %i.e = zext i32 %.057 to i64
  %.val60 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val60, i64 %i.e
  %.0.copyload.i62 = load i8, ptr %i.f, align 1   ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i62) #7, !srcloc !21
  %i.g = and i8 %.0.copyload.i62, 127
  %i.h = zext nneg i8 %i.g to i64
  %i.i = and i32 %.058, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl i64 %i.h, %i.j
  %i.l = or i64 %i.k, %.0                         ; 2 uses
  %i.m = add i32 %.057, 1                         ; 2 uses
  %i.n = add i32 %.058, 7                         ; 2 uses
  %i.o = icmp slt i8 %.0.copyload.i62, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = and i32 %i.n, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nsw i64 -1, %i.q
  %.not = icmp samesign ult i8 %.0.copyload.i62, 64
  %i.s = select i1 %.not, i64 0, i64 %i.r
  %i.t = or i64 %i.l, %i.s
  %i.u = zext i32 %3 to i64
  %.val61 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val61, i64 %i.u
  store i64 %i.t, ptr %i.v, align 1
  %i.w = sub i32 %i.m, %i.d
  ret i32 %i.w
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AdecodeUTF80x280x290x3A0x3A0x27lambda0x270x28llvh0x3A0x3ATwine0x20const0x260x290x3A0x3Aoperator0x280x290x28llvh0x3A0x3ATwine0x20const0x260x290x20const(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val31 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val31, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.d = zext i32 %.0.copyload.i to i64           ; 4 uses
  %.val30 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val30, i64 %i.d
  %.0.copyload.i34 = load i32, ptr %i.e, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i34) #7, !srcloc !19
  %.val29 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val29, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i35 = load i32, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i35) #7, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3Amessage0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20hermes0x3A0x3ASubsystem0x29(ptr noundef %0, i32 noundef %.0.copyload.i34, i32 noundef 0, i32 noundef %.0.copyload.i35, i32 noundef %2, i32 noundef 1) #7
  %.val28 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val28, i64 %i.d
  %.0.copyload.i36 = load i32, ptr %i.h, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i36) #7, !srcloc !19
  %i.i = zext i32 %.0.copyload.i36 to i64
  %.val32 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val32, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 148
  %.0.copyload.i37 = load i8, ptr %i.k, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i37) #7, !srcloc !20
  %.not = icmp eq i8 %.0.copyload.i37, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %.0.copyload.i38 = load i32, ptr %i.m, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i38) #7, !srcloc !19
  %.val33 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val33, i64 %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i32 %.0.copyload.i38, ptr %i.o, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3AnumberToString0x28double0x2C0x20char0x2A0x2C0x20unsigned0x20long0x29(ptr noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 12 uses
  %i.c = add i32 %i.b, -1296                      ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = add i32 %i.b, -1208
  %i.e = tail call i32 @w2c_hermes_dtoa_alloc_init(ptr noundef %0, i32 noundef %i.d) #7 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 95 uses
  %i.g = zext i32 %i.c to i64                     ; 6 uses
  %i.h = add nuw nsw i64 %i.g, 1288               ; 3 uses
  %.val1165 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val1165, i64 %i.h
  store i32 %i.e, ptr %i.i, align 1
  %i.j = fcmp uno double %1, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %2 to i64
  %.val1164 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val1164, i64 %i.k
  store i32 5136718, ptr %i.l, align 1
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  %i.m = fcmp oeq double %1, 0.000000e+00
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = zext i32 %2 to i64
  %.val1168 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val1168, i64 %i.n
  store i16 48, ptr %i.o, align 1
  br label %bb.am

bb.e:                                             ; preds = %bb.c
  %i.p = fcmp oeq double %1, +inf
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val1170 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val1170, i64 16736
  %.0.copyload.i = load i64, ptr %i.q, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !22
  %i.r = zext i32 %2 to i64                       ; 2 uses
  %.val1172 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val1172, i64 %i.r
  store i64 %.0.copyload.i, ptr %i.s, align 1
  %.val1161 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val1161, i64 16744
  %.0.copyload.i1174 = load i8, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1174) #7, !srcloc !20
  %.val1120 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val1120, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 %.0.copyload.i1174, ptr %i.v, align 1
  br label %bb.am

bb.g:                                             ; preds = %bb.e
  %i.w = fcmp oeq double %1, -inf
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val1169 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val1169, i64 16735
  %.0.copyload.i1175 = load i64, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1175) #7, !srcloc !22
  %i.y = zext i32 %2 to i64                       ; 2 uses
  %.val1171 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val1171, i64 %i.y
  store i64 %.0.copyload.i1175, ptr %i.z, align 1
  %.val1173 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1173, i64 16743
  %.0.copyload.i1176 = load i16, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1176) #7, !srcloc !23
  %.val1167 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1167, i64 %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i16 %.0.copyload.i1176, ptr %i.ac, align 1
  br label %bb.am

bb.i:                                             ; preds = %bb.g
  %i.ad = add i32 %i.b, -1212
  %i.ae = add i32 %i.b, -1216
  %i.af = add i32 %i.b, -1220
  %i.ag = tail call i32 @w2c_hermes_g_dtoa(ptr noundef nonnull %0, i32 noundef %i.e, double noundef %1, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af) #7 ; 27 uses
  %.val1128 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1128, i64 %i.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %.0.copyload.i1177 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1177) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i1177, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = zext i32 %2 to i64
  %.val1119 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1119, i64 %i.aj
  store i8 45, ptr %i.ak, align 1
  %i.al = add i32 %2, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.01022 = phi i32 [ %i.al, %bb.j ], [ %2, %bb.i ] ; 11 uses
  %.val1127 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val1127, i64 %i.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 76
  %.0.copyload.i1178 = load i32, ptr %i.an, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1178) #7, !srcloc !19
  %i.ao = sub i32 %.0.copyload.i1178, %i.ag       ; 13 uses
  %i.ap = add nuw nsw i64 %i.g, 84                ; 4 uses
  %.val1126 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1126, i64 %i.ap
  %.0.copyload.i1179 = load i32, ptr %i.aq, align 1 ; 15 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1179) #7, !srcloc !19
  %i.ar = icmp sgt i32 %.0.copyload.i1179, 21
  %i.as = icmp slt i32 %.0.copyload.i1179, %i.ao  ; 2 uses
  %or.cond = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = icmp slt i32 %i.ao, 1
  br i1 %i.at, label %.loopexit1234, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = and i32 %i.ao, 3                        ; 2 uses
  %i.av = sub i32 %i.ag, %.0.copyload.i1178
  %i.aw = icmp ugt i32 %i.av, -4
  br i1 %i.aw, label %.loopexit1235, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = and i32 %i.ao, 2147483644               ; 2 uses
  %i.ay = add i32 %i.ag, 1
  %i.az = add i32 %i.ag, 2
  %i.ba = add i32 %i.ag, 3
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %.11023 = phi i32 [ %i.bw, %bb.o ], [ %.01022, %bb.n ] ; 2 uses
  %i.bb = trunc nuw i64 %indvars.iv to i32        ; 4 uses
  %i.bc = add i32 %i.ag, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %.val1160 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val1160, i64 %i.bd
  %.0.copyload.i1180 = load i8, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1180) #7, !srcloc !20
  %i.bf = zext i32 %.11023 to i64                 ; 4 uses
  %.val1118 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1118, i64 %i.bf
  store i8 %.0.copyload.i1180, ptr %i.bg, align 1
  %i.bh = add i32 %i.ay, %i.bb
  %i.bi = zext i32 %i.bh to i64
  %.val1159 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1159, i64 %i.bi
  %.0.copyload.i1181 = load i8, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1181) #7, !srcloc !20
  %.val1117 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1117, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 %.0.copyload.i1181, ptr %i.bl, align 1
  %i.bm = add i32 %i.az, %i.bb
  %i.bn = zext i32 %i.bm to i64
  %.val1158 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1158, i64 %i.bn
  %.0.copyload.i1182 = load i8, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1182) #7, !srcloc !20
  %.val1116 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1116, i64 %i.bf
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i8 %.0.copyload.i1182, ptr %i.bq, align 1
  %i.br = add i32 %i.ba, %i.bb
  %i.bs = zext i32 %i.br to i64
  %.val1157 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1157, i64 %i.bs
  %.0.copyload.i1183 = load i8, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1183) #7, !srcloc !20
  %.val1115 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1115, i64 %i.bf
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store i8 %.0.copyload.i1183, ptr %i.bv, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars1275 = trunc i64 %indvars.iv.next to i32
  %i.bw = add i32 %.11023, 4                      ; 2 uses
  %.not1062 = icmp eq i32 %i.ax, %indvars1275
  br i1 %.not1062, label %.loopexit1235.loopexit, label %bb.o

bb.p:                                             ; preds = %bb.k
  %i.bx = add i32 %.0.copyload.i1179, -1          ; 3 uses
  %i.by = icmp ult i32 %i.bx, 21
  br i1 %i.by, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bz = and i32 %.0.copyload.i1179, 3           ; 2 uses
  %i.ca = icmp samesign ult i32 %i.bx, 3
  br i1 %i.ca, label %bb.aj, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = and i32 %.0.copyload.i1179, 28          ; 2 uses
  %i.cc = add i32 %i.ag, 1
  %i.cd = add i32 %i.ag, 2
  %i.ce = add i32 %i.ag, 3
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %indvars.iv1302 = phi i64 [ %indvars.iv.next1303, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %.21024 = phi i32 [ %i.da, %bb.s ], [ %.01022, %bb.r ] ; 3 uses
  %i.cf = trunc nuw nsw i64 %indvars.iv1302 to i32 ; 4 uses
  %i.cg = add i32 %i.ag, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %.val1156 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val1156, i64 %i.ch
  %.0.copyload.i1184 = load i8, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1184) #7, !srcloc !20
  %i.cj = zext i32 %.21024 to i64                 ; 4 uses
  %.val1114 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1114, i64 %i.cj
  store i8 %.0.copyload.i1184, ptr %i.ck, align 1
  %i.cl = add i32 %i.cc, %i.cf
  %i.cm = zext i32 %i.cl to i64
  %.val1155 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1155, i64 %i.cm
  %.0.copyload.i1185 = load i8, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1185) #7, !srcloc !20
  %.val1113 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val1113, i64 %i.cj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 %.0.copyload.i1185, ptr %i.cp, align 1
  %i.cq = add i32 %i.cd, %i.cf
  %i.cr = zext i32 %i.cq to i64
  %.val1154 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1154, i64 %i.cr
  %.0.copyload.i1186 = load i8, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1186) #7, !srcloc !20
  %.val1112 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1112, i64 %i.cj
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store i8 %.0.copyload.i1186, ptr %i.cu, align 1
  %i.cv = add i32 %i.ce, %i.cf
  %i.cw = zext i32 %i.cv to i64
  %.val1153 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1153, i64 %i.cw
  %.0.copyload.i1187 = load i8, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1187) #7, !srcloc !20
  %.val1111 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1111, i64 %i.cj
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 3
  store i8 %.0.copyload.i1187, ptr %i.cz, align 1
  %indvars.iv.next1303 = add nuw nsw i64 %indvars.iv1302, 4 ; 2 uses
  %indvars1305 = trunc i64 %indvars.iv.next1303 to i32
  %i.da = add i32 %.21024, 4                      ; 2 uses
  %.not1074 = icmp eq i32 %i.cb, %indvars1305
  br i1 %.not1074, label %bb.ai, label %bb.s

bb.t:                                             ; preds = %bb.p
  %i.db = add i32 %.0.copyload.i1179, 5
  %i.dc = icmp ult i32 %i.db, 6
  br i1 %i.dc, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.dd = zext i32 %.01022 to i64
  %.val1166 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val1166, i64 %i.dd
  store i16 11824, ptr %i.de, align 1
  %i.df = add i32 %.01022, 2                      ; 2 uses
  %i.dg = icmp slt i32 %.0.copyload.i1179, 0
  br i1 %i.dg, label %.preheader1225, label %.loopexit1226

.preheader1225:                                   ; preds = %bb.u, %.preheader1225
  %.21030 = phi i32 [ %i.dj, %.preheader1225 ], [ %i.df, %bb.u ] ; 2 uses
  %.31025 = phi i32 [ %i.dk, %.preheader1225 ], [ 0, %bb.u ]
  %i.dh = zext i32 %.21030 to i64
  %.val1110 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val1110, i64 %i.dh
  store i8 48, ptr %i.di, align 1
  %i.dj = add i32 %.21030, 1                      ; 2 uses
  %i.dk = add nuw nsw i32 %.31025, 1              ; 2 uses
  %.val1125 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %.val1125, i64 %i.ap
  %.0.copyload.i1188 = load i32, ptr %i.dl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1188) #7, !srcloc !19
  %i.dm = sub i32 0, %.0.copyload.i1188
  %i.dn = icmp slt i32 %i.dk, %i.dm
  br i1 %i.dn, label %.preheader1225, label %.loopexit1226

.loopexit1226:                                    ; preds = %.preheader1225, %bb.u
  %.31031 = phi i32 [ %i.df, %bb.u ], [ %i.dj, %.preheader1225 ] ; 3 uses
  %i.do = icmp slt i32 %i.ao, 1
  br i1 %i.do, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.loopexit1226
  %i.dp = and i32 %i.ao, 3                        ; 2 uses
  %i.dq = sub i32 %i.ag, %.0.copyload.i1178
  %i.dr = icmp ugt i32 %i.dq, -4
  br i1 %i.dr, label %.loopexit1224, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = and i32 %i.ao, 2147483644               ; 2 uses
  %i.dt = add i32 %i.ag, 1
  %i.du = add i32 %i.ag, 2
  %i.dv = add i32 %i.ag, 3
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %indvars.iv1294 = phi i64 [ %indvars.iv.next1295, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %.41032 = phi i32 [ %i.er, %bb.x ], [ %.31031, %bb.w ] ; 2 uses
  %i.dw = trunc nuw i64 %indvars.iv1294 to i32    ; 4 uses
  %i.dx = add i32 %i.ag, %i.dw
  %i.dy = zext i32 %i.dx to i64
  %.val1152 = load ptr, ptr %i.f, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3AnumberToString0x28double0x2C0x20char0x2A0x2C0x20unsigned0x20long0x29:bb.a
  store i8 %.0.copyload.i1199, ptr %i.hc, align 1
  %.val1142 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1142, i64 %i.gr
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 3
  %.0.copyload.i1200 = load i8, ptr %i.he, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1200) #7, !srcloc !20
  %.val1096 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw i8, ptr %.val1096, i64 %i.gt
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 3
  store i8 %.0.copyload.i1200, ptr %i.hg, align 1
  %indvars.iv.next1281 = add nuw nsw i64 %indvars.iv1280, 4 ; 2 uses
  %i.hh = add i32 %.71035, 4                      ; 2 uses
  %i.hi = add nuw nsw i32 %.11015, 4              ; 2 uses
  %.not1065 = icmp eq i32 %i.hi, %i.go
  br i1 %.not1065, label %.loopexit1232, label %bb.ae

.loopexit1232:                                    ; preds = %bb.ae, %bb.ac
  %.81036 = phi i32 [ %i.fx, %bb.ac ], [ %i.hh, %bb.ae ] ; 2 uses
  %.8 = phi i64 [ 1, %bb.ac ], [ %indvars.iv.next1281, %bb.ae ]
  %.not1066 = icmp eq i32 %i.gm, 0
  br i1 %.not1066, label %.loopexit1231, label %.preheader1230

.preheader1230:                                   ; preds = %.loopexit1232, %.preheader1230
  %indvars.iv1283 = phi i64 [ %indvars.iv.next1284, %.preheader1230 ], [ %.8, %.loopexit1232 ] ; 2 uses
  %.91037 = phi i32 [ %i.hp, %.preheader1230 ], [ %.81036, %.loopexit1232 ] ; 2 uses
  %.11017 = phi i32 [ %i.hq, %.preheader1230 ], [ 0, %.loopexit1232 ]
  %i.hj = trunc nuw nsw i64 %indvars.iv1283 to i32
  %i.hk = add i32 %i.ag, %i.hj
  %i.hl = zext i32 %i.hk to i64
  %.val1141 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.hm = getelementptr inbounds nuw i8, ptr %.val1141, i64 %i.hl
  %.0.copyload.i1201 = load i8, ptr %i.hm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1201) #7, !srcloc !20
  %i.hn = zext i32 %.91037 to i64
  %.val1095 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ho = getelementptr inbounds nuw i8, ptr %.val1095, i64 %i.hn
  store i8 %.0.copyload.i1201, ptr %i.ho, align 1
  %indvars.iv.next1284 = add nuw nsw i64 %indvars.iv1283, 1
  %i.hp = add i32 %.91037, 1                      ; 2 uses
  %i.hq = add nuw nsw i32 %.11017, 1              ; 2 uses
  %.not1067 = icmp eq i32 %i.hq, %i.gm
  br i1 %.not1067, label %.loopexit1231, label %.preheader1230

.loopexit1231:                                    ; preds = %.preheader1230, %.loopexit1232, %bb.ab
  %.101038 = phi i32 [ %i.fx, %bb.ab ], [ %.81036, %.loopexit1232 ], [ %i.hp, %.preheader1230 ] ; 2 uses
  %i.hr = zext i32 %.101038 to i64                ; 2 uses
  %.val1094 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %.val1094, i64 %i.hr
  store i8 101, ptr %i.hs, align 1
  %.val1123 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val1123, i64 %i.ap
  %.0.copyload.i1202 = load i32, ptr %i.ht, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1202) #7, !srcloc !19
  %i.hu = icmp slt i32 %.0.copyload.i1202, 1
  %.val1093 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.hv = select i1 %i.hu, i8 45, i8 43
  %i.hw = getelementptr inbounds nuw i8, ptr %.val1093, i64 %i.hr
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  store i8 %i.hv, ptr %i.hx, align 1
  %i.hy = add i32 %.101038, 2                     ; 3 uses
  %i.hz = icmp slt i32 %i.gc, 1
  br i1 %i.hz, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %.loopexit1231
  %i.ia = and i32 %i.gc, 3                        ; 2 uses
  %i.ib = icmp samesign ult i32 %i.gc, 4
  br i1 %i.ib, label %.loopexit1229, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ic = and i32 %i.gc, 2147483644               ; 2 uses
  %i.id = add i32 %i.b, -1263
  %i.ie = add i32 %i.b, -1262
  %i.if = add i32 %i.b, -1261
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %indvars.iv1286 = phi i64 [ %indvars.iv.next1287, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %.111039 = phi i32 [ %i.jb, %bb.ah ], [ %i.hy, %bb.ag ] ; 2 uses
  %i.ig = trunc nuw nsw i64 %indvars.iv1286 to i32 ; 4 uses
  %i.ih = add i32 %i.ga, %i.ig
  %i.ii = zext i32 %i.ih to i64
  %.val1140 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %.val1140, i64 %i.ii
  %.0.copyload.i1203 = load i8, ptr %i.ij, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1203) #7, !srcloc !20
  %i.ik = zext i32 %.111039 to i64                ; 4 uses
  %.val1092 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %.val1092, i64 %i.ik
  store i8 %.0.copyload.i1203, ptr %i.il, align 1
  %i.im = add i32 %i.id, %i.ig
  %i.in = zext i32 %i.im to i64
  %.val1139 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.io = getelementptr inbounds nuw i8, ptr %.val1139, i64 %i.in
  %.0.copyload.i1204 = load i8, ptr %i.io, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1204) #7, !srcloc !20
  %.val1091 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.val1091, i64 %i.ik
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  store i8 %.0.copyload.i1204, ptr %i.iq, align 1
  %i.ir = add i32 %i.ie, %i.ig
  %i.is = zext i32 %i.ir to i64
  %.val1138 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %.val1138, i64 %i.is
  %.0.copyload.i1205 = load i8, ptr %i.it, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1205) #7, !srcloc !20
  %.val1090 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.iu = getelementptr inbounds nuw i8, ptr %.val1090, i64 %i.ik
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 2
  store i8 %.0.copyload.i1205, ptr %i.iv, align 1
  %i.iw = add i32 %i.if, %i.ig
  %i.ix = zext i32 %i.iw to i64
  %.val1137 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1137, i64 %i.ix
  %.0.copyload.i1206 = load i8, ptr %i.iy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1206) #7, !srcloc !20
  %.val1089 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.iz = getelementptr inbounds nuw i8, ptr %.val1089, i64 %i.ik
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 3
  store i8 %.0.copyload.i1206, ptr %i.ja, align 1
  %indvars.iv.next1287 = add nuw nsw i64 %indvars.iv1286, 4 ; 2 uses
  %indvars1289 = trunc i64 %indvars.iv.next1287 to i32
  %i.jb = add i32 %.111039, 4                     ; 2 uses
  %.not1068 = icmp eq i32 %i.ic, %indvars1289
  br i1 %.not1068, label %.loopexit1229.loopexit, label %bb.ah

.loopexit1229.loopexit:                           ; preds = %bb.ah
  %i.jc = zext nneg i32 %i.ic to i64
  br label %.loopexit1229

.loopexit1229:                                    ; preds = %.loopexit1229.loopexit, %bb.af
  %.121040 = phi i32 [ %i.hy, %bb.af ], [ %i.jb, %.loopexit1229.loopexit ] ; 2 uses
  %.11 = phi i64 [ 0, %bb.af ], [ %i.jc, %.loopexit1229.loopexit ]
  %.not1069 = icmp eq i32 %i.ia, 0
  br i1 %.not1069, label %.loopexit, label %.preheader1227

.preheader1227:                                   ; preds = %.loopexit1229, %.preheader1227
  %indvars.iv1291 = phi i64 [ %indvars.iv.next1292, %.preheader1227 ], [ %.11, %.loopexit1229 ] ; 2 uses
  %.131041 = phi i32 [ %i.jj, %.preheader1227 ], [ %.121040, %.loopexit1229 ] ; 2 uses
  %.21018 = phi i32 [ %i.jk, %.preheader1227 ], [ 0, %.loopexit1229 ]
  %i.jd = trunc nuw nsw i64 %indvars.iv1291 to i32
  %i.je = add i32 %i.ga, %i.jd
  %i.jf = zext i32 %i.je to i64
  %.val1136 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %.val1136, i64 %i.jf
  %.0.copyload.i1207 = load i8, ptr %i.jg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1207) #7, !srcloc !20
  %i.jh = zext i32 %.131041 to i64
  %.val1088 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ji = getelementptr inbounds nuw i8, ptr %.val1088, i64 %i.jh
  store i8 %.0.copyload.i1207, ptr %i.ji, align 1
  %indvars.iv.next1292 = add nuw nsw i64 %indvars.iv1291, 1
  %i.jj = add i32 %.131041, 1                     ; 2 uses
  %i.jk = add nuw nsw i32 %.21018, 1              ; 2 uses
  %.not1070 = icmp eq i32 %i.jk, %i.ia
  br i1 %.not1070, label %.loopexit, label %.preheader1227

bb.ai:                                            ; preds = %bb.s
  %i.jl = add i32 %.21024, 3
  %i.jm = zext nneg i32 %i.cb to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.q, %bb.ai
  %.141042 = phi i64 [ %i.jm, %bb.ai ], [ 0, %bb.q ]
  %.13 = phi i32 [ %i.da, %bb.ai ], [ %.01022, %bb.q ] ; 2 uses
  %.31019 = phi i32 [ %i.jl, %bb.ai ], [ 0, %bb.q ]
  %.not1075 = icmp eq i32 %i.bz, 0
  br i1 %.not1075, label %.loopexit1221, label %.preheader1220

.preheader1220:                                   ; preds = %bb.aj, %.preheader1220
  %indvars.iv1307 = phi i64 [ %indvars.iv.next1308, %.preheader1220 ], [ %.141042, %bb.aj ] ; 2 uses
  %.14 = phi i32 [ %i.jt, %.preheader1220 ], [ %.13, %bb.aj ] ; 3 uses
  %.1 = phi i32 [ %i.ju, %.preheader1220 ], [ 0, %bb.aj ]
  %i.jn = trunc nuw nsw i64 %indvars.iv1307 to i32
  %i.jo = add i32 %i.ag, %i.jn
  %i.jp = zext i32 %i.jo to i64
  %.val1135 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %.val1135, i64 %i.jp
  %.0.copyload.i1208 = load i8, ptr %i.jq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1208) #7, !srcloc !20
  %i.jr = zext i32 %.14 to i64
  %.val1087 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.js = getelementptr inbounds nuw i8, ptr %.val1087, i64 %i.jr
  store i8 %.0.copyload.i1208, ptr %i.js, align 1
  %indvars.iv.next1308 = add nuw nsw i64 %indvars.iv1307, 1
  %i.jt = add i32 %.14, 1                         ; 2 uses
  %i.ju = add nuw nsw i32 %.1, 1                  ; 2 uses
  %.not1076 = icmp eq i32 %i.ju, %i.bz
  br i1 %.not1076, label %.loopexit1221, label %.preheader1220

.loopexit1221:                                    ; preds = %.preheader1220, %bb.aj
  %.15 = phi i32 [ %.13, %bb.aj ], [ %i.jt, %.preheader1220 ]
  %.41020 = phi i32 [ %.31019, %bb.aj ], [ %.14, %.preheader1220 ]
  %i.jv = zext i32 %.15 to i64
  %.val1086 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.jw = getelementptr inbounds nuw i8, ptr %.val1086, i64 %i.jv
  store i8 46, ptr %i.jw, align 1
  %i.jx = add i32 %.41020, 2                      ; 3 uses
  br i1 %i.as, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %.loopexit1221
  %i.jy = sub i32 %i.ao, %.0.copyload.i1179
  %i.jz = and i32 %i.jy, 3                        ; 2 uses
  %.not1078 = icmp eq i32 %i.jz, 0
  br i1 %.not1078, label %.loopexit1219, label %.preheader1218

.preheader1218:                                   ; preds = %bb.ak, %.preheader1218
  %.161044 = phi i32 [ %i.kf, %.preheader1218 ], [ %i.jx, %bb.ak ] ; 2 uses
  %.16 = phi i32 [ %i.kh, %.preheader1218 ], [ 0, %bb.ak ]
  %.3 = phi i32 [ %i.kg, %.preheader1218 ], [ %.0.copyload.i1179, %bb.ak ] ; 2 uses
  %i.ka = add i32 %.3, %i.ag
  %i.kb = zext i32 %i.ka to i64
  %.val1134 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %.val1134, i64 %i.kb
  %.0.copyload.i1209 = load i8, ptr %i.kc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1209) #7, !srcloc !20
  %i.kd = zext i32 %.161044 to i64
  %.val1085 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1085, i64 %i.kd
  store i8 %.0.copyload.i1209, ptr %i.ke, align 1
  %i.kf = add i32 %.161044, 1                     ; 2 uses
  %i.kg = add i32 %.3, 1                          ; 2 uses
  %i.kh = add nuw nsw i32 %.16, 1                 ; 2 uses
  %.not1079 = icmp eq i32 %i.kh, %i.jz
  br i1 %.not1079, label %.loopexit1219, label %.preheader1218

.loopexit1219:                                    ; preds = %.preheader1218, %bb.ak
  %.171045 = phi i32 [ %i.jx, %bb.ak ], [ %i.kf, %.preheader1218 ] ; 2 uses
  %.4 = phi i32 [ %.0.copyload.i1179, %bb.ak ], [ %i.kg, %.preheader1218 ]
  %i.ki = sub i32 %i.ag, %.0.copyload.i1178
  %i.kj = add i32 %i.ki, %.0.copyload.i1179
  %i.kk = icmp ugt i32 %i.kj, -4
  br i1 %i.kk, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit1219, %.preheader
  %.181046 = phi i32 [ %i.lc, %.preheader ], [ %.171045, %.loopexit1219 ] ; 2 uses
  %.5 = phi i32 [ %i.ld, %.preheader ], [ %.4, %.loopexit1219 ] ; 2 uses
  %i.kl = add i32 %.5, %i.ag
  %i.km = zext i32 %i.kl to i64                   ; 4 uses
  %.val1133 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.kn = getelementptr inbounds nuw i8, ptr %.val1133, i64 %i.km
  %.0.copyload.i1210 = load i8, ptr %i.kn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1210) #7, !srcloc !20
  %i.ko = zext i32 %.181046 to i64                ; 4 uses
  %.val1084 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.kp = getelementptr inbounds nuw i8, ptr %.val1084, i64 %i.ko
  store i8 %.0.copyload.i1210, ptr %i.kp, align 1
  %.val1132 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.kq = getelementptr inbounds nuw i8, ptr %.val1132, i64 %i.km
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  %.0.copyload.i1211 = load i8, ptr %i.kr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1211) #7, !srcloc !20
  %.val1083 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ks = getelementptr inbounds nuw i8, ptr %.val1083, i64 %i.ko
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  store i8 %.0.copyload.i1211, ptr %i.kt, align 1
  %.val1131 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ku = getelementptr inbounds nuw i8, ptr %.val1131, i64 %i.km
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  %.0.copyload.i1212 = load i8, ptr %i.kv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1212) #7, !srcloc !20
  %.val1082 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.kw = getelementptr inbounds nuw i8, ptr %.val1082, i64 %i.ko
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  store i8 %.0.copyload.i1212, ptr %i.kx, align 1
  %.val1130 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ky = getelementptr inbounds nuw i8, ptr %.val1130, i64 %i.km
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 3
  %.0.copyload.i1213 = load i8, ptr %i.kz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1213) #7, !srcloc !20
  %.val1081 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.la = getelementptr inbounds nuw i8, ptr %.val1081, i64 %i.ko
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 3
  store i8 %.0.copyload.i1213, ptr %i.lb, align 1
  %i.lc = add i32 %.181046, 4                     ; 2 uses
  %i.ld = add i32 %.5, 4                          ; 2 uses
  %i.le = icmp slt i32 %i.ld, %i.ao
  br i1 %i.le, label %.preheader, label %.loopexit

.loopexit1235.loopexit:                           ; preds = %bb.o
  %i.lf = zext nneg i32 %i.ax to i64
  br label %.loopexit1235

.loopexit1235:                                    ; preds = %.loopexit1235.loopexit, %bb.m
  %.191047 = phi i64 [ 0, %bb.m ], [ %i.lf, %.loopexit1235.loopexit ]
  %.17 = phi i32 [ %.01022, %bb.m ], [ %i.bw, %.loopexit1235.loopexit ] ; 2 uses
  %.not1063 = icmp eq i32 %i.au, 0
  br i1 %.not1063, label %.loopexit1234, label %.preheader1233

.preheader1233:                                   ; preds = %.loopexit1235, %.preheader1233
  %indvars.iv1277 = phi i64 [ %indvars.iv.next1278, %.preheader1233 ], [ %.191047, %.loopexit1235 ] ; 2 uses
  %.18 = phi i32 [ %i.lm, %.preheader1233 ], [ %.17, %.loopexit1235 ] ; 2 uses
  %.51021 = phi i32 [ %i.ln, %.preheader1233 ], [ 0, %.loopexit1235 ]
  %i.lg = trunc nuw nsw i64 %indvars.iv1277 to i32
  %i.lh = add i32 %i.ag, %i.lg
  %i.li = zext i32 %i.lh to i64
  %.val1129 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.lj = getelementptr inbounds nuw i8, ptr %.val1129, i64 %i.li
  %.0.copyload.i1214 = load i8, ptr %i.lj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1214) #7, !srcloc !20
  %i.lk = zext i32 %.18 to i64
  %.val1080 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ll = getelementptr inbounds nuw i8, ptr %.val1080, i64 %i.lk
  store i8 %.0.copyload.i1214, ptr %i.ll, align 1
  %indvars.iv.next1278 = add nuw nsw i64 %indvars.iv1277, 1
  %i.lm = add i32 %.18, 1                         ; 2 uses
  %i.ln = add nuw nsw i32 %.51021, 1              ; 2 uses
  %.not1064 = icmp eq i32 %i.ln, %i.au
  br i1 %.not1064, label %.loopexit1234, label %.preheader1233

.loopexit1234:                                    ; preds = %.preheader1233, %.loopexit1235, %bb.l
  %.19 = phi i32 [ %.01022, %bb.l ], [ %.17, %.loopexit1235 ], [ %i.lm, %.preheader1233 ] ; 2 uses
  %i.lo = sub i32 %.0.copyload.i1179, %i.ao       ; 3 uses
  %i.lp = icmp slt i32 %i.lo, 1
  br i1 %i.lp, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %.loopexit1234
  %i.lq = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.19, i32 noundef 48, i32 noundef %i.lo) #7
  %i.lr = add i32 %i.lq, %i.lo
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader1227, %.preheader1222, %.preheader, %.loopexit1234, %.loopexit1219, %.loopexit1221, %.loopexit1229, %.loopexit1231, %bb.z, %.loopexit1224, %.loopexit1226, %bb.al, %bb.aa
  %.21 = phi i32 [ %i.jx, %.loopexit1221 ], [ %.171045, %.loopexit1219 ], [ %.19, %.loopexit1234 ], [ %.31031, %.loopexit1226 ], [ %.51033, %.loopexit1224 ], [ %i.ez, %.preheader1222 ], [ %i.ft, %bb.z ], [ %i.fw, %bb.aa ], [ %i.hy, %.loopexit1231 ], [ %.121040, %.loopexit1229 ], [ %i.lc, %.preheader ], [ %i.lr, %bb.al ], [ %i.jj, %.preheader1227 ] ; 2 uses
  %i.ls = zext i32 %.21 to i64
  %.val = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.lt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ls
  store i8 0, ptr %i.lt, align 1
  %.val1122 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.lu = getelementptr inbounds nuw i8, ptr %.val1122, i64 %i.h
  %.0.copyload.i1215 = load i32, ptr %i.lu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1215) #7, !srcloc !19
  tail call void @w2c_hermes_g_freedtoa(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1215, i32 noundef %i.ag) #7
  %.val1121 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.lv = getelementptr inbounds nuw i8, ptr %.val1121, i64 %i.h
  %.0.copyload.i1216 = load i32, ptr %i.lv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1216) #7, !srcloc !19
  %i.lw = sub i32 %.21, %2
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %bb.h, %bb.f, %bb.d, %bb.b
  %.20 = phi i32 [ %i.e, %bb.b ], [ %i.e, %bb.d ], [ %i.e, %bb.f ], [ %i.e, %bb.h ], [ %.0.copyload.i1216, %.loopexit ]
  %.0 = phi i32 [ 3, %bb.b ], [ 1, %bb.d ], [ 8, %bb.f ], [ 9, %bb.h ], [ %i.lw, %.loopexit ]
  tail call void @w2c_hermes_dalloc_done(ptr noundef nonnull %0, i32 noundef %.20) #7
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.0
}

declare i32 @w2c_hermes_dtoa_alloc_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_g_dtoa(ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_g_freedtoa(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_dalloc_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3ALReference0x3A0x3AemitStore0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = add i32 %i.b, -32                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 17 uses
  %i.e = zext i32 %1 to i64                       ; 8 uses
  %.val148 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val148, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.val147 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val147, i64 %i.e
  %.0.copyload.i156 = load i32, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i156) #7, !srcloc !19
  switch i32 %.0.copyload.i156, label %bb.i [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %.0.copyload.i, 4
  %.val146 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val146, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.0.copyload.i157 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i157) #7, !srcloc !19
  %.val145 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val145, i64 %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.0.copyload.i158 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i158) #7, !srcloc !19
  %i.n = tail call i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateStorePropertyInst0x28hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.i, i32 noundef %2, i32 noundef %.0.copyload.i157, i32 noundef %.0.copyload.i158) #7 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.val144 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val144, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.0.copyload.i159 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i159) #7, !srcloc !19
  %.val150 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val150, i64 %i.e
end_hunk_1
