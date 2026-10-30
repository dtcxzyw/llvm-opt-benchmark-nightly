Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26870
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3APassManager0x3A0x3AaddPass0x28std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3APass0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3APass0x3E0x3E0x29:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %.0.copyload.i264, ptr %i.at, align 1
  %.val242 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val242, i64 %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store i32 %.sink284, ptr %i.av, align 1
  %.val241 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val241, i64 %i.ap
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i32 %.0.copyload.i267.sink, ptr %i.ax, align 1
  %.val240 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val240, i64 %i.ap
  store i32 %.sink, ptr %i.ay, align 1
  %.val239 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val239, i64 %i.ap
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i32 %2, ptr %i.ba, align 1
  %.val238 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val238, i64 %i.f
  store i32 %.sink295, ptr %i.bb, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %.1 = phi i32 [ %.sink295, %bb.h ], [ %2, %bb.d ]
  %i.bc = add nuw nsw i64 %i.h, 8                 ; 2 uses
  %.val228 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val228, i64 %i.bc
  %.0.copyload.i269 = load i32, ptr %i.bd, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i269) #7, !srcloc !19
  %.val227 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val227, i64 %i.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %.0.copyload.i270 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i270) #7, !srcloc !19
  %i.bg = icmp ult i32 %.0.copyload.i269, %.0.copyload.i270
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val237 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val237, i64 %i.f
  store i32 0, ptr %i.bh, align 1
  %i.bi = zext i32 %.0.copyload.i269 to i64
  %.val236 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val236, i64 %i.bi
  store i32 %.1, ptr %i.bj, align 1
  %i.bk = add i32 %.0.copyload.i269, 4
  %.val235 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val235, i64 %i.bc
  store i32 %i.bk, ptr %i.bl, align 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bm = add i32 %1, 4
  %i.bn = add i32 %i.b, -20
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cstd0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x3E0x3E0x3E0x3E0x3A0x3A_0x5Fpush_back_slow_path0x3Cstd0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x3E0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x3E0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.bm, i32 noundef %i.bn) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.val226 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val226, i64 %i.f
  %.0.copyload.i271 = load i32, ptr %i.bo, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i271) #7, !srcloc !19
  %.val234 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val234, i64 %i.f
  store i32 0, ptr %i.bp, align 1
  %.not223 = icmp eq i32 %.0.copyload.i271, 0
  br i1 %.not223, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = zext i32 %.0.copyload.i271 to i64
  %.val225 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val225, i64 %i.bq
  %.0.copyload.i272 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i272) #7, !srcloc !19
  %i.bs = zext i32 %.0.copyload.i272 to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.0.copyload.i273 = load i32, ptr %i.bu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i273) #7, !srcloc !19
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !25
  %i.bx = icmp ult i32 %.0.copyload.i273, %i.bw
  br i1 %i.bx, label %bb.n, label %.critedge, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !27
  %i.ca = zext i32 %.0.copyload.i273 to i64
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.ca ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !29 ; 2 uses
  %.not224 = icmp eq ptr %i.cd, null
  br i1 %.not224, label %.critedge, label %bb.o, !prof !30

bb.o:                                             ; preds = %bb.n
  %i.ce = load ptr, ptr @w2c_hermes_t3, align 8, !tbaa !31 ; 4 uses
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !32 ; 4 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %func_types_eq.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = icmp ne ptr %i.ce, null
  %i.ci = icmp ne ptr %i.cf, null
  %or.cond.i = and i1 %i.ch, %i.ci
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !33

func_types_eq.exit:                               ; preds = %bb.p
  %i.cj = load i128, ptr %i.ce, align 1
  %i.ck = load i128, ptr %i.cf, align 1
  %i.cl = xor i128 %i.cj, %i.ck
  %i.cm = getelementptr i8, ptr %i.ce, i64 16
  %i.cn = getelementptr i8, ptr %i.cf, i64 16
  %i.co = load i128, ptr %i.cm, align 1
  %i.cp = load i128, ptr %i.cn, align 1
  %i.cq = xor i128 %i.co, %i.cp
  %i.cr = or i128 %i.cl, %i.cq
  %i.cs = icmp ne i128 %i.cr, 0
  %i.ct = zext i1 %i.cs to i32
  %.not.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !34

.critedge:                                        ; preds = %bb.p, %bb.n, %bb.m, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.o, %func_types_eq.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !35
  tail call void %i.cd(ptr noundef %i.cv, i32 noundef %.0.copyload.i271) #7
  br label %bb.q

bb.q:                                             ; preds = %func_types_eq.exit.thread, %bb.l
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

declare i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x3A0x3ALookupBucketFor0x3Cllvh0x3A0x3AStringRef0x3E0x28llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x20const0x2A0x260x290x20const(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_llvh0x3A0x3Aerrs0x280x29(ptr noundef) local_unnamed_addr #1

declare void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cstd0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x3E0x3E0x3E0x3E0x3A0x3A_0x5Fpush_back_slow_path0x3Cstd0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x3E0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x3E0x3E0x260x260x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = add i32 %i.b, -144                       ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.e = zext i32 %i.c to i64                     ; 4 uses
  %.val167 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val167, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 137438953472, ptr %i.g, align 1
  %i.h = add i32 %i.b, -128                       ; 2 uses
  %i.i = add nuw nsw i64 %i.e, 4                  ; 2 uses
  %.val164 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val164, i64 %i.i
  store i32 %i.h, ptr %i.j, align 1
  %i.k = add i32 %i.b, -140                       ; 2 uses
  %i.l = bitcast double %2 to i64                 ; 2 uses
  tail call void @w2c_hermes_llvh0x3A0x3AFoldingSetNodeID0x3A0x3AAddInteger0x28unsigned0x20long0x20long0x29(ptr noundef %0, i32 noundef %i.k, i64 noundef %i.l) #7
  %.val163 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val163, i64 %i.e
  store i32 0, ptr %i.m, align 1
  %i.n = add i32 %1, 416                          ; 2 uses
  %i.o = tail call i32 @w2c_hermes_llvh0x3A0x3AFoldingSetBase0x3A0x3AFindNodeOrInsertPos0x28llvh0x3A0x3AFoldingSetNodeID0x20const0x260x2C0x20void0x2A0x260x29(ptr noundef %0, i32 noundef %i.n, i32 noundef %i.k, i32 noundef %i.c) #7 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = add i32 %i.o, -28
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.q = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 40) #7 ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 6 uses
  %.val168 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val168, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store double %2, ptr %i.t, align 1
  %.val162 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val162, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 0, ptr %i.v, align 1
  %.val165 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val165, i64 %i.r
  store i8 114, ptr %i.w, align 1
  %.val166 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val166, i64 %i.r
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i64 8589934592, ptr %i.y, align 1
  %i.z = add i32 %i.q, 20
  %.val161 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val161, i64 %i.r
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %i.z, ptr %i.ab, align 1
  %i.ac = add i32 %i.q, 28
  %or.cond = fcmp ugt double %2, f0x41DFFFFFFFC00000
  %i.ad = fcmp olt double %2, f0xC1E0000000000000
  %or.cond157 = or i1 %or.cond, %i.ad
  br i1 %or.cond157, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = tail call noundef double @llvm.fabs.f64(double %2)
  %i.af = fcmp olt double %i.ae, f0x41E0000000000000
  br i1 %i.af, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ag = fcmp ule double %2, f0xC1E0000000200000
  %i.ah = fcmp uge double %2, f0x41E0000000000000
  %.not154 = or i1 %i.ag, %i.ah
  br i1 %.not154, label %bb.f, label %bb.g, !prof !30

bb.f:                                             ; preds = %bb.e
  tail call void @wasm_rt_trap(i32 noundef 2) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ai = fptosi double %2 to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.0 = phi i32 [ %i.ai, %bb.g ], [ -2147483648, %bb.d ] ; 2 uses
  %i.aj = sitofp i32 %.0 to double
  %i.ak = fcmp une double %2, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not155 = icmp ne i32 %.0, 0
  %i.al = icmp sgt i64 %i.l, -1
  %or.cond158 = or i1 %i.al, %.not155
  br i1 %or.cond158, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.c
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0147 = phi i32 [ 458784, %bb.j ], [ 131104, %bb.i ]
  %.val160 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val160, i64 %i.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i32 %.0147, ptr %i.an, align 1
  %.val159 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val159, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.ao, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  tail call void @w2c_hermes_llvh0x3A0x3AFoldingSetBase0x3A0x3AInsertNode0x28llvh0x3A0x3AFoldingSetBase0x3A0x3ANode0x2A0x2C0x20void0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %i.ac, i32 noundef %.0.copyload.i) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.0148 = phi i32 [ %i.p, %bb.b ], [ %i.q, %bb.k ]
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i
  %.0.copyload.i169 = load i32, ptr %i.ap, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i169) #7, !srcloc !19
  %.not156 = icmp eq i32 %i.h, %.0.copyload.i169
  br i1 %.not156, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i169) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.0148
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AValue0x3A0x3AreplaceAllUsesWith0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %.loopexit86, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 12                 ; 2 uses
  %.val79 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val79, i64 %i.d
  %.0.copyload.i = load i32, ptr %i.e, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %.loopexit86, label %.preheader

.preheader:                                       ; preds = %bb.b, %.loopexit
  %.0 = phi i32 [ %.1, %.loopexit ], [ %.0.copyload.i, %bb.b ] ; 3 uses
  %.val78 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val78, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i80 = load i32, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i80) #7, !srcloc !19
  %i.h = shl i32 %.0, 2
  %i.i = add i32 %i.h, -4
  %i.j = add i32 %i.i, %.0.copyload.i80
  %i.k = zext i32 %i.j to i64
  %.val77 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val77, i64 %i.k
  %.0.copyload.i81 = load i32, ptr %i.l, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i81) #7, !srcloc !19
  %i.m = zext i32 %.0.copyload.i81 to i64         ; 2 uses
  %.val76 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val76, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %.0.copyload.i82 = load i32, ptr %i.o, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i82) #7, !srcloc !19
  %i.p = icmp slt i32 %.0.copyload.i82, 1
  br i1 %i.p, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %.val75 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val75, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.0.copyload.i83 = load i32, ptr %i.r, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i83) #7, !srcloc !19
  %i.s = zext nneg i32 %.0.copyload.i82 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %i.t = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.u = shl i32 %i.t, 3
  %i.v = add i32 %i.u, %.0.copyload.i83
  %i.w = zext i32 %i.v to i64
  %.val74 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val74, i64 %i.w
  %.0.copyload.i84 = load i32, ptr %i.x, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i84) #7, !srcloc !19
  %i.y = icmp eq i32 %1, %.0.copyload.i84
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i81, i32 noundef %2, i32 noundef %i.t)
  %.val = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 %i.d
  %.0.copyload.i85 = load i32, ptr %i.z, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i85) #7, !srcloc !19
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not72 = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %.not72, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.e
  %.1 = phi i32 [ %.0, %.preheader ], [ %.0.copyload.i85, %bb.e ], [ %.0, %bb.f ] ; 2 uses
  %.not73 = icmp eq i32 %.1, 0
  br i1 %.not73, label %.loopexit86, label %.preheader

.loopexit86:                                      ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateThrowIfEmptyInst0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef 80) #7 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 33 uses
  %i.c = zext i32 %i.a to i64                     ; 15 uses
  %.val169 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val169, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i64 8589934592, ptr %i.e, align 1
  %.val163 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val163, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  store i32 459775, ptr %i.g, align 1
  %.val168 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val168, i64 %i.c
  store i64 0, ptr %i.h, align 1
  %i.i = add nuw nsw i64 %i.c, 68                 ; 2 uses
  %.val167 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val167, i64 %i.i
  store i64 0, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %i.c, 36                 ; 2 uses
  %.val162 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val162, i64 %i.k
  store i32 0, ptr %i.l, align 1
  %.val165 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val165, i64 %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 62, ptr %i.n, align 1
  %i.o = add i32 %i.a, 28
  %.val161 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val161, i64 %i.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %i.o, ptr %i.q, align 1
  %i.r = add nuw nsw i64 %i.c, 44                 ; 5 uses
  %.val166 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val166, i64 %i.r
  store i64 8589934592, ptr %i.s, align 1
  %i.t = add i32 %i.a, 52                         ; 2 uses
  %.val160 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val160, i64 %i.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 %i.t, ptr %i.v, align 1
  %i.w = add nuw nsw i64 %i.c, 76                 ; 2 uses
  %.val159 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val159, i64 %i.w
  store i32 0, ptr %i.x, align 1
  %.val56.i = load ptr, ptr %i.b, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3AhermesLog0x28char0x20const0x2A0x2C0x20char0x20const0x2A0x2C0x200x2E0x2E0x2E0x29:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val166, i64 %i.g
  %.0.copyload.i177 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i177) #7, !srcloc !19
  %i.q = tail call i32 @w2c_hermes_vfprintf(ptr noundef %0, i32 noundef %.0.copyload.i, i32 noundef %2, i32 noundef %.0.copyload.i177) #7 ; 0 uses
  %i.r = zext i32 %.0.copyload.i to i64           ; 7 uses
  %i.s = add nuw nsw i64 %i.r, 76                 ; 5 uses
  %.val165 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val165, i64 %i.s
  %.0.copyload.i178 = load i32, ptr %i.t, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i178) #7, !srcloc !19
  %i.u = icmp sgt i32 %.0.copyload.i178, -1
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %.0.copyload.i178, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val164 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val164, i64 273276
  %.0.copyload.i179 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i179) #7, !srcloc !19
  %i.w = and i32 %.0.copyload.i178, 1073741823
  %.not155 = icmp eq i32 %.0.copyload.i179, %i.w
  br i1 %.not155, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.a
  %.val163 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val163, i64 %i.r
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %.0.copyload.i180 = load i32, ptr %i.y, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i180) #7, !srcloc !19
  %i.z = icmp eq i32 %.0.copyload.i180, 10
  br i1 %i.z, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw nsw i64 %i.r, 20                ; 2 uses
  %.val162 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val162, i64 %i.aa
  %.0.copyload.i181 = load i32, ptr %i.ab, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i181) #7, !srcloc !19
  %.val161 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val161, i64 %i.r
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.0.copyload.i182 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i182) #7, !srcloc !19
  %i.ae = icmp eq i32 %.0.copyload.i181, %.0.copyload.i182
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = add i32 %.0.copyload.i181, 1
  %.val171 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val171, i64 %i.aa
  store i32 %i.af, ptr %i.ag, align 1
  %i.ah = zext i32 %.0.copyload.i181 to i64
  %.val176 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val176, i64 %i.ah
  store i8 10, ptr %i.ai, align 1
  br label %bb.m

bb.g:                                             ; preds = %bb.e, %bb.d
  tail call void @w2c_hermes_0x5F_overflow(ptr noundef nonnull %0, i32 noundef %.0.copyload.i) #7
  br label %bb.m

bb.h:                                             ; preds = %bb.c, %bb.b
  %.val160 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val160, i64 %i.s
  %.0.copyload.i183 = load i32, ptr %i.aj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i183) #7, !srcloc !19
  %.not156 = icmp eq i32 %.0.copyload.i183, 0
  %i.ak = select i1 %.not156, i32 1073741823, i32 %.0.copyload.i183
  %.val170 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val170, i64 %i.s
  store i32 %i.ak, ptr %i.al, align 1
  %.val159 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val159, i64 %i.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %.0.copyload.i184 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i184) #7, !srcloc !19
  %i.ao = icmp eq i32 %.0.copyload.i184, 10
  br i1 %i.ao, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nuw nsw i64 %i.r, 20                ; 2 uses
  %.val158 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val158, i64 %i.ap
  %.0.copyload.i185 = load i32, ptr %i.aq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i185) #7, !srcloc !19
  %.val157 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val157, i64 %i.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.0.copyload.i186 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i186) #7, !srcloc !19
  %i.at = icmp eq i32 %.0.copyload.i185, %.0.copyload.i186
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = add i32 %.0.copyload.i185, 1
  %.val169 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val169, i64 %i.ap
  store i32 %i.au, ptr %i.av, align 1
  %i.aw = zext i32 %.0.copyload.i185 to i64
  %.val175 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val175, i64 %i.aw
  store i8 10, ptr %i.ax, align 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h
  tail call void @w2c_hermes_0x5F_overflow(ptr noundef nonnull %0, i32 noundef %.0.copyload.i) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  %.0.copyload.i187 = load i32, ptr %i.ay, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i187) #7, !srcloc !19
  %.val168 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val168, i64 %i.s
  store i32 0, ptr %i.az, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g, %bb.f
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

declare i32 @w2c_hermes_0x5F_vfprintf_internal(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_vfprintf(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_0x5F_overflow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ASerializedLiteralGenerator0x3A0x3AserializeBuffer0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ALiteral0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 5 uses
  %i.c = add i32 %i.b, -64                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 46 uses
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %.val917 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val917, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %..loopexit_crit_edge, label %.preheader

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre = zext i32 %3 to i64
  br label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.h = zext i32 %1 to i64                       ; 2 uses
  %.not881 = icmp eq i32 %4, 0                    ; 2 uses
  %i.i = zext i32 %i.c to i64                     ; 7 uses
  %i.j = add i32 %i.b, -48
  %i.k = zext i32 %i.j to i64
  %i.l = add i32 %i.b, -40
  %i.m = zext i32 %i.l to i64
  %i.n = zext i32 %3 to i64                       ; 2 uses
  %i.o = add i32 %i.b, -56
  %i.p = zext i32 %i.o to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.bv
  %.0860 = phi i32 [ %.8, %bb.bv ], [ 0, %.preheader ] ; 3 uses
  %.0852 = phi i32 [ %.6858, %bb.bv ], [ 0, %.preheader ] ; 38 uses
  %.0850 = phi i32 [ %.0846, %bb.bv ], [ 0, %.preheader ] ; 4 uses
  %.0847 = phi i32 [ %.6, %bb.bv ], [ 0, %.preheader ] ; 22 uses
  %.0844 = phi i32 [ %.1845, %bb.bv ], [ 48, %.preheader ] ; 3 uses
  %.0843 = phi i32 [ %i.hx, %bb.bv ], [ 0, %.preheader ] ; 2 uses
  %.val916 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val916, i64 %i.e
  %.0.copyload.i949 = load i32, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i949) #7, !srcloc !19
  %i.r = shl i32 %.0843, 2
  %i.s = add i32 %.0.copyload.i949, %i.r
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.val915 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val915, i64 %i.t
  %.0.copyload.i950 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i950) #7, !srcloc !19
  %i.v = zext i32 %.0.copyload.i950 to i64        ; 4 uses
  %.val942 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val942, i64 %i.v
  %.0.copyload.i951 = load i8, ptr %i.w, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i951) #7, !srcloc !21
  switch i8 %.0.copyload.i951, label %bb.n [
    i8 113, label %.thread979
    i8 114, label %bb.c
    i8 117, label %bb.o
    i8 116, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %.val948 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val948, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.0.copyload.i952 = load double, ptr %i.y, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i952) #7, !srcloc !23
  %or.cond = fcmp ugt double %.0.copyload.i952, f0x41DFFFFFFFC00000
  %i.z = fcmp olt double %.0.copyload.i952, f0xC1E0000000000000
  %or.cond905 = or i1 %or.cond, %i.z
  br i1 %or.cond905, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i952)
  %i.ab = fcmp olt double %i.aa, f0x41E0000000000000
  br i1 %i.ab, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = fcmp ule double %.0.copyload.i952, f0xC1E0000000200000
  %i.ad = fcmp uge double %.0.copyload.i952, f0x41E0000000000000
  %.not885 = or i1 %i.ac, %i.ad
  br i1 %.not885, label %bb.f, label %bb.g, !prof !30

bb.f:                                             ; preds = %bb.e
  tail call void @wasm_rt_trap(i32 noundef 2) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ae = fptosi double %.0.copyload.i952 to i32  ; 2 uses
  %i.af = sitofp i32 %i.ae to double
  %i.ag = fcmp une double %.0.copyload.i952, %i.af
  br i1 %i.ag, label %bb.i, label %bb.h

.thread:                                          ; preds = %bb.d
  %i.ah = fcmp une double %.0.copyload.i952, f0xC1E0000000000000
  br i1 %i.ah, label %bb.i, label %.thread979

bb.h:                                             ; preds = %bb.g
  %.not886 = icmp ne i32 %i.ae, 0
  %i.ai = bitcast double %.0.copyload.i952 to i64
  %i.aj = icmp sgt i64 %i.ai, -1
  %or.cond983 = or i1 %.not886, %i.aj
  br i1 %or.cond983, label %.thread979, label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread, %bb.g, %bb.c
  br label %.thread979

bb.j:                                             ; preds = %bb.b
  %.val914 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val914, i64 %i.h
  %.0.copyload.i953 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i953) #7, !srcloc !19
  %.val913 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val913, i64 %i.v
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.0.copyload.i954 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i954) #7, !srcloc !19
  %i.an = zext i32 %.0.copyload.i954 to i64
  %.val925 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val925, i64 %i.an
  %.0.copyload.i955 = load i64, ptr %i.ao, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i955) #7, !srcloc !20
  %.val937 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val937, i64 %i.i ; 2 uses
  br i1 %.not881, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.0.copyload.i955, ptr %i.aq, align 1
  %.val938 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val938, i64 %i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i64 %.0.copyload.i955, ptr %i.as, align 1
  %i.at = load i32, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.au = add i32 %i.at, -16                      ; 2 uses
  store i32 %i.au, ptr %i.a, align 8, !tbaa !17
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.k
  %.0.copyload.i.i = load i64, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i.i) #7, !srcloc !20
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %.0.copyload.i955, ptr %i.aw, align 1
  %.val936 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val936, i64 %i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store i64 %.0.copyload.i955, ptr %i.ay, align 1
  %i.az = load i32, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.ba = add i32 %i.az, -16                      ; 2 uses
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !17
  %.val.i956 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i956, i64 %i.m
  %.0.copyload.i.i957 = load i64, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i.i957) #7, !srcloc !20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink1019 = phi i32 [ %i.ba, %bb.l ], [ %i.au, %bb.k ] ; 2 uses
  %.0.copyload.i.i957.sink1016 = phi i64 [ %.0.copyload.i.i957, %bb.l ], [ %.0.copyload.i.i, %bb.k ] ; 2 uses
  %storemerge = phi i32 [ %i.az, %bb.l ], [ %i.at, %bb.k ]
  %i.bc = zext i32 %.sink1019 to i64              ; 2 uses
  %.val34.i958 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val34.i958, i64 %i.bc
  store i64 %.0.copyload.i.i957.sink1016, ptr %i.bd, align 1
  %.val33.i959 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val33.i959, i64 %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %.0.copyload.i.i957.sink1016, ptr %i.bf, align 1
  %i.bg = add i32 %.0.copyload.i953, 180
  %i.bh = tail call i32 @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AStringLiteralTable0x3A0x3AgetStringID0x28llvh0x3A0x3AStringRef0x290x20const(ptr noundef nonnull %0, i32 noundef %i.bg, i32 noundef %.sink1019) ; 2 uses
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !17
  %i.bi = icmp sgt i32 %i.bh, 255
  %i.bj = select i1 %i.bi, i32 80, i32 96
  %i.bk = icmp sgt i32 %i.bh, 65535
  %i.bl = select i1 %i.bk, i32 64, i32 %i.bj
  br label %.thread979

bb.n:                                             ; preds = %bb.b
  tail call void @w2c_hermes_hermes0x3A0x3Ahermes_fatal0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef 53117)
  unreachable

bb.o:                                             ; preds = %bb.b
  %.val941 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val941, i64 %i.v
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %.0.copyload.i960 = load i8, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i960) #7, !srcloc !21
  %.not882 = icmp eq i8 %.0.copyload.i960, 0
  %i.bo = select i1 %.not882, i32 32, i32 16
  br label %.thread979

.thread979:                                       ; preds = %.thread, %bb.h, %bb.b, %bb.o, %bb.m, %bb.i
  %.0859 = phi i32 [ 0, %bb.b ], [ 48, %bb.i ], [ 112, %bb.h ], [ 112, %.thread ], [ %i.bo, %bb.o ], [ %i.bl, %bb.m ] ; 3 uses
  %.not887 = icmp ne i32 %.0859, %.0844
  %i.bp = icmp eq i32 %.0850, 4095
  %or.cond906 = select i1 %.not887, i1 true, i1 %i.bp
  br i1 %or.cond906, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread979
  %i.bq = add i32 %.0850, 1
  br label %bb.s

bb.q:                                             ; preds = %.thread979
  %.not888 = icmp eq i32 %.0850, 0
  br i1 %.not888, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AappendTagToBuffer0x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20unsigned0x20char0x2C0x20int0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0844, i32 noundef %.0850)
  %.val912 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val912, i64 %i.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %.0.copyload.i961 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i961) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_forward_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x3A0x3Avalue0x200x260x260x20is_constructible0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x3A0x3Areference0x3E0x3A0x3Avalue0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x3A0x3Ainsert0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x20const0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cunsigned0x20char0x2A0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0.copyload.i961, i32 noundef %.0852, i32 noundef %.0860) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.2862 = phi i32 [ %.0860, %bb.p ], [ %.0852, %bb.r ], [ %.0860, %bb.q ] ; 24 uses
  %.0846 = phi i32 [ %i.bq, %bb.p ], [ 1, %bb.r ], [ 1, %bb.q ] ; 2 uses
  %.1845 = phi i32 [ %.0844, %bb.p ], [ %.0859, %bb.r ], [ %.0859, %bb.q ] ; 2 uses
  %.val911 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val911, i64 %i.t
  %.0.copyload.i962 = load i32, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i962) #7, !srcloc !19
  %i.bu = zext i32 %.0.copyload.i962 to i64       ; 3 uses
  %.val940 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val940, i64 %i.bu
  %.0.copyload.i963 = load i8, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i963) #7, !srcloc !21
  switch i8 %.0.copyload.i963, label %bb.bt [
    i8 113, label %bb.bv
    i8 114, label %bb.t
    i8 117, label %bb.bv
    i8 116, label %bb.ar
  ]

bb.t:                                             ; preds = %bb.s
  %.val947 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val947, i64 %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %.0.copyload.i964 = load double, ptr %i.bx, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i964) #7, !srcloc !23
  %or.cond907 = fcmp ugt double %.0.copyload.i964, f0x41DFFFFFFFC00000
  %i.by = fcmp olt double %.0.copyload.i964, f0xC1E0000000000000
  %or.cond908 = or i1 %or.cond907, %i.by
  br i1 %or.cond908, label %bb.ai, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i964)
  %i.ca = fcmp olt double %i.bz, f0x41E0000000000000
  br i1 %i.ca, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cb = fcmp ule double %.0.copyload.i964, f0xC1E0000000200000
  %i.cc = fcmp uge double %.0.copyload.i964, f0x41E0000000000000
  %.not898 = or i1 %i.cb, %i.cc
  br i1 %.not898, label %bb.w, label %bb.x, !prof !30

bb.w:                                             ; preds = %bb.v
  tail call void @wasm_rt_trap(i32 noundef 2) #8
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cd = fptosi double %.0.copyload.i964 to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %.1 = phi i32 [ %i.cd, %bb.x ], [ -2147483648, %bb.u ] ; 3 uses
  %i.ce = sitofp i32 %.1 to double
  %i.cf = fcmp une double %.0.copyload.i964, %i.ce
  br i1 %i.cf, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not899 = icmp ne i32 %.1, 0
  %i.cg = bitcast double %.0.copyload.i964 to i64
  %.not900901 = icmp sgt i64 %i.cg, -1
  %.not900 = select i1 %.not899, i1 true, i1 %.not900901
  br i1 %.not900, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.ch = sub i32 %.2862, %.0852                  ; 4 uses
  %i.ci = add nuw i32 %i.ch, 4                    ; 3 uses
  %i.cj = icmp ult i32 %i.ch, -4
  br i1 %i.cj, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ck = sub i32 %.0847, %.2862
  %i.cl = icmp ugt i32 %i.ck, 3
  br i1 %i.cl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cm = zext i32 %.2862 to i64
  %.val923 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.val923, i64 %i.cm
  store i32 0, ptr %i.cn, align 1
  %i.co = add i32 %.2862, 4
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.cp = icmp slt i32 %i.ci, 0
  br i1 %i.cp, label %bb.bw, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = sub i32 %.0847, %.0852                  ; 2 uses
  %i.cr = shl i32 %i.cq, 1
  %i.cs = tail call i32 @llvm.umax.i32(i32 %i.ci, i32 %i.cr)
  %i.ct = icmp ugt i32 %i.cq, 1073741822
  %i.cu = select i1 %i.ct, i32 2147483647, i32 %i.cs ; 2 uses
  %i.cv = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cu) #7 ; 2 uses
  %i.cw = add i32 %i.cv, %i.ch
  %i.cx = zext i32 %i.cw to i64
  %.val922 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val922, i64 %i.cx
  store i32 0, ptr %i.cy, align 1
  %i.cz = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.cv, i32 noundef %.0852, i32 noundef %i.ch) #7 ; 4 uses
  %i.da = add i32 %i.cz, %i.cu                    ; 2 uses
  %i.db = add i32 %i.cz, %i.ci                    ; 2 uses
  %.not902 = icmp eq i32 %.0852, 0
  br i1 %.not902, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0852) #7
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  %i.dc = add i32 %.2862, 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag, %bb.af, %bb.ac
  %.3863 = phi i32 [ %i.co, %bb.ac ], [ %i.dc, %bb.ag ], [ %i.db, %bb.af ], [ %i.db, %bb.ae ] ; 2 uses
  %.1853 = phi i32 [ %.0852, %bb.ac ], [ %.0852, %bb.ag ], [ %i.cz, %bb.af ], [ %i.cz, %bb.ae ]
  %.1848 = phi i32 [ %.0847, %bb.ac ], [ %.0847, %bb.ag ], [ %i.da, %bb.af ], [ %i.da, %bb.ae ]
  %i.dd = add i32 %.3863, -4
  %i.de = zext i32 %i.dd to i64
  %.val921 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %.val921, i64 %i.de
  store i32 %.1, ptr %i.df, align 1
  br label %bb.bv

bb.ai:                                            ; preds = %bb.z, %bb.y, %bb.t
  %i.dg = sub i32 %.2862, %.0852                  ; 4 uses
  %i.dh = add nuw i32 %i.dg, 8                    ; 3 uses
  %i.di = icmp ult i32 %i.dg, -8
  br i1 %i.di, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.dj = sub i32 %.0847, %.2862
  %i.dk = icmp ugt i32 %i.dj, 7
  br i1 %i.dk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dl = zext i32 %.2862 to i64
  %.val935 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val935, i64 %i.dl
  store i64 0, ptr %i.dm, align 1
  %i.dn = add i32 %.2862, 8
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.do = icmp slt i32 %i.dh, 0
  br i1 %i.do, label %bb.bw, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dp = sub i32 %.0847, %.0852                  ; 2 uses
  %i.dq = shl i32 %i.dp, 1
  %i.dr = tail call i32 @llvm.umax.i32(i32 %i.dh, i32 %i.dq)
  %i.ds = icmp ugt i32 %i.dp, 1073741822
  %i.dt = select i1 %i.ds, i32 2147483647, i32 %i.dr ; 2 uses
  %i.du = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.dt) #7 ; 2 uses
  %i.dv = add i32 %i.du, %i.dg
  %i.dw = zext i32 %i.dv to i64
  %.val934 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val934, i64 %i.dw
  store i64 0, ptr %i.dx, align 1
  %i.dy = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.du, i32 noundef %.0852, i32 noundef %i.dg) #7 ; 4 uses
  %i.dz = add i32 %i.dy, %i.dt                    ; 2 uses
  %i.ea = add i32 %i.dy, %i.dh                    ; 2 uses
  %.not903 = icmp eq i32 %.0852, 0
  br i1 %.not903, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0852) #7
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ai
  %i.eb = add i32 %.2862, 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.ao, %bb.an, %bb.ak
  %.4864 = phi i32 [ %i.dn, %bb.ak ], [ %i.eb, %bb.ao ], [ %i.ea, %bb.an ], [ %i.ea, %bb.am ] ; 3 uses
  %.2854 = phi i32 [ %.0852, %bb.ak ], [ %.0852, %bb.ao ], [ %i.dy, %bb.an ], [ %i.dy, %bb.am ] ; 2 uses
  %.2849 = phi i32 [ %.0847, %bb.ak ], [ %.0847, %bb.ao ], [ %i.dz, %bb.an ], [ %i.dz, %bb.am ] ; 2 uses
  %i.ec = add i32 %.4864, -8
  %5 = fcmp ord double %.0.copyload.i964, 0.000000e+00
  %i.ed = zext i32 %i.ec to i64
  %.val933 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val933, i64 %i.ed ; 2 uses
  br i1 %5, label %bb.bu, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 -2251799813685248, ptr %i.ee, align 1
  br label %bb.bv

bb.ar:                                            ; preds = %bb.s
  %.val910 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val910, i64 %i.h
  %.0.copyload.i965 = load i32, ptr %i.ef, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i965) #7, !srcloc !19
  %.val909 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %.val909, i64 %i.bu
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %.0.copyload.i966 = load i32, ptr %i.eh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i966) #7, !srcloc !19
  %i.ei = zext i32 %.0.copyload.i966 to i64
  %.val924 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val924, i64 %i.ei
  %.0.copyload.i967 = load i64, ptr %i.ej, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i967) #7, !srcloc !20
  %.val930 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %.val930, i64 %i.i ; 2 uses
  br i1 %.not881, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 %.0.copyload.i967, ptr %i.ek, align 1
  %.val931 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val931, i64 %i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  store i64 %.0.copyload.i967, ptr %i.em, align 1
  %i.en = load i32, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.eo = add i32 %i.en, -16                      ; 2 uses
  store i32 %i.eo, ptr %i.a, align 8, !tbaa !17
  %.val.i968 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i968, i64 %i.i
  %.0.copyload.i.i969 = load i64, ptr %i.ep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i.i969) #7, !srcloc !20
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i64 %.0.copyload.i967, ptr %i.eq, align 1
  %.val929 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val929, i64 %i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store i64 %.0.copyload.i967, ptr %i.es, align 1
  %i.et = load i32, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.eu = add i32 %i.et, -16                      ; 2 uses
  store i32 %i.eu, ptr %i.a, align 8, !tbaa !17
  %.val.i972 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i972, i64 %i.p
  %.0.copyload.i.i973 = load i64, ptr %i.ev, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i.i973) #7, !srcloc !20
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sink1025 = phi i32 [ %i.eu, %bb.at ], [ %i.eo, %bb.as ] ; 2 uses
  %.0.copyload.i.i973.sink1022 = phi i64 [ %.0.copyload.i.i973, %bb.at ], [ %.0.copyload.i.i969, %bb.as ] ; 2 uses
  %storemerge984 = phi i32 [ %i.et, %bb.at ], [ %i.en, %bb.as ]
  %i.ew = zext i32 %.sink1025 to i64              ; 2 uses
  %.val34.i974 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val34.i974, i64 %i.ew
  store i64 %.0.copyload.i.i973.sink1022, ptr %i.ex, align 1
  %.val33.i975 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val33.i975, i64 %i.ew
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %.0.copyload.i.i973.sink1022, ptr %i.ez, align 1
  %i.fa = add i32 %.0.copyload.i965, 180
  %i.fb = tail call i32 @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AStringLiteralTable0x3A0x3AgetStringID0x28llvh0x3A0x3AStringRef0x290x20const(ptr noundef nonnull %0, i32 noundef %i.fa, i32 noundef %.sink1025) ; 5 uses
  store i32 %storemerge984, ptr %i.a, align 8, !tbaa !17
  %i.fc = icmp ugt i32 %i.fb, 65535
  %i.fd = sub i32 %.2862, %.0852                  ; 11 uses
  br i1 %i.fc, label %bb.av, label %bb.bd

bb.av:                                            ; preds = %bb.au
  %i.fe = add nuw i32 %i.fd, 4                    ; 3 uses
  %i.ff = icmp ult i32 %i.fd, -4
  br i1 %i.ff, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.fg = sub i32 %.0847, %.2862
  %i.fh = icmp ugt i32 %i.fg, 3
  br i1 %i.fh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fi = zext i32 %.2862 to i64
  %.val920 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %.val920, i64 %i.fi
  store i32 0, ptr %i.fj, align 1
  %i.fk = add i32 %.2862, 4
  br label %bb.bc

bb.ay:                                            ; preds = %bb.aw
  %i.fl = icmp slt i32 %i.fe, 0
  br i1 %i.fl, label %bb.bw, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fm = sub i32 %.0847, %.0852                  ; 2 uses
  %i.fn = shl i32 %i.fm, 1
  %i.fo = tail call i32 @llvm.umax.i32(i32 %i.fe, i32 %i.fn)
  %i.fp = icmp ugt i32 %i.fm, 1073741822
  %i.fq = select i1 %i.fp, i32 2147483647, i32 %i.fo ; 2 uses
  %i.fr = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.fq) #7 ; 2 uses
  %i.fs = add i32 %i.fr, %i.fd
  %i.ft = zext i32 %i.fs to i64
  %.val919 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fu = getelementptr inbounds nuw i8, ptr %.val919, i64 %i.ft
  store i32 0, ptr %i.fu, align 1
  %i.fv = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.fr, i32 noundef %.0852, i32 noundef %i.fd) #7 ; 4 uses
  %i.fw = add i32 %i.fv, %i.fq                    ; 2 uses
  %i.fx = add i32 %i.fv, %i.fe                    ; 2 uses
  %.not895 = icmp eq i32 %.0852, 0
  br i1 %.not895, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0852) #7
  br label %bb.bc

bb.bb:                                            ; preds = %bb.av
  %i.fy = add i32 %.2862, 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.bb, %bb.ba, %bb.ax
  %.5865 = phi i32 [ %i.fk, %bb.ax ], [ %i.fy, %bb.bb ], [ %i.fx, %bb.ba ], [ %i.fx, %bb.az ] ; 2 uses
  %.3855 = phi i32 [ %.0852, %bb.ax ], [ %.0852, %bb.bb ], [ %i.fv, %bb.ba ], [ %i.fv, %bb.az ]
  %.3 = phi i32 [ %.0847, %bb.ax ], [ %.0847, %bb.bb ], [ %i.fw, %bb.ba ], [ %i.fw, %bb.az ]
  %i.fz = add i32 %.5865, -4
  %i.ga = zext i32 %i.fz to i64
  %.val918 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %.val918, i64 %i.ga
  store i32 %i.fb, ptr %i.gb, align 1
  br label %bb.bv

bb.bd:                                            ; preds = %bb.au
  %i.gc = icmp samesign ugt i32 %i.fb, 255
  br i1 %i.gc, label %bb.be, label %bb.bm

bb.be:                                            ; preds = %bb.bd
  %i.gd = add nuw i32 %i.fd, 2                    ; 3 uses
  %i.ge = icmp ult i32 %i.fd, -2
  br i1 %i.ge, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.gf = sub i32 %.0847, %.2862
  %i.gg = icmp ugt i32 %i.gf, 1
  br i1 %i.gg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gh = zext i32 %.2862 to i64
  %.val945 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %.val945, i64 %i.gh
  store i16 0, ptr %i.gi, align 1
  %i.gj = add i32 %.2862, 2
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.gk = icmp slt i32 %i.gd, 0
  br i1 %i.gk, label %bb.bw, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gl = sub i32 %.0847, %.0852                  ; 2 uses
  %i.gm = shl i32 %i.gl, 1
  %i.gn = tail call i32 @llvm.umax.i32(i32 %i.gd, i32 %i.gm)
  %i.go = icmp ugt i32 %i.gl, 1073741822
  %i.gp = select i1 %i.go, i32 2147483647, i32 %i.gn ; 2 uses
  %i.gq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gp) #7 ; 2 uses
  %i.gr = add i32 %i.gq, %i.fd
  %i.gs = zext i32 %i.gr to i64
  %.val944 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %.val944, i64 %i.gs
  store i16 0, ptr %i.gt, align 1
  %i.gu = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.gq, i32 noundef %.0852, i32 noundef %i.fd) #7 ; 4 uses
  %i.gv = add i32 %i.gu, %i.gp                    ; 2 uses
  %i.gw = add i32 %i.gu, %i.gd                    ; 2 uses
  %.not894 = icmp eq i32 %.0852, 0
  br i1 %.not894, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0852) #7
  br label %bb.bl

bb.bk:                                            ; preds = %bb.be
  %i.gx = add i32 %.2862, 2
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bi, %bb.bk, %bb.bj, %bb.bg
  %.6866 = phi i32 [ %i.gj, %bb.bg ], [ %i.gx, %bb.bk ], [ %i.gw, %bb.bj ], [ %i.gw, %bb.bi ] ; 2 uses
  %.4856 = phi i32 [ %.0852, %bb.bg ], [ %.0852, %bb.bk ], [ %i.gu, %bb.bj ], [ %i.gu, %bb.bi ]
  %.4 = phi i32 [ %.0847, %bb.bg ], [ %.0847, %bb.bk ], [ %i.gv, %bb.bj ], [ %i.gv, %bb.bi ]
  %i.gy = add i32 %.6866, -2
  %i.gz = zext i32 %i.gy to i64
  %.val943 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ha = trunc nuw i32 %i.fb to i16
  %i.hb = getelementptr inbounds nuw i8, ptr %.val943, i64 %i.gz
  store i16 %i.ha, ptr %i.hb, align 1
  br label %bb.bv

bb.bm:                                            ; preds = %bb.bd
  %i.hc = add i32 %i.fd, 1                        ; 4 uses
  %.not891 = icmp eq i32 %i.hc, 0
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3Agenerate0x28hermes0x3A0x3ASourceMapGenerator0x2A0x29:bb.a
  %i.cxl = trunc i32 %.1874953 to i8
  %i.cxm = getelementptr inbounds nuw i8, ptr %.val85547, i64 %i.cxk
  store i8 %i.cxl, ptr %i.cxm, align 1
  %i.cxn = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.51, i32 noundef %.0.copyload.i86950, i32 noundef %i.cxa) #7 ; 2 uses
  %i.cxo = add i32 %i.cxn, %i.cxh
  %.val84112 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cxp = getelementptr inbounds nuw i8, ptr %.val84112, i64 %i.ctk
  store i32 %i.cxo, ptr %i.cxp, align 1
  %i.cxq = add i32 %i.cxj, 1
  %.val84111 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cxr = getelementptr inbounds nuw i8, ptr %.val84111, i64 %i.ctg
  store i32 %i.cxq, ptr %i.cxr, align 1
  %.val84110 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cxs = getelementptr inbounds nuw i8, ptr %.val84110, i64 %i.ctf
  store i32 %i.cxn, ptr %i.cxs, align 1
  %.not78919 = icmp eq i32 %.0.copyload.i86950, 0
  br i1 %.not78919, label %.loopexit91647, label %bb.te

bb.te:                                            ; preds = %bb.td
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i86950) #7
  br label %.loopexit91647

bb.tf:                                            ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit86914
  %i.cxt = getelementptr inbounds nuw i8, ptr %.val81759, i64 %i.coa
  %i.cxu = getelementptr inbounds nuw i8, ptr %i.cxt, i64 32
  %.0.copyload.i86951 = load double, ptr %i.cxu, align 1 ; 16 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i86951) #7, !srcloc !23
  %i.cxv = bitcast double %.0.copyload.i86951 to i64 ; 6 uses
  %i.cxw = fcmp une double %.0.copyload.i86951, 0.000000e+00
  %i.cxx = icmp slt i64 %i.cxv, 0
  %or.cond = or i1 %i.cxw, %i.cxx
  br i1 %or.cond, label %bb.tu, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %.val81731 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cxy = getelementptr inbounds nuw i8, ptr %.val81731, i64 %i.jm
  %.0.copyload.i86952 = load i32, ptr %i.cxy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86952) #7, !srcloc !19
  %i.cxz = zext i32 %.0.copyload.i86952 to i64    ; 7 uses
  %i.cya = add nuw nsw i64 %i.cxz, 4              ; 6 uses
  %.val81730 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cyb = getelementptr inbounds nuw i8, ptr %.val81730, i64 %i.cya
  %.0.copyload.i86953 = load i32, ptr %i.cyb, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86953) #7, !srcloc !19
  %.val81729 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cyc = getelementptr inbounds nuw i8, ptr %.val81729, i64 %i.cxz
  %.0.copyload.i86954 = load i32, ptr %i.cyc, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86954) #7, !srcloc !19
  %i.cyd = sub i32 %.0.copyload.i86953, %.0.copyload.i86954 ; 3 uses
  %i.cye = add nuw nsw i64 %i.cxz, 8              ; 4 uses
  %.val81728 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cyf = getelementptr inbounds nuw i8, ptr %.val81728, i64 %i.cye
  %.0.copyload.i86955 = load i32, ptr %i.cyf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86955) #7, !srcloc !19
  %i.cyg = icmp ugt i32 %.0.copyload.i86955, %.0.copyload.i86953
  br i1 %i.cyg, label %bb.th, label %bb.ti

bb.th:                                            ; preds = %bb.tg
  %i.cyh = zext i32 %.0.copyload.i86953 to i64
  %.val85546 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cyi = getelementptr inbounds nuw i8, ptr %.val85546, i64 %i.cyh
  store i8 122, ptr %i.cyi, align 1
  %i.cyj = add nuw i32 %.0.copyload.i86953, 1     ; 2 uses
  %.val84109 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cyk = getelementptr inbounds nuw i8, ptr %.val84109, i64 %i.cya
  store i32 %i.cyj, ptr %i.cyk, align 1
  br label %bb.tn

bb.ti:                                            ; preds = %bb.tg
  %i.cyl = add i32 %i.cyd, 1                      ; 2 uses
  %i.cym = icmp slt i32 %i.cyl, 0
  br i1 %i.cym, label %.loopexit91557, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  %i.cyn = sub i32 %.0.copyload.i86955, %.0.copyload.i86954 ; 2 uses
  %i.cyo = shl i32 %i.cyn, 1
  %i.cyp = tail call i32 @llvm.umax.i32(i32 %i.cyo, i32 %i.cyl)
  %i.cyq = icmp ugt i32 %i.cyn, 1073741822
  %i.cyr = select i1 %i.cyq, i32 2147483647, i32 %i.cyp ; 3 uses
  %.not79000 = icmp eq i32 %i.cyr, 0
  br i1 %.not79000, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.cys = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cyr) #7
  br label %bb.tl

bb.tl:                                            ; preds = %bb.tj, %bb.tk
  %.52 = phi i32 [ %i.cys, %bb.tk ], [ 0, %bb.tj ] ; 2 uses
  %i.cyt = add i32 %.52, %i.cyd                   ; 2 uses
  %i.cyu = zext i32 %i.cyt to i64
  %.val85545 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cyv = getelementptr inbounds nuw i8, ptr %.val85545, i64 %i.cyu
  store i8 122, ptr %i.cyv, align 1
  %i.cyw = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.52, i32 noundef %.0.copyload.i86954, i32 noundef %i.cyd) #7 ; 2 uses
  %i.cyx = add i32 %i.cyw, %i.cyr
  %.val84108 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cyy = getelementptr inbounds nuw i8, ptr %.val84108, i64 %i.cye
  store i32 %i.cyx, ptr %i.cyy, align 1
  %i.cyz = add i32 %i.cyt, 1                      ; 2 uses
  %.val84107 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cza = getelementptr inbounds nuw i8, ptr %.val84107, i64 %i.cya
  store i32 %i.cyz, ptr %i.cza, align 1
  %.val84106 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.czb = getelementptr inbounds nuw i8, ptr %.val84106, i64 %i.cxz
  store i32 %i.cyw, ptr %i.czb, align 1
  %.not79001 = icmp eq i32 %.0.copyload.i86954, 0
  br i1 %.not79001, label %bb.tn, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i86954) #7
  %.val81727 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.czc = getelementptr inbounds nuw i8, ptr %.val81727, i64 %i.cya
  %.0.copyload.i86956 = load i32, ptr %i.czc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86956) #7, !srcloc !19
  br label %bb.tn

bb.tn:                                            ; preds = %bb.tl, %bb.tm, %bb.th
  %.2875567 = phi i32 [ %i.cyj, %bb.th ], [ %i.cyz, %bb.tl ], [ %.0.copyload.i86956, %bb.tm ] ; 4 uses
  %i.czd = add nuw nsw i64 %i.cxz, 12             ; 2 uses
  %.val86235 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cze = getelementptr inbounds nuw i8, ptr %.val86235, i64 %i.czd
  %.0.copyload.i86957 = load i8, ptr %i.cze, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i86957) #7, !srcloc !21
  %i.czf = icmp ugt i32 %.1874953, 255
  %i.czg = zext i1 %i.czf to i8
  %i.czh = or i8 %.0.copyload.i86957, %i.czg
  %.val85544 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.czi = getelementptr inbounds nuw i8, ptr %.val85544, i64 %i.czd
  store i8 %i.czh, ptr %i.czi, align 1
  %.val81726 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.czj = getelementptr inbounds nuw i8, ptr %.val81726, i64 %i.cye
  %.0.copyload.i86958 = load i32, ptr %i.czj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86958) #7, !srcloc !19
  %i.czk = icmp ugt i32 %.0.copyload.i86958, %.2875567
  br i1 %i.czk, label %bb.to, label %bb.tp

bb.to:                                            ; preds = %bb.tn
  %i.czl = zext i32 %.2875567 to i64
  %.val85543 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.czm = trunc i32 %.1874953 to i8
  %i.czn = getelementptr inbounds nuw i8, ptr %.val85543, i64 %i.czl
  store i8 %i.czm, ptr %i.czn, align 1
  %i.czo = add nuw i32 %.2875567, 1
  %.val84105 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.czp = getelementptr inbounds nuw i8, ptr %.val84105, i64 %i.cya
  store i32 %i.czo, ptr %i.czp, align 1
  br label %.loopexit91647

bb.tp:                                            ; preds = %bb.tn
  %.val81725 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.czq = getelementptr inbounds nuw i8, ptr %.val81725, i64 %i.cxz
  %.0.copyload.i86959 = load i32, ptr %i.czq, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86959) #7, !srcloc !19
  %i.czr = sub i32 %.2875567, %.0.copyload.i86959 ; 3 uses
  %i.czs = add i32 %i.czr, 1                      ; 2 uses
  %i.czt = icmp slt i32 %i.czs, 0
  br i1 %i.czt, label %.loopexit91557, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.czu = sub i32 %.0.copyload.i86958, %.0.copyload.i86959 ; 2 uses
  %i.czv = shl i32 %i.czu, 1
  %i.czw = tail call i32 @llvm.umax.i32(i32 %i.czv, i32 %i.czs)
  %i.czx = icmp ugt i32 %i.czu, 1073741822
  %i.czy = select i1 %i.czx, i32 2147483647, i32 %i.czw ; 3 uses
  %.not79002 = icmp eq i32 %i.czy, 0
  br i1 %.not79002, label %bb.ts, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  %i.czz = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.czy) #7
  br label %bb.ts

bb.ts:                                            ; preds = %bb.tq, %bb.tr
  %.53 = phi i32 [ %i.czz, %bb.tr ], [ 0, %bb.tq ] ; 2 uses
  %i.daa = add i32 %.53, %i.czr                   ; 2 uses
  %i.dab = zext i32 %i.daa to i64
  %.val85542 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dac = trunc i32 %.1874953 to i8
  %i.dad = getelementptr inbounds nuw i8, ptr %.val85542, i64 %i.dab
  store i8 %i.dac, ptr %i.dad, align 1
  %i.dae = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.53, i32 noundef %.0.copyload.i86959, i32 noundef %i.czr) #7 ; 2 uses
  %i.daf = add i32 %i.dae, %i.czy
  %.val84104 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dag = getelementptr inbounds nuw i8, ptr %.val84104, i64 %i.cye
  store i32 %i.daf, ptr %i.dag, align 1
  %i.dah = add i32 %i.daa, 1
  %.val84103 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dai = getelementptr inbounds nuw i8, ptr %.val84103, i64 %i.cya
  store i32 %i.dah, ptr %i.dai, align 1
  %.val84102 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.daj = getelementptr inbounds nuw i8, ptr %.val84102, i64 %i.cxz
  store i32 %i.dae, ptr %i.daj, align 1
  %.not79003 = icmp eq i32 %.0.copyload.i86959, 0
  br i1 %.not79003, label %.loopexit91647, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i86959) #7
  br label %.loopexit91647

bb.tu:                                            ; preds = %bb.tf
  %i.dak = fcmp uno double %.0.copyload.i86951, 0.000000e+00
  %or.cond79357 = fcmp ugt double %.0.copyload.i86951, 2.550000e+02
  %2 = fcmp olt double %.0.copyload.i86951, 0.000000e+00
  %or.cond79358 = or i1 %or.cond79357, %2
  br i1 %or.cond79358, label %bb.us, label %3

3:                                                ; preds = %bb.tu
  %4 = fcmp ule double %.0.copyload.i86951, -1.000000e+00
  br i1 %4, label %5, label %bb.tv, !prof !30

5:                                                ; preds = %3
  tail call void @wasm_rt_trap(i32 noundef 2) #8
  unreachable

bb.tv:                                            ; preds = %3
  %i.dal = fptoui double %.0.copyload.i86951 to i32 ; 5 uses
  %i.dam = uitofp i32 %i.dal to double
  %i.dan = fcmp une double %.0.copyload.i86951, %i.dam
  br i1 %i.dan, label %bb.us, label %bb.tw

bb.tw:                                            ; preds = %bb.tv
  %.not79004 = icmp ne i32 %i.dal, 0
  %.not7900579006 = icmp sgt i64 %i.cxv, -1
  %.not79005 = or i1 %.not79004, %.not7900579006
  br i1 %.not79005, label %bb.tx, label %bb.us

bb.tx:                                            ; preds = %bb.tw
  %.val81724 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dao = getelementptr inbounds nuw i8, ptr %.val81724, i64 %i.jm
  %.0.copyload.i86960 = load i32, ptr %i.dao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86960) #7, !srcloc !19
  %i.dap = zext i32 %.0.copyload.i86960 to i64    ; 9 uses
  %i.daq = add nuw nsw i64 %i.dap, 4              ; 9 uses
  %.val81723 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dar = getelementptr inbounds nuw i8, ptr %.val81723, i64 %i.daq
  %.0.copyload.i86961 = load i32, ptr %i.dar, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86961) #7, !srcloc !19
  %.val81722 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.das = getelementptr inbounds nuw i8, ptr %.val81722, i64 %i.dap
  %.0.copyload.i86962 = load i32, ptr %i.das, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86962) #7, !srcloc !19
  %i.dat = sub i32 %.0.copyload.i86961, %.0.copyload.i86962 ; 3 uses
  %i.dau = add nuw nsw i64 %i.dap, 8              ; 6 uses
  %.val81721 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dav = getelementptr inbounds nuw i8, ptr %.val81721, i64 %i.dau
  %.0.copyload.i86963 = load i32, ptr %i.dav, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86963) #7, !srcloc !19
  %i.daw = icmp ugt i32 %.0.copyload.i86963, %.0.copyload.i86961
  br i1 %i.daw, label %bb.ty, label %bb.tz

bb.ty:                                            ; preds = %bb.tx
  %i.dax = zext i32 %.0.copyload.i86961 to i64
  %.val85541 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.day = getelementptr inbounds nuw i8, ptr %.val85541, i64 %i.dax
  store i8 110, ptr %i.day, align 1
  %i.daz = add nuw i32 %.0.copyload.i86961, 1     ; 2 uses
  %.val84101 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dba = getelementptr inbounds nuw i8, ptr %.val84101, i64 %i.daq
  store i32 %i.daz, ptr %i.dba, align 1
  br label %bb.ue

bb.tz:                                            ; preds = %bb.tx
  %i.dbb = add i32 %i.dat, 1                      ; 2 uses
  %i.dbc = icmp slt i32 %i.dbb, 0
  br i1 %i.dbc, label %.loopexit91557, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.dbd = sub i32 %.0.copyload.i86963, %.0.copyload.i86962 ; 2 uses
  %i.dbe = shl i32 %i.dbd, 1
  %i.dbf = tail call i32 @llvm.umax.i32(i32 %i.dbe, i32 %i.dbb)
  %i.dbg = icmp ugt i32 %i.dbd, 1073741822
  %i.dbh = select i1 %i.dbg, i32 2147483647, i32 %i.dbf ; 3 uses
  %.not79007 = icmp eq i32 %i.dbh, 0
  br i1 %.not79007, label %bb.uc, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.dbi = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.dbh) #7
  br label %bb.uc

bb.uc:                                            ; preds = %bb.ua, %bb.ub
  %.55 = phi i32 [ %i.dbi, %bb.ub ], [ 0, %bb.ua ] ; 2 uses
  %i.dbj = add i32 %.55, %i.dat                   ; 2 uses
  %i.dbk = zext i32 %i.dbj to i64
  %.val85540 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dbl = getelementptr inbounds nuw i8, ptr %.val85540, i64 %i.dbk
  store i8 110, ptr %i.dbl, align 1
  %i.dbm = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.55, i32 noundef %.0.copyload.i86962, i32 noundef %i.dat) #7 ; 2 uses
  %i.dbn = add i32 %i.dbm, %i.dbh
  %.val84100 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dbo = getelementptr inbounds nuw i8, ptr %.val84100, i64 %i.dau
  store i32 %i.dbn, ptr %i.dbo, align 1
  %i.dbp = add i32 %i.dbj, 1                      ; 2 uses
  %.val84099 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dbq = getelementptr inbounds nuw i8, ptr %.val84099, i64 %i.daq
  store i32 %i.dbp, ptr %i.dbq, align 1
  %.val84098 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dbr = getelementptr inbounds nuw i8, ptr %.val84098, i64 %i.dap
  store i32 %i.dbm, ptr %i.dbr, align 1
  %.not79008 = icmp eq i32 %.0.copyload.i86962, 0
  br i1 %.not79008, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i86962) #7
  %.val81720 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dbs = getelementptr inbounds nuw i8, ptr %.val81720, i64 %i.daq
  %.0.copyload.i86964 = load i32, ptr %i.dbs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86964) #7, !srcloc !19
  br label %bb.ue

bb.ue:                                            ; preds = %bb.uc, %bb.ud, %bb.ty
  %.2975568 = phi i32 [ %i.daz, %bb.ty ], [ %i.dbp, %bb.uc ], [ %.0.copyload.i86964, %bb.ud ] ; 4 uses
  %i.dbt = add nuw nsw i64 %i.dap, 12             ; 4 uses
  %.val86234 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dbu = getelementptr inbounds nuw i8, ptr %.val86234, i64 %i.dbt
  %.0.copyload.i86965 = load i8, ptr %i.dbu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i86965) #7, !srcloc !21
  %i.dbv = icmp ugt i32 %.1874953, 255
  %i.dbw = zext i1 %i.dbv to i8
  %i.dbx = or i8 %.0.copyload.i86965, %i.dbw
  %.val85539 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dby = getelementptr inbounds nuw i8, ptr %.val85539, i64 %i.dbt
  store i8 %i.dbx, ptr %i.dby, align 1
  %.val81719 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dbz = getelementptr inbounds nuw i8, ptr %.val81719, i64 %i.dau
  %.0.copyload.i86966 = load i32, ptr %i.dbz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86966) #7, !srcloc !19
  %i.dca = icmp ugt i32 %.0.copyload.i86966, %.2975568
  br i1 %i.dca, label %bb.uf, label %bb.ug

bb.uf:                                            ; preds = %bb.ue
  %i.dcb = zext i32 %.2975568 to i64
  %.val85538 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dcc = trunc i32 %.1874953 to i8
  %i.dcd = getelementptr inbounds nuw i8, ptr %.val85538, i64 %i.dcb
  store i8 %i.dcc, ptr %i.dcd, align 1
  %i.dce = add nuw i32 %.2975568, 1               ; 2 uses
  %.val84097 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dcf = getelementptr inbounds nuw i8, ptr %.val84097, i64 %i.daq
  store i32 %i.dce, ptr %i.dcf, align 1
  br label %bb.ul

bb.ug:                                            ; preds = %bb.ue
  %.val81718 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dcg = getelementptr inbounds nuw i8, ptr %.val81718, i64 %i.dap
  %.0.copyload.i86967 = load i32, ptr %i.dcg, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86967) #7, !srcloc !19
  %i.dch = sub i32 %.2975568, %.0.copyload.i86967 ; 3 uses
  %i.dci = add i32 %i.dch, 1                      ; 2 uses
  %i.dcj = icmp slt i32 %i.dci, 0
  br i1 %i.dcj, label %.loopexit91557, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %i.dck = sub i32 %.0.copyload.i86966, %.0.copyload.i86967 ; 2 uses
  %i.dcl = shl i32 %i.dck, 1
  %i.dcm = tail call i32 @llvm.umax.i32(i32 %i.dcl, i32 %i.dci)
  %i.dcn = icmp ugt i32 %i.dck, 1073741822
  %i.dco = select i1 %i.dcn, i32 2147483647, i32 %i.dcm ; 3 uses
  %.not79009 = icmp eq i32 %i.dco, 0
  br i1 %.not79009, label %bb.uj, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.dcp = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.dco) #7
  br label %bb.uj

bb.uj:                                            ; preds = %bb.uh, %bb.ui
  %.56 = phi i32 [ %i.dcp, %bb.ui ], [ 0, %bb.uh ] ; 2 uses
  %i.dcq = add i32 %.56, %i.dch                   ; 2 uses
  %i.dcr = zext i32 %i.dcq to i64
  %.val85537 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dcs = trunc i32 %.1874953 to i8
  %i.dct = getelementptr inbounds nuw i8, ptr %.val85537, i64 %i.dcr
  store i8 %i.dcs, ptr %i.dct, align 1
  %i.dcu = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.56, i32 noundef %.0.copyload.i86967, i32 noundef %i.dch) #7 ; 2 uses
  %i.dcv = add i32 %i.dcu, %i.dco
  %.val84096 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dcw = getelementptr inbounds nuw i8, ptr %.val84096, i64 %i.dau
  store i32 %i.dcv, ptr %i.dcw, align 1
  %i.dcx = add i32 %i.dcq, 1                      ; 2 uses
  %.val84095 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dcy = getelementptr inbounds nuw i8, ptr %.val84095, i64 %i.daq
  store i32 %i.dcx, ptr %i.dcy, align 1
  %.val84094 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dcz = getelementptr inbounds nuw i8, ptr %.val84094, i64 %i.dap
  store i32 %i.dcu, ptr %i.dcz, align 1
  %.not79010 = icmp eq i32 %.0.copyload.i86967, 0
  br i1 %.not79010, label %bb.ul, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i86967) #7
  %.val81717 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dda = getelementptr inbounds nuw i8, ptr %.val81717, i64 %i.daq
  %.0.copyload.i86968 = load i32, ptr %i.dda, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86968) #7, !srcloc !19
  br label %bb.ul

bb.ul:                                            ; preds = %bb.uj, %bb.uk, %bb.uf
  %.3075569 = phi i32 [ %i.dce, %bb.uf ], [ %i.dcx, %bb.uj ], [ %.0.copyload.i86968, %bb.uk ] ; 4 uses
  %.val86233 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ddb = getelementptr inbounds nuw i8, ptr %.val86233, i64 %i.dbt
  %.0.copyload.i86969 = load i8, ptr %i.ddb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i86969) #7, !srcloc !21
  %i.ddc = icmp ugt i32 %i.dal, 255
  %i.ddd = zext i1 %i.ddc to i8
  %i.dde = or i8 %.0.copyload.i86969, %i.ddd
  %.val85536 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ddf = getelementptr inbounds nuw i8, ptr %.val85536, i64 %i.dbt
  store i8 %i.dde, ptr %i.ddf, align 1
  %.val81716 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ddg = getelementptr inbounds nuw i8, ptr %.val81716, i64 %i.dau
  %.0.copyload.i86970 = load i32, ptr %i.ddg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86970) #7, !srcloc !19
  %i.ddh = icmp ugt i32 %.0.copyload.i86970, %.3075569
  br i1 %i.ddh, label %bb.um, label %bb.un

bb.um:                                            ; preds = %bb.ul
  %i.ddi = zext i32 %.3075569 to i64
  %.val85535 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ddj = trunc i32 %i.dal to i8
  %i.ddk = getelementptr inbounds nuw i8, ptr %.val85535, i64 %i.ddi
  store i8 %i.ddj, ptr %i.ddk, align 1
  %i.ddl = add nuw i32 %.3075569, 1
  %.val84093 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ddm = getelementptr inbounds nuw i8, ptr %.val84093, i64 %i.daq
  store i32 %i.ddl, ptr %i.ddm, align 1
  br label %.loopexit91647

bb.un:                                            ; preds = %bb.ul
  %.val81715 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ddn = getelementptr inbounds nuw i8, ptr %.val81715, i64 %i.dap
  %.0.copyload.i86971 = load i32, ptr %i.ddn, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86971) #7, !srcloc !19
  %i.ddo = sub i32 %.3075569, %.0.copyload.i86971 ; 3 uses
  %i.ddp = add i32 %i.ddo, 1                      ; 2 uses
  %i.ddq = icmp slt i32 %i.ddp, 0
  br i1 %i.ddq, label %.loopexit91557, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.ddr = sub i32 %.0.copyload.i86970, %.0.copyload.i86971 ; 2 uses
  %i.dds = shl i32 %i.ddr, 1
  %i.ddt = tail call i32 @llvm.umax.i32(i32 %i.dds, i32 %i.ddp)
  %i.ddu = icmp ugt i32 %i.ddr, 1073741822
  %i.ddv = select i1 %i.ddu, i32 2147483647, i32 %i.ddt ; 3 uses
  %.not79011 = icmp eq i32 %i.ddv, 0
  br i1 %.not79011, label %bb.uq, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.ddw = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ddv) #7
  br label %bb.uq

bb.uq:                                            ; preds = %bb.uo, %bb.up
  %.57 = phi i32 [ %i.ddw, %bb.up ], [ 0, %bb.uo ] ; 2 uses
  %i.ddx = add i32 %.57, %i.ddo                   ; 2 uses
  %i.ddy = zext i32 %i.ddx to i64
  %.val85534 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ddz = trunc i32 %i.dal to i8
  %i.dea = getelementptr inbounds nuw i8, ptr %.val85534, i64 %i.ddy
  store i8 %i.ddz, ptr %i.dea, align 1
  %i.deb = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.57, i32 noundef %.0.copyload.i86971, i32 noundef %i.ddo) #7 ; 2 uses
  %i.dec = add i32 %i.deb, %i.ddv
  %.val84092 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ded = getelementptr inbounds nuw i8, ptr %.val84092, i64 %i.dau
  store i32 %i.dec, ptr %i.ded, align 1
  %i.dee = add i32 %i.ddx, 1
  %.val84091 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.def = getelementptr inbounds nuw i8, ptr %.val84091, i64 %i.daq
  store i32 %i.dee, ptr %i.def, align 1
  %.val84090 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.deg = getelementptr inbounds nuw i8, ptr %.val84090, i64 %i.dap
  store i32 %i.deb, ptr %i.deg, align 1
  %.not79012 = icmp eq i32 %.0.copyload.i86971, 0
  br i1 %.not79012, label %.loopexit91647, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i86971) #7
  br label %.loopexit91647

bb.us:                                            ; preds = %bb.tw, %bb.tv, %bb.tu
  br i1 %i.dak, label %bb.vp, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  %i.deh = fcmp ogt double %.0.copyload.i86951, f0x41DFFFFFFFC00000
  %i.dei = fcmp olt double %.0.copyload.i86951, f0xC1E0000000000000
  %or.cond79359 = or i1 %i.deh, %i.dei
  br i1 %or.cond79359, label %bb.vp, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.dej = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i86951)
  %i.dek = fcmp olt double %i.dej, f0x41E0000000000000
  br i1 %i.dek, label %bb.uv, label %bb.uy

bb.uv:                                            ; preds = %bb.uu
  %i.del = fcmp ule double %.0.copyload.i86951, f0xC1E0000000200000
  %i.dem = fcmp uge double %.0.copyload.i86951, f0x41E0000000000000
  %.not79015 = or i1 %i.del, %i.dem
  br i1 %.not79015, label %bb.uw, label %bb.ux, !prof !30

bb.uw:                                            ; preds = %bb.uv
  tail call void @wasm_rt_trap(i32 noundef 2) #8
  unreachable

bb.ux:                                            ; preds = %bb.uv
  %i.den = fptosi double %.0.copyload.i86951 to i32
  br label %bb.uy

bb.uy:                                            ; preds = %bb.uu, %bb.ux
  %.58 = phi i32 [ %i.den, %bb.ux ], [ -2147483648, %bb.uu ] ; 3 uses
  %i.deo = sitofp i32 %.58 to double
  %i.dep = fcmp une double %.0.copyload.i86951, %i.deo
  br i1 %i.dep, label %bb.vp, label %bb.uz

bb.uz:                                            ; preds = %bb.uy
  %.not79016 = icmp ne i32 %.58, 0
  %.not7901779018 = icmp sgt i64 %i.cxv, -1
  %.not79017 = or i1 %.not7901779018, %.not79016
  br i1 %.not79017, label %bb.va, label %bb.vp

bb.va:                                            ; preds = %bb.uz
  %i.deq = sext i32 %.58 to i64
  %.val81714 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.der = getelementptr inbounds nuw i8, ptr %.val81714, i64 %i.jm
  %.0.copyload.i86972 = load i32, ptr %i.der, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86972) #7, !srcloc !19
  %i.des = zext i32 %.0.copyload.i86972 to i64    ; 7 uses
  %i.det = add nuw nsw i64 %i.des, 4              ; 6 uses
  %.val81713 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.deu = getelementptr inbounds nuw i8, ptr %.val81713, i64 %i.det
  %.0.copyload.i86973 = load i32, ptr %i.deu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86973) #7, !srcloc !19
  %.val81712 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dev = getelementptr inbounds nuw i8, ptr %.val81712, i64 %i.des
  %.0.copyload.i86974 = load i32, ptr %i.dev, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86974) #7, !srcloc !19
  %i.dew = sub i32 %.0.copyload.i86973, %.0.copyload.i86974 ; 3 uses
  %i.dex = add nuw nsw i64 %i.des, 8              ; 4 uses
  %.val81711 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dey = getelementptr inbounds nuw i8, ptr %.val81711, i64 %i.dex
  %.0.copyload.i86975 = load i32, ptr %i.dey, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86975) #7, !srcloc !19
  %i.dez = icmp ugt i32 %.0.copyload.i86975, %.0.copyload.i86973
  br i1 %i.dez, label %bb.vb, label %bb.vc

bb.vb:                                            ; preds = %bb.va
  %i.dfa = zext i32 %.0.copyload.i86973 to i64
  %.val85533 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dfb = getelementptr inbounds nuw i8, ptr %.val85533, i64 %i.dfa
  store i8 111, ptr %i.dfb, align 1
  %i.dfc = add nuw i32 %.0.copyload.i86973, 1     ; 2 uses
  %.val84089 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dfd = getelementptr inbounds nuw i8, ptr %.val84089, i64 %i.det
  store i32 %i.dfc, ptr %i.dfd, align 1
  br label %bb.vh

bb.vc:                                            ; preds = %bb.va
  %i.dfe = add i32 %i.dew, 1                      ; 2 uses
  %i.dff = icmp slt i32 %i.dfe, 0
  br i1 %i.dff, label %.loopexit91557, label %bb.vd

bb.vd:                                            ; preds = %bb.vc
  %i.dfg = sub i32 %.0.copyload.i86975, %.0.copyload.i86974 ; 2 uses
  %i.dfh = shl i32 %i.dfg, 1
  %i.dfi = tail call i32 @llvm.umax.i32(i32 %i.dfh, i32 %i.dfe)
  %i.dfj = icmp ugt i32 %i.dfg, 1073741822
  %i.dfk = select i1 %i.dfj, i32 2147483647, i32 %i.dfi ; 3 uses
  %.not79019 = icmp eq i32 %i.dfk, 0
  br i1 %.not79019, label %bb.vf, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  %i.dfl = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.dfk) #7
  br label %bb.vf

bb.vf:                                            ; preds = %bb.vd, %bb.ve
  %.59 = phi i32 [ %i.dfl, %bb.ve ], [ 0, %bb.vd ] ; 2 uses
  %i.dfm = add i32 %.59, %i.dew                   ; 2 uses
  %i.dfn = zext i32 %i.dfm to i64
  %.val85532 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dfo = getelementptr inbounds nuw i8, ptr %.val85532, i64 %i.dfn
  store i8 111, ptr %i.dfo, align 1
  %i.dfp = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.59, i32 noundef %.0.copyload.i86974, i32 noundef %i.dew) #7 ; 2 uses
  %i.dfq = add i32 %i.dfp, %i.dfk
  %.val84088 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dfr = getelementptr inbounds nuw i8, ptr %.val84088, i64 %i.dex
  store i32 %i.dfq, ptr %i.dfr, align 1
  %i.dfs = add i32 %i.dfm, 1                      ; 2 uses
  %.val84087 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dft = getelementptr inbounds nuw i8, ptr %.val84087, i64 %i.det
  store i32 %i.dfs, ptr %i.dft, align 1
  %.val84086 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dfu = getelementptr inbounds nuw i8, ptr %.val84086, i64 %i.des
  store i32 %i.dfp, ptr %i.dfu, align 1
  %.not79020 = icmp eq i32 %.0.copyload.i86974, 0
  br i1 %.not79020, label %bb.vh, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i86974) #7
  %.val81710 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dfv = getelementptr inbounds nuw i8, ptr %.val81710, i64 %i.det
  %.0.copyload.i86976 = load i32, ptr %i.dfv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86976) #7, !srcloc !19
  br label %bb.vh

bb.vh:                                            ; preds = %bb.vf, %bb.vg, %bb.vb
  %.3175570 = phi i32 [ %i.dfc, %bb.vb ], [ %i.dfs, %bb.vf ], [ %.0.copyload.i86976, %bb.vg ] ; 4 uses
  %i.dfw = add nuw nsw i64 %i.des, 12             ; 2 uses
  %.val86232 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dfx = getelementptr inbounds nuw i8, ptr %.val86232, i64 %i.dfw
  %.0.copyload.i86977 = load i8, ptr %i.dfx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i86977) #7, !srcloc !21
  %i.dfy = icmp ugt i32 %.1874953, 255
  %i.dfz = zext i1 %i.dfy to i8
  %i.dga = or i8 %.0.copyload.i86977, %i.dfz
  %.val85531 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dgb = getelementptr inbounds nuw i8, ptr %.val85531, i64 %i.dfw
  store i8 %i.dga, ptr %i.dgb, align 1
  %.val81709 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dgc = getelementptr inbounds nuw i8, ptr %.val81709, i64 %i.dex
  %.0.copyload.i86978 = load i32, ptr %i.dgc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86978) #7, !srcloc !19
  %i.dgd = icmp ugt i32 %.0.copyload.i86978, %.3175570
  br i1 %i.dgd, label %bb.vi, label %bb.vj

bb.vi:                                            ; preds = %bb.vh
  %i.dge = zext i32 %.3175570 to i64
  %.val85530 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dgf = trunc i32 %.1874953 to i8
  %i.dgg = getelementptr inbounds nuw i8, ptr %.val85530, i64 %i.dge
  store i8 %i.dgf, ptr %i.dgg, align 1
  %i.dgh = add nuw i32 %.3175570, 1
  %.val84085 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dgi = getelementptr inbounds nuw i8, ptr %.val84085, i64 %i.det
  store i32 %i.dgh, ptr %i.dgi, align 1
  br label %bb.vo

bb.vj:                                            ; preds = %bb.vh
  %.val81708 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dgj = getelementptr inbounds nuw i8, ptr %.val81708, i64 %i.des
  %.0.copyload.i86979 = load i32, ptr %i.dgj, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i86979) #7, !srcloc !19
  %i.dgk = sub i32 %.3175570, %.0.copyload.i86979 ; 3 uses
  %i.dgl = add i32 %i.dgk, 1                      ; 2 uses
  %i.dgm = icmp slt i32 %i.dgl, 0
  br i1 %i.dgm, label %.loopexit91557, label %bb.vk

bb.vk:                                            ; preds = %bb.vj
  %i.dgn = sub i32 %.0.copyload.i86978, %.0.copyload.i86979 ; 2 uses
  %i.dgo = shl i32 %i.dgn, 1
  %i.dgp = tail call i32 @llvm.umax.i32(i32 %i.dgo, i32 %i.dgl)
  %i.dgq = icmp ugt i32 %i.dgn, 1073741822
  %i.dgr = select i1 %i.dgq, i32 2147483647, i32 %i.dgp ; 3 uses
  %.not79021 = icmp eq i32 %i.dgr, 0
  br i1 %.not79021, label %bb.vm, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  %i.dgs = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.dgr) #7
  br label %bb.vm

end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3Agenerate0x28hermes0x3A0x3ASourceMapGenerator0x2A0x29:bb.a
  %i.pno = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.267, i32 noundef %.0.copyload.i88623, i32 noundef %i.pnb) #7 ; 2 uses
  %i.pnp = add i32 %i.pno, %i.pni
  %.val83195 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pnq = getelementptr inbounds nuw i8, ptr %.val83195, i64 %i.plo
  store i32 %i.pnp, ptr %i.pnq, align 1
  %i.pnr = add i32 %i.pnk, 1                      ; 2 uses
  %.val83194 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pns = getelementptr inbounds nuw i8, ptr %.val83194, i64 %i.plk
  store i32 %i.pnr, ptr %i.pns, align 1
  %.val83193 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pnt = getelementptr inbounds nuw i8, ptr %.val83193, i64 %i.plj
  store i32 %i.pno, ptr %i.pnt, align 1
  %.not78508 = icmp eq i32 %.0.copyload.i88623, 0
  br i1 %.not78508, label %bb.cmo, label %bb.cmn

bb.cmn:                                           ; preds = %bb.cmm
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88623) #7
  %.val80850 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pnu = getelementptr inbounds nuw i8, ptr %.val80850, i64 %i.plk
  %.0.copyload.i88624 = load i32, ptr %i.pnu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88624) #7, !srcloc !19
  br label %bb.cmo

bb.cmo:                                           ; preds = %bb.cmi, %bb.cmn, %bb.cmm, %bb.clp, %bb.clu, %bb.clt
  %.pre-phi91953 = phi i64 [ %i.plo, %bb.cmi ], [ %i.plo, %bb.cmn ], [ %i.plo, %bb.cmm ], [ %i.pjh, %bb.clp ], [ %i.pjh, %bb.clu ], [ %i.pjh, %bb.clt ] ; 2 uses
  %.pre-phi91952 = phi i64 [ %i.plj, %bb.cmi ], [ %i.plj, %bb.cmn ], [ %i.plj, %bb.cmm ], [ %i.pjc, %bb.clp ], [ %i.pjc, %bb.clu ], [ %i.pjc, %bb.clt ] ; 5 uses
  %.10475643 = phi i32 [ %i.pmy, %bb.cmi ], [ %.0.copyload.i88624, %bb.cmn ], [ %i.pnr, %bb.cmm ], [ %i.pjm, %bb.clp ], [ %.0.copyload.i88597, %bb.clu ], [ %i.pkc, %bb.clt ] ; 4 uses
  %.075098.in = phi i32 [ %.5774992, %bb.cmi ], [ %.5774992, %bb.cmn ], [ %.5774992, %bb.cmm ], [ %.5674991, %bb.clp ], [ %.5674991, %bb.clu ], [ %.5674991, %bb.clt ] ; 3 uses
  %i.pnv = add nuw nsw i64 %.pre-phi91952, 12     ; 2 uses
  %.val86014 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pnw = getelementptr inbounds nuw i8, ptr %.val86014, i64 %i.pnv
  %.0.copyload.i88625 = load i8, ptr %i.pnw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88625) #7, !srcloc !21
  %i.pnx = icmp ugt i32 %.075098.in, 255
  %i.pny = zext i1 %i.pnx to i8
  %i.pnz = or i8 %.0.copyload.i88625, %i.pny
  %.val84954 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.poa = getelementptr inbounds nuw i8, ptr %.val84954, i64 %i.pnv
  store i8 %i.pnz, ptr %i.poa, align 1
  %.val80849 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pob = getelementptr inbounds nuw i8, ptr %.val80849, i64 %.pre-phi91953
  %.0.copyload.i88626 = load i32, ptr %i.pob, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88626) #7, !srcloc !19
  %i.poc = icmp ugt i32 %.0.copyload.i88626, %.10475643
  br i1 %i.poc, label %bb.cmp, label %bb.cmq

bb.cmp:                                           ; preds = %bb.cmo
  %i.pod = zext i32 %.10475643 to i64
  %.val84953 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.poe = trunc i32 %.075098.in to i8
  %i.pof = getelementptr inbounds nuw i8, ptr %.val84953, i64 %i.pod
  store i8 %i.poe, ptr %i.pof, align 1
  %i.pog = add nuw i32 %.10475643, 1
  %.val83192 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.poh = getelementptr inbounds nuw i8, ptr %.val83192, i64 %.pre-phi91952
  %i.poi = getelementptr inbounds nuw i8, ptr %i.poh, i64 4
  store i32 %i.pog, ptr %i.poi, align 1
  br label %bb.foa

bb.cmq:                                           ; preds = %bb.cmo
  %.val80848 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.poj = getelementptr inbounds nuw i8, ptr %.val80848, i64 %.pre-phi91952
  %.0.copyload.i88627 = load i32, ptr %i.poj, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88627) #7, !srcloc !19
  %i.pok = sub i32 %.10475643, %.0.copyload.i88627 ; 3 uses
  %i.pol = add i32 %i.pok, 1                      ; 2 uses
  %i.pom = icmp slt i32 %i.pol, 0
  br i1 %i.pom, label %.loopexit91557, label %bb.cmr

bb.cmr:                                           ; preds = %bb.cmq
  %i.pon = sub i32 %.0.copyload.i88626, %.0.copyload.i88627 ; 2 uses
  %i.poo = shl i32 %i.pon, 1
  %i.pop = tail call i32 @llvm.umax.i32(i32 %i.poo, i32 %i.pol)
  %i.poq = icmp ugt i32 %i.pon, 1073741822
  %i.por = select i1 %i.poq, i32 2147483647, i32 %i.pop ; 3 uses
  %.not78511 = icmp eq i32 %i.por, 0
  br i1 %.not78511, label %bb.cmt, label %bb.cms

bb.cms:                                           ; preds = %bb.cmr
  %i.pos = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.por) #7
  br label %bb.cmt

bb.cmt:                                           ; preds = %bb.cmr, %bb.cms
  %.268 = phi i32 [ %i.pos, %bb.cms ], [ 0, %bb.cmr ] ; 2 uses
  %i.pot = add i32 %.268, %i.pok                  ; 2 uses
  %i.pou = zext i32 %i.pot to i64
  %.val84952 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pov = trunc i32 %.075098.in to i8
  %i.pow = getelementptr inbounds nuw i8, ptr %.val84952, i64 %i.pou
  store i8 %i.pov, ptr %i.pow, align 1
  %i.pox = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.268, i32 noundef %.0.copyload.i88627, i32 noundef %i.pok) #7 ; 2 uses
  %i.poy = add i32 %i.pox, %i.por
  %.val83191 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.poz = getelementptr inbounds nuw i8, ptr %.val83191, i64 %.pre-phi91953
  store i32 %i.poy, ptr %i.poz, align 1
  %i.ppa = add i32 %i.pot, 1
  %.val83190 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ppb = getelementptr inbounds nuw i8, ptr %.val83190, i64 %.pre-phi91952
  %i.ppc = getelementptr inbounds nuw i8, ptr %i.ppb, i64 4
  store i32 %i.ppa, ptr %i.ppc, align 1
  %.val83189 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ppd = getelementptr inbounds nuw i8, ptr %.val83189, i64 %.pre-phi91952
  store i32 %i.pox, ptr %i.ppd, align 1
  %.not78512 = icmp eq i32 %.0.copyload.i88627, 0
  br i1 %.not78512, label %bb.foa, label %bb.cmu

bb.cmu:                                           ; preds = %bb.cmt
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88627) #7
  br label %bb.foa

bb.cmv:                                           ; preds = %bb.ce
  %i.ppe = load i32, ptr %i.a, align 8, !tbaa !17 ; 3 uses
  %i.ppf = add i32 %i.ppe, -16                    ; 2 uses
  store i32 %i.ppf, ptr %i.a, align 8, !tbaa !17
  %i.ppg = add i32 %.975236, 8                    ; 6 uses
  %.not78482 = icmp eq i32 %.975236, 0
  %i.pph = select i1 %.not78482, i32 0, i32 %i.ppg ; 3 uses
  %i.ppi = zext i32 %i.pph to i64                 ; 2 uses
  %.val86013 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ppj = getelementptr inbounds nuw i8, ptr %.val86013, i64 %i.ppi
  %.0.copyload.i88628 = load i8, ptr %i.ppj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88628) #7, !srcloc !21
  %i.ppk = add i8 %.0.copyload.i88628, -2
  %i.ppl = icmp ult i8 %i.ppk, 107
  %.val80847 = load ptr, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  br i1 %i.ppl, label %bb.cmw, label %bb.cmx

bb.cmw:                                           ; preds = %bb.cmv
  %i.ppm = getelementptr inbounds nuw i8, ptr %.val80847, i64 %i.f
  %i.ppn = getelementptr inbounds nuw i8, ptr %i.ppm, i64 8
  %.0.copyload.i88629 = load i32, ptr %i.ppn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88629) #7, !srcloc !19
  %i.ppo = tail call i32 @w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88629, i32 noundef %i.pph)
  br label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88643

bb.cmx:                                           ; preds = %bb.cmv
  %i.ppp = getelementptr inbounds nuw i8, ptr %.val80847, i64 %i.ppi
  %i.ppq = getelementptr inbounds nuw i8, ptr %i.ppp, i64 36
  %.0.copyload.i.i88631 = load i32, ptr %i.ppq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i88631) #7, !srcloc !19
  %i.ppr = zext i32 %.0.copyload.i.i88631 to i64  ; 2 uses
  %.val55.i88632 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pps = getelementptr inbounds nuw i8, ptr %.val55.i88632, i64 %i.ppr
  %i.ppt = getelementptr inbounds nuw i8, ptr %i.pps, i64 92
  %.0.copyload.i57.i88633 = load i32, ptr %i.ppt, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i57.i88633) #7, !srcloc !19
  %.not.i88634 = icmp eq i32 %.0.copyload.i57.i88633, 0
  br i1 %.not.i88634, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88643, label %bb.cmy

bb.cmy:                                           ; preds = %bb.cmx
  %.val54.i88635 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ppu = getelementptr inbounds nuw i8, ptr %.val54.i88635, i64 %i.ppr
  %i.ppv = getelementptr inbounds nuw i8, ptr %i.ppu, i64 88
  %.0.copyload.i58.i88636 = load i32, ptr %i.ppv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i58.i88636) #7, !srcloc !19
  %i.ppw = shl i32 %.0.copyload.i57.i88633, 2
  %i.ppx = add i32 %.0.copyload.i58.i88636, %i.ppw
  %i.ppy = add i32 %.0.copyload.i57.i88633, 1073741823
  %i.ppz = and i32 %i.ppy, 1073741823
  %i.pqa = add nuw nsw i32 %i.ppz, 1
  br label %bb.cmz

bb.cmz:                                           ; preds = %bb.cna, %bb.cmy
  %.051.i88637 = phi i32 [ 0, %bb.cmy ], [ %i.pqe, %bb.cna ] ; 2 uses
  %.050.i88638 = phi i32 [ %.0.copyload.i58.i88636, %bb.cmy ], [ %i.pqf, %bb.cna ] ; 2 uses
  %i.pqb = zext i32 %.050.i88638 to i64
  %.val.i88639 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pqc = getelementptr inbounds nuw i8, ptr %.val.i88639, i64 %i.pqb
  %.0.copyload.i59.i88640 = load i32, ptr %i.pqc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i88640) #7, !srcloc !19
  %i.pqd = icmp eq i32 %.0.copyload.i59.i88640, %i.pph
  br i1 %i.pqd, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88643, label %bb.cna

bb.cna:                                           ; preds = %bb.cmz
  %i.pqe = add nuw nsw i32 %.051.i88637, 1
  %i.pqf = add i32 %.050.i88638, 4                ; 2 uses
  %.not53.i88641 = icmp eq i32 %i.pqf, %i.ppx
  br i1 %.not53.i88641, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88643, label %bb.cmz

w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88643: ; preds = %bb.cna, %bb.cmz, %bb.cmx, %bb.cmw
  %.5874993 = phi i32 [ %i.ppo, %bb.cmw ], [ 0, %bb.cmx ], [ %.051.i88637, %bb.cmz ], [ %i.pqa, %bb.cna ] ; 3 uses
  %.val80846 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pqg = getelementptr inbounds nuw i8, ptr %.val80846, i64 %i.ux
  %i.pqh = getelementptr inbounds nuw i8, ptr %i.pqg, i64 44
  %.0.copyload.i88644 = load i32, ptr %i.pqh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88644) #7, !srcloc !19
  %.val80845 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pqi = getelementptr inbounds nuw i8, ptr %.val80845, i64 %i.ux
  %i.pqj = getelementptr inbounds nuw i8, ptr %i.pqi, i64 40
  %.0.copyload.i88645 = load i32, ptr %i.pqj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88645) #7, !srcloc !19
  %i.pqk = zext i32 %.0.copyload.i88645 to i64
  %.val80844 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pql = getelementptr inbounds nuw i8, ptr %.val80844, i64 %i.pqk
  %.0.copyload.i88646 = load i32, ptr %i.pql, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88646) #7, !srcloc !19
  %i.pqm = zext i32 %.0.copyload.i88646 to i64
  %.val86317 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pqn = getelementptr inbounds nuw i8, ptr %.val86317, i64 %i.pqm
  %i.pqo = getelementptr inbounds nuw i8, ptr %i.pqn, i64 32
  %.0.copyload.i88647 = load double, ptr %i.pqo, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i88647) #7, !srcloc !23
  %i.pqp = fcmp oge double %.0.copyload.i88647, 0.000000e+00
  %i.pqq = fptoui double %.0.copyload.i88647 to i32
  %i.pqr = tail call i32 @llvm.umin.i32(i32 %i.pqq, i32 65535)
  %6 = fcmp ole double %.0.copyload.i88647, f0x41EFFFFFFFE00000
  %i.pqs = and i1 %6, %i.pqp
  %i.pqt = select i1 %i.pqs, i32 %i.pqr, i32 0    ; 3 uses
  %.val80843 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pqu = getelementptr inbounds nuw i8, ptr %.val80843, i64 %i.jm
  %.0.copyload.i88648 = load i32, ptr %i.pqu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88648) #7, !srcloc !19
  %i.pqv = add i32 %.0.copyload.i88644, -1        ; 3 uses
  %.not78486 = icmp eq i32 %i.pqv, 0
  br i1 %.not78486, label %bb.cnb, label %bb.cnq

bb.cnb:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88643
  %i.pqw = zext nneg i32 %i.pqt to i64            ; 2 uses
  %i.pqx = zext i32 %.0.copyload.i88648 to i64    ; 7 uses
  %i.pqy = add nuw nsw i64 %i.pqx, 4              ; 6 uses
  %.val80842 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pqz = getelementptr inbounds nuw i8, ptr %.val80842, i64 %i.pqy
  %.0.copyload.i88649 = load i32, ptr %i.pqz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88649) #7, !srcloc !19
  %.val80841 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pra = getelementptr inbounds nuw i8, ptr %.val80841, i64 %i.pqx
  %.0.copyload.i88650 = load i32, ptr %i.pra, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88650) #7, !srcloc !19
  %i.prb = sub i32 %.0.copyload.i88649, %.0.copyload.i88650 ; 3 uses
  %i.prc = add nuw nsw i64 %i.pqx, 8              ; 4 uses
  %.val80840 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.prd = getelementptr inbounds nuw i8, ptr %.val80840, i64 %i.prc
  %.0.copyload.i88651 = load i32, ptr %i.prd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88651) #7, !srcloc !19
  %i.pre = icmp ugt i32 %.0.copyload.i88651, %.0.copyload.i88649
  br i1 %i.pre, label %bb.cnc, label %bb.cnd

bb.cnc:                                           ; preds = %bb.cnb
  %i.prf = zext i32 %.0.copyload.i88649 to i64
  %.val84951 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.prg = getelementptr inbounds nuw i8, ptr %.val84951, i64 %i.prf
  store i8 7, ptr %i.prg, align 1
  %i.prh = add nuw i32 %.0.copyload.i88649, 1     ; 2 uses
  %.val83188 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pri = getelementptr inbounds nuw i8, ptr %.val83188, i64 %i.pqy
  store i32 %i.prh, ptr %i.pri, align 1
  br label %bb.cni

bb.cnd:                                           ; preds = %bb.cnb
  %i.prj = add i32 %i.prb, 1                      ; 2 uses
  %i.prk = icmp slt i32 %i.prj, 0
  br i1 %i.prk, label %.loopexit91557, label %bb.cne

bb.cne:                                           ; preds = %bb.cnd
  %i.prl = sub i32 %.0.copyload.i88651, %.0.copyload.i88650 ; 2 uses
  %i.prm = shl i32 %i.prl, 1
  %i.prn = tail call i32 @llvm.umax.i32(i32 %i.prm, i32 %i.prj)
  %i.pro = icmp ugt i32 %i.prl, 1073741822
  %i.prp = select i1 %i.pro, i32 2147483647, i32 %i.prn ; 3 uses
  %.not78500 = icmp eq i32 %i.prp, 0
  br i1 %.not78500, label %bb.cng, label %bb.cnf

bb.cnf:                                           ; preds = %bb.cne
  %i.prq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.prp) #7
  br label %bb.cng

bb.cng:                                           ; preds = %bb.cne, %bb.cnf
  %.269 = phi i32 [ %i.prq, %bb.cnf ], [ 0, %bb.cne ] ; 2 uses
  %i.prr = add i32 %.269, %i.prb                  ; 2 uses
  %i.prs = zext i32 %i.prr to i64
  %.val84950 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.prt = getelementptr inbounds nuw i8, ptr %.val84950, i64 %i.prs
  store i8 7, ptr %i.prt, align 1
  %i.pru = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.269, i32 noundef %.0.copyload.i88650, i32 noundef %i.prb) #7 ; 2 uses
  %i.prv = add i32 %i.pru, %i.prp
  %.val83187 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.prw = getelementptr inbounds nuw i8, ptr %.val83187, i64 %i.prc
  store i32 %i.prv, ptr %i.prw, align 1
  %i.prx = add i32 %i.prr, 1                      ; 2 uses
  %.val83186 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pry = getelementptr inbounds nuw i8, ptr %.val83186, i64 %i.pqy
  store i32 %i.prx, ptr %i.pry, align 1
  %.val83185 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.prz = getelementptr inbounds nuw i8, ptr %.val83185, i64 %i.pqx
  store i32 %i.pru, ptr %i.prz, align 1
  %.not78501 = icmp eq i32 %.0.copyload.i88650, 0
  br i1 %.not78501, label %bb.cni, label %bb.cnh

bb.cnh:                                           ; preds = %bb.cng
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88650) #7
  %.val80839 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.psa = getelementptr inbounds nuw i8, ptr %.val80839, i64 %i.pqy
  %.0.copyload.i88652 = load i32, ptr %i.psa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88652) #7, !srcloc !19
  br label %bb.cni

bb.cni:                                           ; preds = %bb.cng, %bb.cnh, %bb.cnc
  %.10575644 = phi i32 [ %i.prh, %bb.cnc ], [ %i.prx, %bb.cng ], [ %.0.copyload.i88652, %bb.cnh ] ; 4 uses
  %i.psb = add nuw nsw i64 %i.pqx, 12             ; 2 uses
  %.val86012 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.psc = getelementptr inbounds nuw i8, ptr %.val86012, i64 %i.psb
  %.0.copyload.i88653 = load i8, ptr %i.psc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88653) #7, !srcloc !21
  %i.psd = icmp ugt i32 %.5874993, 255
  %i.pse = zext i1 %i.psd to i8
  %i.psf = or i8 %.0.copyload.i88653, %i.pse
  %.val84949 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.psg = getelementptr inbounds nuw i8, ptr %.val84949, i64 %i.psb
  store i8 %i.psf, ptr %i.psg, align 1
  %.val80838 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.psh = getelementptr inbounds nuw i8, ptr %.val80838, i64 %i.prc
  %.0.copyload.i88654 = load i32, ptr %i.psh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88654) #7, !srcloc !19
  %i.psi = icmp ugt i32 %.0.copyload.i88654, %.10575644
  br i1 %i.psi, label %bb.cnj, label %bb.cnk

bb.cnj:                                           ; preds = %bb.cni
  %i.psj = zext i32 %.10575644 to i64
  %.val84948 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.psk = trunc i32 %.5874993 to i8
  %i.psl = getelementptr inbounds nuw i8, ptr %.val84948, i64 %i.psj
  store i8 %i.psk, ptr %i.psl, align 1
  %i.psm = add nuw i32 %.10575644, 1
  %.val83184 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.psn = getelementptr inbounds nuw i8, ptr %.val83184, i64 %i.pqy
  store i32 %i.psm, ptr %i.psn, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABytecodeInstructionGenerator0x3A0x3AemitUInt160x28long0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88648, i64 noundef %i.pqw)
  br label %bb.cpj

bb.cnk:                                           ; preds = %bb.cni
  %.val80837 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pso = getelementptr inbounds nuw i8, ptr %.val80837, i64 %i.pqx
  %.0.copyload.i88655 = load i32, ptr %i.pso, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88655) #7, !srcloc !19
  %i.psp = sub i32 %.10575644, %.0.copyload.i88655 ; 3 uses
  %i.psq = add i32 %i.psp, 1                      ; 2 uses
  %i.psr = icmp slt i32 %i.psq, 0
  br i1 %i.psr, label %.loopexit91557, label %bb.cnl

bb.cnl:                                           ; preds = %bb.cnk
  %i.pss = sub i32 %.0.copyload.i88654, %.0.copyload.i88655 ; 2 uses
  %i.pst = shl i32 %i.pss, 1
  %i.psu = tail call i32 @llvm.umax.i32(i32 %i.pst, i32 %i.psq)
  %i.psv = icmp ugt i32 %i.pss, 1073741822
  %i.psw = select i1 %i.psv, i32 2147483647, i32 %i.psu ; 3 uses
  %.not78502 = icmp eq i32 %i.psw, 0
  br i1 %.not78502, label %bb.cnn, label %bb.cnm

bb.cnm:                                           ; preds = %bb.cnl
  %i.psx = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.psw) #7
  br label %bb.cnn

bb.cnn:                                           ; preds = %bb.cnl, %bb.cnm
  %.270 = phi i32 [ %i.psx, %bb.cnm ], [ 0, %bb.cnl ] ; 2 uses
  %i.psy = add i32 %.270, %i.psp                  ; 2 uses
  %i.psz = zext i32 %i.psy to i64
  %.val84947 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pta = trunc i32 %.5874993 to i8
  %i.ptb = getelementptr inbounds nuw i8, ptr %.val84947, i64 %i.psz
  store i8 %i.pta, ptr %i.ptb, align 1
  %i.ptc = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.270, i32 noundef %.0.copyload.i88655, i32 noundef %i.psp) #7 ; 2 uses
  %i.ptd = add i32 %i.ptc, %i.psw
  %.val83183 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pte = getelementptr inbounds nuw i8, ptr %.val83183, i64 %i.prc
  store i32 %i.ptd, ptr %i.pte, align 1
  %i.ptf = add i32 %i.psy, 1
  %.val83182 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ptg = getelementptr inbounds nuw i8, ptr %.val83182, i64 %i.pqy
  store i32 %i.ptf, ptr %i.ptg, align 1
  %.val83181 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.pth = getelementptr inbounds nuw i8, ptr %.val83181, i64 %i.pqx
  store i32 %i.ptc, ptr %i.pth, align 1
  %.not78503 = icmp eq i32 %.0.copyload.i88655, 0
  br i1 %.not78503, label %bb.cnp, label %bb.cno

bb.cno:                                           ; preds = %bb.cnn
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88655) #7
  br label %bb.cnp

bb.cnp:                                           ; preds = %bb.cno, %bb.cnn
  tail call void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABytecodeInstructionGenerator0x3A0x3AemitUInt160x28long0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88648, i64 noundef %i.pqw)
  br label %bb.cpj

bb.cnq:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88643
  %i.pti = zext i32 %.0.copyload.i88648 to i64
  %.val80836 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ptj = getelementptr inbounds nuw i8, ptr %.val80836, i64 %i.pti
  %i.ptk = getelementptr inbounds nuw i8, ptr %i.ptj, i64 16
  %.0.copyload.i88656 = load i32, ptr %i.ptk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88656) #7, !srcloc !19
  %i.ptl = zext i32 %i.ppf to i64
  %.val83180 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ptm = getelementptr inbounds nuw i8, ptr %.val83180, i64 %i.ptl
  %i.ptn = getelementptr inbounds nuw i8, ptr %i.ptm, i64 12
  store i32 %.975236, ptr %i.ptn, align 1
  %i.pto = zext i32 %.0.copyload.i88656 to i64    ; 2 uses
  %.val80835 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ptp = getelementptr inbounds nuw i8, ptr %.val80835, i64 %i.pto
  %i.ptq = getelementptr inbounds nuw i8, ptr %i.ptp, i64 456
  %.0.copyload.i88657 = load i32, ptr %i.ptq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88657) #7, !srcloc !19
  %.not78487 = icmp eq i32 %.0.copyload.i88657, 0
  br i1 %.not78487, label %bb.cnu, label %bb.cnr

bb.cnr:                                           ; preds = %bb.cnq
  %.val80834 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ptr = getelementptr inbounds nuw i8, ptr %.val80834, i64 %i.pto
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3Agenerate0x28hermes0x3A0x3ASourceMapGenerator0x2A0x29:bb.a
  store i8 %i.zud, ptr %i.zue, align 1
  %i.zuf = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.418, i32 noundef %.0.copyload.i90274, i32 noundef %i.zts) #7 ; 2 uses
  %i.zug = add i32 %i.zuf, %i.ztz
  %.val82486 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zuh = getelementptr inbounds nuw i8, ptr %.val82486, i64 %i.znr
  store i32 %i.zug, ptr %i.zuh, align 1
  %i.zui = add i32 %i.zub, 1                      ; 2 uses
  %.val82485 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zuj = getelementptr inbounds nuw i8, ptr %.val82485, i64 %i.znn
  store i32 %i.zui, ptr %i.zuj, align 1
  %.val82484 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zuk = getelementptr inbounds nuw i8, ptr %.val82484, i64 %i.znm
  store i32 %i.zuf, ptr %i.zuk, align 1
  %.not78096 = icmp eq i32 %.0.copyload.i90274, 0
  br i1 %.not78096, label %bb.eqn, label %bb.eqm

bb.eqm:                                           ; preds = %bb.eql
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i90274) #7
  %.val80020 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zul = getelementptr inbounds nuw i8, ptr %.val80020, i64 %i.znn
  %.0.copyload.i90275 = load i32, ptr %i.zul, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90275) #7, !srcloc !19
  br label %bb.eqn

bb.eqn:                                           ; preds = %bb.eql, %bb.eqm, %bb.eqh
  %.16775706 = phi i32 [ %i.ztp, %bb.eqh ], [ %i.zui, %bb.eql ], [ %.0.copyload.i90275, %bb.eqm ] ; 4 uses
  %.val85872 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zum = getelementptr inbounds nuw i8, ptr %.val85872, i64 %i.zte
  %.0.copyload.i90276 = load i8, ptr %i.zum, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i90276) #7, !srcloc !21
  %i.zun = icmp ugt i32 %.11075045, 255
  %i.zuo = zext i1 %i.zun to i8
  %i.zup = or i8 %.0.copyload.i90276, %i.zuo
  %.val84565 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zuq = getelementptr inbounds nuw i8, ptr %.val84565, i64 %i.zte
  store i8 %i.zup, ptr %i.zuq, align 1
  %.val80019 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zur = getelementptr inbounds nuw i8, ptr %.val80019, i64 %i.znr
  %.0.copyload.i90277 = load i32, ptr %i.zur, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90277) #7, !srcloc !19
  %i.zus = icmp ugt i32 %.0.copyload.i90277, %.16775706
  br i1 %i.zus, label %bb.eqo, label %bb.eqp

bb.eqo:                                           ; preds = %bb.eqn
  %i.zut = zext i32 %.16775706 to i64
  %.val84564 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zuu = trunc i32 %.11075045 to i8
  %i.zuv = getelementptr inbounds nuw i8, ptr %.val84564, i64 %i.zut
  store i8 %i.zuu, ptr %i.zuv, align 1
  %i.zuw = add nuw i32 %.16775706, 1
  %.val82483 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zux = getelementptr inbounds nuw i8, ptr %.val82483, i64 %i.znn
  store i32 %i.zuw, ptr %i.zux, align 1
  br label %bb.equ

bb.eqp:                                           ; preds = %bb.eqn
  %.val80018 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zuy = getelementptr inbounds nuw i8, ptr %.val80018, i64 %i.znm
  %.0.copyload.i90278 = load i32, ptr %i.zuy, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90278) #7, !srcloc !19
  %i.zuz = sub i32 %.16775706, %.0.copyload.i90278 ; 3 uses
  %i.zva = add i32 %i.zuz, 1                      ; 2 uses
  %i.zvb = icmp slt i32 %i.zva, 0
  br i1 %i.zvb, label %.loopexit91557, label %bb.eqq

bb.eqq:                                           ; preds = %bb.eqp
  %i.zvc = sub i32 %.0.copyload.i90277, %.0.copyload.i90278 ; 2 uses
  %i.zvd = shl i32 %i.zvc, 1
  %i.zve = tail call i32 @llvm.umax.i32(i32 %i.zvd, i32 %i.zva)
  %i.zvf = icmp ugt i32 %i.zvc, 1073741822
  %i.zvg = select i1 %i.zvf, i32 2147483647, i32 %i.zve ; 3 uses
  %.not78097 = icmp eq i32 %i.zvg, 0
  br i1 %.not78097, label %bb.eqs, label %bb.eqr

bb.eqr:                                           ; preds = %bb.eqq
  %i.zvh = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.zvg) #7
  br label %bb.eqs

bb.eqs:                                           ; preds = %bb.eqq, %bb.eqr
  %.419 = phi i32 [ %i.zvh, %bb.eqr ], [ 0, %bb.eqq ] ; 2 uses
  %i.zvi = add i32 %.419, %i.zuz                  ; 2 uses
  %i.zvj = zext i32 %i.zvi to i64
  %.val84563 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zvk = trunc i32 %.11075045 to i8
  %i.zvl = getelementptr inbounds nuw i8, ptr %.val84563, i64 %i.zvj
  store i8 %i.zvk, ptr %i.zvl, align 1
  %i.zvm = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.419, i32 noundef %.0.copyload.i90278, i32 noundef %i.zuz) #7 ; 2 uses
  %i.zvn = add i32 %i.zvm, %i.zvg
  %.val82482 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zvo = getelementptr inbounds nuw i8, ptr %.val82482, i64 %i.znr
  store i32 %i.zvn, ptr %i.zvo, align 1
  %i.zvp = add i32 %i.zvi, 1
  %.val82481 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zvq = getelementptr inbounds nuw i8, ptr %.val82481, i64 %i.znn
  store i32 %i.zvp, ptr %i.zvq, align 1
  %.val82480 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zvr = getelementptr inbounds nuw i8, ptr %.val82480, i64 %i.znm
  store i32 %i.zvm, ptr %i.zvr, align 1
  %.not78098 = icmp eq i32 %.0.copyload.i90278, 0
  br i1 %.not78098, label %bb.equ, label %bb.eqt

bb.eqt:                                           ; preds = %bb.eqs
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i90278) #7
  br label %bb.equ

bb.equ:                                           ; preds = %bb.eqs, %bb.eqt, %bb.eqo
  tail call void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABytecodeInstructionGenerator0x3A0x3AemitReg320x28long0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i90251, i64 noundef %i.znk)
  br label %bb.foa

bb.eqv:                                           ; preds = %bb.ce
  %i.zvs = add i32 %.975236, 8
  %.not78071 = icmp eq i32 %.975236, 0
  %i.zvt = select i1 %.not78071, i32 0, i32 %i.zvs ; 3 uses
  %i.zvu = zext i32 %i.zvt to i64                 ; 2 uses
  %.val85871 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zvv = getelementptr inbounds nuw i8, ptr %.val85871, i64 %i.zvu
  %.0.copyload.i90279 = load i8, ptr %i.zvv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i90279) #7, !srcloc !21
  %i.zvw = add i8 %.0.copyload.i90279, -2
  %i.zvx = icmp ult i8 %i.zvw, 107
  %.val80017 = load ptr, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  br i1 %i.zvx, label %bb.eqw, label %bb.eqx

bb.eqw:                                           ; preds = %bb.eqv
  %i.zvy = getelementptr inbounds nuw i8, ptr %.val80017, i64 %i.f
  %i.zvz = getelementptr inbounds nuw i8, ptr %i.zvy, i64 8
  %.0.copyload.i90280 = load i32, ptr %i.zvz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90280) #7, !srcloc !19
  %i.zwa = tail call i32 @w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i90280, i32 noundef %i.zvt)
  br label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90294

bb.eqx:                                           ; preds = %bb.eqv
  %i.zwb = getelementptr inbounds nuw i8, ptr %.val80017, i64 %i.zvu
  %i.zwc = getelementptr inbounds nuw i8, ptr %i.zwb, i64 36
  %.0.copyload.i.i90282 = load i32, ptr %i.zwc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i90282) #7, !srcloc !19
  %i.zwd = zext i32 %.0.copyload.i.i90282 to i64  ; 2 uses
  %.val55.i90283 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zwe = getelementptr inbounds nuw i8, ptr %.val55.i90283, i64 %i.zwd
  %i.zwf = getelementptr inbounds nuw i8, ptr %i.zwe, i64 92
  %.0.copyload.i57.i90284 = load i32, ptr %i.zwf, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i57.i90284) #7, !srcloc !19
  %.not.i90285 = icmp eq i32 %.0.copyload.i57.i90284, 0
  br i1 %.not.i90285, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90294, label %bb.eqy

bb.eqy:                                           ; preds = %bb.eqx
  %.val54.i90286 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zwg = getelementptr inbounds nuw i8, ptr %.val54.i90286, i64 %i.zwd
  %i.zwh = getelementptr inbounds nuw i8, ptr %i.zwg, i64 88
  %.0.copyload.i58.i90287 = load i32, ptr %i.zwh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i58.i90287) #7, !srcloc !19
  %i.zwi = shl i32 %.0.copyload.i57.i90284, 2
  %i.zwj = add i32 %.0.copyload.i58.i90287, %i.zwi
  %i.zwk = add i32 %.0.copyload.i57.i90284, 1073741823
  %i.zwl = and i32 %i.zwk, 1073741823
  %i.zwm = add nuw nsw i32 %i.zwl, 1
  br label %bb.eqz

bb.eqz:                                           ; preds = %bb.era, %bb.eqy
  %.051.i90288 = phi i32 [ 0, %bb.eqy ], [ %i.zwq, %bb.era ] ; 2 uses
  %.050.i90289 = phi i32 [ %.0.copyload.i58.i90287, %bb.eqy ], [ %i.zwr, %bb.era ] ; 2 uses
  %i.zwn = zext i32 %.050.i90289 to i64
  %.val.i90290 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zwo = getelementptr inbounds nuw i8, ptr %.val.i90290, i64 %i.zwn
  %.0.copyload.i59.i90291 = load i32, ptr %i.zwo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i90291) #7, !srcloc !19
  %i.zwp = icmp eq i32 %.0.copyload.i59.i90291, %i.zvt
  br i1 %i.zwp, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90294, label %bb.era

bb.era:                                           ; preds = %bb.eqz
  %i.zwq = add nuw nsw i32 %.051.i90288, 1
  %i.zwr = add i32 %.050.i90289, 4                ; 2 uses
  %.not53.i90292 = icmp eq i32 %i.zwr, %i.zwj
  br i1 %.not53.i90292, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90294, label %bb.eqz

w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90294: ; preds = %bb.era, %bb.eqz, %bb.eqx, %bb.eqw
  %.11175046 = phi i32 [ %i.zwa, %bb.eqw ], [ 0, %bb.eqx ], [ %.051.i90288, %bb.eqz ], [ %i.zwm, %bb.era ] ; 6 uses
  %i.zws = add nuw nsw i64 %i.ux, 44              ; 2 uses
  %.val80016 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zwt = getelementptr inbounds nuw i8, ptr %.val80016, i64 %i.zws
  %.0.copyload.i90295 = load i32, ptr %i.zwt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90295) #7, !srcloc !19
  %.val80015 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zwu = getelementptr inbounds nuw i8, ptr %.val80015, i64 %i.jm
  %.0.copyload.i90296 = load i32, ptr %i.zwu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90296) #7, !srcloc !19
  %.val80014 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zwv = getelementptr inbounds nuw i8, ptr %.val80014, i64 %i.ux
  %i.zww = getelementptr inbounds nuw i8, ptr %i.zwv, i64 40
  %.0.copyload.i90297 = load i32, ptr %i.zww, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90297) #7, !srcloc !19
  %i.zwx = zext i32 %.0.copyload.i90297 to i64
  %.val80013 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zwy = getelementptr inbounds nuw i8, ptr %.val80013, i64 %i.zwx
  %.0.copyload.i90298 = load i32, ptr %i.zwy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90298) #7, !srcloc !19
  %i.zwz = zext i32 %.0.copyload.i90298 to i64
  %.val86313 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zxa = getelementptr inbounds nuw i8, ptr %.val86313, i64 %i.zwz
  %i.zxb = getelementptr inbounds nuw i8, ptr %i.zxa, i64 32
  %.0.copyload.i90299 = load double, ptr %i.zxb, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i90299) #7, !srcloc !23
  %i.zxc = fcmp uge double %.0.copyload.i90299, f0xC1E0000000000000
  %i.zxd = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i90299)
  %i.zxe = fcmp olt double %i.zxd, f0x41E0000000000000
  br i1 %i.zxe, label %bb.erb, label %bb.ere

bb.erb:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90294
  %i.zxf = fcmp ule double %.0.copyload.i90299, f0xC1E0000000200000
  %i.zxg = fcmp uge double %.0.copyload.i90299, f0x41E0000000000000
  %.not78074 = or i1 %i.zxf, %i.zxg
  br i1 %.not78074, label %bb.erc, label %bb.erd, !prof !30

bb.erc:                                           ; preds = %bb.erb
  tail call void @wasm_rt_trap(i32 noundef 2) #8
  unreachable

bb.erd:                                           ; preds = %bb.erb
  %i.zxh = fptosi double %.0.copyload.i90299 to i32
  %i.zxi = zext i32 %i.zxh to i64
  br label %bb.ere

bb.ere:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90294, %bb.erd
  %.074932 = phi i64 [ %i.zxi, %bb.erd ], [ 0, %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90294 ]
  %7 = fcmp ole double %.0.copyload.i90299, f0x41DFFFFFFFC00000
  %i.zxj = and i1 %7, %i.zxc
  %i.zxk = select i1 %i.zxj, i64 %.074932, i64 0  ; 4 uses
  %.val80012 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zxl = getelementptr inbounds nuw i8, ptr %.val80012, i64 %i.zws
  %.0.copyload.i90300 = load i32, ptr %i.zxl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90300) #7, !srcloc !19
  %i.zxm = add i32 %.0.copyload.i90300, -2        ; 4 uses
  %i.zxn = zext i32 %i.zxm to i64
  %i.zxo = add i32 %.0.copyload.i90295, -2
  %i.zxp = icmp ult i32 %i.zxo, 256
  %i.zxq = zext i32 %.0.copyload.i90296 to i64    ; 17 uses
  %i.zxr = add nuw nsw i64 %i.zxq, 4              ; 20 uses
  %.val80011 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zxs = getelementptr inbounds nuw i8, ptr %.val80011, i64 %i.zxr
  %.0.copyload.i90301 = load i32, ptr %i.zxs, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90301) #7
  %.val80010 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zxt = getelementptr inbounds nuw i8, ptr %.val80010, i64 %i.zxq
  %.0.copyload.i90302 = load i32, ptr %i.zxt, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90302) #7
  %i.zxu = sub i32 %.0.copyload.i90301, %.0.copyload.i90302 ; 6 uses
  %i.zxv = add nuw nsw i64 %i.zxq, 8              ; 13 uses
  %.val80009 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zxw = getelementptr inbounds nuw i8, ptr %.val80009, i64 %i.zxv
  %.0.copyload.i90303 = load i32, ptr %i.zxw, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90303) #7
  %i.zxx = icmp ugt i32 %.0.copyload.i90303, %.0.copyload.i90301 ; 2 uses
  br i1 %i.zxp, label %bb.erf, label %bb.esh

bb.erf:                                           ; preds = %bb.ere
  br i1 %i.zxx, label %bb.erg, label %bb.erh

bb.erg:                                           ; preds = %bb.erf
  %i.zxy = zext i32 %.0.copyload.i90301 to i64
  %.val84562 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zxz = getelementptr inbounds nuw i8, ptr %.val84562, i64 %i.zxy
  store i8 89, ptr %i.zxz, align 1
  %i.zya = add nuw i32 %.0.copyload.i90301, 1     ; 2 uses
  %.val82479 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zyb = getelementptr inbounds nuw i8, ptr %.val82479, i64 %i.zxr
  store i32 %i.zya, ptr %i.zyb, align 1
  br label %bb.erm

bb.erh:                                           ; preds = %bb.erf
  %i.zyc = add i32 %i.zxu, 1                      ; 2 uses
  %i.zyd = icmp slt i32 %i.zyc, 0
  br i1 %i.zyd, label %.loopexit91557, label %bb.eri

bb.eri:                                           ; preds = %bb.erh
  %i.zye = sub i32 %.0.copyload.i90303, %.0.copyload.i90302 ; 2 uses
  %i.zyf = shl i32 %i.zye, 1
  %i.zyg = tail call i32 @llvm.umax.i32(i32 %i.zyf, i32 %i.zyc)
  %i.zyh = icmp ugt i32 %i.zye, 1073741822
  %i.zyi = select i1 %i.zyh, i32 2147483647, i32 %i.zyg ; 3 uses
  %.not78084 = icmp eq i32 %i.zyi, 0
  br i1 %.not78084, label %bb.erk, label %bb.erj

bb.erj:                                           ; preds = %bb.eri
  %i.zyj = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.zyi) #7
  br label %bb.erk

bb.erk:                                           ; preds = %bb.eri, %bb.erj
  %.420 = phi i32 [ %i.zyj, %bb.erj ], [ 0, %bb.eri ] ; 2 uses
  %i.zyk = add i32 %.420, %i.zxu                  ; 2 uses
  %i.zyl = zext i32 %i.zyk to i64
  %.val84561 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zym = getelementptr inbounds nuw i8, ptr %.val84561, i64 %i.zyl
  store i8 89, ptr %i.zym, align 1
  %i.zyn = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.420, i32 noundef %.0.copyload.i90302, i32 noundef %i.zxu) #7 ; 2 uses
  %i.zyo = add i32 %i.zyn, %i.zyi
  %.val82478 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zyp = getelementptr inbounds nuw i8, ptr %.val82478, i64 %i.zxv
  store i32 %i.zyo, ptr %i.zyp, align 1
  %i.zyq = add i32 %i.zyk, 1                      ; 2 uses
  %.val82477 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zyr = getelementptr inbounds nuw i8, ptr %.val82477, i64 %i.zxr
  store i32 %i.zyq, ptr %i.zyr, align 1
  %.val82476 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zys = getelementptr inbounds nuw i8, ptr %.val82476, i64 %i.zxq
  store i32 %i.zyn, ptr %i.zys, align 1
  %.not78085 = icmp eq i32 %.0.copyload.i90302, 0
  br i1 %.not78085, label %bb.erm, label %bb.erl

bb.erl:                                           ; preds = %bb.erk
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i90302) #7
  %.val80008 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zyt = getelementptr inbounds nuw i8, ptr %.val80008, i64 %i.zxr
  %.0.copyload.i90304 = load i32, ptr %i.zyt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90304) #7, !srcloc !19
  br label %bb.erm

bb.erm:                                           ; preds = %bb.erk, %bb.erl, %bb.erg
  %.16875707 = phi i32 [ %i.zya, %bb.erg ], [ %i.zyq, %bb.erk ], [ %.0.copyload.i90304, %bb.erl ] ; 4 uses
  %i.zyu = add nuw nsw i64 %i.zxq, 12             ; 6 uses
  %.val85870 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zyv = getelementptr inbounds nuw i8, ptr %.val85870, i64 %i.zyu
  %.0.copyload.i90305 = load i8, ptr %i.zyv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i90305) #7, !srcloc !21
  %i.zyw = icmp ugt i32 %.11175046, 255
  %i.zyx = zext i1 %i.zyw to i8
  %i.zyy = or i8 %.0.copyload.i90305, %i.zyx
  %.val84560 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zyz = getelementptr inbounds nuw i8, ptr %.val84560, i64 %i.zyu
  store i8 %i.zyy, ptr %i.zyz, align 1
  %.val80007 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zza = getelementptr inbounds nuw i8, ptr %.val80007, i64 %i.zxv
  %.0.copyload.i90306 = load i32, ptr %i.zza, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90306) #7, !srcloc !19
  %i.zzb = icmp ugt i32 %.0.copyload.i90306, %.16875707
  br i1 %i.zzb, label %bb.ern, label %bb.ero

bb.ern:                                           ; preds = %bb.erm
  %i.zzc = zext i32 %.16875707 to i64
  %.val84559 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zzd = trunc i32 %.11175046 to i8
  %i.zze = getelementptr inbounds nuw i8, ptr %.val84559, i64 %i.zzc
  store i8 %i.zzd, ptr %i.zze, align 1
  %i.zzf = add nuw i32 %.16875707, 1              ; 2 uses
  %.val82475 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zzg = getelementptr inbounds nuw i8, ptr %.val82475, i64 %i.zxr
  store i32 %i.zzf, ptr %i.zzg, align 1
  br label %bb.ert

bb.ero:                                           ; preds = %bb.erm
  %.val80006 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zzh = getelementptr inbounds nuw i8, ptr %.val80006, i64 %i.zxq
  %.0.copyload.i90307 = load i32, ptr %i.zzh, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90307) #7, !srcloc !19
  %i.zzi = sub i32 %.16875707, %.0.copyload.i90307 ; 3 uses
  %i.zzj = add i32 %i.zzi, 1                      ; 2 uses
  %i.zzk = icmp slt i32 %i.zzj, 0
  br i1 %i.zzk, label %.loopexit91557, label %bb.erp

bb.erp:                                           ; preds = %bb.ero
  %i.zzl = sub i32 %.0.copyload.i90306, %.0.copyload.i90307 ; 2 uses
  %i.zzm = shl i32 %i.zzl, 1
  %i.zzn = tail call i32 @llvm.umax.i32(i32 %i.zzm, i32 %i.zzj)
  %i.zzo = icmp ugt i32 %i.zzl, 1073741822
  %i.zzp = select i1 %i.zzo, i32 2147483647, i32 %i.zzn ; 3 uses
  %.not78086 = icmp eq i32 %i.zzp, 0
  br i1 %.not78086, label %bb.err, label %bb.erq

bb.erq:                                           ; preds = %bb.erp
  %i.zzq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.zzp) #7
  br label %bb.err

bb.err:                                           ; preds = %bb.erp, %bb.erq
  %.421 = phi i32 [ %i.zzq, %bb.erq ], [ 0, %bb.erp ] ; 2 uses
  %i.zzr = add i32 %.421, %i.zzi                  ; 2 uses
  %i.zzs = zext i32 %i.zzr to i64
  %.val84558 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zzt = trunc i32 %.11175046 to i8
  %i.zzu = getelementptr inbounds nuw i8, ptr %.val84558, i64 %i.zzs
  store i8 %i.zzt, ptr %i.zzu, align 1
  %i.zzv = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.421, i32 noundef %.0.copyload.i90307, i32 noundef %i.zzi) #7 ; 2 uses
  %i.zzw = add i32 %i.zzv, %i.zzp
  %.val82474 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zzx = getelementptr inbounds nuw i8, ptr %.val82474, i64 %i.zxv
  store i32 %i.zzw, ptr %i.zzx, align 1
  %i.zzy = add i32 %i.zzr, 1                      ; 2 uses
  %.val82473 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.zzz = getelementptr inbounds nuw i8, ptr %.val82473, i64 %i.zxr
  store i32 %i.zzy, ptr %i.zzz, align 1
  %.val82472 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aaaa = getelementptr inbounds nuw i8, ptr %.val82472, i64 %i.zxq
  store i32 %i.zzv, ptr %i.aaaa, align 1
  %.not78087 = icmp eq i32 %.0.copyload.i90307, 0
  br i1 %.not78087, label %bb.ert, label %bb.ers

bb.ers:                                           ; preds = %bb.err
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i90307) #7
  %.val80005 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aaab = getelementptr inbounds nuw i8, ptr %.val80005, i64 %i.zxr
  %.0.copyload.i90308 = load i32, ptr %i.aaab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90308) #7, !srcloc !19
  br label %bb.ert

bb.ert:                                           ; preds = %bb.err, %bb.ers, %bb.ern
  %.16975708 = phi i32 [ %i.zzf, %bb.ern ], [ %i.zzy, %bb.err ], [ %.0.copyload.i90308, %bb.ers ] ; 4 uses
  %.val85869 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aaac = getelementptr inbounds nuw i8, ptr %.val85869, i64 %i.zyu
  %.0.copyload.i90309 = load i8, ptr %i.aaac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i90309) #7, !srcloc !21
  %.val84557 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aaad = getelementptr inbounds nuw i8, ptr %.val84557, i64 %i.zyu
  store i8 %.0.copyload.i90309, ptr %i.aaad, align 1
  %.val80004 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aaae = getelementptr inbounds nuw i8, ptr %.val80004, i64 %i.zxv
  %.0.copyload.i90310 = load i32, ptr %i.aaae, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90310) #7, !srcloc !19
  %i.aaaf = icmp ugt i32 %.0.copyload.i90310, %.16975708
  br i1 %i.aaaf, label %bb.eru, label %bb.erv

bb.eru:                                           ; preds = %bb.ert
  %i.aaag = zext i32 %.16975708 to i64
  %.val84556 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aaah = trunc i64 %i.zxk to i8
  %i.aaai = getelementptr inbounds nuw i8, ptr %.val84556, i64 %i.aaag
  store i8 %i.aaah, ptr %i.aaai, align 1
  %i.aaaj = add nuw i32 %.16975708, 1             ; 2 uses
  %.val82471 = load ptr, ptr %i.e, align 8, !tbaa !18
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3Agenerate0x28hermes0x3A0x3ASourceMapGenerator0x2A0x29:bb.a
  %i.acai = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.acah) #7
  br label %bb.fcx

bb.fcx:                                           ; preds = %bb.fcv, %bb.fcw
  %.451 = phi i32 [ %i.acai, %bb.fcw ], [ 0, %bb.fcv ] ; 2 uses
  %i.acaj = add i32 %.451, %i.acaa                ; 2 uses
  %i.acak = zext i32 %i.acaj to i64
  %.val84477 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acal = trunc i32 %.175097.in to i8
  %i.acam = getelementptr inbounds nuw i8, ptr %.val84477, i64 %i.acak
  store i8 %i.acal, ptr %i.acam, align 1
  %i.acan = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.451, i32 noundef %.0.copyload.i90709, i32 noundef %i.acaa) #7 ; 2 uses
  %i.acao = add i32 %i.acan, %i.acah
  %.val82354 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acap = getelementptr inbounds nuw i8, ptr %.val82354, i64 %.pre-phi91965
  store i32 %i.acao, ptr %i.acap, align 1
  %i.acaq = add i32 %i.acaj, 1                    ; 2 uses
  %i.acar = add nuw nsw i64 %.pre-phi91964, 4     ; 2 uses
  %.val82353 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acas = getelementptr inbounds nuw i8, ptr %.val82353, i64 %i.acar
  store i32 %i.acaq, ptr %i.acas, align 1
  %.val82352 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acat = getelementptr inbounds nuw i8, ptr %.val82352, i64 %.pre-phi91964
  store i32 %i.acan, ptr %i.acat, align 1
  %.not78039 = icmp eq i32 %.0.copyload.i90709, 0
  br i1 %.not78039, label %bb.fcz, label %bb.fcy

bb.fcy:                                           ; preds = %bb.fcx
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i90709) #7
  %.val79861 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acau = getelementptr inbounds nuw i8, ptr %.val79861, i64 %i.acar
  %.0.copyload.i90710 = load i32, ptr %i.acau, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90710) #7, !srcloc !19
  br label %bb.fcz

bb.fcz:                                           ; preds = %bb.fcx, %bb.fcy, %bb.fct
  %.16375536 = phi i32 [ %i.abzw, %bb.fct ], [ %i.acaq, %bb.fcx ], [ %.0.copyload.i90710, %bb.fcy ] ; 4 uses
  %.val85833 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acav = getelementptr inbounds nuw i8, ptr %.val85833, i64 %i.abyc
  %.0.copyload.i90711 = load i8, ptr %i.acav, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i90711) #7, !srcloc !21
  %i.acaw = icmp ugt i32 %.175099.in, 255
  %i.acax = zext i1 %i.acaw to i8
  %i.acay = or i8 %.0.copyload.i90711, %i.acax
  %.val84476 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acaz = getelementptr inbounds nuw i8, ptr %.val84476, i64 %i.abyc
  store i8 %i.acay, ptr %i.acaz, align 1
  %.val79860 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acba = getelementptr inbounds nuw i8, ptr %.val79860, i64 %.pre-phi91965
  %.0.copyload.i90712 = load i32, ptr %i.acba, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90712) #7, !srcloc !19
  %i.acbb = icmp ugt i32 %.0.copyload.i90712, %.16375536
  br i1 %i.acbb, label %bb.fda, label %bb.fdb

bb.fda:                                           ; preds = %bb.fcz
  %i.acbc = zext i32 %.16375536 to i64
  %.val84475 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acbd = trunc i32 %.175099.in to i8
  %i.acbe = getelementptr inbounds nuw i8, ptr %.val84475, i64 %i.acbc
  store i8 %i.acbd, ptr %i.acbe, align 1
  %i.acbf = add nuw i32 %.16375536, 1
  %.val82351 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acbg = getelementptr inbounds nuw i8, ptr %.val82351, i64 %.pre-phi91964
  %i.acbh = getelementptr inbounds nuw i8, ptr %i.acbg, i64 4
  store i32 %i.acbf, ptr %i.acbh, align 1
  br label %bb.foa

bb.fdb:                                           ; preds = %bb.fcz
  %.val79859 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acbi = getelementptr inbounds nuw i8, ptr %.val79859, i64 %.pre-phi91964
  %.0.copyload.i90713 = load i32, ptr %i.acbi, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90713) #7, !srcloc !19
  %i.acbj = sub i32 %.16375536, %.0.copyload.i90713 ; 3 uses
  %i.acbk = add i32 %i.acbj, 1                    ; 2 uses
  %i.acbl = icmp slt i32 %i.acbk, 0
  br i1 %i.acbl, label %.loopexit91557, label %bb.fdc

bb.fdc:                                           ; preds = %bb.fdb
  %i.acbm = sub i32 %.0.copyload.i90712, %.0.copyload.i90713 ; 2 uses
  %i.acbn = shl i32 %i.acbm, 1
  %i.acbo = tail call i32 @llvm.umax.i32(i32 %i.acbn, i32 %i.acbk)
  %i.acbp = icmp ugt i32 %i.acbm, 1073741822
  %i.acbq = select i1 %i.acbp, i32 2147483647, i32 %i.acbo ; 3 uses
  %.not78040 = icmp eq i32 %i.acbq, 0
  br i1 %.not78040, label %bb.fde, label %bb.fdd

bb.fdd:                                           ; preds = %bb.fdc
  %i.acbr = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.acbq) #7
  br label %bb.fde

bb.fde:                                           ; preds = %bb.fdc, %bb.fdd
  %.452 = phi i32 [ %i.acbr, %bb.fdd ], [ 0, %bb.fdc ] ; 2 uses
  %i.acbs = add i32 %.452, %i.acbj                ; 2 uses
  %i.acbt = zext i32 %i.acbs to i64
  %.val84474 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acbu = trunc i32 %.175099.in to i8
  %i.acbv = getelementptr inbounds nuw i8, ptr %.val84474, i64 %i.acbt
  store i8 %i.acbu, ptr %i.acbv, align 1
  %i.acbw = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.452, i32 noundef %.0.copyload.i90713, i32 noundef %i.acbj) #7 ; 2 uses
  %i.acbx = add i32 %i.acbw, %i.acbq
  %.val82350 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acby = getelementptr inbounds nuw i8, ptr %.val82350, i64 %.pre-phi91965
  store i32 %i.acbx, ptr %i.acby, align 1
  %i.acbz = add i32 %i.acbs, 1
  %.val82349 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acca = getelementptr inbounds nuw i8, ptr %.val82349, i64 %.pre-phi91964
  %i.accb = getelementptr inbounds nuw i8, ptr %i.acca, i64 4
  store i32 %i.acbz, ptr %i.accb, align 1
  %.val82348 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.accc = getelementptr inbounds nuw i8, ptr %.val82348, i64 %.pre-phi91964
  store i32 %i.acbw, ptr %i.accc, align 1
  %.not78041 = icmp eq i32 %.0.copyload.i90713, 0
  br i1 %.not78041, label %bb.foa, label %bb.fdf

bb.fdf:                                           ; preds = %bb.fde
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i90713) #7
  br label %bb.foa

bb.fdg:                                           ; preds = %bb.ce
  %i.accd = add i32 %.975236, 8
  %.not78002 = icmp eq i32 %.975236, 0
  %i.acce = select i1 %.not78002, i32 0, i32 %i.accd ; 3 uses
  %i.accf = zext i32 %i.acce to i64               ; 2 uses
  %.val85832 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.accg = getelementptr inbounds nuw i8, ptr %.val85832, i64 %i.accf
  %.0.copyload.i90714 = load i8, ptr %i.accg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i90714) #7, !srcloc !21
  %i.acch = add i8 %.0.copyload.i90714, -2
  %i.acci = icmp ult i8 %i.acch, 107
  %.val79858 = load ptr, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  br i1 %i.acci, label %bb.fdh, label %bb.fdi

bb.fdh:                                           ; preds = %bb.fdg
  %i.accj = getelementptr inbounds nuw i8, ptr %.val79858, i64 %i.f
  %i.acck = getelementptr inbounds nuw i8, ptr %i.accj, i64 8
  %.0.copyload.i90715 = load i32, ptr %i.acck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90715) #7, !srcloc !19
  %i.accl = tail call i32 @w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i90715, i32 noundef %i.acce)
  br label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90729

bb.fdi:                                           ; preds = %bb.fdg
  %i.accm = getelementptr inbounds nuw i8, ptr %.val79858, i64 %i.accf
  %i.accn = getelementptr inbounds nuw i8, ptr %i.accm, i64 36
  %.0.copyload.i.i90717 = load i32, ptr %i.accn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i90717) #7, !srcloc !19
  %i.acco = zext i32 %.0.copyload.i.i90717 to i64 ; 2 uses
  %.val55.i90718 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.accp = getelementptr inbounds nuw i8, ptr %.val55.i90718, i64 %i.acco
  %i.accq = getelementptr inbounds nuw i8, ptr %i.accp, i64 92
  %.0.copyload.i57.i90719 = load i32, ptr %i.accq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i57.i90719) #7, !srcloc !19
  %.not.i90720 = icmp eq i32 %.0.copyload.i57.i90719, 0
  br i1 %.not.i90720, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90729, label %bb.fdj

bb.fdj:                                           ; preds = %bb.fdi
  %.val54.i90721 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.accr = getelementptr inbounds nuw i8, ptr %.val54.i90721, i64 %i.acco
  %i.accs = getelementptr inbounds nuw i8, ptr %i.accr, i64 88
  %.0.copyload.i58.i90722 = load i32, ptr %i.accs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i58.i90722) #7, !srcloc !19
  %i.acct = shl i32 %.0.copyload.i57.i90719, 2
  %i.accu = add i32 %.0.copyload.i58.i90722, %i.acct
  %i.accv = add i32 %.0.copyload.i57.i90719, 1073741823
  %i.accw = and i32 %i.accv, 1073741823
  %i.accx = add nuw nsw i32 %i.accw, 1
  br label %bb.fdk

bb.fdk:                                           ; preds = %bb.fdl, %bb.fdj
  %.051.i90723 = phi i32 [ 0, %bb.fdj ], [ %i.acdb, %bb.fdl ] ; 2 uses
  %.050.i90724 = phi i32 [ %.0.copyload.i58.i90722, %bb.fdj ], [ %i.acdc, %bb.fdl ] ; 2 uses
  %i.accy = zext i32 %.050.i90724 to i64
  %.val.i90725 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.accz = getelementptr inbounds nuw i8, ptr %.val.i90725, i64 %i.accy
  %.0.copyload.i59.i90726 = load i32, ptr %i.accz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i90726) #7, !srcloc !19
  %i.acda = icmp eq i32 %.0.copyload.i59.i90726, %i.acce
  br i1 %i.acda, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90729, label %bb.fdl

bb.fdl:                                           ; preds = %bb.fdk
  %i.acdb = add nuw nsw i32 %.051.i90723, 1
  %i.acdc = add i32 %.050.i90724, 4               ; 2 uses
  %.not53.i90727 = icmp eq i32 %i.acdc, %i.accu
  br i1 %.not53.i90727, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90729, label %bb.fdk

w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90729: ; preds = %bb.fdl, %bb.fdk, %bb.fdi, %bb.fdh
  %.12775062 = phi i32 [ %i.accl, %bb.fdh ], [ 0, %bb.fdi ], [ %.051.i90723, %bb.fdk ], [ %i.accx, %bb.fdl ] ; 3 uses
  %.val79857 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acdd = getelementptr inbounds nuw i8, ptr %.val79857, i64 %i.ux
  %i.acde = getelementptr inbounds nuw i8, ptr %i.acdd, i64 40
  %.0.copyload.i90730 = load i32, ptr %i.acde, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90730) #7, !srcloc !19
  %i.acdf = zext i32 %.0.copyload.i90730 to i64
  %.val79856 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acdg = getelementptr inbounds nuw i8, ptr %.val79856, i64 %i.acdf
  %.0.copyload.i90731 = load i32, ptr %i.acdg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90731) #7, !srcloc !19
  %i.acdh = zext i32 %.0.copyload.i90731 to i64
  %.val86312 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acdi = getelementptr inbounds nuw i8, ptr %.val86312, i64 %i.acdh
  %i.acdj = getelementptr inbounds nuw i8, ptr %i.acdi, i64 32
  %.0.copyload.i90732 = load double, ptr %i.acdj, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i90732) #7, !srcloc !23
  %i.acdk = fcmp uge double %.0.copyload.i90732, f0xC1E0000000000000
  %.val79855 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acdl = getelementptr inbounds nuw i8, ptr %.val79855, i64 %i.jm
  %.0.copyload.i90733 = load i32, ptr %i.acdl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90733) #7, !srcloc !19
  %i.acdm = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i90732)
  %i.acdn = fcmp olt double %i.acdm, f0x41E0000000000000
  br i1 %i.acdn, label %bb.fdm, label %bb.fdp

bb.fdm:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90729
  %i.acdo = fcmp ule double %.0.copyload.i90732, f0xC1E0000000200000
  %i.acdp = fcmp uge double %.0.copyload.i90732, f0x41E0000000000000
  %.not78005 = or i1 %i.acdo, %i.acdp
  br i1 %.not78005, label %bb.fdn, label %bb.fdo, !prof !30

bb.fdn:                                           ; preds = %bb.fdm
  tail call void @wasm_rt_trap(i32 noundef 2) #8
  unreachable

bb.fdo:                                           ; preds = %bb.fdm
  %i.acdq = fptosi double %.0.copyload.i90732 to i32
  br label %bb.fdp

bb.fdp:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90729, %bb.fdo
  %.1 = phi i32 [ %i.acdq, %bb.fdo ], [ 0, %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit90729 ]
  %8 = fcmp ole double %.0.copyload.i90732, f0x41DFFFFFFFC00000
  %i.acdr = and i1 %8, %i.acdk
  %i.acds = zext i32 %.0.copyload.i90733 to i64   ; 9 uses
  %i.acdt = add nuw nsw i64 %i.acds, 4            ; 9 uses
  %.val79854 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acdu = getelementptr inbounds nuw i8, ptr %.val79854, i64 %i.acdt
  %.0.copyload.i90734 = load i32, ptr %i.acdu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90734) #7, !srcloc !19
  %.val79853 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acdv = getelementptr inbounds nuw i8, ptr %.val79853, i64 %i.acds
  %.0.copyload.i90735 = load i32, ptr %i.acdv, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90735) #7, !srcloc !19
  %i.acdw = sub i32 %.0.copyload.i90734, %.0.copyload.i90735 ; 3 uses
  %i.acdx = add nuw nsw i64 %i.acds, 8            ; 6 uses
  %.val79852 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acdy = getelementptr inbounds nuw i8, ptr %.val79852, i64 %i.acdx
  %.0.copyload.i90736 = load i32, ptr %i.acdy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90736) #7, !srcloc !19
  %i.acdz = icmp ugt i32 %.0.copyload.i90736, %.0.copyload.i90734
  br i1 %i.acdz, label %bb.fdq, label %bb.fdr

bb.fdq:                                           ; preds = %bb.fdp
  %i.acea = zext i32 %.0.copyload.i90734 to i64
  %.val84473 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aceb = getelementptr inbounds nuw i8, ptr %.val84473, i64 %i.acea
  store i8 91, ptr %i.aceb, align 1
  %i.acec = add nuw i32 %.0.copyload.i90734, 1    ; 2 uses
  %.val82347 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aced = getelementptr inbounds nuw i8, ptr %.val82347, i64 %i.acdt
  store i32 %i.acec, ptr %i.aced, align 1
  br label %bb.fdw

bb.fdr:                                           ; preds = %bb.fdp
  %i.acee = add i32 %i.acdw, 1                    ; 2 uses
  %i.acef = icmp slt i32 %i.acee, 0
  br i1 %i.acef, label %.loopexit91557, label %bb.fds

bb.fds:                                           ; preds = %bb.fdr
  %i.aceg = sub i32 %.0.copyload.i90736, %.0.copyload.i90735 ; 2 uses
  %i.aceh = shl i32 %i.aceg, 1
  %i.acei = tail call i32 @llvm.umax.i32(i32 %i.aceh, i32 %i.acee)
  %i.acej = icmp ugt i32 %i.aceg, 1073741822
  %i.acek = select i1 %i.acej, i32 2147483647, i32 %i.acei ; 3 uses
  %.not78009 = icmp eq i32 %i.acek, 0
  br i1 %.not78009, label %bb.fdu, label %bb.fdt

bb.fdt:                                           ; preds = %bb.fds
  %i.acel = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.acek) #7
  br label %bb.fdu

bb.fdu:                                           ; preds = %bb.fds, %bb.fdt
  %.453 = phi i32 [ %i.acel, %bb.fdt ], [ 0, %bb.fds ] ; 2 uses
  %i.acem = add i32 %.453, %i.acdw                ; 2 uses
  %i.acen = zext i32 %i.acem to i64
  %.val84472 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aceo = getelementptr inbounds nuw i8, ptr %.val84472, i64 %i.acen
  store i8 91, ptr %i.aceo, align 1
  %i.acep = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.453, i32 noundef %.0.copyload.i90735, i32 noundef %i.acdw) #7 ; 2 uses
  %i.aceq = add i32 %i.acep, %i.acek
  %.val82346 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acer = getelementptr inbounds nuw i8, ptr %.val82346, i64 %i.acdx
  store i32 %i.aceq, ptr %i.acer, align 1
  %i.aces = add i32 %i.acem, 1                    ; 2 uses
  %.val82345 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acet = getelementptr inbounds nuw i8, ptr %.val82345, i64 %i.acdt
  store i32 %i.aces, ptr %i.acet, align 1
  %.val82344 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aceu = getelementptr inbounds nuw i8, ptr %.val82344, i64 %i.acds
  store i32 %i.acep, ptr %i.aceu, align 1
  %.not78010 = icmp eq i32 %.0.copyload.i90735, 0
  br i1 %.not78010, label %bb.fdw, label %bb.fdv

bb.fdv:                                           ; preds = %bb.fdu
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i90735) #7
  %.val79851 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acev = getelementptr inbounds nuw i8, ptr %.val79851, i64 %i.acdt
  %.0.copyload.i90737 = load i32, ptr %i.acev, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90737) #7, !srcloc !19
  br label %bb.fdw

bb.fdw:                                           ; preds = %bb.fdu, %bb.fdv, %bb.fdq
  %.18275721 = phi i32 [ %i.acec, %bb.fdq ], [ %i.aces, %bb.fdu ], [ %.0.copyload.i90737, %bb.fdv ] ; 4 uses
  %i.acew = add nuw nsw i64 %i.acds, 12           ; 4 uses
  %.val85831 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acex = getelementptr inbounds nuw i8, ptr %.val85831, i64 %i.acew
  %.0.copyload.i90738 = load i8, ptr %i.acex, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i90738) #7, !srcloc !21
  %i.acey = icmp ugt i32 %.12775062, 255
  %i.acez = zext i1 %i.acey to i8
  %i.acfa = or i8 %.0.copyload.i90738, %i.acez
  %.val84471 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acfb = getelementptr inbounds nuw i8, ptr %.val84471, i64 %i.acew
  store i8 %i.acfa, ptr %i.acfb, align 1
  %.val79850 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acfc = getelementptr inbounds nuw i8, ptr %.val79850, i64 %i.acdx
  %.0.copyload.i90739 = load i32, ptr %i.acfc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90739) #7, !srcloc !19
  %i.acfd = icmp ugt i32 %.0.copyload.i90739, %.18275721
  br i1 %i.acfd, label %bb.fdx, label %bb.fdy

bb.fdx:                                           ; preds = %bb.fdw
  %i.acfe = zext i32 %.18275721 to i64
  %.val84470 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acff = trunc i32 %.12775062 to i8
  %i.acfg = getelementptr inbounds nuw i8, ptr %.val84470, i64 %i.acfe
  store i8 %i.acff, ptr %i.acfg, align 1
  %i.acfh = add nuw i32 %.18275721, 1             ; 2 uses
  %.val82343 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acfi = getelementptr inbounds nuw i8, ptr %.val82343, i64 %i.acdt
  store i32 %i.acfh, ptr %i.acfi, align 1
  br label %bb.fed

bb.fdy:                                           ; preds = %bb.fdw
  %.val79849 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acfj = getelementptr inbounds nuw i8, ptr %.val79849, i64 %i.acds
  %.0.copyload.i90740 = load i32, ptr %i.acfj, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90740) #7, !srcloc !19
  %i.acfk = sub i32 %.18275721, %.0.copyload.i90740 ; 3 uses
  %i.acfl = add i32 %i.acfk, 1                    ; 2 uses
  %i.acfm = icmp slt i32 %i.acfl, 0
  br i1 %i.acfm, label %.loopexit91557, label %bb.fdz

bb.fdz:                                           ; preds = %bb.fdy
  %i.acfn = sub i32 %.0.copyload.i90739, %.0.copyload.i90740 ; 2 uses
  %i.acfo = shl i32 %i.acfn, 1
  %i.acfp = tail call i32 @llvm.umax.i32(i32 %i.acfo, i32 %i.acfl)
  %i.acfq = icmp ugt i32 %i.acfn, 1073741822
  %i.acfr = select i1 %i.acfq, i32 2147483647, i32 %i.acfp ; 3 uses
  %.not78011 = icmp eq i32 %i.acfr, 0
  br i1 %.not78011, label %bb.feb, label %bb.fea

bb.fea:                                           ; preds = %bb.fdz
  %i.acfs = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.acfr) #7
  br label %bb.feb

bb.feb:                                           ; preds = %bb.fdz, %bb.fea
  %.454 = phi i32 [ %i.acfs, %bb.fea ], [ 0, %bb.fdz ] ; 2 uses
  %i.acft = add i32 %.454, %i.acfk                ; 2 uses
  %i.acfu = zext i32 %i.acft to i64
  %.val84469 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acfv = trunc i32 %.12775062 to i8
  %i.acfw = getelementptr inbounds nuw i8, ptr %.val84469, i64 %i.acfu
  store i8 %i.acfv, ptr %i.acfw, align 1
  %i.acfx = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.454, i32 noundef %.0.copyload.i90740, i32 noundef %i.acfk) #7 ; 2 uses
  %i.acfy = add i32 %i.acfx, %i.acfr
  %.val82342 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acfz = getelementptr inbounds nuw i8, ptr %.val82342, i64 %i.acdx
  store i32 %i.acfy, ptr %i.acfz, align 1
  %i.acga = add i32 %i.acft, 1                    ; 2 uses
  %.val82341 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acgb = getelementptr inbounds nuw i8, ptr %.val82341, i64 %i.acdt
  store i32 %i.acga, ptr %i.acgb, align 1
  %.val82340 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acgc = getelementptr inbounds nuw i8, ptr %.val82340, i64 %i.acds
  store i32 %i.acfx, ptr %i.acgc, align 1
  %.not78012 = icmp eq i32 %.0.copyload.i90740, 0
  br i1 %.not78012, label %bb.fed, label %bb.fec

bb.fec:                                           ; preds = %bb.feb
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i90740) #7
  %.val79848 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acgd = getelementptr inbounds nuw i8, ptr %.val79848, i64 %i.acdt
  %.0.copyload.i90741 = load i32, ptr %i.acgd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90741) #7, !srcloc !19
  br label %bb.fed

bb.fed:                                           ; preds = %bb.feb, %bb.fec, %bb.fdx
  %.18375722 = phi i32 [ %i.acfh, %bb.fdx ], [ %i.acga, %bb.feb ], [ %.0.copyload.i90741, %bb.fec ] ; 4 uses
  %.val85830 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acge = getelementptr inbounds nuw i8, ptr %.val85830, i64 %i.acew
  %.0.copyload.i90742 = load i8, ptr %i.acge, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i90742) #7, !srcloc !21
  %.val84468 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acgf = getelementptr inbounds nuw i8, ptr %.val84468, i64 %i.acew
  store i8 %.0.copyload.i90742, ptr %i.acgf, align 1
  %i.acgg = select i1 %i.acdr, i32 %.1, i32 0     ; 2 uses
  %.val79847 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acgh = getelementptr inbounds nuw i8, ptr %.val79847, i64 %i.acdx
  %.0.copyload.i90743 = load i32, ptr %i.acgh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90743) #7, !srcloc !19
  %i.acgi = icmp ugt i32 %.0.copyload.i90743, %.18375722
  br i1 %i.acgi, label %bb.fee, label %bb.fef

bb.fee:                                           ; preds = %bb.fed
  %i.acgj = zext i32 %.18375722 to i64
  %.val84467 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acgk = trunc i32 %i.acgg to i8
  %i.acgl = getelementptr inbounds nuw i8, ptr %.val84467, i64 %i.acgj
  store i8 %i.acgk, ptr %i.acgl, align 1
  %i.acgm = add nuw i32 %.18375722, 1
  %.val82339 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acgn = getelementptr inbounds nuw i8, ptr %.val82339, i64 %i.acdt
  store i32 %i.acgm, ptr %i.acgn, align 1
  br label %bb.foa

bb.fef:                                           ; preds = %bb.fed
  %.val79846 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.acgo = getelementptr inbounds nuw i8, ptr %.val79846, i64 %i.acds
  %.0.copyload.i90744 = load i32, ptr %i.acgo, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i90744) #7, !srcloc !19
  %i.acgp = sub i32 %.18375722, %.0.copyload.i90744 ; 3 uses
  %i.acgq = add i32 %i.acgp, 1                    ; 2 uses
end_hunk_5
begin_hunk_6_@w2c_hermes_hermes0x3A0x3APhiInst0x3A0x3AaddEntry0x28hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x29:bb.a
  %.0.copyload.i.i16 = load i32, ptr %i.s, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i16) #7, !srcloc !19
  %.val55.i17 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val55.i17, i64 %i.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.0.copyload.i59.i18 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i18) #7, !srcloc !19
  %.not.i19 = icmp ult i32 %.0.copyload.i.i16, %.0.copyload.i59.i18
  br i1 %.not.i19, label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit29, label %bb.c

bb.c:                                             ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit
  %i.v = add i32 %1, 40
  %i.w = add i32 %1, 52
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.v, i32 noundef %i.w, i32 noundef 0, i32 noundef 8) #7
  %.val54.i20 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val54.i20, i64 %i.c
  %.0.copyload.i60.i21 = load i32, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i60.i21) #7, !srcloc !19
  br label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit29

w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit29: ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit, %bb.c
  %.0.i22 = phi i32 [ %.0.copyload.i60.i21, %bb.c ], [ %.0.copyload.i.i16, %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit ]
  %.not = icmp eq i32 %3, 0
  %i.y = add i32 %3, 8
  %i.z = select i1 %.not, i32 0, i32 %i.y
  %.val53.i23 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val53.i23, i64 %i.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.0.copyload.i61.i24 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i61.i24) #7, !srcloc !19
  %i.ac = shl i32 %.0.i22, 3
  %i.ad = add i32 %.0.copyload.i61.i24, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %.val58.i25 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val58.i25, i64 %i.ae
  store i64 0, ptr %i.af, align 1
  %.val.i26 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i26, i64 %i.c
  %.0.copyload.i62.i27 = load i32, ptr %i.ag, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i62.i27) #7, !srcloc !19
  %i.ah = add i32 %.0.copyload.i62.i27, 1
  %.val57.i28 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val57.i28, i64 %i.c
  store i32 %i.ah, ptr %i.ai, align 1
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.z, i32 noundef %.0.copyload.i62.i27)
  ret void
}

declare i32 @w2c_hermes_llvh0x3A0x3AFoldingSetBase0x3A0x3AFoldingSetBase0x28unsigned0x20int0x29(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3Awrite_hex0x28llvh0x3A0x3Araw_ostream0x260x2C0x20unsigned0x20long0x20long0x2C0x20llvh0x3A0x3AHexPrintStyle0x2C0x20llvh0x3A0x3AOptional0x3Cunsigned0x20long0x3E0x29(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AemitValue0x28long0x20long0x29(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @w2c_hermes_hermes0x3A0x3AJSONEmitter0x3A0x3AwillEmitValue0x280x29(ptr noundef %0, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = zext i32 %1 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  tail call void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aoperator0x3C0x3C0x28long0x20long0x29(ptr noundef %0, i32 noundef %.0.copyload.i, i64 noundef %2) #7
  ret void
}

declare void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aoperator0x3C0x3C0x28long0x20long0x29(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3A0x7EIRPrinter0x280x290x2E1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %.val35 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val35, i64 %i.b
  store i32 263264, ptr %i.c, align 1
  %i.d = add i32 %1, 52
  %.val34 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val34, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fmap_value_compare0x3Chermes0x3A0x3AValue0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %i.d, i32 noundef %.0.copyload.i) #7
  %i.g = add i32 %1, 36
  %.val33 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val33, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.0.copyload.i36 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i36) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fmap_value_compare0x3Chermes0x3A0x3AValue0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %i.g, i32 noundef %.0.copyload.i36) #7
  %i.j = add i32 %1, 20
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.0.copyload.i37 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i37) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fmap_value_compare0x3Chermes0x3A0x3AValue0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %i.j, i32 noundef %.0.copyload.i37) #7
  tail call void @w2c_hermes_dlfree(ptr noundef %0, i32 noundef %1) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3AprintValueLabel0x28hermes0x3A0x3AInstruction0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 10 uses
  %i.c = add i32 %i.b, -128                       ; 6 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 135 uses
  %i.e = zext i32 %2 to i64                       ; 4 uses
  %i.f = add nuw nsw i64 %i.e, 36                 ; 2 uses
  %.val1173 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val1173, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = zext i32 %.0.copyload.i to i64
  %.val1172 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val1172, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %.0.copyload.i1218 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1218) #7, !srcloc !19
  %i.k = zext i32 %.0.copyload.i1218 to i64
  %.val1171 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val1171, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %.0.copyload.i1219 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1219) #7, !srcloc !19
  %i.n = zext i32 %.0.copyload.i1219 to i64
  %.val1170 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val1170, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %.0.copyload.i1220 = load i32, ptr %i.p, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1220) #7, !srcloc !19
  %.val1210 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val1210, i64 %i.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.0.copyload.i1221 = load i8, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1221) #7, !srcloc !21
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  %.not1055 = icmp eq i8 %.0.copyload.i1221, 93
  %or.cond = select i1 %.not, i1 %.not1055, i1 false
  br i1 %or.cond, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.s = zext i32 %1 to i64                       ; 3 uses
  %.val1169 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val1169, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %.0.copyload.i1222 = load i32, ptr %i.u, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1222) #7, !srcloc !19
  %i.v = zext i32 %.0.copyload.i1222 to i64       ; 2 uses
  %.val1168 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val1168, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.copyload.i1223 = load i32, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1223) #7, !srcloc !19
  %i.y = add nuw nsw i64 %i.v, 12                 ; 3 uses
  %.val1167 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val1167, i64 %i.y
  %.0.copyload.i1224 = load i32, ptr %i.z, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1224) #7, !srcloc !19
  %i.aa = icmp eq i32 %.0.copyload.i1223, %.0.copyload.i1224
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1222, i32 noundef 59068, i32 noundef 1) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ac = zext i32 %.0.copyload.i1224 to i64
  %.val1196 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1196, i64 %i.ac
  store i8 91, ptr %i.ad, align 1
  %.val1166 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1166, i64 %i.y
  %.0.copyload.i1225 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1225) #7, !srcloc !19
  %i.af = add i32 %.0.copyload.i1225, 1
  %.val1186 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1186, i64 %i.y
  store i32 %i.af, ptr %i.ag, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.01035 = phi i32 [ %i.ab, %bb.c ], [ %.0.copyload.i1222, %bb.d ] ; 5 uses
  %.val1165 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1165, i64 %i.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.0.copyload.i1226 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1226) #7, !srcloc !19
  %i.aj = zext i32 %.0.copyload.i1226 to i64
  %.val1164 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1164, i64 %i.aj
  %.0.copyload.i1227 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1227) #7, !srcloc !19
  %i.al = zext i32 %.0.copyload.i1227 to i64
  %.val1217 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val1217, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.0.copyload.i1228 = load double, ptr %i.an, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1228) #7, !srcloc !23
  %i.ao = fcmp uge double %.0.copyload.i1228, f0xC1E0000000000000
  %i.ap = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i1228)
  %i.aq = fcmp olt double %i.ap, f0x41E0000000000000
  br i1 %i.aq, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ar = fcmp ule double %.0.copyload.i1228, f0xC1E0000000200000
  %i.as = fcmp uge double %.0.copyload.i1228, f0x41E0000000000000
  %.not1058 = or i1 %i.ar, %i.as
  br i1 %.not1058, label %bb.g, label %bb.h, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @wasm_rt_trap(i32 noundef 2) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.at = fptosi double %.0.copyload.i1228 to i32
  %i.au = shl i32 %i.at, 2
  %i.av = and i32 %i.au, 1020
  %i.aw = add nuw nsw i32 %i.av, 262768
  %i.ax = zext nneg i32 %i.aw to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %.0 = phi i64 [ %i.ax, %bb.h ], [ 262768, %bb.e ]
  %5 = fcmp ole double %.0.copyload.i1228, f0x41DFFFFFFFC00000
  %i.ay = and i1 %5, %i.ao
  %i.az = select i1 %i.ay, i64 %.0, i64 262768
  %.val1163 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1163, i64 %i.az
  %.0.copyload.i1229 = load i32, ptr %i.ba, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1229) #7, !srcloc !19
  %.not1062 = icmp eq i32 %.0.copyload.i1229, 0
  br i1 %.not1062, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = tail call i32 @w2c_hermes_strlen(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1229) #7 ; 5 uses
  %i.bc = zext i32 %.01035 to i64                 ; 2 uses
  %.val1162 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1162, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.0.copyload.i1230 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1230) #7, !srcloc !19
  %i.bf = add nuw nsw i64 %i.bc, 12               ; 3 uses
  %.val1161 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1161, i64 %i.bf
  %.0.copyload.i1231 = load i32, ptr %i.bg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1231) #7, !srcloc !19
  %i.bh = sub i32 %.0.copyload.i1230, %.0.copyload.i1231
  %i.bi = icmp ugt i32 %i.bb, %i.bh
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.01035, i32 noundef %.0.copyload.i1229, i32 noundef %i.bb) #7
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %.not1063 = icmp eq i32 %i.bb, 0
  br i1 %.not1063, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1231, i32 noundef %.0.copyload.i1229, i32 noundef %i.bb) #7 ; 0 uses
  %.val1160 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1160, i64 %i.bf
  %.0.copyload.i1232 = load i32, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1232) #7, !srcloc !19
  %i.bm = add i32 %.0.copyload.i1232, %i.bb
  %.val1185 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1185, i64 %i.bf
  store i32 %i.bm, ptr %i.bn, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.i, %bb.m, %bb.k
  %.11036 = phi i32 [ %.01035, %bb.i ], [ %i.bj, %bb.k ], [ %.01035, %bb.l ], [ %.01035, %bb.m ] ; 2 uses
  %i.bo = zext i32 %.11036 to i64                 ; 2 uses
  %i.bp = add nuw nsw i64 %i.bo, 12               ; 3 uses
  %.val1159 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1159, i64 %i.bp
  %.0.copyload.i1233 = load i32, ptr %i.bq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1233) #7, !srcloc !19
  %.val1158 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val1158, i64 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.0.copyload.i1234 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1234) #7, !srcloc !19
  %i.bt = icmp eq i32 %.0.copyload.i1233, %.0.copyload.i1234
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.11036, i32 noundef 59053, i32 noundef 1) #7 ; 0 uses
  br label %bb.bv

bb.p:                                             ; preds = %bb.n
  %i.bv = zext i32 %.0.copyload.i1233 to i64
  %.val1195 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1195, i64 %i.bv
  store i8 93, ptr %i.bw, align 1
  %.val1157 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1157, i64 %i.bp
  %.0.copyload.i1235 = load i32, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1235) #7, !srcloc !19
  %i.by = add i32 %.0.copyload.i1235, 1
  %.val1184 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1184, i64 %i.bp
  store i32 %i.by, ptr %i.bz, align 1
  br label %bb.bv

bb.q:                                             ; preds = %bb.a
  %.not1064 = icmp eq i8 %.0.copyload.i1221, 98
  %or.cond1081 = select i1 %.not, i1 %.not1064, i1 false
  %.val1156 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %or.cond1081, label %bb.r, label %bb.ag

bb.r:                                             ; preds = %bb.q
  %i.ca = zext i32 %1 to i64                      ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1156, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %.0.copyload.i1236 = load i32, ptr %i.cc, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1236) #7, !srcloc !19
  %i.cd = zext i32 %.0.copyload.i1236 to i64      ; 2 uses
  %.val1155 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1155, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.0.copyload.i1237 = load i32, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1237) #7, !srcloc !19
  %i.cg = add nuw nsw i64 %i.cd, 12               ; 3 uses
  %.val1154 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1154, i64 %i.cg
  %.0.copyload.i1238 = load i32, ptr %i.ch, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1238) #7, !srcloc !19
  %i.ci = icmp eq i32 %.0.copyload.i1237, %.0.copyload.i1238
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1236, i32 noundef 59068, i32 noundef 1) #7
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ck = zext i32 %.0.copyload.i1238 to i64
  %.val1194 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val1194, i64 %i.ck
  store i8 91, ptr %i.cl, align 1
  %.val1153 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1153, i64 %i.cg
  %.0.copyload.i1239 = load i32, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1239) #7, !srcloc !19
  %i.cn = add i32 %.0.copyload.i1239, 1
  %.val1183 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val1183, i64 %i.cg
  store i32 %i.cn, ptr %i.co, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2 = phi i32 [ %i.cj, %bb.s ], [ %.0.copyload.i1236, %bb.t ] ; 5 uses
  %.val1152 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1152, i64 %i.e
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %.0.copyload.i1240 = load i32, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1240) #7, !srcloc !19
  %i.cr = zext i32 %.0.copyload.i1240 to i64
  %.val1151 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1151, i64 %i.cr
  %.0.copyload.i1241 = load i32, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1241) #7, !srcloc !19
  %i.ct = zext i32 %.0.copyload.i1241 to i64
  %.val1216 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1216, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %.0.copyload.i1242 = load double, ptr %i.cv, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1242) #7, !srcloc !23
  %i.cw = fcmp uge double %.0.copyload.i1242, f0xC1E0000000000000
  %i.cx = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i1242)
  %i.cy = fcmp olt double %i.cx, f0x41E0000000000000
  br i1 %i.cy, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cz = fcmp ule double %.0.copyload.i1242, f0xC1E0000000200000
  %i.da = fcmp uge double %.0.copyload.i1242, f0x41E0000000000000
  %.not1067 = or i1 %i.cz, %i.da
  br i1 %.not1067, label %bb.w, label %bb.x, !prof !30

bb.w:                                             ; preds = %bb.v
  tail call void @wasm_rt_trap(i32 noundef 2) #8
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.db = fptosi double %.0.copyload.i1242 to i32
  %i.dc = shl i32 %i.db, 2
  %i.dd = and i32 %i.dc, 1020
  %i.de = add nuw nsw i32 %i.dd, 262768
  %i.df = zext nneg i32 %i.de to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %.1 = phi i64 [ %i.df, %bb.x ], [ 262768, %bb.u ]
  %6 = fcmp ole double %.0.copyload.i1242, f0x41DFFFFFFFC00000
  %i.dg = and i1 %6, %i.cw
  %i.dh = select i1 %i.dg, i64 %.1, i64 262768
  %.val1150 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val1150, i64 %i.dh
  %.0.copyload.i1243 = load i32, ptr %i.di, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1243) #7, !srcloc !19
  %.not1071 = icmp eq i32 %.0.copyload.i1243, 0
  br i1 %.not1071, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = tail call i32 @w2c_hermes_strlen(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1243) #7 ; 5 uses
  %i.dk = zext i32 %.2 to i64                     ; 2 uses
  %.val1149 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %.val1149, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.0.copyload.i1244 = load i32, ptr %i.dm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1244) #7, !srcloc !19
  %i.dn = add nuw nsw i64 %i.dk, 12               ; 3 uses
  %.val1148 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val1148, i64 %i.dn
  %.0.copyload.i1245 = load i32, ptr %i.do, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1245) #7, !srcloc !19
  %i.dp = sub i32 %.0.copyload.i1244, %.0.copyload.i1245
  %i.dq = icmp ugt i32 %i.dj, %i.dp
  br i1 %i.dq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dr = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.2, i32 noundef %.0.copyload.i1243, i32 noundef %i.dj) #7
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %.not1072 = icmp eq i32 %i.dj, 0
  br i1 %.not1072, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ds = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1245, i32 noundef %.0.copyload.i1243, i32 noundef %i.dj) #7 ; 0 uses
  %.val1147 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %.val1147, i64 %i.dn
  %.0.copyload.i1246 = load i32, ptr %i.dt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1246) #7, !srcloc !19
  %i.du = add i32 %.0.copyload.i1246, %i.dj
  %.val1182 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.val1182, i64 %i.dn
  store i32 %i.du, ptr %i.dv, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.y, %bb.ac, %bb.aa
  %.3 = phi i32 [ %.2, %bb.y ], [ %i.dr, %bb.aa ], [ %.2, %bb.ab ], [ %.2, %bb.ac ] ; 2 uses
  %i.dw = zext i32 %.3 to i64                     ; 2 uses
  %i.dx = add nuw nsw i64 %i.dw, 12               ; 3 uses
  %.val1146 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %.val1146, i64 %i.dx
  %.0.copyload.i1247 = load i32, ptr %i.dy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1247) #7, !srcloc !19
  %.val1145 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val1145, i64 %i.dw
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.0.copyload.i1248 = load i32, ptr %i.ea, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1248) #7, !srcloc !19
  %i.eb = icmp eq i32 %.0.copyload.i1247, %.0.copyload.i1248
  br i1 %i.eb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ec = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.3, i32 noundef 59053, i32 noundef 1) #7 ; 0 uses
  br label %bb.bv

bb.af:                                            ; preds = %bb.ad
  %i.ed = zext i32 %.0.copyload.i1247 to i64
  %.val1193 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val1193, i64 %i.ed
  store i8 93, ptr %i.ee, align 1
  %.val1144 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1144, i64 %i.dx
  %.0.copyload.i1249 = load i32, ptr %i.ef, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1249) #7, !srcloc !19
  %i.eg = add i32 %.0.copyload.i1249, 1
  %.val1181 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.val1181, i64 %i.dx
  store i32 %i.eg, ptr %i.eh, align 1
  br label %bb.bv

bb.ag:                                            ; preds = %bb.q
  %i.ei = zext i32 %3 to i64                      ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val1156, i64 %i.ei
  %.0.copyload.i1250 = load i8, ptr %i.ej, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1250) #7, !srcloc !21
  %i.ek = zext i8 %.0.copyload.i1250 to i32       ; 2 uses
  switch i8 %.0.copyload.i1250, label %bb.ay [
    i8 111, label %bb.at
    i8 112, label %bb.av
    i8 113, label %bb.au
    i8 114, label %bb.aq
    i8 115, label %bb.ah
    i8 116, label %bb.al
    i8 117, label %bb.an
    i8 118, label %bb.aw
    i8 121, label %bb.ax
  ]

bb.ah:                                            ; preds = %bb.ag
  %.val1143 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val1143, i64 %i.ei
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %.0.copyload.i1251 = load i32, ptr %i.em, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1251) #7, !srcloc !19
  %i.en = zext i32 %.0.copyload.i1251 to i64
  %.val1191 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val1191, i64 %i.en
  %.0.copyload.i1252 = load i64, ptr %i.eo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1252) #7, !srcloc !20
  %i.ep = trunc i64 %.0.copyload.i1252 to i32     ; 2 uses
  %i.eq = lshr i64 %.0.copyload.i1252, 32         ; 2 uses
  %i.er = trunc nuw i64 %i.eq to i32              ; 4 uses
  %i.es = zext i32 %1 to i64                      ; 4 uses
  %.val1142 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val1142, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %.0.copyload.i1253 = load i32, ptr %i.eu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1253) #7, !srcloc !19
  %i.ev = zext i32 %.0.copyload.i1253 to i64      ; 2 uses
  %.val1141 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw i8, ptr %.val1141, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.0.copyload.i1254 = load i32, ptr %i.ex, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1254) #7, !srcloc !19
  %i.ey = add nuw nsw i64 %i.ev, 12               ; 3 uses
  %.val1140 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val1140, i64 %i.ey
  %.0.copyload.i1255 = load i32, ptr %i.ez, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1255) #7, !srcloc !19
  %i.fa = sub i32 %.0.copyload.i1254, %.0.copyload.i1255
  %i.fb = icmp ult i32 %i.fa, %i.er
  br i1 %i.fb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fc = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1253, i32 noundef %i.ep, i32 noundef %i.er) #7 ; 0 uses
  br label %bb.bv

bb.aj:                                            ; preds = %bb.ah
  %.not1075 = icmp eq i64 %i.eq, 0
  br i1 %.not1075, label %bb.bv, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fd = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1255, i32 noundef %i.ep, i32 noundef %i.er) #7 ; 0 uses
  %.val1139 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val1139, i64 %i.ey
  %.0.copyload.i1256 = load i32, ptr %i.fe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1256) #7, !srcloc !19
  %i.ff = add i32 %.0.copyload.i1256, %i.er
  %.val1180 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val1180, i64 %i.ey
  store i32 %i.ff, ptr %i.fg, align 1
  br label %bb.bv

bb.al:                                            ; preds = %bb.ag
  %i.fh = zext i32 %1 to i64                      ; 3 uses
  %.val1138 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %.val1138, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %.0.copyload.i1257 = load i32, ptr %i.fj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1257) #7, !srcloc !19
  %.val1137 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val1137, i64 %i.ei
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %.0.copyload.i1258 = load i32, ptr %i.fl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1258) #7, !srcloc !19
  %i.fm = zext i32 %.0.copyload.i1258 to i64
  %.val1190 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1190, i64 %i.fm
  %.0.copyload.i1259 = load i64, ptr %i.fn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1259) #7, !srcloc !20
  %i.fo = zext i32 %i.c to i64                    ; 5 uses
  %.val1204 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %.val1204, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  store i64 %.0.copyload.i1259, ptr %i.fq, align 1
  %.val1203 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %.val1203, i64 %i.fo
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 120
  store i64 %.0.copyload.i1259, ptr %i.fs, align 1
  %i.ft = add i32 %i.b, -48                       ; 2 uses
  %i.fu = add i32 %i.b, -88
  tail call void @w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3AescapeStr0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %i.ft, i32 noundef %1, i32 noundef %i.fu)
  %i.fv = add nuw nsw i64 %i.fo, 80               ; 2 uses
  %.val1136 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %.val1136, i64 %i.fv
  %.0.copyload.i1260 = load i32, ptr %i.fw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1260) #7, !srcloc !19
  %i.fx = add nuw nsw i64 %i.fo, 91               ; 2 uses
  %.val1208 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1208, i64 %i.fx
  %.0.copyload.i1261 = load i8, ptr %i.fy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1261) #7, !srcloc !21
  %i.fz = zext i8 %.0.copyload.i1261 to i32
  %.not1074 = icmp sgt i8 %.0.copyload.i1261, -1  ; 2 uses
  %i.ga = select i1 %.not1074, i32 %i.ft, i32 %.0.copyload.i1260
  %.val1135 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1135, i64 %i.fo
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 84
  %.0.copyload.i1262 = load i32, ptr %i.gc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1262) #7, !srcloc !19
end_hunk_6
begin_hunk_7_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ALowerSwitchIntoJumpTables0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i915) #7, !srcloc !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2779 = phi i32 [ %.0.copyload.i915, %bb.e ], [ %.1778, %bb.d ]
  %.val867 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val867, i64 %i.i
  %.0.copyload.i916 = load i32, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i916) #7, !srcloc !19
  %i.aa = shl i32 %.2779, 2
  %i.ab = add i32 %.0.copyload.i916, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %.val895 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val895, i64 %i.ac
  store i32 %.0774, ptr %i.ad, align 1
  %.val866 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val866, i64 %i.f
  %.0.copyload.i917 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i917) #7, !srcloc !19
  %i.af = add i32 %.0.copyload.i917, 1            ; 2 uses
  %.val894 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val894, i64 %i.f
  store i32 %i.af, ptr %i.ag, align 1
  br label %.preheader1052._crit_edge

.preheader1052._crit_edge:                        ; preds = %.preheader1052, %bb.c, %bb.f
  %.pre-phi = phi i64 [ %i.t, %bb.f ], [ %i.t, %bb.c ], [ 0, %.preheader1052 ]
  %.3 = phi i32 [ %i.af, %bb.f ], [ %.1778, %bb.c ], [ %.1778, %.preheader1052 ] ; 2 uses
  %.val865 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val865, i64 %.pre-phi
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.0.copyload.i918 = load i32, ptr %i.ai, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i918) #7, !srcloc !19
  %.not801 = icmp eq i32 %.0.copyload.i918, %i.s
  br i1 %.not801, label %.loopexit1053, label %.preheader1052

.loopexit1053:                                    ; preds = %.preheader1052._crit_edge, %bb.b
  %.4 = phi i32 [ %.0777, %bb.b ], [ %.3, %.preheader1052._crit_edge ] ; 3 uses
  %.val864 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val864, i64 %i.p
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.0.copyload.i919 = load i32, ptr %i.ak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i919) #7, !srcloc !19
  %.not802 = icmp eq i32 %.0.copyload.i919, %i.n
  br i1 %.not802, label %bb.g, label %bb.b

bb.g:                                             ; preds = %.loopexit1053
  %.val863 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val863, i64 %i.i
  %.0.copyload.i920 = load i32, ptr %i.al, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i920) #7, !srcloc !19
  %.not803 = icmp eq i32 %.4, 0
  br i1 %.not803, label %bb.ay, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = shl i32 %.4, 2
  %i.an = add i32 %.0.copyload.i920, %i.am
  br label %bb.i

bb.i:                                             ; preds = %bb.aw, %bb.h
  %.1775 = phi i32 [ %.0.copyload.i920, %bb.h ], [ %i.oo, %bb.aw ] ; 2 uses
  %.1764 = phi i32 [ 0, %bb.h ], [ %i.on, %bb.aw ]
  %i.ao = zext i32 %.1775 to i64
  %.val862 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val862, i64 %i.ao
  %.0.copyload.i921 = load i32, ptr %i.ap, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i921) #7, !srcloc !19
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !17  ; 8 uses
  %i.ar = add i32 %i.aq, -128                     ; 2 uses
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !17
  %i.as = zext i32 %.0.copyload.i921 to i64       ; 5 uses
  %i.at = add nuw nsw i64 %i.as, 40               ; 2 uses
  %.val861 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val861, i64 %i.at
  %.0.copyload.i922 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i922) #7, !srcloc !19
  %i.av = zext i32 %.0.copyload.i922 to i64
  %.val860 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val860, i64 %i.av
  %.0.copyload.i923 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i923) #7, !srcloc !19
  %i.ax = zext i32 %.0.copyload.i923 to i64
  %.val909 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val909, i64 %i.ax
  %.0.copyload.i924 = load i8, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i924) #7, !srcloc !21
  %i.az = add i8 %.0.copyload.i924, -109
  %i.ba = icmp ult i8 %i.az, 11
  br i1 %i.ba, label %bb.aw, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = add nuw nsw i64 %i.as, 36               ; 2 uses
  %.val859 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val859, i64 %i.bb
  %.0.copyload.i925 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i925) #7, !srcloc !19
  %i.bd = zext i32 %.0.copyload.i925 to i64
  %.val858 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val858, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  %.0.copyload.i926 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i926) #7, !srcloc !19
  %i.bg = zext i32 %.0.copyload.i926 to i64
  %.val857 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val857, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 36
  %.0.copyload.i927 = load i32, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i927) #7, !srcloc !19
  %i.bj = zext i32 %i.ar to i64                   ; 15 uses
  %.val906 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val906, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  store i64 0, ptr %i.bl, align 1
  %.val905 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val905, i64 %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 112
  store i64 0, ptr %i.bn, align 1
  %.val893 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val893, i64 %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 108
  store i32 %.0.copyload.i927, ptr %i.bp, align 1
  %.val856 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val856, i64 %i.as
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 44
  %.0.copyload.i928 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i928) #7, !srcloc !19
  %i.bs = add i32 %.0.copyload.i928, -2           ; 2 uses
  %i.bt = lshr i32 %i.bs, 1                       ; 4 uses
  %i.bu = add nuw nsw i64 %i.bj, 68               ; 9 uses
  %.val904 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val904, i64 %i.bu
  store i64 34359738368, ptr %i.bv, align 1
  %i.bw = add i32 %i.aq, -52                      ; 4 uses
  %i.bx = add nuw nsw i64 %i.bj, 64               ; 4 uses
  %.val892 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val892, i64 %i.bx
  store i32 %i.bw, ptr %i.by, align 1
  %i.bz = add nuw nsw i64 %i.bj, 24               ; 9 uses
  %.val903 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val903, i64 %i.bz
  store i64 34359738368, ptr %i.ca, align 1
  %i.cb = add i32 %i.aq, -96                      ; 4 uses
  %i.cc = add nuw nsw i64 %i.bj, 20               ; 5 uses
  %.val891 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.val891, i64 %i.cc
  store i32 %i.cb, ptr %i.cd, align 1
  %.not804 = icmp eq i32 %i.bt, 0
  br i1 %.not804, label %.loopexit1051, label %.preheader1050

.preheader1050:                                   ; preds = %bb.j
  %i.ce = add i32 %i.aq, -116
  %i.cf = zext i32 %i.ce to i64                   ; 4 uses
  %i.cg = add i32 %i.aq, -64                      ; 3 uses
  %i.ch = add i32 %i.aq, -108                     ; 2 uses
  %.val44.i.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val44.i.peel, i64 %i.as
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %.0.copyload.i.i.peel = load i32, ptr %i.cj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i.peel) #7, !srcloc !19
  %i.ck = add i32 %.0.copyload.i.i.peel, 16
  %i.cl = zext i32 %i.ck to i64
  %.val43.i.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val43.i.peel, i64 %i.cl
  %.0.copyload.i47.i.peel = load i32, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i47.i.peel) #7, !srcloc !19
  %i.cn = add i32 %.0.copyload.i.i.peel, 24
  %i.co = zext i32 %i.cn to i64
  %.val.i.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.peel, i64 %i.co
  %.0.copyload.i48.i.peel = load i32, ptr %i.cp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i48.i.peel) #7, !srcloc !19
  %.val46.i.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val46.i.peel, i64 %i.cf
  store i32 %.0.copyload.i47.i.peel, ptr %i.cq, align 1
  %i.cr = add i32 %.0.copyload.i48.i.peel, -8
  %.not.i.peel = icmp eq i32 %.0.copyload.i48.i.peel, 0
  %i.cs = select i1 %.not.i.peel, i32 0, i32 %i.cr
  %.val45.i.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val45.i.peel, i64 %i.cf
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cs, ptr %i.cu, align 1
  %.val855.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val855.peel, i64 %i.bj
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %.0.copyload.i929.peel = load i32, ptr %i.cw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i929.peel) #7, !srcloc !19
  %i.cx = zext i32 %.0.copyload.i929.peel to i64  ; 2 uses
  %.val908.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val908.peel, i64 %i.cx
  %.0.copyload.i930.peel = load i8, ptr %i.cy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i930.peel) #7, !srcloc !21
  %.not805.peel = icmp eq i8 %.0.copyload.i930.peel, 114
  br i1 %.not805.peel, label %bb.k, label %.loopexit1051

bb.k:                                             ; preds = %.preheader1050
  %.val911.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val911.peel, i64 %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %.0.copyload.i931.peel = load double, ptr %i.da, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i931.peel) #7, !srcloc !23
  %or.cond.peel = fcmp ugt double %.0.copyload.i931.peel, f0x41EFFFFFFFE00000
  %3 = fcmp olt double %.0.copyload.i931.peel, 0.000000e+00
  %or.cond823.peel = or i1 %or.cond.peel, %3
  br i1 %or.cond823.peel, label %.loopexit1051, label %4

4:                                                ; preds = %bb.k
  %5 = fcmp ule double %.0.copyload.i931.peel, -1.000000e+00
  br i1 %5, label %.loopexit1064, label %bb.l, !prof !30

bb.l:                                             ; preds = %4
  %i.db = fptoui double %.0.copyload.i931.peel to i32 ; 4 uses
  %i.dc = uitofp i32 %i.db to double
  %i.dd = fcmp une double %.0.copyload.i931.peel, %i.dc
  br i1 %i.dd, label %.loopexit1051, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not806.peel = icmp ne i32 %i.db, 0
  %i.de = bitcast double %.0.copyload.i931.peel to i64
  %.not807808.peel = icmp sgt i64 %i.de, -1
  %.not807.peel = or i1 %.not806.peel, %.not807808.peel
  br i1 %.not807.peel, label %bb.n, label %.loopexit1051

bb.n:                                             ; preds = %bb.m
  %.val854.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %.val854.peel, i64 %i.bu
  %.0.copyload.i932.peel = load i32, ptr %i.df, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i932.peel) #7, !srcloc !19
  %.val853.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %.val853.peel, i64 %i.bj
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  %.0.copyload.i933.peel = load i32, ptr %i.dh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i933.peel) #7, !srcloc !19
  %.not809.peel = icmp ult i32 %.0.copyload.i932.peel, %.0.copyload.i933.peel
  br i1 %.not809.peel, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cg, i32 noundef %i.bw, i32 noundef 0, i32 noundef 4) #7
  %.val852.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val852.peel, i64 %i.bu
  %.0.copyload.i934.peel = load i32, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i934.peel) #7, !srcloc !19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0765.peel = phi i32 [ %.0.copyload.i934.peel, %bb.o ], [ %.0.copyload.i932.peel, %bb.n ]
  %.val851.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.val851.peel, i64 %i.bx
  %.0.copyload.i935.peel = load i32, ptr %i.dj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i935.peel) #7, !srcloc !19
  %i.dk = shl i32 %.0765.peel, 2
  %i.dl = add i32 %.0.copyload.i935.peel, %i.dk
  %i.dm = zext i32 %i.dl to i64
  %.val890.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val890.peel, i64 %i.dm
  store i32 %.0.copyload.i929.peel, ptr %i.dn, align 1
  %.val850.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val850.peel, i64 %i.bu
  %.0.copyload.i936.peel = load i32, ptr %i.do, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i936.peel) #7, !srcloc !19
  %i.dp = add i32 %.0.copyload.i936.peel, 1
  %.val889.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val889.peel, i64 %i.bu
  store i32 %i.dp, ptr %i.dq, align 1
  %.val849.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.val849.peel, i64 %i.bz
  %.0.copyload.i937.peel = load i32, ptr %i.dr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i937.peel) #7, !srcloc !19
  %.val848.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val848.peel, i64 %i.bj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  %.0.copyload.i938.peel = load i32, ptr %i.dt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i938.peel) #7, !srcloc !19
  %.not810.peel = icmp ult i32 %.0.copyload.i937.peel, %.0.copyload.i938.peel
  br i1 %.not810.peel, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ch, i32 noundef %i.cb, i32 noundef 0, i32 noundef 4) #7
  %.val847.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %.val847.peel, i64 %i.bz
  %.0.copyload.i939.peel = load i32, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i939.peel) #7, !srcloc !19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0766.peel = phi i32 [ %.0.copyload.i939.peel, %bb.q ], [ %.0.copyload.i937.peel, %bb.p ]
  %.val846.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.val846.peel, i64 %i.cc
  %.0.copyload.i940.peel = load i32, ptr %i.dv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i940.peel) #7, !srcloc !19
  %i.dw = shl i32 %.0766.peel, 2
  %i.dx = add i32 %.0.copyload.i940.peel, %i.dw
  %.val845.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %.val845.peel, i64 %i.bj
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %.0.copyload.i941.peel = load i32, ptr %i.dz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i941.peel) #7, !srcloc !19
  %i.ea = zext i32 %i.dx to i64
  %.val888.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val888.peel, i64 %i.ea
  store i32 %.0.copyload.i941.peel, ptr %i.eb, align 1
  %.val844.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.val844.peel, i64 %i.bz
  %.0.copyload.i942.peel = load i32, ptr %i.ec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i942.peel) #7, !srcloc !19
  %i.ed = add i32 %.0.copyload.i942.peel, 1
  %.val887.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val887.peel, i64 %i.bz
  store i32 %i.ed, ptr %i.ee, align 1
  %.not812.peel = icmp eq i32 %i.bt, 1
  br i1 %.not812.peel, label %.loopexit1051, label %.peel.next

.peel.next:                                       ; preds = %bb.r, %bb.z
  %.0773 = phi i32 [ %i.gg, %bb.z ], [ 1, %bb.r ] ; 2 uses
  %.0770 = phi i32 [ %i.ge, %bb.z ], [ %i.db, %bb.r ]
  %.0769 = phi i32 [ %i.gf, %bb.z ], [ %i.db, %bb.r ]
  %.val44.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val44.i, i64 %i.as
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %.0.copyload.i.i = load i32, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #7, !srcloc !19
  %i.eh = shl i32 %.0773, 4
  %i.ei = add i32 %.0.copyload.i.i, %i.eh         ; 2 uses
  %i.ej = add i32 %i.ei, 16
  %i.ek = zext i32 %i.ej to i64
  %.val43.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val43.i, i64 %i.ek
  %.0.copyload.i47.i = load i32, ptr %i.el, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i47.i) #7, !srcloc !19
  %i.em = add i32 %i.ei, 24
  %i.en = zext i32 %i.em to i64
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.en
  %.0.copyload.i48.i = load i32, ptr %i.eo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i48.i) #7, !srcloc !19
  %.val46.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val46.i, i64 %i.cf
  store i32 %.0.copyload.i47.i, ptr %i.ep, align 1
  %i.eq = add i32 %.0.copyload.i48.i, -8
  %.not.i = icmp eq i32 %.0.copyload.i48.i, 0
  %i.er = select i1 %.not.i, i32 0, i32 %i.eq
  %.val45.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %.val45.i, i64 %i.cf
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 %i.er, ptr %i.et, align 1
  %.val855 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.val855, i64 %i.bj
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %.0.copyload.i929 = load i32, ptr %i.ev, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i929) #7, !srcloc !19
  %i.ew = zext i32 %.0.copyload.i929 to i64       ; 2 uses
  %.val908 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val908, i64 %i.ew
  %.0.copyload.i930 = load i8, ptr %i.ex, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i930) #7, !srcloc !21
  %.not805 = icmp eq i8 %.0.copyload.i930, 114
  br i1 %.not805, label %bb.s, label %.loopexit1051

bb.s:                                             ; preds = %.peel.next
  %.val911 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val911, i64 %i.ew
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %.0.copyload.i931 = load double, ptr %i.ez, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i931) #7, !srcloc !23
  %or.cond = fcmp ugt double %.0.copyload.i931, f0x41EFFFFFFFE00000
  %6 = fcmp olt double %.0.copyload.i931, 0.000000e+00
  %or.cond823 = or i1 %or.cond, %6
  br i1 %or.cond823, label %.loopexit1051, label %7

7:                                                ; preds = %bb.s
  %8 = fcmp ule double %.0.copyload.i931, -1.000000e+00
  br i1 %8, label %.loopexit1064, label %bb.t, !prof !30

.loopexit1064:                                    ; preds = %4, %7
  tail call void @wasm_rt_trap(i32 noundef 2) #8
  unreachable

bb.t:                                             ; preds = %7
  %i.fa = fptoui double %.0.copyload.i931 to i32  ; 4 uses
  %i.fb = uitofp i32 %i.fa to double
  %i.fc = fcmp une double %.0.copyload.i931, %i.fb
  br i1 %i.fc, label %.loopexit1051, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not806 = icmp ne i32 %i.fa, 0
  %i.fd = bitcast double %.0.copyload.i931 to i64
  %.not807808 = icmp sgt i64 %i.fd, -1
  %.not807 = or i1 %.not806, %.not807808
  br i1 %.not807, label %bb.v, label %.loopexit1051

bb.v:                                             ; preds = %bb.u
  %.val854 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val854, i64 %i.bu
  %.0.copyload.i932 = load i32, ptr %i.fe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i932) #7, !srcloc !19
  %.val853 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %.val853, i64 %i.bj
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 72
  %.0.copyload.i933 = load i32, ptr %i.fg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i933) #7, !srcloc !19
  %.not809 = icmp ult i32 %.0.copyload.i932, %.0.copyload.i933
  br i1 %.not809, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cg, i32 noundef %i.bw, i32 noundef 0, i32 noundef 4) #7
  %.val852 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %.val852, i64 %i.bu
  %.0.copyload.i934 = load i32, ptr %i.fh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i934) #7, !srcloc !19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0765 = phi i32 [ %.0.copyload.i934, %bb.w ], [ %.0.copyload.i932, %bb.v ]
  %.val851 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %.val851, i64 %i.bx
  %.0.copyload.i935 = load i32, ptr %i.fi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i935) #7, !srcloc !19
  %i.fj = shl i32 %.0765, 2
  %i.fk = add i32 %.0.copyload.i935, %i.fj
  %i.fl = zext i32 %i.fk to i64
  %.val890 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val890, i64 %i.fl
  store i32 %.0.copyload.i929, ptr %i.fm, align 1
  %.val850 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %.val850, i64 %i.bu
  %.0.copyload.i936 = load i32, ptr %i.fn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i936) #7, !srcloc !19
  %i.fo = add i32 %.0.copyload.i936, 1
  %.val889 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %.val889, i64 %i.bu
  store i32 %i.fo, ptr %i.fp, align 1
  %.val849 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %.val849, i64 %i.bz
  %.0.copyload.i937 = load i32, ptr %i.fq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i937) #7, !srcloc !19
  %.val848 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %.val848, i64 %i.bj
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 28
  %.0.copyload.i938 = load i32, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i938) #7, !srcloc !19
  %.not810 = icmp ult i32 %.0.copyload.i937, %.0.copyload.i938
  br i1 %.not810, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ch, i32 noundef %i.cb, i32 noundef 0, i32 noundef 4) #7
  %.val847 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %.val847, i64 %i.bz
  %.0.copyload.i939 = load i32, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i939) #7, !srcloc !19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0766 = phi i32 [ %.0.copyload.i939, %bb.y ], [ %.0.copyload.i937, %bb.x ]
  %.val846 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fu = getelementptr inbounds nuw i8, ptr %.val846, i64 %i.cc
  %.0.copyload.i940 = load i32, ptr %i.fu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i940) #7, !srcloc !19
  %i.fv = shl i32 %.0766, 2
  %i.fw = add i32 %.0.copyload.i940, %i.fv
  %.val845 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %.val845, i64 %i.bj
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %.0.copyload.i941 = load i32, ptr %i.fy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i941) #7, !srcloc !19
  %i.fz = zext i32 %i.fw to i64
  %.val888 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %.val888, i64 %i.fz
  store i32 %.0.copyload.i941, ptr %i.ga, align 1
  %.val844 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %.val844, i64 %i.bz
  %.0.copyload.i942 = load i32, ptr %i.gb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i942) #7, !srcloc !19
  %i.gc = add i32 %.0.copyload.i942, 1
  %.val887 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.val887, i64 %i.bz
  store i32 %i.gc, ptr %i.gd, align 1
  %i.ge = tail call i32 @llvm.umin.i32(i32 %i.fa, i32 %.0770) ; 4 uses
  %i.gf = tail call i32 @llvm.umax.i32(i32 %i.fa, i32 %.0769) ; 3 uses
  %i.gg = add nuw nsw i32 %.0773, 1               ; 2 uses
  %.not812 = icmp eq i32 %i.gg, %i.bt
  br i1 %.not812, label %.loopexit1065, label %.peel.next, !llvm.loop !44

.loopexit1065:                                    ; preds = %bb.z
  %i.gh = icmp eq i32 %i.ge, %i.gf
  br i1 %i.gh, label %.loopexit1051, label %bb.aa

bb.aa:                                            ; preds = %.loopexit1065
  %i.gi = sub i32 %i.gf, %i.ge                    ; 3 uses
  %i.gj = icmp eq i32 %i.gi, -1
  %i.gk = icmp ult i32 %i.bs, 20
  %or.cond824 = or i1 %i.gk, %i.gj
  br i1 %or.cond824, label %.loopexit1051, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gl = udiv i32 %i.gi, %i.bt
  %i.gm = icmp ugt i32 %i.gl, 5
  br i1 %i.gm, label %.loopexit1051, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gn = add i32 %i.aq, -20
  %i.go = zext i32 %i.gn to i64                   ; 6 uses
  %i.gp = add nuw nsw i64 %i.go, 4                ; 2 uses
  %.val886 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %.val886, i64 %i.gp
  store i32 %.0.copyload.i921, ptr %i.gq, align 1
  %.val843 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gr = getelementptr inbounds nuw i8, ptr %.val843, i64 %i.bb
  %.0.copyload.i943 = load i32, ptr %i.gr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i943) #7, !srcloc !19
  %i.gs = add nuw nsw i64 %i.go, 8                ; 2 uses
  %.val885 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %.val885, i64 %i.gs
  store i32 %.0.copyload.i943, ptr %i.gt, align 1
  %.val842 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %.val842, i64 %i.at
  %.0.copyload.i944 = load i32, ptr %i.gu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i944) #7, !srcloc !19
  %i.gv = zext i32 %.0.copyload.i944 to i64       ; 2 uses
  %.val841 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %.val841, i64 %i.gv
  %.0.copyload.i945 = load i32, ptr %i.gw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i945) #7, !srcloc !19
  %.val840 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val840, i64 %i.gv
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.0.copyload.i946 = load i32, ptr %i.gy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i946) #7, !srcloc !19
  %i.gz = add i32 %.0.copyload.i946, -8
  %.not813 = icmp eq i32 %.0.copyload.i946, 0
  %i.ha = select i1 %.not813, i32 0, i32 %i.gz    ; 2 uses
  %i.hb = uitofp i32 %i.ge to double
  %.val.i947 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %.val.i947, i64 %i.go
  %.0.copyload.i.i948 = load i32, ptr %i.hc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i948) #7, !srcloc !19
  %i.hd = tail call i32 @w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i.i948, double noundef %i.hb)
  %i.he = add nuw i32 %i.gi, 1
  %i.hf = uitofp i32 %i.he to double
  %.val.i949 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hg = getelementptr inbounds nuw i8, ptr %.val.i949, i64 %i.go
  %.0.copyload.i.i950 = load i32, ptr %i.hg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i950) #7, !srcloc !19
  %i.hh = tail call i32 @w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i.i950, double noundef %i.hf)
  %i.hi = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 80) #7 ; 18 uses
  %i.hj = zext i32 %i.hi to i64                   ; 25 uses
  %.val902 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %.val902, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 20
  store i64 8589934592, ptr %i.hl, align 1
  %.val884 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hm = getelementptr inbounds nuw i8, ptr %.val884, i64 %i.hj
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 10
  store i32 459775, ptr %i.hn, align 1
  %.val901 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ho = getelementptr inbounds nuw i8, ptr %.val901, i64 %i.hj
  store i64 0, ptr %i.ho, align 1
  %i.hp = add nuw nsw i64 %i.hj, 68               ; 2 uses
  %.val900 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hq = getelementptr inbounds nuw i8, ptr %.val900, i64 %i.hp
  store i64 0, ptr %i.hq, align 1
  %i.hr = add nuw nsw i64 %i.hj, 36               ; 2 uses
  %.val883 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %.val883, i64 %i.hr
  store i32 0, ptr %i.hs, align 1
  %.val898 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val898, i64 %i.hj
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i8 87, ptr %i.hu, align 1
  %i.hv = add i32 %i.hi, 28
  %.val882 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %.val882, i64 %i.hj
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store i32 %i.hv, ptr %i.hx, align 1
  %i.hy = add nuw nsw i64 %i.hj, 44               ; 25 uses
  %.val899 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val899, i64 %i.hy
  store i64 8589934592, ptr %i.hz, align 1
  %i.ia = add i32 %i.hi, 52                       ; 7 uses
  %.val881 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ib = getelementptr inbounds nuw i8, ptr %.val881, i64 %i.hj
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  store i32 %i.ia, ptr %i.ic, align 1
  %i.id = add nuw nsw i64 %i.hj, 76               ; 2 uses
  %.val880 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %.val880, i64 %i.id
  store i32 0, ptr %i.ie, align 1
  %.val56.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw i8, ptr %.val56.i, i64 %i.hy
  %.0.copyload.i.i951 = load i32, ptr %i.if, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i951) #7, !srcloc !19
  %.val55.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %.val55.i, i64 %i.hj
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %.0.copyload.i59.i = load i32, ptr %i.ih, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i) #7, !srcloc !19
  %.not.i952 = icmp ult i32 %.0.copyload.i.i951, %.0.copyload.i59.i
  br i1 %.not.i952, label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ii = add i32 %i.hi, 40
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ii, i32 noundef %i.ia, i32 noundef 0, i32 noundef 8) #7
  %.val54.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %.val54.i, i64 %i.hy
  %.0.copyload.i60.i = load i32, ptr %i.ij, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i60.i) #7, !srcloc !19
  br label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit

w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit: ; preds = %bb.ac, %bb.ad
  %.0.i = phi i32 [ %.0.copyload.i60.i, %bb.ad ], [ %.0.copyload.i.i951, %bb.ac ]
  %.val53.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ik = getelementptr inbounds nuw i8, ptr %.val53.i, i64 %i.hj
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %.0.copyload.i61.i = load i32, ptr %i.il, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i61.i) #7, !srcloc !19
  %i.im = shl i32 %.0.i, 3
  %i.in = add i32 %.0.copyload.i61.i, %i.im
  %i.io = zext i32 %i.in to i64
  %.val58.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.val58.i, i64 %i.io
  store i64 0, ptr %i.ip, align 1
  %.val.i953 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %.val.i953, i64 %i.hy
  %.0.copyload.i62.i = load i32, ptr %i.iq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i62.i) #7, !srcloc !19
  %i.ir = add i32 %.0.copyload.i62.i, 1
  %.val57.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.is = getelementptr inbounds nuw i8, ptr %.val57.i, i64 %i.hy
  store i32 %i.ir, ptr %i.is, align 1
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.hi, i32 noundef %.0.copyload.i945, i32 noundef %.0.copyload.i62.i)
  %i.it = add i32 %i.ha, 8
  %.not814 = icmp eq i32 %i.ha, 0
  %i.iu = select i1 %.not814, i32 0, i32 %i.it
  %.val56.i954 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iv = getelementptr inbounds nuw i8, ptr %.val56.i954, i64 %i.hy
  %.0.copyload.i.i955 = load i32, ptr %i.iv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i955) #7, !srcloc !19
  %.val55.i956 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val55.i956, i64 %i.hj
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %.0.copyload.i59.i957 = load i32, ptr %i.ix, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i957) #7, !srcloc !19
  %.not.i958 = icmp ult i32 %.0.copyload.i.i955, %.0.copyload.i59.i957
  br i1 %.not.i958, label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit968, label %bb.ae

bb.ae:                                            ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit
  %i.iy = add i32 %i.hi, 40
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.iy, i32 noundef %i.ia, i32 noundef 0, i32 noundef 8) #7
  %.val54.i959 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iz = getelementptr inbounds nuw i8, ptr %.val54.i959, i64 %i.hy
  %.0.copyload.i60.i960 = load i32, ptr %i.iz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i60.i960) #7, !srcloc !19
  br label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit968

w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit968: ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit, %bb.ae
  %.0.i961 = phi i32 [ %.0.copyload.i60.i960, %bb.ae ], [ %.0.copyload.i.i955, %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit ]
  %.val53.i962 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ja = getelementptr inbounds nuw i8, ptr %.val53.i962, i64 %i.hj
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  %.0.copyload.i61.i963 = load i32, ptr %i.jb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i61.i963) #7, !srcloc !19
  %i.jc = shl i32 %.0.i961, 3
  %i.jd = add i32 %.0.copyload.i61.i963, %i.jc
  %i.je = zext i32 %i.jd to i64
  %.val58.i964 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jf = getelementptr inbounds nuw i8, ptr %.val58.i964, i64 %i.je
  store i64 0, ptr %i.jf, align 1
  %.val.i965 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %.val.i965, i64 %i.hy
  %.0.copyload.i62.i966 = load i32, ptr %i.jg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i62.i966) #7, !srcloc !19
  %i.jh = add i32 %.0.copyload.i62.i966, 1
  %.val57.i967 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ji = getelementptr inbounds nuw i8, ptr %.val57.i967, i64 %i.hy
  store i32 %i.jh, ptr %i.ji, align 1
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.hi, i32 noundef %i.iu, i32 noundef %.0.copyload.i62.i966)
  %.val56.i969 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jj = getelementptr inbounds nuw i8, ptr %.val56.i969, i64 %i.hy
  %.0.copyload.i.i970 = load i32, ptr %i.jj, align 1 ; 3 uses
end_hunk_7
begin_hunk_8_@w2c_hermes_hermes0x3A0x3ALowerAllocObject0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  %.val3923 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.asn = getelementptr inbounds nuw i8, ptr %.val3923, i64 %.pre-phi4723
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 28
  %.0.copyload.i4578 = load i32, ptr %i.aso, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4578) #7, !srcloc !19
  %.not3899 = icmp eq i32 %.0.copyload.i4578, 0
  br i1 %.not3899, label %.loopexit4595, label %bb.gc

bb.gc:                                            ; preds = %.loopexit4614
  %.val3922 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.asp = getelementptr inbounds nuw i8, ptr %.val3922, i64 %.pre-phi4723
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 16
  %.0.copyload.i4579 = load i32, ptr %i.asq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4579) #7, !srcloc !19
  %i.asr = shl i32 %.0.copyload.i4578, 3
  %i.ass = add i32 %.0.copyload.i4579, %i.asr
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gi, %bb.gc
  %.31 = phi i32 [ %.0.copyload.i4579, %bb.gc ], [ %i.atd, %bb.gi ] ; 2 uses
  %i.ast = zext i32 %.31 to i64                   ; 2 uses
  %.val3921 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.asu = getelementptr inbounds nuw i8, ptr %.val3921, i64 %i.ast
  %.0.copyload.i4580 = load i32, ptr %i.asu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4580) #7, !srcloc !19
  switch i32 %.0.copyload.i4580, label %bb.ge [
    i32 -8, label %bb.gi
    i32 -4, label %bb.gi
  ]

bb.ge:                                            ; preds = %bb.gd
  %i.asv = add nuw nsw i64 %i.ast, 4              ; 2 uses
  %.val3920 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.asw = getelementptr inbounds nuw i8, ptr %.val3920, i64 %i.asv
  %.0.copyload.i4581 = load i32, ptr %i.asw, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4581) #7, !srcloc !19
  %.val4147 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.asx = getelementptr inbounds nuw i8, ptr %.val4147, i64 %i.asv
  store i32 0, ptr %i.asx, align 1
  %.not3900 = icmp eq i32 %.0.copyload.i4581, 0
  br i1 %.not3900, label %bb.gi, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.asy = zext i32 %.0.copyload.i4581 to i64     ; 2 uses
  %.val3919 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.asz = getelementptr inbounds nuw i8, ptr %.val3919, i64 %i.asy
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 12
  %.0.copyload.i4582 = load i32, ptr %i.ata, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4582) #7, !srcloc !19
  %.not3901 = icmp eq i32 %.0.copyload.i4582, 0
  br i1 %.not3901, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %.val4146 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.atb = getelementptr inbounds nuw i8, ptr %.val4146, i64 %i.asy
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 16
  store i32 %.0.copyload.i4582, ptr %i.atc, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i4582) #7
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i4581) #7
  br label %bb.gi

bb.gi:                                            ; preds = %bb.ge, %bb.gd, %bb.gd, %bb.gh
  %i.atd = add i32 %.31, 8                        ; 2 uses
  %.not3902 = icmp eq i32 %i.atd, %i.ass
  br i1 %.not3902, label %.loopexit4595, label %bb.gd

.loopexit4595:                                    ; preds = %bb.gi, %.loopexit4614
  %.val3918 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ate = getelementptr inbounds nuw i8, ptr %.val3918, i64 %.pre-phi4723
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 16
  %.0.copyload.i4583 = load i32, ptr %i.atf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4583) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i4583) #7
  %.val3917 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.atg = getelementptr inbounds nuw i8, ptr %.val3917, i64 %.pre-phi4723
  %.0.copyload.i4584 = load i32, ptr %i.atg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4584) #7, !srcloc !19
  %i.ath = add i32 %i.ut, 12
  %.not3903 = icmp eq i32 %.0.copyload.i4584, %i.ath
  br i1 %.not3903, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %.loopexit4595
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i4584) #7
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %.loopexit4595
  %.val3916 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ati = getelementptr inbounds nuw i8, ptr %.val3916, i64 %.pre4720
  %.0.copyload.i4585 = load i32, ptr %i.ati, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4585) #7, !srcloc !19
  %.not3904 = icmp eq i32 %.0.copyload.i4585, 0
  br i1 %.not3904, label %.loopexit4594, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %.val3915 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.atj = getelementptr inbounds nuw i8, ptr %.val3915, i64 %i.h
  %.0.copyload.i4586 = load i32, ptr %i.atj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4586) #7, !srcloc !19
  %i.atk = mul i32 %.0.copyload.i4585, 20
  %i.atl = add i32 %.0.copyload.i4586, %i.atk
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gt, %bb.gl
  %.83603 = phi i32 [ %.0.copyload.i4586, %bb.gl ], [ %i.aud, %bb.gt ] ; 2 uses
  %i.atm = zext i32 %.83603 to i64                ; 4 uses
  %.val3914 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.atn = getelementptr inbounds nuw i8, ptr %.val3914, i64 %i.atm
  %.0.copyload.i4587 = load i32, ptr %i.atn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4587) #7, !srcloc !19
  switch i32 %.0.copyload.i4587, label %bb.gn [
    i32 -8, label %bb.gt
    i32 -4, label %bb.gt
  ]

bb.gn:                                            ; preds = %bb.gm
  %.val3913 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ato = getelementptr inbounds nuw i8, ptr %.val3913, i64 %i.atm
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 16
  %.0.copyload.i4588 = load i32, ptr %i.atp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4588) #7, !srcloc !19
  %.not3905 = icmp eq i32 %.0.copyload.i4588, 0
  br i1 %.not3905, label %.loopexit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %.val3912 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.atq = getelementptr inbounds nuw i8, ptr %.val3912, i64 %i.atm
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 4
  %.0.copyload.i4589 = load i32, ptr %i.atr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4589) #7, !srcloc !19
  %i.ats = shl i32 %.0.copyload.i4588, 5
  %i.att = add i32 %.0.copyload.i4589, %i.ats
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gs, %bb.go
  %.113639 = phi i32 [ %.0.copyload.i4589, %bb.go ], [ %i.aua, %bb.gs ] ; 3 uses
  %i.atu = zext i32 %.113639 to i64               ; 2 uses
  %.val3911 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.atv = getelementptr inbounds nuw i8, ptr %.val3911, i64 %i.atu
  %.0.copyload.i4590 = load i32, ptr %i.atv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4590) #7, !srcloc !19
  switch i32 %.0.copyload.i4590, label %bb.gq [
    i32 -8, label %bb.gs
    i32 -4, label %bb.gs
  ]

bb.gq:                                            ; preds = %bb.gp
  %.val3910 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.atw = getelementptr inbounds nuw i8, ptr %.val3910, i64 %i.atu
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 4
  %.0.copyload.i4591 = load i32, ptr %i.atx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4591) #7, !srcloc !19
  %i.aty = add i32 %.113639, 16
  %i.atz = icmp eq i32 %.0.copyload.i4591, %i.aty
  br i1 %i.atz, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i4591) #7
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gq, %bb.gp, %bb.gp, %bb.gr
  %i.aua = add i32 %.113639, 32                   ; 2 uses
  %.not3906 = icmp eq i32 %i.aua, %i.att
  br i1 %.not3906, label %.loopexit, label %bb.gp

.loopexit:                                        ; preds = %bb.gs, %bb.gn
  %.val3909 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aub = getelementptr inbounds nuw i8, ptr %.val3909, i64 %i.atm
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 4
  %.0.copyload.i4592 = load i32, ptr %i.auc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4592) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i4592) #7
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gm, %bb.gm, %.loopexit
  %i.aud = add i32 %.83603, 20                    ; 2 uses
  %.not3907 = icmp eq i32 %i.aud, %i.atl
  br i1 %.not3907, label %.loopexit4594, label %bb.gm

.loopexit4594:                                    ; preds = %bb.gt, %bb.gk
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aue = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %.0.copyload.i4593 = load i32, ptr %i.aue, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4593) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i4593) #7
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.23585
}

declare void @w2c_hermes_llvh0x3A0x3ASmallVectorImpl0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x3E0x3A0x3Aoperator0x3D0x28llvh0x3A0x3ASmallVectorImpl0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x3E0x260x260x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_llvh0x3A0x3ABumpPtrAllocatorImpl0x3Cllvh0x3A0x3AMallocAllocator0x2C0x204096ul0x2C0x204096ul0x3E0x3A0x3AAllocate0x28unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_llvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3A0x3AproperlyDominates0x28hermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x20const0x2A0x290x20const(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3ALimitAllocArray0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 66 uses
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %.val395 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val395, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = add i32 %2, 48                           ; 2 uses
  %.not = icmp eq i32 %.0.copyload.i, %i.h
  br i1 %.not, label %.loopexit450, label %.preheader449

.preheader449:                                    ; preds = %bb.a
  %i.i = zext i32 %i.c to i64                     ; 5 uses
  %i.j = add nuw nsw i64 %i.i, 24                 ; 2 uses
  %i.k = add nuw nsw i64 %i.i, 16                 ; 3 uses
  %i.l = add i32 %i.b, -20                        ; 4 uses
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = zext i32 %1 to i64
  %i.o = add nuw nsw i64 %i.n, 16                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader449, %.loopexit448
  %.0341 = phi i32 [ %.0.copyload.i443, %.loopexit448 ], [ %.0.copyload.i, %.preheader449 ] ; 2 uses
  %.0 = phi i32 [ %.4, %.loopexit448 ], [ 0, %.preheader449 ] ; 2 uses
  %i.p = zext i32 %.0341 to i64                   ; 2 uses
  %.val394 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val394, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.0.copyload.i408 = load i32, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i408) #7, !srcloc !19
  %i.s = add i32 %.0341, 36                       ; 2 uses
  %.not358 = icmp eq i32 %.0.copyload.i408, %i.s
  br i1 %.not358, label %.loopexit448, label %.preheader447

.preheader447:                                    ; preds = %bb.b, %.loopexit
  %.0348 = phi i32 [ %.0.copyload.i442, %.loopexit ], [ %.0.copyload.i408, %bb.b ] ; 7 uses
  %.1 = phi i32 [ %.3, %.loopexit ], [ %.0, %bb.b ] ; 5 uses
  %.not359 = icmp eq i32 %.0348, 0
  br i1 %.not359, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader447
  %i.t = zext i32 %.0348 to i64                   ; 13 uses
  %.val407 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i409 = load i8, ptr %i.v, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i409) #7, !srcloc !21
  %.not360 = icmp eq i8 %.0.copyload.i409, 54
  br i1 %.not360, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.w = add nuw nsw i64 %i.t, 44                 ; 4 uses
  %.val393 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val393, i64 %i.w
  %.0.copyload.i410 = load i32, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i410) #7, !srcloc !19
  %i.y = icmp eq i32 %.0.copyload.i410, 1
  br i1 %i.y, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add i32 %.0348, 8                        ; 3 uses
  %.val392 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val392, i64 %i.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %.0.copyload.i411 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i411) #7, !srcloc !19
  %.val401 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val401, i64 %i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 %.0.copyload.i411, ptr %i.ad, align 1
  %.val403 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.j
  store i64 0, ptr %i.ae, align 1
  %.val402 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val402, i64 %i.k
  store i64 0, ptr %i.af, align 1
  %.val400 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val400, i64 %i.k
  store i32 %.0348, ptr %i.ag, align 1
  %.val391 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val391, i64 %i.t
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.0.copyload.i412 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i412) #7, !srcloc !19
  %.val399 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val399, i64 %i.k
  store i32 %.0.copyload.i412, ptr %i.aj, align 1
  %.val390 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val390, i64 %i.t
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %.0.copyload.i413 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i413) #7, !srcloc !19
  %.val398 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val398, i64 %i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  store i32 %.0.copyload.i413, ptr %i.an, align 1
  %.val389 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val389, i64 %i.t
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %.0.copyload.i414 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i414) #7, !srcloc !19
  %.val397 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.j
  store i32 %.0.copyload.i414, ptr %i.aq, align 1
  %.val388 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val388, i64 %i.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 68
  %.0.copyload.i415 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i415) #7, !srcloc !19
  %.val396 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val396, i64 %i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  store i32 %.0.copyload.i415, ptr %i.au, align 1
  %.val387 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val387, i64 %i.w
  %.0.copyload.i416 = load i32, ptr %i.av, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i416) #7, !srcloc !19
  %i.aw = icmp ult i32 %.0.copyload.i416, 2
  br i1 %i.aw, label %.loopexit444, label %.preheader445

.preheader445:                                    ; preds = %bb.e
  %i.ax = add nuw nsw i64 %i.t, 40                ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader445, %bb.k
  %.0346 = phi i32 [ %i.cm, %bb.k ], [ 1, %.preheader445 ] ; 5 uses
  %.0343 = phi i32 [ %i.ay, %bb.k ], [ -1, %.preheader445 ]
  %i.ay = add i32 %.0343, 1                       ; 3 uses
  %.val386 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val386, i64 %i.ax
  %.0.copyload.i417 = load i32, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i417) #7, !srcloc !19
  %i.ba = shl i32 %.0346, 3                       ; 6 uses
  %i.bb = add i32 %.0.copyload.i417, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %.val385 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val385, i64 %i.bc
  %.0.copyload.i418 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i418) #7, !srcloc !19
  %i.be = zext i32 %.0.copyload.i418 to i64
  %.val406 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.be
  %.0.copyload.i419 = load i8, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i419) #7, !srcloc !21
  %.not361 = icmp eq i8 %.0.copyload.i419, 115
  br i1 %.not361, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val384 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val384, i64 %i.ax
  %.0.copyload.i420 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i420) #7, !srcloc !19
  %i.bh = add i32 %.0.copyload.i420, %i.ba
  %i.bi = zext i32 %i.bh to i64
  %.val383 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val383, i64 %i.bi
  %.0.copyload.i421 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i421) #7, !srcloc !19
  %i.bk = zext i32 %.0.copyload.i421 to i64
  %.val405 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.bk
  %.0.copyload.i422 = load i8, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i422) #7, !srcloc !21
  %.not362 = icmp eq i8 %.0.copyload.i422, 112
  br i1 %.not362, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val382 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val382, i64 %i.ax
  %.0.copyload.i423 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i423) #7, !srcloc !19
  %i.bn = add i32 %.0.copyload.i423, %i.ba
  %i.bo = zext i32 %i.bn to i64
  %.val381 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val381, i64 %i.bo
  %.0.copyload.i424 = load i32, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i424) #7, !srcloc !19
  %i.bq = uitofp i32 %i.ay to double
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.m
  %.0.copyload.i.i = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #7, !srcloc !19
  %i.bs = tail call i32 @w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i.i, double noundef %i.bq)
  tail call void @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateStoreOwnPropertyInst0x28hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AIRBuilder0x3A0x3APropEnumerable0x29(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %.0.copyload.i424, i32 noundef %i.z, i32 noundef %i.bs)
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AremoveOperand0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.0348, i32 noundef %.0346)
  %i.bt = add i32 %.0.copyload.i416, -1
  %.not363 = icmp ult i32 %.0346, %i.bt
  br i1 %.not363, label %.preheader.preheader, label %.loopexit444

.preheader.preheader:                             ; preds = %bb.h
  %i.bu = add i32 %.0.copyload.i416, -3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit
  %.1344 = phi i32 [ %i.cj, %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit ], [ %i.ay, %.preheader.preheader ] ; 2 uses
  %.val380 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.ax
  %.0.copyload.i425 = load i32, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i425) #7, !srcloc !19
  %i.bw = add i32 %.0.copyload.i425, %i.ba
  %i.bx = zext i32 %i.bw to i64
  %.val379 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val379, i64 %i.bx
  %.0.copyload.i426 = load i32, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i426) #7, !srcloc !19
  %i.bz = zext i32 %.0.copyload.i426 to i64
  %.val404 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val404, i64 %i.bz
  %.0.copyload.i427 = load i8, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i427) #7, !srcloc !21
  %.not364 = icmp eq i8 %.0.copyload.i427, 115
  br i1 %.not364, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader
  %.val378 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val378, i64 %i.ax
  %.0.copyload.i428 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i428) #7, !srcloc !19
  %i.cc = add i32 %.0.copyload.i428, %i.ba
  %i.cd = zext i32 %i.cc to i64
  %.val377 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val377, i64 %i.cd
  %.0.copyload.i429 = load i32, ptr %i.ce, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i429) #7, !srcloc !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader
  %.val376 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.ax
  %.0.copyload.i430 = load i32, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i430) #7, !srcloc !19
  %i.cg = add i32 %.0.copyload.i430, %i.ba
  %i.ch = zext i32 %i.cg to i64
  %.val375 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.ch
  %.0.copyload.i431 = load i32, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i431) #7, !srcloc !19
  %i.cj = add i32 %.1344, 1                       ; 4 uses
  %i.ck = uitofp i32 %i.cj to double              ; 3 uses
  %.val.i432 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i432, i64 %i.m
  %.0.copyload.i.i433 = load i32, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i433) #7, !srcloc !19
  %3 = load i32, ptr %i.a, align 8, !tbaa !17     ; 4 uses
  %4 = add i32 %3, -144                           ; 3 uses
  store i32 %4, ptr %i.a, align 8, !tbaa !17
  %5 = zext i32 %4 to i64                         ; 4 uses
  %.val167.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %6 = getelementptr inbounds nuw i8, ptr %.val167.i, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 137438953472, ptr %7, align 1
  %8 = add i32 %3, -128                           ; 2 uses
  %9 = add nuw nsw i64 %5, 4                      ; 2 uses
  %.val164.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %.val164.i, i64 %9
  store i32 %8, ptr %10, align 1
  %11 = add i32 %3, -140                          ; 2 uses
  %12 = bitcast double %i.ck to i64
  tail call void @w2c_hermes_llvh0x3A0x3AFoldingSetNodeID0x3A0x3AAddInteger0x28unsigned0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %11, i64 noundef %12) #7
  %.val163.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %13 = getelementptr inbounds nuw i8, ptr %.val163.i, i64 %5
  store i32 0, ptr %13, align 1
  %14 = add i32 %.0.copyload.i.i433, 416          ; 2 uses
  %15 = tail call i32 @w2c_hermes_llvh0x3A0x3AFoldingSetBase0x3A0x3AFindNodeOrInsertPos0x28llvh0x3A0x3AFoldingSetNodeID0x20const0x260x2C0x20void0x2A0x260x29(ptr noundef nonnull %0, i32 noundef %14, i32 noundef %11, i32 noundef %4) #7 ; 2 uses
  %exitcond462.not = icmp eq i32 %15, 0
  br i1 %exitcond462.not, label %18, label %16

16:                                               ; preds = %bb.j
  %17 = add i32 %15, -28
  br label %37

18:                                               ; preds = %bb.j
  %19 = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 40) #7 ; 4 uses
  %20 = zext i32 %19 to i64                       ; 6 uses
  %.val168.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %21 = getelementptr inbounds nuw i8, ptr %.val168.i, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 32
  store double %i.ck, ptr %22, align 1
  %.val162.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %23 = getelementptr inbounds nuw i8, ptr %.val162.i, i64 %20
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 28
  store i32 0, ptr %24, align 1
  %.val165.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %25 = getelementptr inbounds nuw i8, ptr %.val165.i, i64 %20
  store i8 114, ptr %25, align 1
  %.val166.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %26 = getelementptr inbounds nuw i8, ptr %.val166.i, i64 %20
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 12
  store i64 8589934592, ptr %27, align 1
  %28 = add i32 %19, 20
  %.val161.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %29 = getelementptr inbounds nuw i8, ptr %.val161.i, i64 %20
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 %28, ptr %30, align 1
  %31 = add i32 %19, 28
  %or.cond.i = icmp slt i32 %i.cj, 0
  %32 = sitofp i32 %i.cj to double
  %33 = fcmp une double %i.ck, %32
  %or.cond = or i1 %or.cond.i, %33
  %.0147.i = select i1 %or.cond, i32 458784, i32 131104
  %.val160.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %34 = getelementptr inbounds nuw i8, ptr %.val160.i, i64 %20
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 2
  store i32 %.0147.i, ptr %35, align 1
  %.val159.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %36 = getelementptr inbounds nuw i8, ptr %.val159.i, i64 %5
  %.0.copyload.i.i445 = load i32, ptr %36, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i445) #7, !srcloc !19
  tail call void @w2c_hermes_llvh0x3A0x3AFoldingSetBase0x3A0x3AInsertNode0x28llvh0x3A0x3AFoldingSetBase0x3A0x3ANode0x2A0x2C0x20void0x2A0x29(ptr noundef nonnull %0, i32 noundef %14, i32 noundef %31, i32 noundef %.0.copyload.i.i445) #7
  br label %37

37:                                               ; preds = %18, %16
  %.0148.i = phi i32 [ %17, %16 ], [ %19, %18 ]
  %.val.i444 = load ptr, ptr %i.d, align 8, !tbaa !18
  %38 = getelementptr inbounds nuw i8, ptr %.val.i444, i64 %9
  %.0.copyload.i169.i = load i32, ptr %38, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i169.i) #7, !srcloc !19
  %.not156.i = icmp eq i32 %8, %.0.copyload.i169.i
  br i1 %.not156.i, label %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit, label %39

39:                                               ; preds = %37
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i169.i) #7
  br label %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit

w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit: ; preds = %37, %39
  store i32 %3, ptr %i.a, align 8, !tbaa !17
  tail call void @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateStoreOwnPropertyInst0x28hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AIRBuilder0x3A0x3APropEnumerable0x29(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %.0.copyload.i431, i32 noundef %i.z, i32 noundef %.0148.i)
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AremoveOperand0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.0348, i32 noundef %.0346)
  %exitcond488.not = icmp eq i32 %.1344, %i.bu
  br i1 %exitcond488.not, label %.loopexit444, label %.preheader

bb.k:                                             ; preds = %bb.g
  %i.cm = add nuw i32 %.0346, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.cm, %.0.copyload.i416
  br i1 %exitcond.not, label %.loopexit444, label %bb.f

.loopexit444:                                     ; preds = %bb.k, %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit, %bb.h, %bb.e
  %.2 = phi i32 [ %.1, %bb.e ], [ 1, %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit ], [ 1, %bb.h ], [ %.1, %bb.k ]
  %.val374 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.val374, i64 %i.w
  %.0.copyload.i434 = load i32, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i434) #7, !srcloc !19
  %i.co = icmp eq i32 %.0.copyload.i434, 1
  br i1 %i.co, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.loopexit444
  %.val373 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val373, i64 %i.w
  %.0.copyload.i435 = load i32, ptr %i.cp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i435) #7, !srcloc !19
  %i.cq = add i32 %.0.copyload.i435, -2           ; 2 uses
  %.val372 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val372, i64 %i.o
  %.0.copyload.i436 = load i32, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i436) #7, !srcloc !19
  %i.cs = icmp ult i32 %i.cq, %.0.copyload.i436
  br i1 %i.cs, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = add i32 %.0.copyload.i435, -1
  br label %bb.n

bb.n:                                             ; preds = %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit466, %bb.m
  %.1347 = phi i32 [ %i.ct, %bb.m ], [ %.2345, %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit466 ] ; 2 uses
  %.2345 = phi i32 [ %i.cq, %bb.m ], [ %75, %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit466 ] ; 5 uses
  %.val371 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val371, i64 %i.t
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %.0.copyload.i437 = load i32, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i437) #7, !srcloc !19
  %i.cw = shl i32 %.1347, 3
  %i.cx = add i32 %.0.copyload.i437, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %.val370 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val370, i64 %i.cy
  %.0.copyload.i438 = load i32, ptr %i.cz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i438) #7, !srcloc !19
  %i.da = uitofp i32 %.2345 to double             ; 3 uses
  %.val.i439 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i439, i64 %i.m
  %.0.copyload.i.i440 = load i32, ptr %i.db, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i440) #7, !srcloc !19
  %40 = load i32, ptr %i.a, align 8, !tbaa !17    ; 4 uses
  %41 = add i32 %40, -144                         ; 3 uses
  store i32 %41, ptr %i.a, align 8, !tbaa !17
  %42 = zext i32 %41 to i64                       ; 4 uses
  %.val167.i446 = load ptr, ptr %i.d, align 8, !tbaa !18
  %43 = getelementptr inbounds nuw i8, ptr %.val167.i446, i64 %42
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 137438953472, ptr %44, align 1
  %45 = add i32 %40, -128                         ; 2 uses
  %46 = add nuw nsw i64 %42, 4                    ; 2 uses
  %.val164.i447 = load ptr, ptr %i.d, align 8, !tbaa !18
  %47 = getelementptr inbounds nuw i8, ptr %.val164.i447, i64 %46
  store i32 %45, ptr %47, align 1
  %i.dc = add i32 %40, -140                       ; 2 uses
  %48 = bitcast double %i.da to i64
  tail call void @w2c_hermes_llvh0x3A0x3AFoldingSetNodeID0x3A0x3AAddInteger0x28unsigned0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.dc, i64 noundef %48) #7
  %.val369.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.val369.a, i64 %42
  store i32 0, ptr %i.dd, align 1
  %49 = add i32 %.0.copyload.i.i440, 416          ; 2 uses
  %50 = tail call i32 @w2c_hermes_llvh0x3A0x3AFoldingSetBase0x3A0x3AFindNodeOrInsertPos0x28llvh0x3A0x3AFoldingSetNodeID0x20const0x260x2C0x20void0x2A0x260x29(ptr noundef nonnull %0, i32 noundef %49, i32 noundef %i.dc, i32 noundef %41) #7 ; 2 uses
  %.not.i449 = icmp eq i32 %50, 0
  br i1 %.not.i449, label %53, label %51

51:                                               ; preds = %bb.n
  %52 = add i32 %50, -28
  br label %72

53:                                               ; preds = %bb.n
  %54 = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 40) #7 ; 4 uses
  %55 = zext i32 %54 to i64                       ; 6 uses
  %.val168.i454 = load ptr, ptr %i.d, align 8, !tbaa !18
  %56 = getelementptr inbounds nuw i8, ptr %.val168.i454, i64 %55
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 32
  store double %i.da, ptr %57, align 1
  %.val162.i455 = load ptr, ptr %i.d, align 8, !tbaa !18
  %58 = getelementptr inbounds nuw i8, ptr %.val162.i455, i64 %55
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 28
  store i32 0, ptr %59, align 1
  %.val165.i456 = load ptr, ptr %i.d, align 8, !tbaa !18
  %60 = getelementptr inbounds nuw i8, ptr %.val165.i456, i64 %55
  store i8 114, ptr %60, align 1
  %.val166.i457 = load ptr, ptr %i.d, align 8, !tbaa !18
  %61 = getelementptr inbounds nuw i8, ptr %.val166.i457, i64 %55
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 12
  store i64 8589934592, ptr %62, align 1
  %63 = add i32 %54, 20
  %.val161.i458 = load ptr, ptr %i.d, align 8, !tbaa !18
  %64 = getelementptr inbounds nuw i8, ptr %.val161.i458, i64 %55
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i32 %63, ptr %65, align 1
  %66 = add i32 %54, 28
  %or.cond.i459 = icmp slt i32 %.2345, 0
  %67 = sitofp i32 %.2345 to double
  %68 = fcmp une double %i.da, %67
  %or.cond469 = or i1 %or.cond.i459, %68
  %.0147.i461 = select i1 %or.cond469, i32 458784, i32 131104
  %.val160.i462 = load ptr, ptr %i.d, align 8, !tbaa !18
  %69 = getelementptr inbounds nuw i8, ptr %.val160.i462, i64 %55
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 2
  store i32 %.0147.i461, ptr %70, align 1
  %.val159.i463 = load ptr, ptr %i.d, align 8, !tbaa !18
  %71 = getelementptr inbounds nuw i8, ptr %.val159.i463, i64 %42
  %.0.copyload.i.i464 = load i32, ptr %71, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i464) #7, !srcloc !19
  tail call void @w2c_hermes_llvh0x3A0x3AFoldingSetBase0x3A0x3AInsertNode0x28llvh0x3A0x3AFoldingSetBase0x3A0x3ANode0x2A0x2C0x20void0x2A0x29(ptr noundef nonnull %0, i32 noundef %49, i32 noundef %66, i32 noundef %.0.copyload.i.i464) #7
  br label %72

72:                                               ; preds = %53, %51
  %.0148.i450 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %.val.i451 = load ptr, ptr %i.d, align 8, !tbaa !18
  %73 = getelementptr inbounds nuw i8, ptr %.val.i451, i64 %46
  %.0.copyload.i169.i452 = load i32, ptr %73, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i169.i452) #7, !srcloc !19
  %.not156.i453 = icmp eq i32 %45, %.0.copyload.i169.i452
  br i1 %.not156.i453, label %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit466, label %74

74:                                               ; preds = %72
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i169.i452) #7
  br label %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit466

w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit466: ; preds = %72, %74
  store i32 %40, ptr %i.a, align 8, !tbaa !17
  tail call void @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateStoreOwnPropertyInst0x28hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3AIRBuilder0x3A0x3APropEnumerable0x29(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %.0.copyload.i438, i32 noundef %i.z, i32 noundef %.0148.i450)
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AremoveOperand0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.0348, i32 noundef %.1347)
  %75 = add i32 %.2345, -1                        ; 2 uses
  %.val369 = load ptr, ptr %i.d, align 8, !tbaa !18
  %76 = getelementptr inbounds nuw i8, ptr %.val369, i64 %i.o
  %.0.copyload.i441 = load i32, ptr %76, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i441) #7, !srcloc !19
  %.not365 = icmp ult i32 %75, %.0.copyload.i441
  br i1 %.not365, label %.loopexit, label %bb.n

.loopexit:                                        ; preds = %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit466, %.preheader447, %bb.l, %.loopexit444, %bb.d, %bb.c
  %.pre-phi = phi i64 [ %i.t, %bb.c ], [ 0, %.preheader447 ], [ %i.t, %bb.l ], [ %i.t, %.loopexit444 ], [ %i.t, %bb.d ], [ %i.t, %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit466 ]
  %.3 = phi i32 [ %.1, %bb.c ], [ %.1, %.preheader447 ], [ 1, %bb.l ], [ %.2, %.loopexit444 ], [ %.1, %bb.d ], [ 1, %w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29.exit466 ] ; 2 uses
  %.val368 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val368, i64 %.pre-phi
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %.0.copyload.i442 = load i32, ptr %i.df, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i442) #7, !srcloc !19
  %.not366 = icmp eq i32 %.0.copyload.i442, %i.s
  br i1 %.not366, label %.loopexit448, label %.preheader447

.loopexit448:                                     ; preds = %.loopexit, %bb.b
  %.4 = phi i32 [ %.0, %bb.b ], [ %.3, %.loopexit ] ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %.val, i64 %i.p
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %.0.copyload.i443 = load i32, ptr %i.dh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i443) #7, !srcloc !19
  %.not367 = icmp eq i32 %.0.copyload.i443, %i.h
  br i1 %.not367, label %.loopexit450, label %bb.b

.loopexit450:                                     ; preds = %.loopexit448, %bb.a
  %.5 = phi i32 [ 0, %bb.a ], [ %.4, %.loopexit448 ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3A0x7EIRPrinter0x280x29(ptr noundef %0, i32 noundef returned %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %.val34 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val34, i64 %i.b
  store i32 263264, ptr %i.c, align 1
  %i.d = add i32 %1, 52
  %.val33 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val33, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fmap_value_compare0x3Chermes0x3A0x3AValue0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %i.d, i32 noundef %.0.copyload.i) #7
  %i.g = add i32 %1, 36
  %.val32 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val32, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.0.copyload.i35 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i35) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fmap_value_compare0x3Chermes0x3A0x3AValue0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %i.g, i32 noundef %.0.copyload.i35) #7
  %i.j = add i32 %1, 20
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.0.copyload.i36 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i36) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fmap_value_compare0x3Chermes0x3A0x3AValue0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %i.j, i32 noundef %.0.copyload.i36) #7
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3AprintTypeLabel0x28hermes0x3A0x3AType0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 21 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.b
  %.0.copyload.i = load i16, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i) #7, !srcloc !24
  %.not = icmp eq i16 %.0.copyload.i, 1023
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %1 to i64
  %.val182 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val182, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.0.copyload.i193 = load i32, ptr %i.f, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i193) #7, !srcloc !19
  %i.g = zext i32 %.0.copyload.i193 to i64        ; 3 uses
  %.val181 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val181, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i194 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i194) #7, !srcloc !19
  %i.j = add nuw nsw i64 %i.g, 12                 ; 4 uses
  %.val180 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val180, i64 %i.j
  %.0.copyload.i195 = load i32, ptr %i.k, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i195) #7, !srcloc !19
  %i.l = sub i32 %.0.copyload.i194, %.0.copyload.i195
  %i.m = icmp ult i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i193, i32 noundef 66334, i32 noundef 3) #7 ; 2 uses
  %.pre = zext i32 %i.n to i64                    ; 2 uses
  %.pre208 = add nuw nsw i64 %.pre, 12
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val191, i64 66334
  %.0.copyload.i196 = load i16, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i196) #7, !srcloc !24
  %i.p = zext i32 %.0.copyload.i195 to i64        ; 2 uses
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.p
  store i16 %.0.copyload.i196, ptr %i.q, align 1
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val188, i64 66336
  %.0.copyload.i197 = load i8, ptr %i.r, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i197) #7, !srcloc !21
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i8 %.0.copyload.i197, ptr %i.t, align 1
  %.val179 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val179, i64 %i.j
  %.0.copyload.i198 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i198) #7, !srcloc !19
  %i.v = add i32 %.0.copyload.i198, 3
  %.val185 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.j
  store i32 %i.v, ptr %i.w, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi209 = phi i64 [ %i.j, %bb.d ], [ %.pre208, %bb.c ] ; 6 uses
  %.pre-phi = phi i64 [ %i.g, %bb.d ], [ %.pre, %bb.c ] ; 2 uses
  %.0163 = phi i32 [ %.0.copyload.i193, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.q, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %bb.e ] ; 4 uses
  %.0 = phi i32 [ %.1, %bb.q ], [ 1, %bb.e ]      ; 4 uses
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.b
  %.0.copyload.i199 = load i16, ptr %i.x, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i199) #7, !srcloc !24
  %i.y = zext i16 %.0.copyload.i199 to i32
  %i.z = icmp eq i64 %indvars.iv, 7
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  switch i16 %.0.copyload.i199, label %bb.h [
    i16 256, label %bb.q
    i16 512, label %bb.q
  ]

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %i.y
  %.not169 = icmp eq i32 %i.ac, 0
  br i1 %.not169, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not170 = icmp eq i32 %.0, 0
  br i1 %.not170, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.val178 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val178, i64 %.pre-phi209
  %.0.copyload.i200 = load i32, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i200) #7, !srcloc !19
  %.val177 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val177, i64 %.pre-phi
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i201 = load i32, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i201) #7, !srcloc !19
  %i.ag = icmp eq i32 %.0.copyload.i200, %.0.copyload.i201
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0163, i32 noundef 16393, i32 noundef 1) #7 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ai = zext i32 %.0.copyload.i200 to i64
  %.val186 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.ai
  store i8 124, ptr %i.aj, align 1
  %.val176 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val176, i64 %.pre-phi209
  %.0.copyload.i202 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i202) #7, !srcloc !19
  %i.al = add i32 %.0.copyload.i202, 1
  %.val184 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val184, i64 %.pre-phi209
  store i32 %i.al, ptr %i.am, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k
  %i.an = shl nuw nsw i64 %indvars.iv, 2
  %.val175 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val175, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 263312
  %.0.copyload.i203 = load i32, ptr %i.ap, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i203) #7, !srcloc !19
  %i.aq = tail call i32 @w2c_hermes_strlen(ptr noundef nonnull %0, i32 noundef %.0.copyload.i203) #7 ; 5 uses
  %.val174 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val174, i64 %.pre-phi
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
end_hunk_8
