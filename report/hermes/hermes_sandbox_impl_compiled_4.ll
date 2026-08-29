Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_4?download=true
inline.NumInlined: 16097
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i179) #6, !srcloc !13
  %i.al = icmp ult i32 %.0.copyload.i178, %.0.copyload.i179
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.am = add i32 %.0.copyload.i178, 8
  %.val167 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val167, i64 %i.ah
  store i32 %i.am, ptr %i.an, align 1
  %i.ao = zext i32 %.0.copyload.i178 to i64       ; 2 uses
  %.val156 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val156, i64 %i.ao
  store i64 %i.ae, ptr %i.ap, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aq = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i177, i64 noundef %i.ae) #6 ; 2 uses
  %.pre = zext i32 %i.aq to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %.pre, %bb.c ], [ %i.ao, %bb.b ]
  %.0 = phi i32 [ %i.aq, %bb.c ], [ %.0.copyload.i178, %bb.b ] ; 2 uses
  %i.ar = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSError0x3A0x3ArecordStackTrace0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSError0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20bool0x2C0x20hermes0x3A0x3Avm0x3A0x3ACodeBlock0x2A0x2C0x20hermes0x3A0x3Ainst0x3A0x3AInst0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6 ; 0 uses
  %i.as = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSError0x3A0x3AsetMessage0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSError0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef %1, i32 noundef %2) #6 ; 0 uses
  %.val176 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val176, i64 %.pre-phi
  %.0.copyload.i180 = load i64, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i180) #6, !srcloc !21
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 %i.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 712
  store i64 %.0.copyload.i180, ptr %i.av, align 1
  %.val159 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.val159, i64 %i.p
  %.0.copyload.i181 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i181) #6, !srcloc !13
  %i.ax = zext i32 %.0.copyload.i181 to i64
  %.val158 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val158, i64 %i.ax
  %.0.copyload.i182 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i182) #6, !srcloc !13
  %.val166 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val166, i64 %i.t
  store i32 0, ptr %i.az, align 1
  %.val165 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val165, i64 %i.y
  store i32 %i.k, ptr %i.ba, align 1
  %i.bb = add i32 %.0.copyload.i182, 128
  %.val164 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val164, i64 %i.w
  store i32 %i.bb, ptr %i.bc, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.c) #6
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AprintRuntimeGCStats0x28hermes0x3A0x3AJSONEmitter0x260x290x20const(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 7 uses
  %i.c = add i32 %i.b, -80                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 33 uses
  %i.e = zext i32 %i.c to i64                     ; 17 uses
  %.val296 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val296, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store i32 7, ptr %i.g, align 1
  %i.h = add nuw nsw i64 %i.e, 64                 ; 2 uses
  %.val295 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val295, i64 %i.h
  store i32 49155, ptr %i.i, align 1
  %.val301 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val301, i64 %i.h
  %.0.copyload.i = load i64, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #6, !srcloc !21
  %.val277 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val277, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.0.copyload.i, ptr %i.l, align 1
  %i.m = add i32 %i.b, -56
  tail call void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AemitKey0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %2, i32 noundef %i.m) #6
  tail call void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AopenDict0x280x29(ptr noundef %0, i32 noundef %2) #6
  %i.n = zext i32 %1 to i64
  %.val305 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val305, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 5464
  %.0.copyload.i306 = load double, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i306) #6, !srcloc !36
  %i.q = add nuw nsw i64 %i.e, 52                 ; 2 uses
  %.val294 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val294, i64 %i.q
  store i32 18, ptr %i.r, align 1
  %i.s = add nuw nsw i64 %i.e, 48                 ; 5 uses
  %.val293 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val293, i64 %i.s
  store i32 49178, ptr %i.t, align 1
  %.val300 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val300, i64 %i.s
  %.0.copyload.i307 = load i64, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i307) #6, !srcloc !21
  %.val276 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val276, i64 %i.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.0.copyload.i307, ptr %i.w, align 1
  %i.x = add i32 %i.b, -64
  tail call void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AemitKey0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %2, i32 noundef %i.x) #6
  tail call void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AemitValue0x28double0x29(ptr noundef %0, i32 noundef %2, double noundef %.0.copyload.i306) #6
  %i.y = add i32 %i.b, -44                        ; 3 uses
  %i.z = add i32 %1, 5328
  %i.aa = add nuw nsw i64 %i.e, 59                ; 2 uses
  %i.ab = add i32 %i.b, -32
  %i.ac = add nuw nsw i64 %i.e, 72                ; 2 uses
  %i.ad = add i32 %i.b, -72
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %bb.a ] ; 3 uses
  %i.ae = shl nuw nsw i64 %indvars.iv, 2
  %.val285 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val285, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 271680
  %.0.copyload.i308 = load i32, ptr %i.ag, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i308) #6, !srcloc !13
  %i.ah = tail call i32 @w2c_hermes_strlen(ptr noundef nonnull %0, i32 noundef %.0.copyload.i308) #6 ; 9 uses
  %i.ai = icmp ugt i32 %i.ah, 2147483631
  br i1 %i.ai, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = icmp samesign ugt i32 %i.ah, 10
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = or i32 %i.ah, 15
  %i.al = add nuw nsw i32 %i.ak, 1                ; 2 uses
  %i.am = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.al) #6 ; 3 uses
  %i.an = or disjoint i32 %i.al, -2147483648
  %.val292 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val292, i64 %i.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  store i32 %i.an, ptr %i.ap, align 1
  %.val291 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val291, i64 %i.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  store i32 %i.am, ptr %i.ar, align 1
  %.val290 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val290, i64 %i.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i32 %i.ah, ptr %i.at, align 1
  %i.au = add i32 %i.am, %i.ah
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.val279 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.av = trunc nuw nsw i32 %i.ah to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val279, i64 %i.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 47
  store i8 %i.av, ptr %i.ax, align 1
  %i.ay = add i32 %i.ah, %i.y                     ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0269 = phi i32 [ %i.am, %bb.d ], [ %i.y, %bb.e ]
  %.0268 = phi i32 [ %i.au, %bb.d ], [ %i.ay, %bb.e ]
  %i.az = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0269, i32 noundef %.0.copyload.i308, i32 noundef %i.ah) #6 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi i32 [ %.0268, %bb.f ], [ %i.ay, %bb.e ]
  %i.ba = zext i32 %.1 to i64
  %.val278 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val278, i64 %i.ba
  store i8 0, ptr %i.bb, align 1
  %i.bc = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Aappend0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.y, i32 noundef 49265) #6
  %i.bd = zext i32 %i.bc to i64                   ; 3 uses
  %i.be = add nuw nsw i64 %i.bd, 8                ; 2 uses
  %.val284 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val284, i64 %i.be
  %.0.copyload.i309 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i309) #6, !srcloc !13
  %.val289 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val289, i64 %i.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store i32 %.0.copyload.i309, ptr %i.bh, align 1
  %.val299 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val299, i64 %i.bd
  %.0.copyload.i310 = load i64, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i310) #6, !srcloc !21
  %.val275 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.val275, i64 %i.s
  store i64 %.0.copyload.i310, ptr %i.bj, align 1
  %.val274 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val274, i64 %i.bd
  store i64 0, ptr %i.bk, align 1
  %.val288 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val288, i64 %i.be
  store i32 0, ptr %i.bl, align 1
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.bm = shl nuw nsw i32 %indvars.iv.tr, 3
  %i.bn = add i32 %i.z, %i.bm
  %i.bo = zext i32 %i.bn to i64
  %.val304 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val304, i64 %i.bo
  %.0.copyload.i311 = load double, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i311) #6, !srcloc !36
  %.val283 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val283, i64 %i.s
  %.0.copyload.i312 = load i32, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i312) #6, !srcloc !13
  %.val282 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val282, i64 %i.q
  %.0.copyload.i313 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i313) #6, !srcloc !13
  %.val297 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val297, i64 %i.aa
  %.0.copyload.i314 = load i8, ptr %i.bs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i314) #6, !srcloc !14
  %i.bt = zext i8 %.0.copyload.i314 to i32
  %.not272 = icmp sgt i8 %.0.copyload.i314, -1    ; 2 uses
  %i.bu = select i1 %.not272, i32 %i.bt, i32 %.0.copyload.i313
  %.val287 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val287, i64 %i.e
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 76
  store i32 %i.bu, ptr %i.bw, align 1
  %i.bx = select i1 %.not272, i32 %i.ab, i32 %.0.copyload.i312
  %.val286 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val286, i64 %i.ac
  store i32 %i.bx, ptr %i.by, align 1
  %.val298 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val298, i64 %i.ac
  %.0.copyload.i315 = load i64, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i315) #6, !srcloc !21
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %.0.copyload.i315, ptr %i.cb, align 1
  tail call void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AemitKey0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.ad) #6
  tail call void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AemitValue0x28double0x29(ptr noundef nonnull %0, i32 noundef %2, double noundef %.0.copyload.i311) #6
  %.val303 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %.val303, i64 %i.aa
  %.0.copyload.i316 = load i8, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i316) #6, !srcloc !22
  %i.cd = icmp slt i8 %.0.copyload.i316, 0
  br i1 %i.cd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val281 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.val281, i64 %i.s
  %.0.copyload.i317 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i317) #6, !srcloc !13
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i317) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.val302 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.val302, i64 %i.e
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 47
  %.0.copyload.i318 = load i8, ptr %i.cg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i318) #6, !srcloc !22
  %i.ch = icmp slt i8 %.0.copyload.i318, 0
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val280 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val280, i64 %i.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 36
  %.0.copyload.i319 = load i32, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i319) #6, !srcloc !13
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i319) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not273 = icmp eq i64 %indvars.iv.next, 17
  br i1 %.not273, label %bb.l, label %bb.b

bb.l:                                             ; preds = %bb.k
  tail call void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AcloseDict0x280x29(ptr noundef nonnull %0, i32 noundef %2) #6
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void

bb.m:                                             ; preds = %bb.b
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #6
  tail call void @wasm_rt_trap(i32 noundef 5) #7
  unreachable
}

declare void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AemitKey0x28llvh0x3A0x3AStringRef0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AopenDict0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AemitValue0x28double0x29(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Aappend0x28char0x20const0x2A0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AcloseDict0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AmarkWeakRoots0x28hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = tail call i64 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Achrono0x3A0x3Asteady_clock0x3A0x3Anow0x280x29(ptr noundef %0) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 62 uses
  %i.f = zext i32 %2 to i64                       ; 8 uses
  %.val815 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val815, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #6, !srcloc !13
  %i.h = zext i32 %.0.copyload.i to i64
  %.val814 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val814, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.copyload.i828 = load i32, ptr %i.j, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i828) #6, !srcloc !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 9 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !26
  %i.n = icmp ult i32 %.0.copyload.i828, %i.m
  br i1 %i.n, label %bb.b, label %.critedge, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.p = zext i32 %.0.copyload.i828 to i64
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %.critedge, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @w2c_hermes_t0, align 8, !tbaa !31 ; 25 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !32   ; 4 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %func_types_eq.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = icmp ne ptr %i.t, null
  %i.x = icmp ne ptr %i.u, null
  %or.cond.i = and i1 %i.w, %i.x
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !33

func_types_eq.exit:                               ; preds = %bb.d
  %i.y = load i128, ptr %i.t, align 1
  %i.z = load i128, ptr %i.u, align 1
  %i.aa = xor i128 %i.y, %i.z
  %i.ab = getelementptr i8, ptr %i.t, i64 16
  %i.ac = getelementptr i8, ptr %i.u, i64 16
  %i.ad = load i128, ptr %i.ab, align 1
  %i.ae = load i128, ptr %i.ac, align 1
  %i.af = xor i128 %i.ad, %i.ae
  %i.ag = or i128 %i.aa, %i.af
  %i.ah = icmp ne i128 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !34

.critedge:                                        ; preds = %bb.d, %bb.b, %bb.a, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #7
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.c, %func_types_eq.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !35
  tail call void %i.s(ptr noundef %i.ak, i32 noundef %2, i32 noundef 11) #6
  %i.al = load i32, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.am = add i32 %i.al, -16                      ; 2 uses
  store i32 %i.am, ptr %i.a, align 8, !tbaa !15
  %i.an = zext i32 %i.am to i64                   ; 6 uses
  %i.ao = add nuw nsw i64 %i.an, 12               ; 3 uses
  %.val825 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val825, i64 %i.ao
  store i32 0, ptr %i.ap, align 1
  %i.aq = add nuw nsw i64 %i.an, 4                ; 5 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aq
  store i64 0, ptr %i.ar, align 1
  %i.as = add i32 %1, 5572
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %.val813 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val813, i64 %i.at
  %.0.copyload.i829 = load i32, ptr %i.au, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i829) #6, !srcloc !13
  %i.av = add i32 %1, 5568                        ; 4 uses
  %i.aw = icmp eq i32 %.0.copyload.i829, %i.av
  br i1 %i.aw, label %bb.y, label %.preheader930

.preheader930:                                    ; preds = %func_types_eq.exit.thread
  %i.ax = icmp ne ptr %i.t, null
  %i.ay = add nuw nsw i64 %i.an, 8                ; 5 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader930, %bb.r
  %.0670 = phi i32 [ %.0.copyload.i842, %bb.r ], [ %.0.copyload.i829, %.preheader930 ] ; 4 uses
  %i.az = add i32 %.0670, 24
  %.val812 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val812, i64 %i.f
end_hunk_0
