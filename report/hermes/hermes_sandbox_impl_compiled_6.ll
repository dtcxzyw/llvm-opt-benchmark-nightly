Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_6?download=true
inline.NumInlined: 8639
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aoperator0x3C0x3C0x28llvh0x3A0x3Aformat_object_base0x20const0x260x29:bb.a

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i32 [ %.0.copyload.i247, %bb.k ], [ %.0.copyload.i245, %bb.j ] ; 3 uses
  %i.bs = icmp eq i32 %.1, %.0
  br i1 %i.bs, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val228 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %.val228, i64 %i.bg
  %.0.copyload.i248 = load i32, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i248) #8, !srcloc !14
  %i.bu = add i32 %.0.copyload.i248, %.0
  %i.bv = sub i32 %.1, %.0
  %i.bw = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.bu, i32 noundef 0, i32 noundef %i.bv) #8 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %bb.m
  %.val237 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %.val237, i64 %i.bd
  store i32 %.1, ptr %i.bx, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n
  %i.by = shl i32 %.1, 1
  %.val227 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %.val227, i64 %i.bg
  %.0.copyload.i249 = load i32, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i249) #8, !srcloc !14
  %.val226 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %.val226, i64 %.pre260
  %.0.copyload.i250 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i250) #8, !srcloc !14
  %i.cb = zext i32 %.0.copyload.i250 to i64
  %.val225 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cc = getelementptr inbounds nuw i8, ptr %.val225, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.0.copyload.i251 = load i32, ptr %i.cd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i251) #8, !srcloc !14
  %i.ce = load i32, ptr %i.bj, align 4, !tbaa !21
  %i.cf = icmp ult i32 %.0.copyload.i251, %i.ce
  br i1 %i.cf, label %bb.p, label %.critedge223, !prof !22

bb.p:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr %i.bk, align 8, !tbaa !23
  %i.ch = zext i32 %.0.copyload.i251 to i64
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.ch ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !25 ; 2 uses
  %.not221 = icmp eq ptr %i.ck, null
  br i1 %.not221, label %.critedge223, label %bb.q, !prof !26

bb.q:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !28 ; 4 uses
  %i.cm = icmp eq ptr %i.bb, %i.cl
  br i1 %i.cm, label %func_types_eq.exit255.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = icmp ne ptr %i.cl, null
  %or.cond.i252 = and i1 %i.bl, %i.cn
  br i1 %or.cond.i252, label %func_types_eq.exit255, label %.critedge223, !prof !29

func_types_eq.exit255:                            ; preds = %bb.r
  %i.co = load i128, ptr %i.bb, align 1
  %i.cp = load i128, ptr %i.cl, align 1
  %i.cq = xor i128 %i.co, %i.cp
  %i.cr = getelementptr i8, ptr %i.bb, i64 16
  %i.cs = getelementptr i8, ptr %i.cl, i64 16
  %i.ct = load i128, ptr %i.cr, align 1
  %i.cu = load i128, ptr %i.cs, align 1
  %i.cv = xor i128 %i.ct, %i.cu
  %i.cw = or i128 %i.cq, %i.cv
  %i.cx = icmp ne i128 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %.not.i254 = icmp eq i32 %i.cy, 0
  br i1 %.not.i254, label %func_types_eq.exit255.thread, label %.critedge223, !prof !32

.critedge223:                                     ; preds = %bb.r, %bb.p, %bb.o, %func_types_eq.exit255
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit255.thread:                     ; preds = %bb.q, %func_types_eq.exit255
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !31
  %i.db = tail call i32 %i.ck(ptr noundef %i.da, i32 noundef %2, i32 noundef %.0.copyload.i249, i32 noundef %.1) #8 ; 3 uses
  %i.dc = icmp ule i32 %.1, %i.db
  %i.dd = zext i1 %i.dc to i32
  %i.de = add i32 %i.db, %i.dd
  %i.df = icmp slt i32 %i.db, 0
  %i.dg = select i1 %i.df, i32 %i.by, i32 %i.de   ; 3 uses
  %i.dh = icmp ult i32 %.1, %i.dg
  br i1 %i.dh, label %bb.h, label %bb.s

bb.s:                                             ; preds = %func_types_eq.exit255.thread
  %.val224 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %.val224, i64 %i.bg
  %.0.copyload.i256 = load i32, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i256) #8, !srcloc !14
  %i.dj = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i256, i32 noundef %i.dg) ; 0 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bg
  %.0.copyload.i257 = load i32, ptr %i.dk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i257) #8, !srcloc !14
  %i.dl = icmp eq i32 %.0.copyload.i257, %i.bf
  br i1 %i.dl, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i257) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.f
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Ahash_value0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !guid !87 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.val13, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0.copyload.i14 = load i32, ptr %i.e, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i14) #8, !srcloc !14
  %i.f = add i32 %.0.copyload.i14, %.0.copyload.i
  %i.g = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3Cis_hashable_data0x3Cunsigned0x20int0x20const0x3E0x3A0x3Avalue0x2C0x20llvh0x3A0x3Ahash_code0x3E0x3A0x3Atype0x20llvh0x3A0x3Ahashing0x3A0x3Adetail0x3A0x3Ahash_combine_range_impl0x3Cunsigned0x20int0x20const0x3E0x28unsigned0x20int0x20const0x2A0x2C0x20unsigned0x20int0x20const0x2A0x29(ptr noundef %0, i32 noundef %.0.copyload.i, i32 noundef %i.f) #8
  ret i32 %i.g
}

declare i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3Cis_hashable_data0x3Cunsigned0x20int0x20const0x3E0x3A0x3Avalue0x2C0x20llvh0x3A0x3Ahash_code0x3E0x3A0x3Atype0x20llvh0x3A0x3Ahashing0x3A0x3Adetail0x3A0x3Ahash_combine_range_impl0x3Cunsigned0x20int0x20const0x3E0x28unsigned0x20int0x20const0x2A0x2C0x20unsigned0x20int0x20const0x2A0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcNegate0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !88 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i32 %2, 3
  br i1 %i.a, label %bb.c, label %.loopexit210

bb.c:                                             ; preds = %bb.b
  %i.b = and i32 %2, -4                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.d = add i32 %1, 8
  %i.e = add i32 %1, 16
  %i.f = add i32 %1, 24
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.g = trunc nuw i64 %indvars.iv to i32
  %i.h = shl i32 %i.g, 3                          ; 4 uses
  %i.i = add i32 %i.h, %1
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %.val200 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.j
  %.0.copyload.i = load i64, ptr %i.k, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #8, !srcloc !33
  %i.l = xor i64 %.0.copyload.i, -1
  %.val192 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.j
  store i64 %i.l, ptr %i.m, align 1
  %i.n = add i32 %i.d, %i.h
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.val199 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.o
  %.0.copyload.i201 = load i64, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i201) #8, !srcloc !33
  %i.q = xor i64 %.0.copyload.i201, -1
  %.val191 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.o
  store i64 %i.q, ptr %i.r, align 1
  %i.s = add i32 %i.e, %i.h
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.val198 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.t
  %.0.copyload.i202 = load i64, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i202) #8, !srcloc !33
  %i.v = xor i64 %.0.copyload.i202, -1
  %.val190 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.t
  store i64 %i.v, ptr %i.w, align 1
  %i.x = add i32 %i.f, %i.h
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %.val197 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.y
  %.0.copyload.i203 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i203) #8, !srcloc !33
  %i.aa = xor i64 %.0.copyload.i203, -1
  %.val189 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.y
  store i64 %i.aa, ptr %i.ab, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars212 = trunc i64 %indvars.iv.next to i32
  %.not180 = icmp eq i32 %i.b, %indvars212
  br i1 %.not180, label %.loopexit210, label %bb.d

.loopexit210:                                     ; preds = %bb.d, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.b, %bb.d ]
  %i.ac = and i32 %2, 3                           ; 2 uses
  %.not181 = icmp eq i32 %i.ac, 0
  br i1 %.not181, label %.loopexit209, label %.preheader208

.preheader208:                                    ; preds = %.loopexit210
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader208, %bb.e
  %.2 = phi i32 [ %3, %bb.e ], [ %.1, %.preheader208 ] ; 2 uses
  %.0 = phi i32 [ %i.ak, %bb.e ], [ 0, %.preheader208 ]
  %i.ae = shl i32 %.2, 3
  %i.af = add i32 %i.ae, %1
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.val196 = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.ag
  %.0.copyload.i204 = load i64, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i204) #8, !srcloc !33
  %i.ai = xor i64 %.0.copyload.i204, -1
  %.val188 = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.ag
  store i64 %i.ai, ptr %i.aj, align 1
  %3 = add nsw i32 %.2, 1
  %i.ak = add nuw nsw i32 %.0, 1                  ; 2 uses
  %.not182 = icmp eq i32 %i.ak, %i.ac
  br i1 %.not182, label %.loopexit209, label %bb.e

.loopexit209:                                     ; preds = %bb.e, %.loopexit210
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.am = zext i32 %1 to i64                      ; 3 uses
  %.val195 = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.am
  %.0.copyload.i205 = load i64, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i205) #8, !srcloc !33
  %i.ao = add i64 %.0.copyload.i205, 1            ; 2 uses
  %.val187 = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.am
  store i64 %i.ao, ptr %i.ap, align 1
  %i.aq = icmp ne i32 %2, 1
  %.not183 = icmp eq i64 %i.ao, 0
  %or.cond = and i1 %i.aq, %.not183
  br i1 %or.cond, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.loopexit209
  %i.ar = add nuw nsw i64 %i.am, 8                ; 2 uses
  %.val194 = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.ar
  %.0.copyload.i206 = load i64, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i206) #8, !srcloc !33
  %i.at = add i64 %.0.copyload.i206, 1            ; 2 uses
  %.val186 = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.ar
  store i64 %i.at, ptr %i.au, align 1
  %.not184 = icmp eq i64 %i.at, 0
  br i1 %.not184, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.f
  %i.av = zext i32 %2 to i64
  %i.aw = icmp eq i32 %2, 2
  br i1 %i.aw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.lr.ph
  %indvars.iv.next215220 = phi i64 [ %indvars.iv.next215.a, %.lr.ph ], [ 2, %.preheader.preheader ] ; 2 uses
  %i.ax = trunc nuw i64 %indvars.iv.next215220 to i32
  %i.ay = shl i32 %i.ax, 3
  %i.az = add i32 %i.ay, %1
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %.val193 = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.ba
  %.0.copyload.i207 = load i64, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i207) #8, !srcloc !33
  %i.bc = add i64 %.0.copyload.i207, 1            ; 2 uses
  %.val = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ba
  store i64 %i.bc, ptr %i.bd, align 1
  %.not185 = icmp ne i64 %i.bc, 0
  %indvars.iv.next215.a = add nuw nsw i64 %indvars.iv.next215220, 1 ; 2 uses
  %i.be = icmp eq i64 %indvars.iv.next215.a, %i.av
  %or.cond221 = select i1 %.not185, i1 true, i1 %i.be
  br i1 %or.cond221, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader.preheader, %bb.f, %.loopexit209, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoUInt32_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !89 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoNumber_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.c, i32 noundef %2, i32 noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = zext i32 %i.c to i64                     ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %1 to i64
  %.val67 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.g
  store i32 0, ptr %i.h, align 1
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.val68 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %.val68, i64 %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.copyload.i70 = load double, ptr %i.j, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i70) #8, !srcloc !35
  %i.k = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i70)
  %i.l = fcmp olt double %i.k, f0x41E0000000000000
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = fcmp ule double %.0.copyload.i70, f0xC1E0000000200000
  %i.n = fcmp uge double %.0.copyload.i70, f0x41E0000000000000
  %.not65 = or i1 %i.m, %i.n
  br i1 %.not65, label %bb.e, label %bb.f, !prof !26

bb.e:                                             ; preds = %bb.d
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = fptosi double %.0.copyload.i70 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ -2147483648, %bb.c ] ; 2 uses
  %i.p = sitofp i32 %.0 to double
  %i.q = fcmp une double %.0.copyload.i70, %i.p
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @w2c_hermes_hermes0x3A0x3AtruncateToInt32SlowPath0x28double0x29(ptr noundef nonnull %0, double noundef %.0.copyload.i70) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.061 = phi i32 [ %i.r, %bb.h ], [ %.0, %bb.g ]
  %i.s = zext i32 %1 to i64                       ; 2 uses
  %.val66 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %.val66, i64 %i.s
  store i32 1, ptr %i.t, align 1
  %i.u = uitofp i32 %.061 to double
  %.val69 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val69, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store double %i.u, ptr %i.w, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3AtruncateToInt32SlowPath0x28double0x29(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3Ainsert_imp_big0x28void0x20const0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !90 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 27 uses
  %i.b = zext i32 %2 to i64                       ; 6 uses
  %i.c = add nuw nsw i64 %i.b, 8                  ; 3 uses
  %.val413 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = mul i32 %.0.copyload.i, 3
  %i.f = add nuw nsw i64 %i.b, 12                 ; 3 uses
  %.val412 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.f
  %.0.copyload.i422 = load i32, ptr %i.g, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i422) #8, !srcloc !14
  %i.h = add nuw nsw i64 %i.b, 16                 ; 3 uses
  %.val411 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.h
  %.0.copyload.i423 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i423) #8, !srcloc !14
  %i.j = sub i32 %.0.copyload.i422, %.0.copyload.i423
  %i.k = shl i32 %i.j, 2
  %.not = icmp ugt i32 %i.e, %i.k
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @llvm.umax.i32(i32 %.0.copyload.i, i32 64)
  %i.m = shl i32 %i.l, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = sub i32 %.0.copyload.i, %.0.copyload.i422
  %i.o = lshr i32 %.0.copyload.i, 3
  %.not382 = icmp ult i32 %i.n, %i.o
  br i1 %.not382, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0370 = phi i32 [ %i.m, %bb.b ], [ %.0.copyload.i, %bb.c ] ; 3 uses
  %i.p = add nuw nsw i64 %i.b, 4                  ; 3 uses
  %.val410 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.p
  %.0.copyload.i424 = load i32, ptr %i.q, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i424) #8, !srcloc !14
  %.val409 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.b
  %.0.copyload.i425 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i425) #8, !srcloc !14
  %.not391 = icmp eq i32 %.0.copyload.i424, %.0.copyload.i425 ; 2 uses
  %i.s = select i1 %.not391, i32 12, i32 8
  %i.t = add i32 %i.s, %2
  %i.u = zext i32 %i.t to i64
  %.val408 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.u
  %.0.copyload.i426 = load i32, ptr %i.v, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i426) #8, !srcloc !14
  %i.w = shl i32 %.0370, 2                        ; 2 uses
  %i.x = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef %i.w) #8 ; 3 uses
  %.not383 = icmp eq i32 %i.x, 0
  br i1 %.not383, label %bb.e, label %bb.f

end_hunk_0
begin_hunk_1_@w2c_hermes_llvh0x3A0x3AConvertUTF8toUTF160x28unsigned0x20char0x20const0x2A0x2A0x2C0x20unsigned0x20char0x20const0x2A0x2C0x20unsigned0x20short0x2A0x2A0x2C0x20unsigned0x20short0x2A0x2C0x20llvh0x3A0x3AConversionFlags0x29:bb.a
  %i.bt = trunc i32 %i.bb to i16
  %i.bu = and i16 %i.bt, 1023
  %i.bv = or disjoint i16 %i.bu, -9216
  %i.bw = getelementptr inbounds nuw i8, ptr %.val292, i64 %i.bs
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store i16 %i.bv, ptr %i.bx, align 1
  %i.by = add nuw nsw i32 %i.bb, 67043328
  %i.bz = lshr i32 %i.by, 10
  %.val291 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ca = trunc i32 %i.bz to i16
  %i.cb = add nuw nsw i16 %i.ca, -10240
  %i.cc = getelementptr inbounds nuw i8, ptr %.val291, i64 %i.bs
  store i16 %i.cb, ptr %i.cc, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u, %bb.q
  %.sink = phi i32 [ 4, %bb.x ], [ 2, %bb.u ], [ 2, %bb.q ]
  %i.cd = add i32 %.0261, %.sink                  ; 2 uses
  %i.ce = icmp ugt i32 %2, %.6
  br i1 %i.ce, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.b, %bb.c, %bb.a, %bb.w, %bb.t, %bb.p, %bb.l
  %.7 = phi i32 [ %.0.copyload.i295, %bb.a ], [ %i.bm, %bb.t ], [ %i.bg, %bb.p ], [ %i.aw, %bb.l ], [ %i.br, %bb.w ], [ %.6, %bb.y ], [ %.0263, %bb.b ], [ %.0263, %bb.c ]
  %.1262 = phi i32 [ %.0.copyload.i, %bb.a ], [ %.0261, %bb.t ], [ %.0261, %bb.p ], [ %.0261, %bb.l ], [ %.0261, %bb.w ], [ %i.cd, %bb.y ], [ %.0261, %bb.b ], [ %.0261, %bb.c ]
  %.0253 = phi i32 [ 0, %bb.a ], [ 3, %bb.t ], [ 3, %bb.p ], [ 2, %bb.l ], [ 2, %bb.w ], [ 0, %bb.y ], [ 1, %bb.b ], [ 3, %bb.c ]
  %.val289 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %.val289, i64 %i.d
  store i32 %.7, ptr %i.cf, align 1
  %.val288 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %.val288, i64 %i.b
  store i32 %.1262, ptr %i.cg, align 1
  ret i32 %.0253
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_llvh0x3A0x3AisLegalUTF80x28unsigned0x20char0x20const0x2A0x2C0x20int0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !187 {
bb.a:
  %i.a = add i32 %2, %1                           ; 3 uses
  switch i32 %2, label %bb.m [
    i32 1, label %bb.j
    i32 2, label %bb.d
    i32 3, label %bb.c
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %i.a, -1                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = zext i32 %i.b to i64
  %.val86 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %.val86, i64 %i.d
  %.0.copyload.i = load i8, ptr %i.e, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #8, !srcloc !34
  %i.f = icmp sgt i8 %.0.copyload.i, -65
  br i1 %i.f, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.079 = phi i32 [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  %i.g = add i32 %.079, -1                        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = zext i32 %i.g to i64
  %.val85 = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val85, i64 %i.i
  %.0.copyload.i87 = load i8, ptr %i.j, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i87) #8, !srcloc !34
  %i.k = icmp sgt i8 %.0.copyload.i87, -65
  br i1 %i.k, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.1 = phi i32 [ %i.a, %bb.a ], [ %i.g, %bb.c ]
  %i.l = add i32 %.1, -1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = zext i32 %i.l to i64
  %.val84 = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %.val84, i64 %i.n
  %.0.copyload.i88 = load i8, ptr %i.o, align 1   ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88) #8, !srcloc !34
  %i.p = icmp sgt i8 %.0.copyload.i88, -65
  br i1 %i.p, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = zext i32 %1 to i64
  %.val83 = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val83, i64 %i.q
  %.0.copyload.i89 = load i8, ptr %i.r, align 1   ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i89) #8, !srcloc !13
  switch i8 %.0.copyload.i89, label %bb.k [
    i8 -32, label %bb.f
    i8 -12, label %bb.i
    i8 -16, label %bb.h
    i8 -19, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = icmp samesign ugt i8 %.0.copyload.i88, -97
  br i1 %i.s, label %bb.l, label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.t = icmp samesign ult i8 %.0.copyload.i88, -96
  br i1 %i.t, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.e
  %i.u = icmp samesign ugt i8 %.0.copyload.i88, -113
  br i1 %i.u, label %bb.l, label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.v = icmp samesign ult i8 %.0.copyload.i88, -112
  br i1 %i.v, label %bb.l, label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = zext i32 %1 to i64
  %.val = load ptr, ptr %i.w, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %i.x
  %.0.copyload.i90 = load i8, ptr %i.y, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i90) #8, !srcloc !13
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j
  %.080.in = phi i8 [ %.0.copyload.i90, %bb.j ], [ %.0.copyload.i89, %bb.e ] ; 2 uses
  %.080 = zext i8 %.080.in to i32
  %i.z = icmp slt i8 %.080.in, -62
  br i1 %i.z, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.h, %bb.g, %bb.f
  %.181 = phi i32 [ %.080, %bb.k ], [ 224, %bb.f ], [ 244, %bb.i ], [ 240, %bb.h ], [ 237, %bb.g ]
  %i.aa = icmp samesign ult i32 %.181, 245
  %i.ab = zext i1 %i.aa to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a, %bb.l
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.k ], [ %i.ab, %bb.l ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcComplement0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !188 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i32 %2, 3
  br i1 %i.a, label %bb.c, label %.loopexit135

bb.c:                                             ; preds = %bb.b
  %i.b = and i32 %2, -4                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.d = add i32 %1, 8
  %i.e = add i32 %1, 16
  %i.f = add i32 %1, 24
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.g = trunc nuw i64 %indvars.iv to i32
  %i.h = shl i32 %i.g, 3                          ; 4 uses
  %i.i = add i32 %i.h, %1
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %.val130 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %.val130, i64 %i.j
  %.0.copyload.i = load i64, ptr %i.k, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #8, !srcloc !33
  %i.l = xor i64 %.0.copyload.i, -1
  %.val125 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %.val125, i64 %i.j
  store i64 %i.l, ptr %i.m, align 1
  %i.n = add i32 %i.d, %i.h
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.val129 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.val129, i64 %i.o
  %.0.copyload.i131 = load i64, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i131) #8, !srcloc !33
  %i.q = xor i64 %.0.copyload.i131, -1
  %.val124 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val124, i64 %i.o
  store i64 %i.q, ptr %i.r, align 1
  %i.s = add i32 %i.e, %i.h
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.val128 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.val128, i64 %i.t
  %.0.copyload.i132 = load i64, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i132) #8, !srcloc !33
  %i.v = xor i64 %.0.copyload.i132, -1
  %.val123 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val123, i64 %i.t
  store i64 %i.v, ptr %i.w, align 1
  %i.x = add i32 %i.f, %i.h
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %.val127 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %.val127, i64 %i.y
  %.0.copyload.i133 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i133) #8, !srcloc !33
  %i.aa = xor i64 %.0.copyload.i133, -1
  %.val122 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %.val122, i64 %i.y
  store i64 %i.aa, ptr %i.ab, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars137 = trunc i64 %indvars.iv.next to i32
  %.not119 = icmp eq i32 %i.b, %indvars137
  br i1 %.not119, label %.loopexit135, label %bb.d

.loopexit135:                                     ; preds = %bb.d, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.b, %bb.d ]
  %i.ac = and i32 %2, 3                           ; 2 uses
  %.not120 = icmp eq i32 %i.ac, 0
  br i1 %.not120, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit135
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  %.2 = phi i32 [ %3, %bb.e ], [ %.1, %.preheader ] ; 2 uses
  %.0116 = phi i32 [ %i.ak, %bb.e ], [ 0, %.preheader ]
  %i.ae = shl i32 %.2, 3
  %i.af = add i32 %i.ae, %1
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.val126 = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.val126, i64 %i.ag
  %.0.copyload.i134 = load i64, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i134) #8, !srcloc !33
  %i.ai = xor i64 %.0.copyload.i134, -1
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ag
  store i64 %i.ai, ptr %i.aj, align 1
  %3 = add nsw i32 %.2, 1
  %i.ak = add nuw nsw i32 %.0116, 1               ; 2 uses
  %.not121 = icmp eq i32 %i.ak, %i.ac
  br i1 %.not121, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.e, %.loopexit135, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3Anegate0x280x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 !guid !189 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 30 uses
  %i.b = zext i32 %1 to i64                       ; 10 uses
  %i.c = add nuw nsw i64 %i.b, 8                  ; 2 uses
  %.val312 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.val312, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = icmp ult i32 %.0.copyload.i, 65
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val336 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val336, i64 %i.b
  %.0.copyload.i337 = load i64, ptr %i.f, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i337) #8, !srcloc !33
  %i.g = xor i64 %.0.copyload.i337, -1
  %i.h = sub nsw i32 0, %.0.copyload.i
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i64 -1, %i.j
  %i.l = and i64 %i.k, %i.g
  %.val324 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %.val324, i64 %i.b
  store i64 %i.l, ptr %i.m, align 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.n = zext i32 %.0.copyload.i to i64
  %i.o = add nuw nsw i64 %i.n, 63
  %i.p = lshr i64 %i.o, 6                         ; 2 uses
  %i.q = trunc nuw nsw i64 %i.p to i32            ; 4 uses
  %i.r = and i32 %i.q, 3                          ; 2 uses
  %.val311 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.b
  %.0.copyload.i338 = load i32, ptr %i.s, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i338) #8, !srcloc !14
  %i.t = add nsw i32 %i.q, -4
  %i.u = icmp ult i32 %i.t, -3
  br i1 %i.u, label %bb.d, label %.loopexit356

bb.d:                                             ; preds = %bb.c
  %i.v = and i32 %i.q, 134217724
  %i.w = add i32 %.0.copyload.i338, 8
  %i.x = add i32 %.0.copyload.i338, 16
  %i.y = add i32 %.0.copyload.i338, 24
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.z = trunc nuw i64 %indvars.iv to i32
  %i.aa = shl i32 %i.z, 3                         ; 4 uses
  %i.ab = add i32 %i.aa, %.0.copyload.i338
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %.val335 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.ac
  %.0.copyload.i339 = load i64, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i339) #8, !srcloc !33
  %i.ae = xor i64 %.0.copyload.i339, -1
  %.val323 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %.val323, i64 %i.ac
  store i64 %i.ae, ptr %i.af, align 1
  %i.ag = add i32 %i.w, %i.aa
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %.val334 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %.val334, i64 %i.ah
  %.0.copyload.i340 = load i64, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i340) #8, !srcloc !33
  %i.aj = xor i64 %.0.copyload.i340, -1
  %.val322 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %.val322, i64 %i.ah
  store i64 %i.aj, ptr %i.ak, align 1
  %i.al = add i32 %i.x, %i.aa
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %.val333 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %.val333, i64 %i.am
  %.0.copyload.i341 = load i64, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i341) #8, !srcloc !33
  %i.ao = xor i64 %.0.copyload.i341, -1
  %.val321 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %.val321, i64 %i.am
  store i64 %i.ao, ptr %i.ap, align 1
  %i.aq = add i32 %i.y, %i.aa
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %.val332 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.ar
  %.0.copyload.i342 = load i64, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i342) #8, !srcloc !33
  %i.at = xor i64 %.0.copyload.i342, -1
  %.val320 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %.val320, i64 %i.ar
  store i64 %i.at, ptr %i.au, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars358 = trunc i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.v, %indvars358
  br i1 %.not, label %.loopexit356.loopexit, label %bb.e

.loopexit356.loopexit:                            ; preds = %bb.e
  %i.av = and i64 %i.p, 134217724
  br label %.loopexit356

.loopexit356:                                     ; preds = %.loopexit356.loopexit, %bb.c
  %.1296 = phi i64 [ 0, %bb.c ], [ %i.av, %.loopexit356.loopexit ]
  %.not303 = icmp eq i32 %i.r, 0
  br i1 %.not303, label %.loopexit355, label %.preheader354

.preheader354:                                    ; preds = %.loopexit356, %.preheader354
  %indvars.iv360 = phi i64 [ %indvars.iv.next361, %.preheader354 ], [ %.1296, %.loopexit356 ] ; 2 uses
  %.0293 = phi i32 [ %i.bc, %.preheader354 ], [ 0, %.loopexit356 ]
  %indvars.iv360.tr = trunc nuw nsw i64 %indvars.iv360 to i32
  %i.aw = shl nuw nsw i32 %indvars.iv360.tr, 3
  %i.ax = add i32 %i.aw, %.0.copyload.i338
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %.val331 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %.val331, i64 %i.ay
  %.0.copyload.i343 = load i64, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i343) #8, !srcloc !33
  %i.ba = xor i64 %.0.copyload.i343, -1
  %.val319 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.val319, i64 %i.ay
  store i64 %i.ba, ptr %i.bb, align 1
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1
  %i.bc = add nuw nsw i32 %.0293, 1               ; 2 uses
  %.not304 = icmp eq i32 %i.bc, %i.r
  br i1 %.not304, label %.loopexit355, label %.preheader354

.loopexit355:                                     ; preds = %.preheader354, %.loopexit356
  %.val310 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %.val310, i64 %i.b
  %.0.copyload.i344 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i344) #8, !srcloc !14
  %i.be = shl nuw nsw i32 %i.q, 3
  %i.bf = add nsw i32 %i.be, -8
  %i.bg = add i32 %i.bf, %.0.copyload.i344
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %.val330 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %.val330, i64 %i.bh
  %.0.copyload.i345 = load i64, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i345) #8, !srcloc !33
  %i.bj = sub i32 0, %.0.copyload.i
  %i.bk = and i32 %i.bj, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = lshr i64 -1, %i.bl
  %i.bn = and i64 %.0.copyload.i345, %i.bm
  %.val318 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %.val318, i64 %i.bh
  store i64 %i.bn, ptr %i.bo, align 1
  %.val309 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.c
  %.0.copyload.i346 = load i32, ptr %i.bp, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i346) #8, !srcloc !14
  %i.bq = icmp ugt i32 %.0.copyload.i346, 64
  br i1 %i.bq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit355, %bb.b
  %.0294 = phi i32 [ %.0.copyload.i, %bb.b ], [ %.0.copyload.i346, %.loopexit355 ]
  %.val329 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %.val329, i64 %i.b
  %.0.copyload.i347 = load i64, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i347) #8, !srcloc !33
  %i.bs = add i64 %.0.copyload.i347, 1            ; 2 uses
  %.val317 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %.val317, i64 %i.b
  store i64 %i.bs, ptr %i.bt, align 1
  br label %bb.i

bb.g:                                             ; preds = %.loopexit355
  %.val308 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %.val308, i64 %i.b
  %.0.copyload.i348 = load i32, ptr %i.bu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i348) #8, !srcloc !14
  %i.bv = zext i32 %.0.copyload.i348 to i64       ; 3 uses
  %.val328 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %.val328, i64 %i.bv
  %.0.copyload.i349 = load i64, ptr %i.bw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i349) #8, !srcloc !33
  %i.bx = add i64 %.0.copyload.i349, 1            ; 2 uses
  %.val316 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %.val316, i64 %i.bv
  store i64 %i.bx, ptr %i.by, align 1
  %i.bz = zext i32 %.0.copyload.i346 to i64
  %i.ca = add nuw nsw i64 %i.bz, 63
  %i.cb = lshr i64 %i.ca, 6                       ; 3 uses
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %.not305 = icmp eq i64 %i.bx, 0
  br i1 %.not305, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.cd = add nuw nsw i64 %i.bv, 8                ; 2 uses
  %.val327 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.val327, i64 %i.cd
end_hunk_1
