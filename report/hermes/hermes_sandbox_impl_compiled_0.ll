Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3Arelease_hermes_runtime0x28HermesABIRuntime0x2A0x29:bb.a

bb.q:                                             ; preds = %bb.p, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3Aget_and_clear_js_error_value0x28HermesABIRuntime0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = zext i32 %2 to i64
  %i.c = add nuw nsw i64 %i.b, 4                  ; 2 uses
  %.val31 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %.val31, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %i.e = zext i32 %.0.copyload.i to i64           ; 2 uses
  %.val34 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %.val34, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 712
  %.0.copyload.i35 = load i64, ptr %i.g, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i35) #16, !srcloc !45
  %.mask = and i64 %.0.copyload.i35, -140737488355328
  %i.h = icmp eq i64 %.mask, -1970324836974592
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %1 to i64
  %.val32 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %.val32, i64 %i.i
  store i32 0, ptr %i.j, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AcreateValue0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i64 noundef %.0.copyload.i35)
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.c
  %.0.copyload.i36 = load i32, ptr %i.k, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i36) #16, !srcloc !22
  %.pre = zext i32 %.0.copyload.i36 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %.pre, %bb.c ], [ %i.e, %bb.b ]
  %.val33 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %.val33, i64 %.pre-phi
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 712
  store i64 -1970324836974592, ptr %i.m, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3Aget_and_clear_native_exception_message0x28HermesABIRuntime0x2A0x2C0x20HermesABIGrowableBuffer0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 23 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %i.c = add nuw nsw i64 %i.b, 96                 ; 5 uses
  %.val253 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %.val253, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %i.e = zext i32 %2 to i64                       ; 4 uses
  %i.f = add nuw nsw i64 %i.e, 8                  ; 2 uses
  %.val252 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %.val252, i64 %i.f
  %.0.copyload.i266 = load i32, ptr %i.g, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i266) #16, !srcloc !22
  %i.h = add nuw nsw i64 %i.b, 100                ; 4 uses
  %.val251 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %.val251, i64 %i.h
  %.0.copyload.i267 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i267) #16, !srcloc !22
  %i.j = add nuw nsw i64 %i.b, 107                ; 5 uses
  %.val260 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %.val260, i64 %i.j
  %.0.copyload.i268 = load i8, ptr %i.k, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i268) #16, !srcloc !33
  %i.l = zext i8 %.0.copyload.i268 to i32
  %.not = icmp sgt i8 %.0.copyload.i268, -1       ; 2 uses
  %i.m = select i1 %.not, i32 %i.l, i32 %.0.copyload.i267 ; 5 uses
  %i.n = icmp ult i32 %.0.copyload.i266, %i.m
  br i1 %i.n, label %bb.b, label %.critedge242

bb.b:                                             ; preds = %bb.a
  %.val250 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.val250, i64 %i.e
  %.0.copyload.i269 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i269) #16, !srcloc !22
  %i.p = zext i32 %.0.copyload.i269 to i64
  %.val249 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.val249, i64 %i.p
  %.0.copyload.i270 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i270) #16, !srcloc !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !23
  %i.t = icmp ult i32 %.0.copyload.i270, %i.s
  br i1 %i.t, label %bb.c, label %.critedge, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = zext i32 %.0.copyload.i270 to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26   ; 2 uses
  %.not238 = icmp eq ptr %i.z, null
  br i1 %.not238, label %.critedge, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !29  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, @.str
  br i1 %i.ab, label %func_types_eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not281 = icmp eq ptr %i.aa, null
  br i1 %.not281, label %.critedge, label %func_types_eq.exit, !prof !30

func_types_eq.exit:                               ; preds = %bb.e
  %i.ac = load i128, ptr %i.aa, align 1
  %i.ad = xor i128 -92467179035380865828055262966365220826, %i.ac
  %i.ae = getelementptr i8, ptr %i.aa, i64 16
  %i.af = load i128, ptr %i.ae, align 1
  %i.ag = xor i128 -102649400245060039812851687956256313421, %i.af
  %i.ah = or i128 %i.ad, %i.ag
  %i.ai = icmp ne i128 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !31

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.b, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #17
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.d, %func_types_eq.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32
  tail call void %i.z(ptr noundef %i.al, i32 noundef %2, i32 noundef %i.m) #16
  %.val248 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %.val248, i64 %i.f
  %.0.copyload.i271 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i271) #16, !srcloc !22
  %i.an = icmp ult i32 %.0.copyload.i271, %i.m
  br i1 %i.an, label %bb.p, label %.critedge242

.critedge242:                                     ; preds = %bb.a, %func_types_eq.exit.thread
  %.val247 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %.val247, i64 %i.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.0.copyload.i272 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i272) #16, !srcloc !22
  %i.aq = add i32 %1, 96                          ; 4 uses
  %i.ar = select i1 %.not, i32 %i.aq, i32 %.0.copyload.i
  %i.as = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.0.copyload.i272, i32 noundef %i.ar, i32 noundef %i.m) ; 0 uses
  %.val258 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %.val258, i64 %i.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %i.m, ptr %i.au, align 1
  %.val265 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %.val265, i64 %i.j
  %.0.copyload.i273 = load i8, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i273) #16, !srcloc !47
  %i.aw = icmp slt i8 %.0.copyload.i273, 0
  %.val246 = load ptr, ptr %i.a, align 8, !tbaa !21 ; 2 uses
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge242
  %i.ax = getelementptr inbounds nuw i8, ptr %.val246, i64 %i.c
  %.0.copyload.i274 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i274) #16, !srcloc !22
  %i.ay = zext i32 %.0.copyload.i274 to i64
  %.val264 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %.val264, i64 %i.ay
  store i8 0, ptr %i.az, align 1
  %.val257 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.val257, i64 %i.h
  store i32 0, ptr %i.ba, align 1
  %.val259 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.val259, i64 %i.j
  %.0.copyload.i275 = load i8, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i275) #16, !srcloc !33
  %i.bc = zext i8 %.0.copyload.i275 to i32
  br label %bb.h

bb.g:                                             ; preds = %.critedge242
  %i.bd = getelementptr inbounds nuw i8, ptr %.val246, i64 %i.j
  store i8 0, ptr %i.bd, align 1
  %.val262 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %.val262, i64 %i.c
  store i8 0, ptr %i.be, align 1
  %.val245 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %.val245, i64 %i.h
  %.0.copyload.i276 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i276) #16, !srcloc !22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0232 = phi i32 [ 0, %bb.f ], [ %.0.copyload.i276, %bb.g ]
  %.1 = phi i32 [ %i.bc, %bb.f ], [ 0, %bb.g ]    ; 2 uses
  %sext = shl nuw i32 %.1, 24
  %i.bg = ashr exact i32 %sext, 24                ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0                   ; 4 uses
  %i.bi = select i1 %i.bh, i32 %.0232, i32 %.1    ; 7 uses
  %i.bj = or i32 %i.bi, 15                        ; 2 uses
  %i.bk = icmp ult i32 %i.bi, 11                  ; 2 uses
  %i.bl = select i1 %i.bk, i32 10, i32 %i.bj
  %i.bm = add nuw nsw i64 %i.b, 104               ; 2 uses
  %.val244 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %.val244, i64 %i.bm
  %.0.copyload.i277 = load i32, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i277) #16, !srcloc !22
  %i.bo = and i32 %.0.copyload.i277, 2147483647
  %i.bp = add nsw i32 %i.bo, -1
  %i.bq = icmp eq i32 %i.bl, %i.bp
  %.v = select i1 %i.bh, i1 %i.bq, i1 %i.bk
  br i1 %.v, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %3 = icmp ugt i32 %i.bi, 10
  br i1 %3, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.br = add i32 %i.bj, 1                        ; 2 uses
  %i.bs = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.br) #16 ; 2 uses
  %i.bt = zext i32 %i.aq to i64
  %.val243 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %.val243, i64 %i.bt
  %.0.copyload.i278 = load i32, ptr %i.bu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i278) #16, !srcloc !22
  %i.bv = or i32 %i.br, -2147483648
  %i.bw = add i32 %i.bi, 1                        ; 2 uses
  %.not240 = icmp eq i32 %i.bw, 0
  br i1 %.not240, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = select i1 %i.bh, i32 %.0.copyload.i278, i32 %i.aq
  %i.by = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.bs, i32 noundef %i.bx, i32 noundef %i.bw) #16 ; 0 uses
  br i1 %i.bh, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bz = icmp sgt i32 %i.bg, -1
  br i1 %i.bz, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i278)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.m
  %.val256 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %.val256, i64 %i.h
  store i32 %i.bi, ptr %i.ca, align 1
  %.val255 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %.val255, i64 %i.bm
  store i32 %i.bv, ptr %i.cb, align 1
  %.val254 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %.val254, i64 %i.c
  store i32 %i.bs, ptr %i.cc, align 1
  br label %bb.q

bb.o:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 %i.c
  %.0.copyload.i279 = load i32, ptr %i.cd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i279) #16, !srcloc !22
  %i.ce = add nuw nsw i32 %i.bi, 1
  %i.cf = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef %.0.copyload.i279, i32 noundef %i.ce) #16 ; 0 uses
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i279)
  %.val261 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.cg = trunc nuw nsw i32 %i.bi to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.val261, i64 %i.j
  store i8 %i.cg, ptr %i.ch, align 1
  br label %bb.q

bb.p:                                             ; preds = %func_types_eq.exit.thread
  tail call void @w2c_hermes_hermes0x3A0x3Ahermes_fatal0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef 45388) #16
  tail call void @wasm_rt_trap(i32 noundef 5) #17
  unreachable

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3Aset_js_error_value0x28HermesABIRuntime0x2A0x2C0x20HermesABIValue0x20const0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = zext i32 %1 to i64
  %.val64 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %.val64, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %i.e = zext i32 %2 to i64                       ; 4 uses
  %.val63 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %.val63, i64 %i.e
  %.0.copyload.i72 = load i32, ptr %i.f, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i72) #16, !srcloc !22
  %i.g = add i32 %.0.copyload.i72, 2147483643     ; 2 uses
  %i.h = icmp ugt i32 %i.g, 4
  %i.i = icmp eq i32 %i.g, 3
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.0.copyload.i73 = load i32, ptr %i.k, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i73) #16, !srcloc !22
  %i.l = zext i32 %.0.copyload.i73 to i64
  %.val69 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.val69, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i74 = load i64, ptr %i.n, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i74) #16, !srcloc !45
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i32 %.0.copyload.i72, label %bb.f [
    i32 0, label %bb.h
    i32 1, label %bb.g
    i32 2, label %bb.d
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %.val71 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.val71, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.0.copyload.i75 = load i8, ptr %i.p, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i75) #16, !srcloc !50
  %i.q = zext i8 %.0.copyload.i75 to i64
  %i.r = or disjoint i64 %i.q, -1407374883553280
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.val70 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %.val70, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.0.copyload.i76 = load double, ptr %i.t, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i76) #16, !srcloc !48
  %i.u = bitcast double %.0.copyload.i76 to i64
  %i.v = fcmp uno double %.0.copyload.i76, 0.000000e+00
  %i.w = select i1 %i.v, i64 9221120237041090560, i64 %i.u
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  tail call void @w2c_hermes_hermes0x3A0x3Ahermes_fatal0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef 61350) #16
  tail call void @wasm_rt_trap(i32 noundef 5) #17
  unreachable

bb.g:                                             ; preds = %bb.c
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c, %bb.e, %bb.d, %bb.b
  %.0.sink = phi i64 [ %.0.copyload.i74, %bb.b ], [ %i.w, %bb.e ], [ %i.r, %bb.d ], [ -1688849860263936, %bb.c ], [ -1548112371908608, %bb.g ]
  %i.x = zext i32 %.0.copyload.i to i64
  %.val65 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %.val65, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 712
  store i64 %.0.sink, ptr %i.z, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3Aset_native_exception_message0x28HermesABIRuntime0x2A0x2C0x20unsigned0x20char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = add i32 %1, 96
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fassign_external0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.a, i32 noundef %2, i32 noundef %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3Aclone_propnameid0x28HermesABIRuntime0x2A0x2C0x20HermesABIPropNameID0x29(ptr nofree noundef readonly captures(none) %0, i32 %1, i32 noundef returned %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = zext i32 %2 to i64
  %i.c = add nuw nsw i64 %i.b, 4                  ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %i.e = add i32 %.0.copyload.i, 1
  %.val10 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %.val10, i64 %i.c
  store i32 %i.e, ptr %i.f, align 1
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3Aevaluate_javascript_source0x28HermesABIRuntime0x2A0x2C0x20HermesABIBuffer0x2A0x2C0x20char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef 16) #16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 47 uses
  %i.f = zext i32 %3 to i64
  %.val352 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %.val352, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.0.copyload.i = load i64, ptr %i.h, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #16, !srcloc !45
  %i.i = zext i32 %i.d to i64                     ; 3 uses
  %.val348 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %.val348, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i64 %.0.copyload.i, ptr %i.k, align 1
  %.val342 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %.val342, i64 %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 %3, ptr %i.m, align 1
  %.val341 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %.val341, i64 %i.i
  store i32 261232, ptr %i.n, align 1
  %i.o = zext i32 %i.c to i64                     ; 10 uses
  %i.p = add nuw nsw i64 %i.o, 8                  ; 2 uses
  %.val340 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.val340, i64 %i.p
end_hunk_0
