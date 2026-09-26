Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mballoc?download=true
inline.NumInlined: 1079
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ext4_mb_add_groupinfo:bb.a
  store volatile ptr %i.az, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 48
  store volatile ptr %i.az, ptr %i.ba, align 8
  %i.bb = load ptr, ptr %i.ai, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 56
  tail call void @__init_rwsem(ptr noundef %i.bc, ptr noundef nonnull @.str.30, ptr noundef nonnull @ext4_mb_add_groupinfo.__key) #15
  %i.bd = load ptr, ptr %i.ai, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  store ptr null, ptr %i.be, align 8
  %i.bf = load ptr, ptr %i.ai, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  store i32 -1, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.ai, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 28
  store i32 -1, ptr %i.bi, align 4
  %i.bj = load ptr, ptr %i.ai, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 36
  store i32 %1, ptr %i.bk, align 4
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  tail call void @__rcu_read_lock() #15
  %i.bl = load volatile ptr, ptr %i.x, align 8
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.pre-phi ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void @kfree(ptr noundef %i.bn) #15
  store ptr null, ptr %i.bm, align 8
  tail call void @__rcu_read_unlock() #15
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l, %bb.k, %bb.c
  %.0 = phi i32 [ -12, %bb.c ], [ 0, %bb.k ], [ -12, %bb.l ], [ -12, %bb.f ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc_noprof(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_free_clusters_after_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @ext4_mb_init(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
_kmalloc_noprof.exit185:
  %1 = alloca %struct.kmem_cache_args, align 8    ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 864        ; 8 uses
  %.val = load ptr, ptr %i.a, align 32            ; 37 uses
  %i.b = getelementptr i8, ptr %0, i64 20         ; 8 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = zext i8 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 1
  %i.f = add nuw nsw i64 %i.e, 4
  %i.g = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -2147483648, 68719476721) %i.f, i32 noundef 3264) #18 ; 2 uses
  %i.h = getelementptr i8, ptr %.val, i64 736     ; 5 uses
  store ptr %i.g, ptr %i.h, align 32
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %ext4_groupinfo_create_slab.exit.thread, label %_kmalloc_noprof.exit182

_kmalloc_noprof.exit182:                          ; preds = %_kmalloc_noprof.exit185
  %i.j = load i8, ptr %i.b, align 4
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 8
  %i.n = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -2147483648, 68719476721) %i.m, i32 noundef 3264) #18 ; 2 uses
  %i.o = getelementptr i8, ptr %.val, i64 744     ; 3 uses
  store ptr %i.n, ptr %i.o, align 8
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %ext4_groupinfo_create_slab.exit.thread, label %bb.a

bb.a:                                             ; preds = %_kmalloc_noprof.exit182
  %i.q = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp ugt i64 %i.r, 1
  br i1 %i.s, label %__order_base_2.exit.i, label %.thread.i

__order_base_2.exit.i:                            ; preds = %bb.a
  %i.t = add i64 %i.r, -1
  %i.u = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.t, i32 -1) #17, !srcloc !25 ; 2 uses
  %i.v = add nsw i32 %i.u, 1                      ; 2 uses
  %i.w = add i32 %i.u, -9                         ; 3 uses
  %i.x = icmp sgt i32 %i.w, 7
  br i1 %i.x, label %ext4_groupinfo_create_slab.exit.thread, label %bb.b

bb.b:                                             ; preds = %__order_base_2.exit.i
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %bb.c, label %.thread.i, !prof !104

bb.c:                                             ; preds = %bb.b
  br label %.thread.i

.thread.i:                                        ; preds = %bb.c, %bb.b, %bb.a
  %i.z = phi i32 [ %i.v, %bb.b ], [ %i.v, %bb.c ], [ 0, %bb.a ]
  %.019.i = phi i32 [ %i.w, %bb.b ], [ 0, %bb.c ], [ 0, %bb.a ]
  tail call void @mutex_lock(ptr noundef nonnull @ext4_groupinfo_create_slab.ext4_grpinfo_slab_create_mutex) #15
  %i.aa = zext nneg i32 %.019.i to i64            ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr @ext4_groupinfo_caches, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not.i212 = icmp eq ptr %i.ac, null
  br i1 %.not.i212, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread.i
  tail call void @mutex_unlock(ptr noundef nonnull @ext4_groupinfo_create_slab.ext4_grpinfo_slab_create_mutex) #15
  br label %ext4_groupinfo_create_slab.exit

bb.e:                                             ; preds = %.thread.i
  %i.ad = shl i32 %i.z, 2
  %i.ae = add i32 %i.ad, 96
  %i.af = getelementptr [8 x i8], ptr @ext4_groupinfo_slab_names, i64 %i.aa
  %i.ag = load ptr, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.ah = call ptr @__kmem_cache_create_args(ptr noundef %i.ag, i32 noundef %i.ae, ptr noundef nonnull %1, i32 noundef 16384) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  store ptr %i.ah, ptr %i.ab, align 8
  call void @mutex_unlock(ptr noundef nonnull @ext4_groupinfo_create_slab.ext4_grpinfo_slab_create_mutex) #15
  %.not23.i214 = icmp eq ptr %i.ah, null
  br i1 %.not23.i214, label %bb.f, label %ext4_groupinfo_create_slab.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #19 ; 0 uses
  br label %ext4_groupinfo_create_slab.exit.thread

ext4_groupinfo_create_slab.exit:                  ; preds = %bb.e, %bb.d
  %i.aj = load i64, ptr %i.q, align 8
  %.tr = trunc i64 %i.aj to i32
  %i.ak = shl i32 %.tr, 3
  %i.al = load ptr, ptr %i.o, align 8
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.h, align 32
  store i16 0, ptr %i.am, align 2
  %i.an = load i8, ptr %i.b, align 4
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -1
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = load i64, ptr %i.q, align 8
  %.tr174 = trunc i64 %i.ar to i32
  %i.as = shl i32 %.tr174, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %ext4_groupinfo_create_slab.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 1, %ext4_groupinfo_create_slab.exit ] ; 3 uses
  %.0160 = phi i32 [ %i.ba, %bb.g ], [ %i.as, %ext4_groupinfo_create_slab.exit ] ; 2 uses
  %.0159 = phi i32 [ %i.az, %bb.g ], [ %i.aq, %ext4_groupinfo_create_slab.exit ] ; 2 uses
  %.0157 = phi i32 [ %i.ay, %bb.g ], [ 0, %ext4_groupinfo_create_slab.exit ] ; 2 uses
  %i.at = trunc i32 %.0157 to i16
  %i.au = load ptr, ptr %i.h, align 32
  %i.av = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv
  store i16 %i.at, ptr %i.av, align 2
  %i.aw = load ptr, ptr %i.o, align 8
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %indvars.iv
  store i32 %.0160, ptr %i.ax, align 4
  %i.ay = add i32 %.0157, %.0159
  %i.az = lshr i32 %.0159, 1
  %i.ba = lshr i32 %.0160, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load i8, ptr %i.b, align 4
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.bc, 2                ; 2 uses
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %bb.g, label %_kmalloc_noprof.exit179, !llvm.loop !97

_kmalloc_noprof.exit179:                          ; preds = %bb.g
  %i.bg = shl nuw nsw i32 %i.bd, 4
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -2147483648, 68719476721) %i.bh, i32 noundef 3264) #18 ; 2 uses
  %i.bj = getelementptr i8, ptr %.val, i64 848    ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 16
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %ext4_groupinfo_create_slab.exit.thread, label %.preheader236.a

.preheader236.a:                                  ; preds = %_kmalloc_noprof.exit179, %.preheader236.a
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %.preheader236.a ], [ 0, %_kmalloc_noprof.exit179 ] ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 16
  %i.bl = getelementptr [16 x i8], ptr %i.bk, i64 %indvars.iv251
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %i.bm = load i8, ptr %i.b, align 4
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bn, 2                ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next252, %i.bp
  br i1 %i.bq, label %.preheader236.a, label %_kmalloc_noprof.exit, !llvm.loop !98

_kmalloc_noprof.exit:                             ; preds = %.preheader236.a
  %i.br = shl nuw nsw i32 %i.bo, 4
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -2147483648, 68719476721) %i.bs, i32 noundef 3264) #18 ; 2 uses
  %i.bu = getelementptr i8, ptr %.val, i64 856    ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8
  %.not175 = icmp eq ptr %i.bt, null
  br i1 %.not175, label %ext4_groupinfo_create_slab.exit.thread, label %.preheader235

.preheader235:                                    ; preds = %_kmalloc_noprof.exit, %.preheader235
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.preheader235 ], [ 0, %_kmalloc_noprof.exit ] ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr [16 x i8], ptr %i.bv, i64 %indvars.iv254
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %i.bx = load i8, ptr %i.b, align 4
  %i.by = zext i8 %i.bx to i64
  %2 = add nuw nsw i64 %i.by, 2
  %3 = icmp samesign ult i64 %indvars.iv.next255, %2
  br i1 %3, label %.preheader235, label %bb.h, !llvm.loop !99

bb.h:                                             ; preds = %.preheader235
  %i.bz = getelementptr i8, ptr %.val, i64 728
  store i32 0, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %.val, i64 756
  store volatile i32 0, ptr %i.ca, align 4
  %i.cb = getelementptr i8, ptr %.val, i64 760    ; 3 uses
  store volatile ptr %i.cb, ptr %i.cb, align 8
  %i.cc = getelementptr i8, ptr %.val, i64 768
  store volatile ptr %i.cb, ptr %i.cc, align 32
  %i.cd = getelementptr i8, ptr %.val, i64 776    ; 3 uses
  store volatile ptr %i.cd, ptr %i.cd, align 8
  %i.ce = getelementptr i8, ptr %.val, i64 784
  store volatile ptr %i.cd, ptr %i.ce, align 16
  %i.cf = getelementptr i8, ptr %.val, i64 792    ; 3 uses
  store volatile ptr %i.cf, ptr %i.cf, align 8
  %i.cg = getelementptr i8, ptr %.val, i64 800
  store volatile ptr %i.cf, ptr %i.cg, align 32
  %i.ch = getelementptr i8, ptr %.val, i64 808
  store i64 4503599625273344, ptr %i.ch, align 8
  %i.ci = getelementptr i8, ptr %.val, i64 816    ; 3 uses
  store volatile ptr %i.ci, ptr %i.ci, align 16
  %i.cj = getelementptr i8, ptr %.val, i64 824
  store volatile ptr %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %.val, i64 832
  store ptr @ext4_discard_work, ptr %i.ck, align 32
  %i.cl = getelementptr i8, ptr %.val, i64 840
  store volatile i32 0, ptr %i.cl, align 8
  %i.cm = getelementptr i8, ptr %.val, i64 880
  store i32 200, ptr %i.cm, align 16
  %i.cn = getelementptr i8, ptr %.val, i64 884
  store i32 10, ptr %i.cn, align 4
  %i.co = getelementptr i8, ptr %.val, i64 888
  store i32 0, ptr %i.co, align 8
  %i.cp = getelementptr i8, ptr %.val, i64 876
  store i32 16, ptr %i.cp, align 4
  %i.cq = getelementptr i8, ptr %.val, i64 892
  store i32 2, ptr %i.cq, align 4
  %i.cr = getelementptr i8, ptr %.val, i64 912
  store i32 3, ptr %i.cr, align 16
  %i.cs = getelementptr i8, ptr %.val, i64 84
  %i.ct = load i32, ptr %i.cs, align 4            ; 2 uses
  %i.cu = lshr i32 512, %i.ct
  %i.cv = call i32 @llvm.umax.i32(i32 %i.cu, i32 32) ; 2 uses
  %i.cw = getelementptr i8, ptr %.val, i64 896    ; 2 uses
  store i32 %i.cv, ptr %i.cw, align 64
  %i.cx = getelementptr i8, ptr %.val, i64 864
  %i.cy = load i64, ptr %i.cx, align 32           ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, 1
  br i1 %i.cz, label %bb.i, label %_kzalloc_noprof.exit

bb.i:                                             ; preds = %bb.h
  %i.da = getelementptr i8, ptr %.val, i64 80
  %i.db = load i32, ptr %i.da, align 16
  %i.dc = zext i32 %i.db to i64
  %i.dd = add i64 %i.cy, -1
  %i.de = add i64 %i.dd, %i.dc
  %i.df = zext nneg i32 %i.ct to i64
  %i.dg = lshr i64 %i.de, %i.df                   ; 2 uses
  %i.dh = zext nneg i32 %i.cv to i64
  %i.di = add nsw i64 %i.dh, -1
  %i.dj = add i64 %i.di, %i.dg
  %.fr = freeze i64 %i.dj                         ; 2 uses
  %i.dk = urem i64 %.fr, %i.dg
  %i.dl = sub nuw i64 %.fr, %i.dk
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.cw, align 64
  br label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.i, %bb.h
  %i.dn = load i32, ptr @__num_possible_cpus, align 4
  %i.do = getelementptr i8, ptr %.val, i64 64
  %i.dp = load i32, ptr %i.do, align 64
  %i.dq = add i32 %i.dp, 3
  %i.dr = lshr i32 %i.dq, 2
  %i.ds = call i32 @llvm.umin.i32(i32 %i.dn, i32 %i.dr) ; 2 uses
  %i.dt = getelementptr i8, ptr %.val, i64 936
  store i32 %i.ds, ptr %i.dt, align 8
  %i.du = shl nuw i32 %i.ds, 2
  %i.dv = zext i32 %i.du to i64
  %i.dw = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -2147483648, 68719476721) %i.dv, i32 noundef range(i32 3136, 36352) 3520) #18 ; 2 uses
  %i.dx = getelementptr i8, ptr %.val, i64 928    ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 32
  %i.dy = icmp eq ptr %i.dw, null
  br i1 %i.dy, label %ext4_groupinfo_create_slab.exit.thread, label %bb.j

bb.j:                                             ; preds = %_kzalloc_noprof.exit
  %i.dz = call noalias dereferenceable_or_null(192) ptr @pcpu_alloc_noprof(i64 noundef 192, i64 noundef 8, i1 noundef zeroext false, i32 noundef 3264) #18 ; 2 uses
  %i.ea = getelementptr i8, ptr %.val, i64 1152   ; 4 uses
  store ptr %i.dz, ptr %i.ea, align 64
  %i.eb = icmp eq ptr %i.dz, null
  br i1 %i.eb, label %bb.ac, label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.k
  %i.ec = phi i64 [ %i.fm, %bb.k ], [ 0, %bb.j ]
  %i.ed = load i64, ptr @__cpu_possible_mask, align 8
  %i.ee = shl nsw i64 -1, %i.ec
  %i.ef = and i64 %i.ed, %i.ee                    ; 2 uses
  %.not23.i = icmp eq i64 %i.ef, 0
  br i1 %.not23.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %.preheader
  %i.eg = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.ef) #17, !srcloc !29 ; 3 uses
  %i.eh = and i64 %i.eg, 4294967232
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.k, label %find_next_bit.exit.thread

bb.k:                                             ; preds = %find_next_bit.exit
  %i.ej = load ptr, ptr %i.ea, align 64
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = and i64 %i.eg, 63
  %i.em = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = add i64 %i.en, %i.ek
  %i.ep = inttoptr i64 %i.eo to ptr               ; 22 uses
  call void @mutex_init_generic(ptr noundef %i.ep) #15
  %i.eq = getelementptr i8, ptr %i.ep, i64 24     ; 3 uses
  store volatile ptr %i.eq, ptr %i.eq, align 8
  %i.er = getelementptr i8, ptr %i.ep, i64 32
  store volatile ptr %i.eq, ptr %i.er, align 8
  %i.es = getelementptr i8, ptr %i.ep, i64 40     ; 3 uses
  store volatile ptr %i.es, ptr %i.es, align 8
  %i.et = getelementptr i8, ptr %i.ep, i64 48
  store volatile ptr %i.es, ptr %i.et, align 8
  %i.eu = getelementptr i8, ptr %i.ep, i64 56     ; 3 uses
  store volatile ptr %i.eu, ptr %i.eu, align 8
  %i.ev = getelementptr i8, ptr %i.ep, i64 64
  store volatile ptr %i.eu, ptr %i.ev, align 8
  %i.ew = getelementptr i8, ptr %i.ep, i64 72     ; 3 uses
  store volatile ptr %i.ew, ptr %i.ew, align 8
  %i.ex = getelementptr i8, ptr %i.ep, i64 80
  store volatile ptr %i.ew, ptr %i.ex, align 8
  %i.ey = getelementptr i8, ptr %i.ep, i64 88     ; 3 uses
  store volatile ptr %i.ey, ptr %i.ey, align 8
  %i.ez = getelementptr i8, ptr %i.ep, i64 96
  store volatile ptr %i.ey, ptr %i.ez, align 8
  %i.fa = getelementptr i8, ptr %i.ep, i64 104    ; 3 uses
  store volatile ptr %i.fa, ptr %i.fa, align 8
  %i.fb = getelementptr i8, ptr %i.ep, i64 112
  store volatile ptr %i.fa, ptr %i.fb, align 8
  %i.fc = getelementptr i8, ptr %i.ep, i64 120    ; 3 uses
  store volatile ptr %i.fc, ptr %i.fc, align 8
  %i.fd = getelementptr i8, ptr %i.ep, i64 128
  store volatile ptr %i.fc, ptr %i.fd, align 8
  %i.fe = getelementptr i8, ptr %i.ep, i64 136    ; 3 uses
  store volatile ptr %i.fe, ptr %i.fe, align 8
  %i.ff = getelementptr i8, ptr %i.ep, i64 144
  store volatile ptr %i.fe, ptr %i.ff, align 8
  %i.fg = getelementptr i8, ptr %i.ep, i64 152    ; 3 uses
  store volatile ptr %i.fg, ptr %i.fg, align 8
  %i.fh = getelementptr i8, ptr %i.ep, i64 160
  store volatile ptr %i.fg, ptr %i.fh, align 8
  %i.fi = getelementptr i8, ptr %i.ep, i64 168    ; 3 uses
  store volatile ptr %i.fi, ptr %i.fi, align 8
  %i.fj = getelementptr i8, ptr %i.ep, i64 176
  store volatile ptr %i.fi, ptr %i.fj, align 8
  %i.fk = getelementptr i8, ptr %i.ep, i64 184
  store i32 0, ptr %i.fk, align 8
  %i.fl = add nuw nsw i64 %i.eg, 1
  %i.fm = and i64 %i.fl, 127                      ; 2 uses
  %.not.i = icmp samesign ult i64 %i.fm, 64
  br i1 %.not.i, label %.preheader, label %find_next_bit.exit.thread, !prof !30, !llvm.loop !100

find_next_bit.exit.thread:                        ; preds = %bb.k, %.preheader, %find_next_bit.exit
  %i.fn = getelementptr i8, ptr %0, i64 192
  %i.fo = load ptr, ptr %i.fn, align 64
  %i.fp = getelementptr i8, ptr %i.fo, i64 24
  %.val211 = load ptr, ptr %i.fp, align 8
  %i.fq = getelementptr i8, ptr %.val211, i64 112
  %.val211.val = load i32, ptr %i.fq, align 8
  %i.fr = and i32 %.val211.val, 4
  %i.fs = getelementptr i8, ptr %.val, i64 872
  store i32 %i.fr, ptr %i.fs, align 8
  %.val83.i = load ptr, ptr %i.a, align 32
  %i.ft = getelementptr i8, ptr %.val83.i, i64 64
  %.val83.val.i = load i32, ptr %i.ft, align 64   ; 4 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !18
  %.val.i = load ptr, ptr %i.a, align 32          ; 9 uses
  %i.fu = call i32 @ext4_mb_alloc_groupinfo(ptr noundef %0, i32 noundef %.val83.val.i) #16 ; 2 uses
  %.not.i216 = icmp eq i32 %i.fu, 0
  br i1 %.not.i216, label %bb.l, label %ext4_mb_init_backend.exit

bb.l:                                             ; preds = %find_next_bit.exit.thread
  %i.fv = call ptr @new_inode(ptr noundef %0) #15 ; 3 uses
  %i.fw = getelementptr i8, ptr %.val.i, i64 720  ; 4 uses
  store ptr %i.fv, ptr %i.fw, align 16
  %i.fx = icmp eq ptr %i.fv, null
  br i1 %i.fx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.72) #15
  br label %bb.ab

bb.n:                                             ; preds = %bb.l
  %i.fy = getelementptr i8, ptr %i.fv, i64 64
  store i64 1, ptr %i.fy, align 8
  %i.fz = load ptr, ptr %i.fw, align 16
  %i.ga = getelementptr i8, ptr %i.fz, i64 -40
  store i64 0, ptr %i.ga, align 8
  %i.gb = load ptr, ptr %i.fw, align 16
end_hunk_0
begin_hunk_1_@ext4_mb_init:_kmalloc_noprof.exit185
  %i.gd = call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %.06989.i, ptr noundef null) #15 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.73, i32 noundef %.06989.i) #15
  br label %.loopexit.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.gf = call i32 @ext4_mb_add_groupinfo(ptr noundef %0, i32 noundef %.06989.i, ptr noundef nonnull %i.gd) #16
  %.not75.i = icmp eq i32 %i.gf, 0
  br i1 %.not75.i, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %bb.p
  %i.gg = add nuw i32 %.06989.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gg, %.val83.val.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !101

._crit_edge.i:                                    ; preds = %bb.q, %bb.n
  %.val84.i = load ptr, ptr %i.a, align 32
  %i.gh = getelementptr i8, ptr %.val84.i, i64 104
  %.val84.val.i = load ptr, ptr %i.gh, align 8
  %i.gi = getelementptr i8, ptr %.val84.val.i, i64 96
  %.val84.val.val.i = load i32, ptr %i.gi, align 8
  %i.gj = and i32 %.val84.val.val.i, 512
  %.not85.i = icmp eq i32 %i.gj, 0
  br i1 %.not85.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.gk = getelementptr i8, ptr %.val.i, i64 104
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr i8, ptr %i.gl, i64 372
  %i.gn = load i8, ptr %i.gm, align 4             ; 2 uses
  %i.go = icmp ugt i8 %i.gn, 31
  br i1 %i.go, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.74) #15
  br label %.loopexit.i

bb.t:                                             ; preds = %bb.r
  %i.gp = zext nneg i8 %i.gn to i32
  %i.gq = shl nuw i32 1, %i.gp
  %i.gr = load i8, ptr %i.b, align 4
  %i.gs = zext i8 %i.gr to i32
  %i.gt = add nsw i32 %i.gs, -9
  %i.gu = lshr i32 65536, %i.gt
  %i.gv = call i32 @llvm.umin.i32(i32 %i.gq, i32 %i.gu)
  %i.gw = getelementptr i8, ptr %.val.i, i64 904
  %i.gx = shl nuw nsw i32 %i.gv, 3                ; 2 uses
  store i32 %i.gx, ptr %i.gw, align 8
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i
  %i.gy = getelementptr i8, ptr %.val.i, i64 904
  store i32 32, ptr %i.gy, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.gz = phi i32 [ 32, %bb.u ], [ %i.gx, %bb.t ]
  %i.ha = getelementptr i8, ptr %.val.i, i64 904  ; 2 uses
  %.val82.i = load ptr, ptr %i.a, align 32
  %i.hb = getelementptr i8, ptr %.val82.i, i64 64
  %.val82.val.i = load i32, ptr %i.hb, align 64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !18
  %i.hc = icmp ugt i32 %i.gz, %.val82.val.i
  br i1 %i.hc, label %bb.w, label %._crit_edge101.i

._crit_edge101.i:                                 ; preds = %bb.v
  %.pre.i = load i32, ptr %i.ha, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %.val81.i = load ptr, ptr %i.a, align 32
  %i.hd = getelementptr i8, ptr %.val81.i, i64 64
  %.val81.val.i = load i32, ptr %i.hd, align 64   ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !18
  store i32 %.val81.val.i, ptr %i.ha, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge101.i
  %i.he = phi i32 [ %.pre.i, %._crit_edge101.i ], [ %.val81.val.i, %bb.w ]
  %i.hf = shl i32 %i.he, 2                        ; 2 uses
  %i.hg = getelementptr i8, ptr %.val.i, i64 908  ; 2 uses
  store i32 %i.hf, ptr %i.hg, align 4
  %.val80.i = load ptr, ptr %i.a, align 32
  %i.hh = getelementptr i8, ptr %.val80.i, i64 64
  %.val80.val.i = load i32, ptr %i.hh, align 64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !18
  %i.hi = icmp ugt i32 %i.hf, %.val80.val.i
  br i1 %i.hi, label %bb.y, label %ext4_mb_init_backend.exit.thread

bb.y:                                             ; preds = %bb.x
  %.val79.i = load ptr, ptr %i.a, align 32
  %i.hj = getelementptr i8, ptr %.val79.i, i64 64
  %.val79.val.i = load i32, ptr %i.hj, align 64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !18
  store i32 %.val79.val.i, ptr %i.hg, align 4
  br label %ext4_mb_init_backend.exit.thread

.loopexit.i:                                      ; preds = %bb.p, %bb.s, %bb.o
  %.06988.i = phi i32 [ %.06989.i, %bb.o ], [ %.val83.val.i, %bb.s ], [ %.06989.i, %bb.p ] ; 2 uses
  %i.hk = load i8, ptr %i.b, align 4
  %i.hl = zext i8 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr @ext4_groupinfo_caches, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 -80
  %i.ho = load ptr, ptr %i.hn, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i, label %bb.z, label %get_groupinfo_cache.exit.preheader.i, !prof !21

get_groupinfo_cache.exit.preheader.i:             ; preds = %.loopexit.i
  %.not7690.i = icmp eq i32 %.06988.i, 0
  br i1 %.not7690.i, label %get_groupinfo_cache.exit._crit_edge.i, label %.lr.ph91.i

bb.z:                                             ; preds = %.loopexit.i
  call void asm sideeffect "1591: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1591b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1591) #14, !srcloc !26
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 3386, i32 0, i64 16) #14, !srcloc !27
  unreachable

.lr.ph91.i:                                       ; preds = %get_groupinfo_cache.exit.preheader.i, %get_groupinfo_cache.exit.i
  %.in.i218 = phi i32 [ %i.hp, %get_groupinfo_cache.exit.i ], [ %.06988.i, %get_groupinfo_cache.exit.preheader.i ]
  %i.hp = add i32 %.in.i218, -1                   ; 3 uses
  %i.hq = call ptr @ext4_get_group_info(ptr noundef %0, i32 noundef %i.hp) #15 ; 2 uses
  %.not78.i = icmp eq ptr %i.hq, null
  br i1 %.not78.i, label %get_groupinfo_cache.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph91.i
  call void @kmem_cache_free(ptr noundef nonnull %i.ho, ptr noundef nonnull %i.hq) #15
  br label %get_groupinfo_cache.exit.i

get_groupinfo_cache.exit.i:                       ; preds = %bb.aa, %.lr.ph91.i
  %.not76.i = icmp eq i32 %i.hp, 0
  br i1 %.not76.i, label %get_groupinfo_cache.exit._crit_edge.i, label %.lr.ph91.i, !llvm.loop !102

get_groupinfo_cache.exit._crit_edge.i:            ; preds = %get_groupinfo_cache.exit.i, %get_groupinfo_cache.exit.preheader.i
  %i.hr = getelementptr i8, ptr %.val.i, i64 752
  %i.hs = load i32, ptr %i.hr, align 16           ; 2 uses
  call void @__rcu_read_lock() #15
  %i.ht = getelementptr i8, ptr %.val.i, i64 712
  %i.hu = load volatile ptr, ptr %i.ht, align 8
  %.not7792.i = icmp eq i32 %i.hs, 0
  br i1 %.not7792.i, label %._crit_edge96.i, label %.lr.ph95.preheader.i

.lr.ph95.preheader.i:                             ; preds = %get_groupinfo_cache.exit._crit_edge.i
  %i.hv = zext i32 %i.hs to i64
  br label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %.lr.ph95.i, %.lr.ph95.preheader.i
  %indvars.iv.i = phi i64 [ %i.hv, %.lr.ph95.preheader.i ], [ %i.hw, %.lr.ph95.i ]
  %i.hw = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.hx = getelementptr [8 x i8], ptr %i.hu, i64 %i.hw
  %i.hy = load ptr, ptr %i.hx, align 8
  call void @kfree(ptr noundef %i.hy) #15
  %.not77.wide.i = icmp eq i64 %i.hw, 0
  br i1 %.not77.wide.i, label %._crit_edge96.i, label %.lr.ph95.i, !llvm.loop !103

._crit_edge96.i:                                  ; preds = %.lr.ph95.i, %get_groupinfo_cache.exit._crit_edge.i
  call void @__rcu_read_unlock() #15
  %i.hz = load ptr, ptr %i.fw, align 16
  call void @iput(ptr noundef %i.hz) #15
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge96.i, %bb.m
  %i.ia = getelementptr i8, ptr %.val.i, i64 712
  %i.ib = load volatile ptr, ptr %i.ia, align 8
  call void @kvfree(ptr noundef %i.ib) #15
  br label %ext4_mb_init_backend.exit

ext4_mb_init_backend.exit:                        ; preds = %bb.ab, %find_next_bit.exit.thread
  %.0.i217 = phi i32 [ %i.fu, %find_next_bit.exit.thread ], [ -12, %bb.ab ]
  %i.ic = load ptr, ptr %i.ea, align 64
  call void @free_percpu(ptr noundef %i.ic) #15
  store ptr null, ptr %i.ea, align 64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.j, %ext4_mb_init_backend.exit
  %.0161 = phi i32 [ %.0.i217, %ext4_mb_init_backend.exit ], [ -12, %bb.j ]
  %i.id = load ptr, ptr %i.dx, align 32
  call void @kfree(ptr noundef %i.id) #15
  store ptr null, ptr %i.dx, align 32
  br label %ext4_groupinfo_create_slab.exit.thread

ext4_groupinfo_create_slab.exit.thread:           ; preds = %__order_base_2.exit.i, %bb.f, %_kzalloc_noprof.exit, %_kmalloc_noprof.exit, %_kmalloc_noprof.exit179, %_kmalloc_noprof.exit182, %_kmalloc_noprof.exit185, %bb.ac
  %.1162 = phi i32 [ -12, %_kmalloc_noprof.exit182 ], [ -12, %_kmalloc_noprof.exit185 ], [ -12, %_kzalloc_noprof.exit ], [ -12, %_kmalloc_noprof.exit ], [ %.0161, %bb.ac ], [ -12, %_kmalloc_noprof.exit179 ], [ -22, %__order_base_2.exit.i ], [ -12, %bb.f ]
  %i.ie = getelementptr i8, ptr %.val, i64 848    ; 4 uses
  %i.if = load ptr, ptr %i.ie, align 16
  %.not.i219 = icmp eq ptr %i.if, null
  br i1 %.not.i219, label %ext4_mb_avg_fragment_size_destroy.exit, label %.preheader.i

.preheader.i:                                     ; preds = %ext4_groupinfo_create_slab.exit.thread
  %i.ig = getelementptr i8, ptr %.val, i64 560
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ae
  %i.ih = load ptr, ptr %i.ie, align 16
  call void @kfree(ptr noundef %i.ih) #15
  store ptr null, ptr %i.ie, align 16
  br label %ext4_mb_avg_fragment_size_destroy.exit

bb.ae:                                            ; preds = %bb.ae, %.preheader.i
  %indvars.iv.i220 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.ae ] ; 2 uses
  %i.ii = load ptr, ptr %i.ie, align 16
  %i.ij = getelementptr [16 x i8], ptr %i.ii, i64 %indvars.iv.i220
  call void @xa_destroy(ptr noundef %i.ij) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i220, 1 ; 2 uses
  %i.ik = load ptr, ptr %i.ig, align 16
  %i.il = getelementptr i8, ptr %i.ik, i64 20
  %i.im = load i8, ptr %i.il, align 4
  %i.in = zext i8 %i.im to i64
  %4 = add nuw nsw i64 %i.in, 2
  %5 = icmp samesign ult i64 %indvars.iv.next.i, %4
  br i1 %5, label %bb.ae, label %bb.ad, !llvm.loop !1

ext4_mb_avg_fragment_size_destroy.exit:           ; preds = %ext4_groupinfo_create_slab.exit.thread, %bb.ad
  %i.io = getelementptr i8, ptr %.val, i64 856    ; 4 uses
  %i.ip = load ptr, ptr %i.io, align 8
  %.not.i221 = icmp eq ptr %i.ip, null
  br i1 %.not.i221, label %ext4_mb_largest_free_orders_destroy.exit, label %.preheader.i222

.preheader.i222:                                  ; preds = %ext4_mb_avg_fragment_size_destroy.exit
  %i.iq = getelementptr i8, ptr %.val, i64 560
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %i.ir = load ptr, ptr %i.io, align 8
  call void @kfree(ptr noundef %i.ir) #15
  store ptr null, ptr %i.io, align 8
  br label %ext4_mb_largest_free_orders_destroy.exit

bb.ag:                                            ; preds = %bb.ag, %.preheader.i222
  %indvars.iv.i223 = phi i64 [ 0, %.preheader.i222 ], [ %indvars.iv.next.i224, %bb.ag ] ; 2 uses
  %i.is = load ptr, ptr %i.io, align 8
  %i.it = getelementptr [16 x i8], ptr %i.is, i64 %indvars.iv.i223
  call void @xa_destroy(ptr noundef %i.it) #15
  %indvars.iv.next.i224 = add nuw nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %i.iu = load ptr, ptr %i.iq, align 16
  %i.iv = getelementptr i8, ptr %i.iu, i64 20
  %i.iw = load i8, ptr %i.iv, align 4
  %i.ix = zext i8 %i.iw to i64
  %6 = add nuw nsw i64 %i.ix, 2
  %7 = icmp samesign ult i64 %indvars.iv.next.i224, %6
  br i1 %7, label %bb.ag, label %bb.af, !llvm.loop !2

ext4_mb_largest_free_orders_destroy.exit:         ; preds = %ext4_mb_avg_fragment_size_destroy.exit, %bb.af
  %i.iy = load ptr, ptr %i.h, align 32
  call void @kfree(ptr noundef %i.iy) #15
  store ptr null, ptr %i.h, align 32
  %i.iz = getelementptr i8, ptr %.val, i64 744    ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8
  call void @kfree(ptr noundef %i.ja) #15
  store ptr null, ptr %i.iz, align 8
  br label %ext4_mb_init_backend.exit.thread

ext4_mb_init_backend.exit.thread:                 ; preds = %bb.x, %bb.y, %ext4_mb_largest_free_orders_destroy.exit
  %.0 = phi i32 [ %.1162, %ext4_mb_largest_free_orders_destroy.exit ], [ 0, %bb.y ], [ 0, %bb.x ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ext4_discard_work(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.ext4_buddy, align 8         ; 9 uses
  %2 = alloca %struct.list_head, align 8          ; 13 uses
  %i.a = getelementptr i8, ptr %0, i64 -248
  %i.b = load ptr, ptr %i.a, align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %2, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 -80        ; 2 uses
  call void @_raw_spin_lock(ptr noundef %i.d) #15
  %i.e = getelementptr i8, ptr %0, i64 -16        ; 5 uses
  %i.f = load volatile ptr, ptr %i.e, align 8     ; 3 uses
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %list_splice_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 -8         ; 2 uses
  %.val5.i = load ptr, ptr %i.h, align 8          ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.i, align 8
  store ptr %i.f, ptr %2, align 8
  store ptr %i.g, ptr %.val5.i, align 8
  %i.j = getelementptr i8, ptr %i.g, i64 8
  store ptr %.val5.i, ptr %i.j, align 8
  store volatile ptr %i.e, ptr %i.e, align 8
  store volatile ptr %i.e, ptr %i.h, align 8
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %bb.a, %bb.b
  call void @_raw_spin_unlock(ptr noundef %i.d) #15
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %.not61 = icmp eq ptr %i.k, %2
  br i1 %.not61, label %ext4_mb_unload_buddy.exit59, label %.lr.ph

.lr.ph:                                           ; preds = %list_splice_init.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false), !annotation !19
  %i.l = getelementptr i8, ptr %i.b, i64 80
  %i.m = getelementptr i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr i8, ptr %i.b, i64 864      ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %.064 = phi ptr [ %i.k, %.lr.ph ], [ %.03965, %.backedge.backedge ] ; 6 uses
  %.04063 = phi i32 [ -1, %.lr.ph ], [ %.04063.be, %.backedge.backedge ] ; 5 uses
  %.04162 = phi i32 [ 0, %.lr.ph ], [ %.04162.be, %.backedge.backedge ] ; 2 uses
  %.03965 = load ptr, ptr %.064, align 8          ; 3 uses
  %i.p = load i64, ptr %i.l, align 16
  %i.q = and i64 %i.p, 1073741824
  %i.r = icmp eq i64 %i.q, 0
  %i.s = icmp ne i32 %.04162, 0
  %or.cond = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.m, label %bb.c

bb.c:                                             ; preds = %.backedge
  %i.t = load volatile i32, ptr %i.m, align 8
  %.not49 = icmp eq i32 %i.t, 0
  br i1 %.not49, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %.064, i64 40
  %i.v = load i32, ptr %i.u, align 8              ; 4 uses
  %.not50 = icmp eq i32 %i.v, %.04063
  br i1 %.not50, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not51 = icmp eq i32 %.04063, -1
  br i1 %.not51, label %ext4_mb_unload_buddy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i53 = icmp eq ptr %i.w, null
  br i1 %.not.i53, label %folio_put.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.w, i64 52       ; 2 uses
  %i.y = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.x, ptr elementtype(i32) %i.x) #14, !srcloc !23 ; 2 uses
  %i.z = icmp ult i8 %i.y, 2
  call void @llvm.assume(i1 %i.z)
  %.not.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i, label %folio_put.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @__folio_put(ptr noundef nonnull %i.w) #15
  br label %folio_put.exit.i

folio_put.exit.i:                                 ; preds = %bb.h, %bb.g, %bb.f
  %i.aa = load ptr, ptr %1, align 8               ; 3 uses
  %.not5.i = icmp eq ptr %i.aa, null
  br i1 %.not5.i, label %ext4_mb_unload_buddy.exit, label %bb.i

bb.i:                                             ; preds = %folio_put.exit.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 52     ; 2 uses
  %i.ac = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ab, ptr elementtype(i32) %i.ab) #14, !srcloc !23 ; 2 uses
  %i.ad = icmp ult i8 %i.ac, 2
  call void @llvm.assume(i1 %i.ad)
  %.not.i6.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i6.i, label %ext4_mb_unload_buddy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @__folio_put(ptr noundef nonnull %i.aa) #15
  br label %ext4_mb_unload_buddy.exit

ext4_mb_unload_buddy.exit:                        ; preds = %bb.j, %bb.i, %folio_put.exit.i, %bb.e
  %i.ae = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %i.b, i32 noundef %i.v, ptr noundef nonnull %1, i32 noundef 3136) #16, !srcloc !24 ; 2 uses
  %.not52 = icmp eq i32 %i.ae, 0
  br i1 %.not52, label %bb.k, label %.thread

bb.k:                                             ; preds = %ext4_mb_unload_buddy.exit, %bb.d
  %.1 = phi i32 [ %.04063, %bb.d ], [ %i.v, %ext4_mb_unload_buddy.exit ]
  %.val3.i.i = load ptr, ptr %i.o, align 32
  %i.af = getelementptr i8, ptr %.val3.i.i, i64 424
  %.val3.val.i.i = load ptr, ptr %i.af, align 8
  %i.ag = and i32 %i.v, 127
  %i.ah = zext nneg i32 %i.ag to i64              ; 3 uses
  %i.ai = getelementptr [64 x i8], ptr %.val3.val.i.i, i64 %i.ah
  %i.aj = call i32 @_raw_spin_trylock(ptr noundef %i.ai) #15
  %.not.i.not.i = icmp eq i32 %i.aj, 0
  %.val.i = load ptr, ptr %i.o, align 32          ; 2 uses
  %i.ak = getelementptr i8, ptr %.val.i, i64 1148 ; 5 uses
  %i.al = load volatile i32, ptr %i.ak, align 4   ; 4 uses
  br i1 %.not.i.not.i, label %ext4_try_lock_group.exit.thread7.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %ext4_lock_group.exit, label %.lr.ph.i.i, !prof !31

.lr.ph.i.i:                                       ; preds = %bb.l, %arch_atomic_try_cmpxchg.exit.i.i
  %.07.i.i = phi i32 [ %i.as, %arch_atomic_try_cmpxchg.exit.i.i ], [ %i.al, %bb.l ] ; 2 uses
  %i.an = add i32 %.07.i.i, -1
  %i.ao = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ak, i32 %i.an, ptr elementtype(i32) %i.ak, i32 %.07.i.i) #14, !srcloc !32 ; 2 uses
  %i.ap = extractvalue { i8, i32 } %i.ao, 0       ; 2 uses
  %i.aq = icmp ult i8 %i.ap, 2
  call void @llvm.assume(i1 %i.aq)
  %i.ar = trunc nuw i8 %i.ap to i1
  br i1 %i.ar, label %ext4_lock_group.exit, label %arch_atomic_try_cmpxchg.exit.i.i, !prof !20

arch_atomic_try_cmpxchg.exit.i.i:                 ; preds = %.lr.ph.i.i
  %i.as = extractvalue { i8, i32 } %i.ao, 1       ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %ext4_lock_group.exit, label %.lr.ph.i.i, !prof !33

ext4_try_lock_group.exit.thread7.i:               ; preds = %bb.k
  %i.au = icmp eq i32 %i.al, 8
  br i1 %i.au, label %raw_atomic_fetch_add_unless.exit.i, label %.lr.ph.i, !prof !31

.lr.ph.i:                                         ; preds = %ext4_try_lock_group.exit.thread7.i, %arch_atomic_try_cmpxchg.exit.i
  %.09.i = phi i32 [ %i.ba, %arch_atomic_try_cmpxchg.exit.i ], [ %i.al, %ext4_try_lock_group.exit.thread7.i ] ; 2 uses
  %i.av = add i32 %.09.i, 1
  %i.aw = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ak, i32 %i.av, ptr elementtype(i32) %i.ak, i32 %.09.i) #14, !srcloc !32 ; 2 uses
  %i.ax = extractvalue { i8, i32 } %i.aw, 0       ; 2 uses
  %i.ay = icmp ult i8 %i.ax, 2
  call void @llvm.assume(i1 %i.ay)
  %i.az = trunc nuw i8 %i.ax to i1
  br i1 %i.az, label %raw_atomic_fetch_add_unless.exit.loopexit.i, label %arch_atomic_try_cmpxchg.exit.i, !prof !20

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %.lr.ph.i
  %i.ba = extractvalue { i8, i32 } %i.aw, 1       ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 8
  br i1 %i.bb, label %raw_atomic_fetch_add_unless.exit.loopexit.i, label %.lr.ph.i, !prof !33

raw_atomic_fetch_add_unless.exit.loopexit.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i, %.lr.ph.i
  %.val4.pre.i = load ptr, ptr %i.o, align 32
  br label %raw_atomic_fetch_add_unless.exit.i

raw_atomic_fetch_add_unless.exit.i:               ; preds = %raw_atomic_fetch_add_unless.exit.loopexit.i, %ext4_try_lock_group.exit.thread7.i
  %.val4.i = phi ptr [ %.val4.pre.i, %raw_atomic_fetch_add_unless.exit.loopexit.i ], [ %.val.i, %ext4_try_lock_group.exit.thread7.i ]
  %i.bc = getelementptr i8, ptr %.val4.i, i64 424
  %.val4.val.i = load ptr, ptr %i.bc, align 8
  %i.bd = getelementptr [64 x i8], ptr %.val4.val.i, i64 %i.ah
  call void @_raw_spin_lock(ptr noundef %i.bd) #15
  br label %ext4_lock_group.exit

ext4_lock_group.exit:                             ; preds = %.lr.ph.i.i, %arch_atomic_try_cmpxchg.exit.i.i, %bb.l, %raw_atomic_fetch_add_unless.exit.i
  %i.be = getelementptr i8, ptr %.064, i64 44
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = getelementptr i8, ptr %.064, i64 48
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = add i32 %i.bf, -1
end_hunk_1
begin_hunk_2_@ext4_mb_release:bb.a
  %i.a = getelementptr i8, ptr %0, i64 864        ; 7 uses
  %.val70 = load ptr, ptr %i.a, align 32
  %i.b = getelementptr i8, ptr %.val70, i64 64
  %.val70.val = load i32, ptr %i.b, align 64      ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !18
  %.val69 = load ptr, ptr %i.a, align 32          ; 26 uses
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i8, ptr %i.c, align 4
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr [8 x i8], ptr @ext4_groupinfo_caches, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %get_groupinfo_cache.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1591: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1591b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1591) #14, !srcloc !26
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 3386, i32 0, i64 16) #14, !srcloc !27
  unreachable

get_groupinfo_cache.exit:                         ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val69, i64 808
  %i.j = tail call zeroext i1 @flush_work(ptr noundef %i.i) #15 ; 0 uses
  %i.k = getelementptr i8, ptr %.val69, i64 792   ; 2 uses
  %i.l = load volatile ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %i.l, %i.k
  br i1 %.not, label %bb.d, label %bb.c, !prof !20

bb.c:                                             ; preds = %get_groupinfo_cache.exit
  tail call void asm sideeffect "1615: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1615b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1615) #14, !srcloc !110
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 3900, i32 2307, i64 16) #14, !srcloc !111
  tail call void asm sideeffect "1616: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1616b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1616) #14, !srcloc !112
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %get_groupinfo_cache.exit
  %i.m = getelementptr i8, ptr %.val69, i64 712
  %i.n = load volatile ptr, ptr %i.m, align 8     ; 3 uses
  %.not64 = icmp eq ptr %i.n, null
  br i1 %.not64, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not84 = icmp eq i32 %.val70.val, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.079 = phi i32 [ %i.ay, %bb.g ], [ 0, %.preheader ] ; 3 uses
  %i.o = tail call i32 @__SCT__cond_resched() #15 ; 0 uses
  %i.p = tail call ptr @ext4_get_group_info(ptr noundef %0, i32 noundef %.079) #15 ; 3 uses
  %.not66 = icmp eq ptr %i.p, null
  br i1 %.not66, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %.val3.i.i = load ptr, ptr %i.a, align 32
  %i.q = getelementptr i8, ptr %.val3.i.i, i64 424
  %.val3.val.i.i = load ptr, ptr %i.q, align 8
  %i.r = and i32 %.079, 127
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = getelementptr [64 x i8], ptr %.val3.val.i.i, i64 %i.s
  %i.u = tail call i32 @_raw_spin_trylock(ptr noundef %i.t) #15
  %.not.i.not.i = icmp eq i32 %i.u, 0
  %.val.i = load ptr, ptr %i.a, align 32          ; 2 uses
  %i.v = getelementptr i8, ptr %.val.i, i64 1148  ; 5 uses
  %i.w = load volatile i32, ptr %i.v, align 4     ; 4 uses
  br i1 %.not.i.not.i, label %ext4_try_lock_group.exit.thread7.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %ext4_lock_group.exit, label %.lr.ph.i.i, !prof !31

.lr.ph.i.i:                                       ; preds = %bb.f, %arch_atomic_try_cmpxchg.exit.i.i
  %.07.i.i = phi i32 [ %i.ad, %arch_atomic_try_cmpxchg.exit.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %i.y = add i32 %.07.i.i, -1
  %i.z = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.v, i32 %i.y, ptr elementtype(i32) %i.v, i32 %.07.i.i) #14, !srcloc !32 ; 2 uses
  %i.aa = extractvalue { i8, i32 } %i.z, 0        ; 2 uses
  %i.ab = icmp ult i8 %i.aa, 2
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = trunc nuw i8 %i.aa to i1
  br i1 %i.ac, label %ext4_lock_group.exit, label %arch_atomic_try_cmpxchg.exit.i.i, !prof !20

arch_atomic_try_cmpxchg.exit.i.i:                 ; preds = %.lr.ph.i.i
  %i.ad = extractvalue { i8, i32 } %i.z, 1        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %ext4_lock_group.exit, label %.lr.ph.i.i, !prof !33

ext4_try_lock_group.exit.thread7.i:               ; preds = %bb.e
  %i.af = icmp eq i32 %i.w, 8
  br i1 %i.af, label %raw_atomic_fetch_add_unless.exit.i, label %.lr.ph.i, !prof !31

.lr.ph.i:                                         ; preds = %ext4_try_lock_group.exit.thread7.i, %arch_atomic_try_cmpxchg.exit.i
  %.09.i = phi i32 [ %i.al, %arch_atomic_try_cmpxchg.exit.i ], [ %i.w, %ext4_try_lock_group.exit.thread7.i ] ; 2 uses
  %i.ag = add i32 %.09.i, 1
  %i.ah = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.v, i32 %i.ag, ptr elementtype(i32) %i.v, i32 %.09.i) #14, !srcloc !32 ; 2 uses
  %i.ai = extractvalue { i8, i32 } %i.ah, 0       ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 2
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = trunc nuw i8 %i.ai to i1
  br i1 %i.ak, label %raw_atomic_fetch_add_unless.exit.loopexit.i, label %arch_atomic_try_cmpxchg.exit.i, !prof !20

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %.lr.ph.i
  %i.al = extractvalue { i8, i32 } %i.ah, 1       ; 2 uses
  %i.am = icmp eq i32 %i.al, 8
  br i1 %i.am, label %raw_atomic_fetch_add_unless.exit.loopexit.i, label %.lr.ph.i, !prof !33

raw_atomic_fetch_add_unless.exit.loopexit.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i, %.lr.ph.i
  %.val4.pre.i = load ptr, ptr %i.a, align 32
  br label %raw_atomic_fetch_add_unless.exit.i

raw_atomic_fetch_add_unless.exit.i:               ; preds = %raw_atomic_fetch_add_unless.exit.loopexit.i, %ext4_try_lock_group.exit.thread7.i
  %.val4.i = phi ptr [ %.val4.pre.i, %raw_atomic_fetch_add_unless.exit.loopexit.i ], [ %.val.i, %ext4_try_lock_group.exit.thread7.i ]
  %i.an = getelementptr i8, ptr %.val4.i, i64 424
  %.val4.val.i = load ptr, ptr %i.an, align 8
  %i.ao = getelementptr [64 x i8], ptr %.val4.val.i, i64 %i.s
  tail call void @_raw_spin_lock(ptr noundef %i.ao) #15
  br label %ext4_lock_group.exit

ext4_lock_group.exit:                             ; preds = %.lr.ph.i.i, %arch_atomic_try_cmpxchg.exit.i.i, %bb.f, %raw_atomic_fetch_add_unless.exit.i
  %i.ap = getelementptr i8, ptr %i.p, i64 40      ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not14.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not14.i, label %ext4_mb_cleanup_pa.exit, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %ext4_lock_group.exit, %.lr.ph.i72
  %.016.i = phi ptr [ %.013.i, %.lr.ph.i72 ], [ %i.aq, %ext4_lock_group.exit ] ; 4 uses
  %.013.i = load ptr, ptr %.016.i, align 8        ; 4 uses
  %i.ar = getelementptr i8, ptr %.016.i, i64 -24
  %i.as = getelementptr i8, ptr %.016.i, i64 8    ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr i8, ptr %.013.i, i64 8
  store ptr %i.at, ptr %i.au, align 8
  store volatile ptr %.013.i, ptr %i.at, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.016.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.as, align 8
  %i.av = load ptr, ptr @ext4_pspace_cachep, align 8
  tail call void @kmem_cache_free(ptr noundef %i.av, ptr noundef %i.ar) #15
  %.not.i73 = icmp eq ptr %.013.i, %i.ap
  br i1 %.not.i73, label %ext4_mb_cleanup_pa.exit, label %.lr.ph.i72, !llvm.loop !107

ext4_mb_cleanup_pa.exit:                          ; preds = %.lr.ph.i72, %ext4_lock_group.exit
  %.val71 = load ptr, ptr %i.a, align 32
  %i.aw = getelementptr i8, ptr %.val71, i64 424
  %.val71.val = load ptr, ptr %i.aw, align 8
  %i.ax = getelementptr [64 x i8], ptr %.val71.val, i64 %i.s
  tail call void @_raw_spin_unlock(ptr noundef %i.ax) #15
  tail call void @kmem_cache_free(ptr noundef nonnull %i.h, ptr noundef nonnull %i.p) #15
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %ext4_mb_cleanup_pa.exit
  %i.ay = add nuw i32 %.079, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, %.val70.val
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %i.az = zext i32 %.val70.val to i64
  %.val68 = load ptr, ptr %i.a, align 32          ; 2 uses
  %i.ba = getelementptr i8, ptr %.val68, i64 56
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = add nsw i64 %i.az, -1
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = getelementptr i8, ptr %.val68, i64 176
  %i.bf = load i32, ptr %i.be, align 16
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = lshr i64 %i.bd, %i.bg                   ; 2 uses
  %i.bi = and i64 %i.bh, 4294967295
  %.not85 = icmp eq i64 %i.bi, 0
  br i1 %.not85, label %._crit_edge83, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = and i64 %i.bh, 4294967295
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %.lr.ph82
  %indvars.iv = phi i64 [ 0, %.lr.ph82.preheader ], [ %indvars.iv.next, %.lr.ph82 ] ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void @kfree(ptr noundef %i.bk) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond87.not, label %._crit_edge83, label %.lr.ph82, !llvm.loop !109

._crit_edge83:                                    ; preds = %.lr.ph82, %._crit_edge
  tail call void @kvfree(ptr noundef nonnull %i.n) #15
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge83, %bb.d
  %i.bl = getelementptr i8, ptr %.val69, i64 848  ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 16
  %.not.i74 = icmp eq ptr %i.bm, null
  br i1 %.not.i74, label %ext4_mb_avg_fragment_size_destroy.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.bn = getelementptr i8, ptr %.val69, i64 560
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.bl, align 16
  tail call void @kfree(ptr noundef %i.bo) #15
  store ptr null, ptr %i.bl, align 16
  br label %ext4_mb_avg_fragment_size_destroy.exit

bb.j:                                             ; preds = %bb.j, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.bp = load ptr, ptr %i.bl, align 16
  %i.bq = getelementptr [16 x i8], ptr %i.bp, i64 %indvars.iv.i
  tail call void @xa_destroy(ptr noundef %i.bq) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.br = load ptr, ptr %i.bn, align 16
  %i.bs = getelementptr i8, ptr %i.br, i64 20
  %i.bt = load i8, ptr %i.bs, align 4
  %i.bu = zext i8 %i.bt to i64
  %1 = add nuw nsw i64 %i.bu, 2
  %2 = icmp samesign ult i64 %indvars.iv.next.i, %1
  br i1 %2, label %bb.j, label %bb.i, !llvm.loop !1

ext4_mb_avg_fragment_size_destroy.exit:           ; preds = %bb.h, %bb.i
  %i.bv = getelementptr i8, ptr %.val69, i64 856  ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %.not.i75 = icmp eq ptr %i.bw, null
  br i1 %.not.i75, label %ext4_mb_largest_free_orders_destroy.exit, label %.preheader.i76

.preheader.i76:                                   ; preds = %ext4_mb_avg_fragment_size_destroy.exit
  %i.bx = getelementptr i8, ptr %.val69, i64 560
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %i.bv, align 8
  tail call void @kfree(ptr noundef %i.by) #15
  store ptr null, ptr %i.bv, align 8
  br label %ext4_mb_largest_free_orders_destroy.exit

bb.l:                                             ; preds = %bb.l, %.preheader.i76
  %indvars.iv.i77 = phi i64 [ 0, %.preheader.i76 ], [ %indvars.iv.next.i78, %bb.l ] ; 2 uses
  %i.bz = load ptr, ptr %i.bv, align 8
  %i.ca = getelementptr [16 x i8], ptr %i.bz, i64 %indvars.iv.i77
  tail call void @xa_destroy(ptr noundef %i.ca) #15
  %indvars.iv.next.i78 = add nuw nsw i64 %indvars.iv.i77, 1 ; 2 uses
  %i.cb = load ptr, ptr %i.bx, align 16
  %i.cc = getelementptr i8, ptr %i.cb, i64 20
  %i.cd = load i8, ptr %i.cc, align 4
  %i.ce = zext i8 %i.cd to i64
  %3 = add nuw nsw i64 %i.ce, 2
  %4 = icmp samesign ult i64 %indvars.iv.next.i78, %3
  br i1 %4, label %bb.l, label %bb.k, !llvm.loop !2

ext4_mb_largest_free_orders_destroy.exit:         ; preds = %ext4_mb_avg_fragment_size_destroy.exit, %bb.k
  %i.cf = getelementptr i8, ptr %.val69, i64 736
  %i.cg = load ptr, ptr %i.cf, align 32
  tail call void @kfree(ptr noundef %i.cg) #15
  %i.ch = getelementptr i8, ptr %.val69, i64 744
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void @kfree(ptr noundef %i.ci) #15
  %i.cj = getelementptr i8, ptr %.val69, i64 720
  %i.ck = load ptr, ptr %i.cj, align 16
  tail call void @iput(ptr noundef %i.ck) #15
  %i.cl = getelementptr i8, ptr %.val69, i64 888
  %i.cm = load i32, ptr %i.cl, align 8
  %.not65 = icmp eq i32 %i.cm, 0
  br i1 %.not65, label %bb.n, label %bb.m

bb.m:                                             ; preds = %ext4_mb_largest_free_orders_destroy.exit
  %i.cn = getelementptr i8, ptr %.val69, i64 948
  %i.co = load volatile i32, ptr %i.cn, align 4
  %i.cp = getelementptr i8, ptr %.val69, i64 940
  %i.cq = load volatile i32, ptr %i.cp, align 4
  %i.cr = getelementptr i8, ptr %.val69, i64 944
  %i.cs = load volatile i32, ptr %i.cr, align 16
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %i.co, i32 noundef %i.cq, i32 noundef %i.cs) #15
  %i.ct = getelementptr i8, ptr %.val69, i64 952
  %i.cu = load volatile i32, ptr %i.ct, align 8
  %i.cv = getelementptr i8, ptr %.val69, i64 976
  %i.cw = load volatile i32, ptr %i.cv, align 16
  %i.cx = getelementptr i8, ptr %.val69, i64 980
  %i.cy = load volatile i32, ptr %i.cx, align 4
  %i.cz = getelementptr i8, ptr %.val69, i64 996
  %i.da = load volatile i32, ptr %i.cz, align 4
  %i.db = getelementptr i8, ptr %.val69, i64 992
  %i.dc = load volatile i32, ptr %i.db, align 32
  %i.dd = getelementptr i8, ptr %.val69, i64 1136
  %i.de = load volatile i32, ptr %i.dd, align 16
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.37, i32 noundef %i.cu, i32 noundef %i.cw, i32 noundef %i.cy, i32 noundef %i.da, i32 noundef %i.dc, i32 noundef %i.de) #15
  %i.df = getelementptr i8, ptr %.val69, i64 1120
  %i.dg = load volatile i32, ptr %i.df, align 32
  %i.dh = getelementptr i8, ptr %.val69, i64 1128
  %i.di = load volatile i64, ptr %i.dh, align 8
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.38, i32 noundef %i.dg, i64 noundef %i.di) #15
  %i.dj = getelementptr i8, ptr %.val69, i64 1140
  %i.dk = load volatile i32, ptr %i.dj, align 4
  %i.dl = getelementptr i8, ptr %.val69, i64 1144
  %i.dm = load volatile i32, ptr %i.dl, align 8
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.39, i32 noundef %i.dk, i32 noundef %i.dm) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %ext4_mb_largest_free_orders_destroy.exit
  %i.dn = getelementptr i8, ptr %.val69, i64 1152
  %i.do = load ptr, ptr %i.dn, align 64
  tail call void @free_percpu(ptr noundef %i.do) #15
  %i.dp = getelementptr i8, ptr %.val69, i64 928
  %i.dq = load ptr, ptr %i.dp, align 32
  tail call void @kfree(ptr noundef %i.dq) #15
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ext4_process_freed_data(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.ext4_buddy, align 8         ; 9 uses
  %3 = alloca %struct.list_head, align 8          ; 14 uses
  %i.a = getelementptr i8, ptr %0, i64 864        ; 7 uses
  %.val33 = load ptr, ptr %i.a, align 32          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr i8, ptr %.val33, i64 760
  %i.d = and i32 %1, 1
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr [16 x i8], ptr %i.c, i64 %i.e ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  store ptr %i.g, ptr %3, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 8
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  store ptr %i.j, ptr %i.b, align 8
  store ptr %3, ptr %i.j, align 8
  store volatile ptr %i.f, ptr %i.f, align 8
  store volatile ptr %i.f, ptr %i.i, align 8
  %.037 = load ptr, ptr %3, align 8               ; 2 uses
  %.not38 = icmp eq ptr %.037, %3
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %ext4_free_data_in_buddy.exit
  %.039 = phi ptr [ %.037, %.lr.ph ], [ %.0, %ext4_free_data_in_buddy.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !annotation !19
  %i.l = getelementptr i8, ptr %.039, i64 40      ; 3 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = call fastcc i32 @ext4_mb_load_buddy_gfp(ptr noundef %0, i32 noundef %i.m, ptr noundef nonnull %2, i32 noundef 3136) #16, !srcloc !24
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  call void asm sideeffect "1619: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1619b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1619) #14, !srcloc !115
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 3985, i32 0, i64 16) #14, !srcloc !116
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %.039, i64 48      ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %.val.i = load ptr, ptr %i.a, align 32
  %i.q = getelementptr i8, ptr %.val.i, i64 756   ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.q, i32 %i.p, ptr elementtype(i32) %i.q) #14, !srcloc !117
  %i.r = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.s = load i32, ptr %i.l, align 8
  %.val3.i.i.i = load ptr, ptr %i.a, align 32
  %i.t = getelementptr i8, ptr %.val3.i.i.i, i64 424
  %.val3.val.i.i.i = load ptr, ptr %i.t, align 8
  %i.u = and i32 %i.s, 127
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = getelementptr [64 x i8], ptr %.val3.val.i.i.i, i64 %i.v
  %i.x = call i32 @_raw_spin_trylock(ptr noundef %i.w) #15
  %.not.i.not.i.i = icmp eq i32 %i.x, 0
  %.val.i.i = load ptr, ptr %i.a, align 32        ; 2 uses
  %i.y = getelementptr i8, ptr %.val.i.i, i64 1148 ; 5 uses
  %i.z = load volatile i32, ptr %i.y, align 4     ; 4 uses
  br i1 %.not.i.not.i.i, label %ext4_try_lock_group.exit.thread7.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %ext4_lock_group.exit.i, label %.lr.ph.i.i.i, !prof !31

.lr.ph.i.i.i:                                     ; preds = %bb.e, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.07.i.i.i = phi i32 [ %i.ag, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.z, %bb.e ] ; 2 uses
  %i.ab = add i32 %.07.i.i.i, -1
  %i.ac = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.y, i32 %i.ab, ptr elementtype(i32) %i.y, i32 %.07.i.i.i) #14, !srcloc !32 ; 2 uses
  %i.ad = extractvalue { i8, i32 } %i.ac, 0       ; 2 uses
  %i.ae = icmp ult i8 %i.ad, 2
  call void @llvm.assume(i1 %i.ae)
  %i.af = trunc nuw i8 %i.ad to i1
  br i1 %i.af, label %ext4_lock_group.exit.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !20

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.lr.ph.i.i.i
  %i.ag = extractvalue { i8, i32 } %i.ac, 1       ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %ext4_lock_group.exit.i, label %.lr.ph.i.i.i, !prof !33

ext4_try_lock_group.exit.thread7.i.i:             ; preds = %bb.d
  %i.ai = icmp eq i32 %i.z, 8
  br i1 %i.ai, label %raw_atomic_fetch_add_unless.exit.i.i, label %.lr.ph.i.i, !prof !31

.lr.ph.i.i:                                       ; preds = %ext4_try_lock_group.exit.thread7.i.i, %arch_atomic_try_cmpxchg.exit.i.i
  %.09.i.i = phi i32 [ %i.ao, %arch_atomic_try_cmpxchg.exit.i.i ], [ %i.z, %ext4_try_lock_group.exit.thread7.i.i ] ; 2 uses
  %i.aj = add i32 %.09.i.i, 1
  %i.ak = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.y, i32 %i.aj, ptr elementtype(i32) %i.y, i32 %.09.i.i) #14, !srcloc !32 ; 2 uses
  %i.al = extractvalue { i8, i32 } %i.ak, 0       ; 2 uses
  %i.am = icmp ult i8 %i.al, 2
  call void @llvm.assume(i1 %i.am)
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %raw_atomic_fetch_add_unless.exit.loopexit.i.i, label %arch_atomic_try_cmpxchg.exit.i.i, !prof !20

arch_atomic_try_cmpxchg.exit.i.i:                 ; preds = %.lr.ph.i.i
  %i.ao = extractvalue { i8, i32 } %i.ak, 1       ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 8
  br i1 %i.ap, label %raw_atomic_fetch_add_unless.exit.loopexit.i.i, label %.lr.ph.i.i, !prof !33

raw_atomic_fetch_add_unless.exit.loopexit.i.i:    ; preds = %arch_atomic_try_cmpxchg.exit.i.i, %.lr.ph.i.i
  %.val4.pre.i.i = load ptr, ptr %i.a, align 32
  br label %raw_atomic_fetch_add_unless.exit.i.i

raw_atomic_fetch_add_unless.exit.i.i:             ; preds = %raw_atomic_fetch_add_unless.exit.loopexit.i.i, %ext4_try_lock_group.exit.thread7.i.i
  %.val4.i.i = phi ptr [ %.val4.pre.i.i, %raw_atomic_fetch_add_unless.exit.loopexit.i.i ], [ %.val.i.i, %ext4_try_lock_group.exit.thread7.i.i ]
  %i.aq = getelementptr i8, ptr %.val4.i.i, i64 424
  %.val4.val.i.i = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr [64 x i8], ptr %.val4.val.i.i, i64 %i.v
  call void @_raw_spin_lock(ptr noundef %i.ar) #15
  br label %ext4_lock_group.exit.i

ext4_lock_group.exit.i:                           ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %.lr.ph.i.i.i, %raw_atomic_fetch_add_unless.exit.i.i, %bb.e
  %i.as = getelementptr i8, ptr %.039, i64 16
  %i.at = getelementptr i8, ptr %i.r, i64 8       ; 2 uses
  call void @rb_erase(ptr noundef %i.as, ptr noundef %i.at) #15
  %i.au = getelementptr i8, ptr %.039, i64 44
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = load i32, ptr %i.o, align 8
  call fastcc void @mb_free_blocks(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.av, i32 noundef %i.aw) #16, !srcloc !118
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.r, i32 -3, ptr elementtype(i8) %i.r) #14, !srcloc !34
  %i.ax = load ptr, ptr %i.at, align 8
  %.not16.i = icmp eq ptr %i.ax, null
end_hunk_2
begin_hunk_3_@ext4_mb_regular_allocator:bb.a

bb.l:                                             ; preds = %.backedge, %bb.k
  %i.bl = load i8, ptr %i.ay, align 1
  %i.bm = icmp ult i8 %i.bl, 5
  br i1 %i.bm, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.a, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 864
  %.val.i = load ptr, ptr %i.bo, align 32         ; 2 uses
  %i.bp = getelementptr i8, ptr %.val.i, i64 64
  %.val3.val.i.i = load i32, ptr %i.bp, align 64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !18
  %i.bq = load ptr, ptr %0, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 -152
  %i.bs = load volatile i64, ptr %i.br, align 8
  %i.bt = and i64 %i.bs, 524288
  %.not.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i, label %bb.n, label %ext4_get_allocation_groups_count.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.a, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 864
  %.val.i.i = load ptr, ptr %i.bv, align 32
  %i.bw = getelementptr i8, ptr %.val.i.i, i64 68
  %i.bx = load i32, ptr %i.bw, align 4
  br label %ext4_get_allocation_groups_count.exit.i

ext4_get_allocation_groups_count.exit.i:          ; preds = %bb.n, %bb.m
  %.0.i.i = phi i32 [ %.val3.val.i.i, %bb.m ], [ %i.bx, %bb.n ] ; 6 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !60
  %i.by = load i32, ptr %i.bc, align 8            ; 2 uses
  %.not.i = icmp ult i32 %i.by, %.0.i.i
  %spec.store.select.i = select i1 %.not.i, i32 %i.by, i32 0 ; 4 uses
  store i32 %spec.store.select.i, ptr %i.bd, align 4
  store i32 0, ptr %i.be, align 4
  %i.bz = load ptr, ptr %i.a, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 864
  %.val.i30.i = load ptr, ptr %i.ca, align 32     ; 5 uses
  %i.cb = getelementptr i8, ptr %.val.i30.i, i64 124
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = and i32 %i.cc, 128
  %.not.i31.i = icmp eq i32 %i.cd, 0
  %.pre128.i = load i8, ptr %i.ay, align 1        ; 4 uses
  %i.ce = icmp ugt i8 %.pre128.i, 2
  %or.cond.i = select i1 %.not.i31.i, i1 true, i1 %i.ce, !prof !214
  br i1 %or.cond.i, label %should_optimize_scan.exit.thread.i, label %bb.r, !prof !214

should_optimize_scan.exit.thread.i:               ; preds = %ext4_get_allocation_groups_count.exit.i
  %.not33.i.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %should_optimize_scan.exit.thread.i, %bb.p
  %.02131.i.i = phi i32 [ %i.ci, %bb.p ], [ 0, %should_optimize_scan.exit.thread.i ]
  %.02730.i.i = phi i32 [ %spec.select.i.i.i, %bb.p ], [ %spec.store.select.i, %should_optimize_scan.exit.thread.i ] ; 2 uses
  %i.cf = call fastcc i32 @ext4_mb_scan_group(ptr noundef nonnull %0, i32 noundef %.02730.i.i) #16, !srcloc !215 ; 2 uses
  %.not23.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not23.i.i, label %bb.o, label %ext4_mb_scan_groups.exit

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.cg = load i8, ptr %i.d, align 2
  %.not24.i.i = icmp eq i8 %i.cg, 1
  br i1 %.not24.i.i, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ch = call i32 @__SCT__cond_resched() #15     ; 0 uses
  %i.ci = add nuw i32 %.02131.i.i, 1              ; 2 uses
  %i.cj = add i32 %.02730.i.i, 1                  ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.cj, %.0.i.i
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.cj, i32 0
  %exitcond.not.i.i = icmp eq i32 %i.ci, %.0.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !205

._crit_edge.i.loopexit.i:                         ; preds = %bb.p
  %.pre129.i = load i8, ptr %i.ay, align 1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %should_optimize_scan.exit.thread.i
  %i.ck = phi i8 [ %.pre129.i, %._crit_edge.i.loopexit.i ], [ %.pre128.i, %should_optimize_scan.exit.thread.i ]
  %i.cl = add i8 %i.ck, 1
  store i8 %i.cl, ptr %i.ay, align 1
  %i.cm = getelementptr i8, ptr %.val.i30.i, i64 888
  %i.cn = load i32, ptr %i.cm, align 8
  %.not.i35.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i35.not.i, label %bb.az, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.co = getelementptr i8, ptr %.val.i30.i, i64 1080
  %i.cp = zext i8 %.pre128.i to i64
  %i.cq = getelementptr [8 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cq, ptr elementtype(i64) %i.cq) #14, !srcloc !61
  br label %bb.az

bb.r:                                             ; preds = %ext4_get_allocation_groups_count.exit.i
  %i.cr = getelementptr i8, ptr %.val.i, i64 872
  %i.cs = load i32, ptr %i.cr, align 8            ; 3 uses
  %.not27.i = icmp eq i32 %i.cs, 0
  br i1 %.not27.i, label %.thread.i, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %bb.r, %bb.t
  %.02131.i39.i = phi i32 [ %i.cw, %bb.t ], [ 0, %bb.r ]
  %.02730.i40.i = phi i32 [ %spec.select.i.i45.i, %bb.t ], [ %spec.store.select.i, %bb.r ] ; 2 uses
  %i.ct = call fastcc i32 @ext4_mb_scan_group(ptr noundef nonnull %0, i32 noundef %.02730.i40.i) #16, !srcloc !215 ; 2 uses
  %.not23.i41.i = icmp eq i32 %i.ct, 0
  br i1 %.not23.i41.i, label %bb.s, label %ext4_mb_scan_groups.exit

bb.s:                                             ; preds = %.lr.ph.i38.i
  %i.cu = load i8, ptr %i.d, align 2
  %.not24.i43.i = icmp eq i8 %i.cu, 1
  br i1 %.not24.i43.i, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.cv = call i32 @__SCT__cond_resched() #15     ; 0 uses
  %i.cw = add nuw i32 %.02131.i39.i, 1            ; 2 uses
  %i.cx = add i32 %.02730.i40.i, 1                ; 2 uses
  %.not.i.i44.i = icmp ult i32 %i.cx, %.0.i.i
  %spec.select.i.i45.i = select i1 %.not.i.i44.i, i32 %i.cx, i32 0 ; 4 uses
  %exitcond.not.i46.i = icmp eq i32 %i.cw, %i.cs
  br i1 %exitcond.not.i46.i, label %._crit_edge.i47.i, label %.lr.ph.i38.i, !llvm.loop !205

._crit_edge.i47.i:                                ; preds = %bb.t
  %i.cy = icmp eq i32 %i.cs, %.0.i.i
  br i1 %i.cy, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %._crit_edge.i47.i
  %i.cz = load i8, ptr %i.ay, align 1
  %i.da = add i8 %i.cz, 1
  store i8 %i.da, ptr %i.ay, align 1
  %i.db = getelementptr i8, ptr %.val.i30.i, i64 888
  %i.dc = load i32, ptr %i.db, align 8
  %.not.i49.not.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i49.not.i, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr i8, ptr %.val.i30.i, i64 1080
  %i.de = zext nneg i8 %.pre128.i to i64
  %i.df = getelementptr [8 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.df, ptr elementtype(i64) %i.df) #14, !srcloc !61
  br label %.thread.i

.thread.i:                                        ; preds = %bb.v, %bb.u, %._crit_edge.i47.i, %bb.r
  %.095.ph.i.ph = phi i32 [ %spec.select.i.i45.i, %bb.v ], [ %spec.select.i.i45.i, %bb.u ], [ %spec.select.i.i45.i, %._crit_edge.i47.i ], [ %spec.store.select.i, %bb.r ] ; 3 uses
  %.pr = load i8, ptr %i.d, align 2
  %.not29.i = icmp eq i8 %.pr, 1
  br i1 %.not29.i, label %bb.w, label %.thread

bb.w:                                             ; preds = %.thread.i
  %i.dg = load i8, ptr %i.ay, align 1
  switch i8 %i.dg, label %bb.ay [
    i8 0, label %bb.x
    i8 1, label %bb.ae
    i8 2, label %fls.exit81.i.i
  ]

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %i.a, align 8
  %i.di = getelementptr i8, ptr %i.dh, i64 864
  %.val.i51.i = load ptr, ptr %i.di, align 32     ; 3 uses
  %i.dj = getelementptr i8, ptr %.val.i51.i, i64 64
  %.val3.val.i.i.i = load i32, ptr %i.dj, align 64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !18
  %i.dk = load ptr, ptr %0, align 8
  %i.dl = getelementptr i8, ptr %i.dk, i64 -152
  %i.dm = load volatile i64, ptr %i.dl, align 8
  %i.dn = and i64 %i.dm, 524288
  %.not.i.i52.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i52.i, label %bb.y, label %ext4_get_allocation_groups_count.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.do = load ptr, ptr %i.a, align 8
  %i.dp = getelementptr i8, ptr %i.do, i64 864
  %.val.i.i.i = load ptr, ptr %i.dp, align 32
  %i.dq = getelementptr i8, ptr %.val.i.i.i, i64 68
  %i.dr = load i32, ptr %i.dq, align 4
  br label %ext4_get_allocation_groups_count.exit.i.i

ext4_get_allocation_groups_count.exit.i.i:        ; preds = %bb.y, %bb.x
  %.0.i.i.i = phi i32 [ %.val3.val.i.i.i, %bb.x ], [ %i.dr, %bb.y ]
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !60
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i54.i, %ext4_get_allocation_groups_count.exit.i.i
  %i.ds = phi ptr [ %.pre.i.i, %ext4_get_allocation_groups_count.exit.i.i ], [ %i.eo, %._crit_edge.i54.i ] ; 3 uses
  %.021.i.i = phi i32 [ %.095.ph.i.ph, %ext4_get_allocation_groups_count.exit.i.i ], [ 0, %._crit_edge.i54.i ] ; 3 uses
  %.0.i53.i = phi i32 [ %.0.i.i.i, %ext4_get_allocation_groups_count.exit.i.i ], [ %.021.i.i, %._crit_edge.i54.i ]
  %i.dt = load i8, ptr %i.q, align 4              ; 2 uses
  %i.du = zext i8 %i.dt to i32
  %i.dv = getelementptr i8, ptr %i.ds, i64 20
  %i.dw = load i8, ptr %i.dv, align 4
  %i.dx = zext i8 %i.dw to i32
  %i.dy = add nuw nsw i32 %i.dx, 2
  %i.dz = icmp samesign ugt i32 %i.dy, %i.du
  br i1 %i.dz, label %.lr.ph.preheader.i.i, label %._crit_edge.i54.i

.lr.ph.preheader.i.i:                             ; preds = %bb.z
  %i.ea = zext i8 %i.dt to i64
  br label %.lr.ph.i56.i

bb.aa:                                            ; preds = %ext4_mb_scan_groups_largest_free_order_range.exit.thread.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.eb = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 20
  %i.ed = load i8, ptr %i.ec, align 4
  %i.ee = zext i8 %i.ed to i64
  %2 = add nuw nsw i64 %i.ee, 2
  %3 = icmp samesign ult i64 %indvars.iv.next.i.i, %2
  br i1 %3, label %.lr.ph.i56.i, label %._crit_edge.i54.i, !llvm.loop !206

.lr.ph.i56.i:                                     ; preds = %bb.aa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ea, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.aa ] ; 2 uses
  %i.ef = phi ptr [ %i.ds, %.lr.ph.preheader.i.i ], [ %i.eb, %bb.aa ]
  %i.eg = getelementptr i8, ptr %i.ef, i64 864
  %.val.i29.i.i = load ptr, ptr %i.eg, align 32
  %i.eh = getelementptr i8, ptr %.val.i29.i.i, i64 856
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = getelementptr [16 x i8], ptr %i.ei, i64 %indvars.iv.i.i ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %.val7.i.i.i = load ptr, ptr %i.ek, align 8
  %i.el = icmp eq ptr %.val7.i.i.i, null
  br i1 %i.el, label %ext4_mb_scan_groups_largest_free_order_range.exit.thread.i.i, label %ext4_mb_scan_groups_largest_free_order_range.exit.i.i

ext4_mb_scan_groups_largest_free_order_range.exit.i.i: ; preds = %.lr.ph.i56.i
  %i.em = call fastcc i32 @ext4_mb_scan_groups_xa_range(ptr noundef nonnull %0, ptr noundef %i.ej, i32 noundef %.021.i.i, i32 noundef %.0.i53.i) #16, !srcloc !216 ; 2 uses
  %.not27.i.i = icmp eq i32 %i.em, 0
  br i1 %.not27.i.i, label %ext4_mb_scan_groups_largest_free_order_range.exit.thread.i.i, label %ext4_mb_scan_groups.exit

ext4_mb_scan_groups_largest_free_order_range.exit.thread.i.i: ; preds = %ext4_mb_scan_groups_largest_free_order_range.exit.i.i, %.lr.ph.i56.i
  %i.en = load i8, ptr %i.d, align 2
  %.not28.i.i = icmp eq i8 %i.en, 1
  br i1 %.not28.i.i, label %bb.aa, label %.thread

._crit_edge.i54.i:                                ; preds = %bb.aa, %bb.z
  %i.eo = phi ptr [ %i.ds, %bb.z ], [ %i.eb, %bb.aa ]
  %.not.i55.i = icmp eq i32 %.021.i.i, 0
  br i1 %.not.i55.i, label %bb.ab, label %bb.z

bb.ab:                                            ; preds = %._crit_edge.i54.i
  %i.ep = getelementptr i8, ptr %.val.i51.i, i64 888
  %i.eq = load i32, ptr %i.ep, align 8
  %.not26.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not26.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr i8, ptr %.val.i51.i, i64 1080
  %i.es = load i8, ptr %i.ay, align 1
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr [8 x i8], ptr %i.er, i64 %i.et ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.eu, ptr elementtype(i64) %i.eu) #14, !srcloc !61
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store i8 1, ptr %i.ay, align 1
  br label %bb.az

bb.ae:                                            ; preds = %bb.w
  %i.ev = load ptr, ptr %i.a, align 8
  %i.ew = getelementptr i8, ptr %i.ev, i64 864
  %.val.i57.i = load ptr, ptr %i.ew, align 32     ; 3 uses
  %i.ex = getelementptr i8, ptr %.val.i57.i, i64 64
  %.val3.val.i.i58.i = load i32, ptr %i.ex, align 64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !18
  %i.ey = load ptr, ptr %0, align 8
  %i.ez = getelementptr i8, ptr %i.ey, i64 -152
  %i.fa = load volatile i64, ptr %i.ez, align 8
  %i.fb = and i64 %i.fa, 524288
  %.not.i.i59.i = icmp eq i64 %i.fb, 0
  br i1 %.not.i.i59.i, label %bb.af, label %ext4_get_allocation_groups_count.exit.i60.i

bb.af:                                            ; preds = %bb.ae
  %i.fc = load ptr, ptr %i.a, align 8
  %i.fd = getelementptr i8, ptr %i.fc, i64 864
  %.val.i.i74.i = load ptr, ptr %i.fd, align 32
  %i.fe = getelementptr i8, ptr %.val.i.i74.i, i64 68
  %i.ff = load i32, ptr %i.fe, align 4
  br label %ext4_get_allocation_groups_count.exit.i60.i

ext4_get_allocation_groups_count.exit.i60.i:      ; preds = %bb.af, %bb.ae
  %.0.i.i61.i = phi i32 [ %.val3.val.i.i58.i, %bb.ae ], [ %i.ff, %bb.af ]
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !60
  %.pre.i62.i = load ptr, ptr %i.a, align 8
  br label %fls.exit.i.i.i

fls.exit.i.i.i:                                   ; preds = %ext4_get_allocation_groups_count.exit.i60.i, %._crit_edge.i66.i
  %i.fg = phi ptr [ %.pre.i62.i, %ext4_get_allocation_groups_count.exit.i60.i ], [ %i.gn, %._crit_edge.i66.i ] ; 3 uses
  %.024.i63.i = phi i32 [ %.095.ph.i.ph, %ext4_get_allocation_groups_count.exit.i60.i ], [ 0, %._crit_edge.i66.i ] ; 3 uses
  %.0.i64.i = phi i32 [ %.0.i.i61.i, %ext4_get_allocation_groups_count.exit.i60.i ], [ %.024.i63.i, %._crit_edge.i66.i ]
  %i.fh = load i32, ptr %i.m, align 4
  %i.fi = call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fh, i32 -1) #17, !srcloc !58 ; 3 uses
  %i.fj = add i32 %i.fi, -1                       ; 2 uses
  %i.fk = icmp slt i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph.preheader.i69.i, label %bb.ag

bb.ag:                                            ; preds = %fls.exit.i.i.i
  %i.fl = getelementptr i8, ptr %i.fg, i64 20     ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 4
  %i.fn = zext i8 %i.fm to i32                    ; 2 uses
  %i.fo = add nuw nsw i32 %i.fn, 3
  %i.fp = icmp eq i32 %i.fi, %i.fo
  %i.fq = add i32 %i.fi, -2
  %spec.select.i.i65.i = select i1 %i.fp, i32 %i.fq, i32 %i.fj ; 2 uses
  %i.fr = add nuw nsw i32 %i.fn, 2                ; 2 uses
  %i.fs = icmp sgt i32 %spec.select.i.i65.i, %i.fr
  br i1 %i.fs, label %bb.ah, label %mb_avg_fragment_size_order.exit.i.i, !prof !21

bb.ah:                                            ; preds = %bb.ag
  call void asm sideeffect "1513: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1513b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1513) #14, !srcloc !62
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 856, i32 2307, i64 16) #14, !srcloc !63
  call void asm sideeffect "1514: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1514b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1514) #14, !srcloc !64
  %i.ft = load i8, ptr %i.fl, align 4
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add nuw nsw i32 %i.fu, 1
  %.pre41.i.i = load ptr, ptr %i.a, align 8       ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre41.i.i, i64 20
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4
  %.pre130.i = zext i8 %.pre.i to i32
  %.pre131.i = add nuw nsw i32 %.pre130.i, 2
  br label %mb_avg_fragment_size_order.exit.i.i

mb_avg_fragment_size_order.exit.i.i:              ; preds = %bb.ah, %bb.ag
  %.pre-phi132.i = phi i32 [ %.pre131.i, %bb.ah ], [ %i.fr, %bb.ag ]
  %i.fw = phi ptr [ %.pre41.i.i, %bb.ah ], [ %i.fg, %bb.ag ] ; 2 uses
  %.0.i33.i.i = phi i32 [ %i.fv, %bb.ah ], [ %spec.select.i.i65.i, %bb.ag ] ; 2 uses
  %i.fx = icmp samesign ult i32 %.0.i33.i.i, %.pre-phi132.i
  br i1 %i.fx, label %.lr.ph.preheader.i69.i, label %._crit_edge.i66.i

.lr.ph.preheader.i69.i:                           ; preds = %mb_avg_fragment_size_order.exit.i.i, %fls.exit.i.i.i
  %.0.i3345.i.i = phi i32 [ %.0.i33.i.i, %mb_avg_fragment_size_order.exit.i.i ], [ 0, %fls.exit.i.i.i ]
  %i.fy = phi ptr [ %i.fw, %mb_avg_fragment_size_order.exit.i.i ], [ %i.fg, %fls.exit.i.i.i ]
  %i.fz = zext nneg i32 %.0.i3345.i.i to i64
  br label %.lr.ph.i70.i

bb.ai:                                            ; preds = %ext4_mb_scan_groups_avg_frag_order_range.exit.thread.i.i
  %indvars.iv.next.i73.i = add nuw nsw i64 %indvars.iv.i71.i, 1 ; 2 uses
  %i.ga = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 20
  %i.gc = load i8, ptr %i.gb, align 4
  %i.gd = zext i8 %i.gc to i64
  %4 = add nuw nsw i64 %i.gd, 2
  %5 = icmp samesign ult i64 %indvars.iv.next.i73.i, %4
  br i1 %5, label %.lr.ph.i70.i, label %._crit_edge.i66.i, !llvm.loop !207

.lr.ph.i70.i:                                     ; preds = %bb.ai, %.lr.ph.preheader.i69.i
  %indvars.iv.i71.i = phi i64 [ %i.fz, %.lr.ph.preheader.i69.i ], [ %indvars.iv.next.i73.i, %bb.ai ] ; 2 uses
  %i.ge = phi ptr [ %i.fy, %.lr.ph.preheader.i69.i ], [ %i.ga, %bb.ai ]
  %i.gf = getelementptr i8, ptr %i.ge, i64 864
  %.val.i34.i.i = load ptr, ptr %i.gf, align 32
  %i.gg = getelementptr i8, ptr %.val.i34.i.i, i64 848
  %i.gh = load ptr, ptr %i.gg, align 16
  %i.gi = getelementptr [16 x i8], ptr %i.gh, i64 %indvars.iv.i71.i ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 8
  %.val7.i.i72.i = load ptr, ptr %i.gj, align 8
  %i.gk = icmp eq ptr %.val7.i.i72.i, null
  br i1 %i.gk, label %ext4_mb_scan_groups_avg_frag_order_range.exit.thread.i.i, label %ext4_mb_scan_groups_avg_frag_order_range.exit.i.i

ext4_mb_scan_groups_avg_frag_order_range.exit.i.i: ; preds = %.lr.ph.i70.i
  %i.gl = call fastcc i32 @ext4_mb_scan_groups_xa_range(ptr noundef nonnull %0, ptr noundef %i.gi, i32 noundef %.024.i63.i, i32 noundef %.0.i64.i) #16, !srcloc !217 ; 2 uses
  %.not31.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not31.i.i, label %ext4_mb_scan_groups_avg_frag_order_range.exit.thread.i.i, label %ext4_mb_scan_groups.exit

ext4_mb_scan_groups_avg_frag_order_range.exit.thread.i.i: ; preds = %ext4_mb_scan_groups_avg_frag_order_range.exit.i.i, %.lr.ph.i70.i
  %i.gm = load i8, ptr %i.d, align 2
  %.not32.i.i = icmp eq i8 %i.gm, 1
  br i1 %.not32.i.i, label %bb.ai, label %.thread

._crit_edge.i66.i:                                ; preds = %bb.ai, %mb_avg_fragment_size_order.exit.i.i
  %i.gn = phi ptr [ %i.fw, %mb_avg_fragment_size_order.exit.i.i ], [ %i.ga, %bb.ai ]
  %.not.i67.i = icmp eq i32 %.024.i63.i, 0
  br i1 %.not.i67.i, label %bb.aj, label %fls.exit.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i66.i
  %i.go = getelementptr i8, ptr %.val.i57.i, i64 888
  %i.gp = load i32, ptr %i.go, align 8
  %.not29.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not29.i.i, label %.loopexit.sink.split.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gq = getelementptr i8, ptr %.val.i57.i, i64 1080
  %i.gr = load i8, ptr %i.ay, align 1
  %i.gs = zext i8 %i.gr to i64
  %i.gt = getelementptr [8 x i8], ptr %i.gq, i64 %i.gs ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gt, ptr elementtype(i64) %i.gt) #14, !srcloc !61
  br label %.loopexit.sink.split.i.i

.loopexit.sink.split.i.i:                         ; preds = %bb.ak, %bb.aj
  %i.gu = load i32, ptr %i.j, align 4
  %i.gv = and i32 %i.gu, 32
  %.not30.i.i = icmp eq i32 %i.gv, 0
  %..i68.i = select i1 %.not30.i.i, i8 3, i8 2
  store i8 %..i68.i, ptr %i.ay, align 1
  br label %bb.az

fls.exit81.i.i:                                   ; preds = %bb.w
  %i.gw = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 864
  %.val.i75.i = load ptr, ptr %i.gx, align 32     ; 6 uses
  %i.gy = load i32, ptr %i.m, align 4
  %i.gz = call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gy, i32 -1) #17, !srcloc !58 ; 2 uses
  %i.ha = add i32 %i.gz, -1
  %i.hb = getelementptr i8, ptr %i.gw, i64 20
  %i.hc = load i8, ptr %i.hb, align 4
  %i.hd = zext i8 %i.hc to i32
  %i.he = add nuw nsw i32 %i.hd, 2
  %i.hf = icmp sgt i32 %i.ha, %i.he
  br i1 %i.hf, label %bb.al, label %.critedge.i.i, !prof !21

bb.al:                                            ; preds = %fls.exit81.i.i
  call void asm sideeffect "1517: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1517b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1517) #14, !srcloc !218
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 1077, i32 2307, i64 16) #14, !srcloc !219
  call void asm sideeffect "1518: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1518b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1518) #14, !srcloc !220
  %i.hg = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 20
  %i.hi = load i8, ptr %i.hh, align 4
  %i.hj = zext i8 %i.hi to i32
  %i.hk = add nuw nsw i32 %i.hj, 2
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.al, %fls.exit81.i.i
  %i.hl = phi ptr [ %i.hg, %bb.al ], [ %i.gw, %fls.exit81.i.i ]
  %.066.i.i = phi i32 [ %i.hk, %bb.al ], [ %i.gz, %fls.exit81.i.i ] ; 3 uses
  %i.hm = getelementptr i8, ptr %.val.i75.i, i64 912
  %i.hn = load i32, ptr %i.hm, align 16
  %i.ho = sub i32 %.066.i.i, %i.hn
  %spec.store.select.i.i = call i32 @llvm.smax.i32(i32 %i.ho, i32 0) ; 3 uses
  %i.hp = getelementptr i8, ptr %.val.i75.i, i64 864
  %i.hq = load i64, ptr %i.hp, align 32           ; 2 uses
  %.not.i76.i = icmp eq i64 %i.hq, 0
  br i1 %.not.i76.i, label %fls.exit79.i.i, label %bb.am

bb.am:                                            ; preds = %.critedge.i.i
  %i.hr = getelementptr i8, ptr %.val.i75.i, i64 80
  %i.hs = load i32, ptr %i.hr, align 16
  %i.ht = zext i32 %i.hs to i64
  %i.hu = add i64 %i.hq, -1
  %i.hv = add i64 %i.hu, %i.ht
  %i.hw = getelementptr i8, ptr %.val.i75.i, i64 84
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = lshr i64 %i.hv, %i.hy                   ; 4 uses
  %i.ia = shl nuw i32 1, %spec.store.select.i.i
  %i.ib = sext i32 %i.ia to i64
  %i.ic = icmp ugt i64 %i.hz, %i.ib
  br i1 %i.ic, label %bb.an, label %fls.exit79.i.i

bb.an:                                            ; preds = %bb.am
  %i.id = trunc i64 %i.hz to i32
  %i.ie = call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.id, i32 -1) #17, !srcloc !58
  br label %fls.exit79.i.i

fls.exit79.i.i:                                   ; preds = %bb.an, %bb.am, %.critedge.i.i
  %.064.i.i = phi i32 [ %spec.store.select.i.i, %.critedge.i.i ], [ %spec.store.select.i.i, %bb.am ], [ %i.ie, %bb.an ] ; 2 uses
  %.063.i.i = phi i64 [ 0, %.critedge.i.i ], [ %i.hz, %bb.am ], [ %i.hz, %bb.an ] ; 3 uses
  %i.if = shl nuw i32 1, %.064.i.i
  %i.ig = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.ih = icmp slt i32 %i.if, %i.ig
  br i1 %i.ih, label %bb.ao, label %fls.exit.i.i

bb.ao:                                            ; preds = %fls.exit79.i.i
  %i.ii = call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ig, i32 -1) #17, !srcloc !58
  %i.ij = add i32 %i.ii, 1
  br label %fls.exit.i.i

fls.exit.i.i:                                     ; preds = %bb.ao, %fls.exit79.i.i
  %.165.i.i = phi i32 [ %.064.i.i, %fls.exit79.i.i ], [ %i.ij, %bb.ao ] ; 2 uses
  %i.ik = getelementptr i8, ptr %i.hl, i64 864
  %.val3.i.i.i = load ptr, ptr %i.ik, align 32
  %i.il = getelementptr i8, ptr %.val3.i.i.i, i64 64
  %.val3.val.i.i77.i = load i32, ptr %i.il, align 64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !18
  %i.im = load ptr, ptr %0, align 8
  %i.in = getelementptr i8, ptr %i.im, i64 -152
  %i.io = load volatile i64, ptr %i.in, align 8
  %i.ip = and i64 %i.io, 524288
  %.not.i.i78.i = icmp eq i64 %i.ip, 0
  br i1 %.not.i.i78.i, label %bb.ap, label %ext4_get_allocation_groups_count.exit.i79.i

bb.ap:                                            ; preds = %fls.exit.i.i
  %i.iq = load ptr, ptr %i.a, align 8
  %i.ir = getelementptr i8, ptr %i.iq, i64 864
  %.val.i.i90.i = load ptr, ptr %i.ir, align 32
  %i.is = getelementptr i8, ptr %.val.i.i90.i, i64 68
  %i.it = load i32, ptr %i.is, align 4
  br label %ext4_get_allocation_groups_count.exit.i79.i

ext4_get_allocation_groups_count.exit.i79.i:      ; preds = %bb.ap, %fls.exit.i.i
  %.0.i82.i.i = phi i32 [ %.val3.val.i.i77.i, %fls.exit.i.i ], [ %i.it, %bb.ap ]
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !60
  %.not7193.i.i = icmp slt i32 %.066.i.i, %.165.i.i
  %.not74.i.i = icmp eq i64 %.063.i.i, 0
  %i.iu = add i64 %.063.i.i, -1
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i88.i, %ext4_get_allocation_groups_count.exit.i79.i
  %.062.i.i = phi i32 [ %.095.ph.i.ph, %ext4_get_allocation_groups_count.exit.i79.i ], [ 0, %._crit_edge.i88.i ] ; 3 uses
  %.061.i.i = phi i32 [ %.0.i82.i.i, %ext4_get_allocation_groups_count.exit.i79.i ], [ %.062.i.i, %._crit_edge.i88.i ]
  br i1 %.not7193.i.i, label %._crit_edge.i88.i, label %.lr.ph.i80.i

bb.ar:                                            ; preds = %ext4_mb_scan_groups_avg_frag_order_range.exit.thread.i87.i
  %i.iv = add i32 %.06094.i.i, -1                 ; 2 uses
  %.not71.i.i = icmp slt i32 %i.iv, %.165.i.i
  br i1 %.not71.i.i, label %._crit_edge.i88.i, label %.lr.ph.i80.i, !llvm.loop !208

.lr.ph.i80.i:                                     ; preds = %bb.aq, %bb.ar
  %.06094.i.i = phi i32 [ %i.iv, %bb.ar ], [ %.066.i.i, %bb.aq ] ; 2 uses
  %i.iw = shl nuw i32 1, %.06094.i.i              ; 2 uses
  br i1 %.not74.i.i, label %fls.exit.i.i81.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i80.i
  %i.ix = sext i32 %i.iw to i64
  %i.iy = add i64 %i.iu, %i.ix
  %.fr.i.i = freeze i64 %i.iy                     ; 2 uses
  %i.iz = urem i64 %.fr.i.i, %.063.i.i
  %i.ja = sub nuw i64 %.fr.i.i, %i.iz
  %i.jb = trunc i64 %i.ja to i32
  br label %fls.exit.i.i81.i

fls.exit.i.i81.i:                                 ; preds = %bb.as, %.lr.ph.i80.i
  %storemerge.i.i = phi i32 [ %i.jb, %bb.as ], [ %i.iw, %.lr.ph.i80.i ] ; 2 uses
  store i32 %storemerge.i.i, ptr %i.m, align 4
  %i.jc = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.jd = call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %storemerge.i.i, i32 -1) #17, !srcloc !58 ; 3 uses
  %i.je = add i32 %i.jd, -1                       ; 2 uses
  %i.jf = icmp slt i32 %i.je, 0
  br i1 %i.jf, label %mb_avg_fragment_size_order.exit.i84.i, label %bb.at

bb.at:                                            ; preds = %fls.exit.i.i81.i
  %i.jg = getelementptr i8, ptr %i.jc, i64 20     ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 4
  %i.ji = zext i8 %i.jh to i32                    ; 2 uses
  %i.jj = add nuw nsw i32 %i.ji, 3
  %i.jk = icmp eq i32 %i.jd, %i.jj
  %i.jl = add i32 %i.jd, -2
  %spec.select.i.i83.i = select i1 %i.jk, i32 %i.jl, i32 %i.je ; 2 uses
  %i.jm = add nuw nsw i32 %i.ji, 2
  %i.jn = icmp sgt i32 %spec.select.i.i83.i, %i.jm
  br i1 %i.jn, label %bb.au, label %mb_avg_fragment_size_order.exit.i84.i, !prof !21

bb.au:                                            ; preds = %bb.at
  call void asm sideeffect "1513: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1513b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1513) #14, !srcloc !62
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 856, i32 2307, i64 16) #14, !srcloc !63
  call void asm sideeffect "1514: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1514b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1514) #14, !srcloc !64
  %i.jo = load i8, ptr %i.jg, align 4
  %i.jp = zext i8 %i.jo to i32
  %i.jq = add nuw nsw i32 %i.jp, 1
end_hunk_3
begin_hunk_4_@ext4_mb_scan_group:bb.a

ext4_try_lock_group.exit.thread52:                ; preds = %bb.ai, %__ext4_mb_scan_group.exit
  %i.hb = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8            ; 3 uses
  %.not.i49 = icmp eq ptr %i.hd, null
  br i1 %.not.i49, label %folio_put.exit.i, label %bb.aq

bb.aq:                                            ; preds = %ext4_try_lock_group.exit.thread52
  %i.he = getelementptr i8, ptr %i.hd, i64 52     ; 2 uses
  %i.hf = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.he, ptr elementtype(i32) %i.he) #14, !srcloc !23 ; 2 uses
  %i.hg = icmp ult i8 %i.hf, 2
  tail call void @llvm.assume(i1 %i.hg)
  %.not.i.i = icmp eq i8 %i.hf, 0
  br i1 %.not.i.i, label %folio_put.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @__folio_put(ptr noundef nonnull %i.hd) #15
  br label %folio_put.exit.i

folio_put.exit.i:                                 ; preds = %bb.ar, %bb.aq, %ext4_try_lock_group.exit.thread52
  %i.hh = load ptr, ptr %i.hb, align 8            ; 3 uses
  %.not5.i = icmp eq ptr %i.hh, null
  br i1 %.not5.i, label %ext4_mb_unload_buddy.exit, label %bb.as

bb.as:                                            ; preds = %folio_put.exit.i
  %i.hi = getelementptr i8, ptr %i.hh, i64 52     ; 2 uses
  %i.hj = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hi, ptr elementtype(i32) %i.hi) #14, !srcloc !23 ; 2 uses
  %i.hk = icmp ult i8 %i.hj, 2
  tail call void @llvm.assume(i1 %i.hk)
  %.not.i6.i = icmp eq i8 %i.hj, 0
  br i1 %.not.i6.i, label %ext4_mb_unload_buddy.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @__folio_put(ptr noundef nonnull %i.hh) #15
  br label %ext4_mb_unload_buddy.exit

ext4_mb_unload_buddy.exit:                        ; preds = %bb.at, %bb.as, %folio_put.exit.i, %bb.ae, %ext4_mb_good_group_nolock.exit.thread, %bb.ad, %ext4_mb_might_prefetch.exit.thread
  %.0 = phi i32 [ %i.eh, %bb.ae ], [ 0, %ext4_mb_might_prefetch.exit.thread ], [ 0, %ext4_mb_good_group_nolock.exit.thread ], [ 0, %bb.ad ], [ 0, %folio_put.exit.i ], [ 0, %bb.as ], [ 0, %bb.at ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc zeroext i1 @ext4_mb_good_group(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 864
  %.val = load ptr, ptr %i.c, align 32
  %i.d = getelementptr i8, ptr %.val, i64 1180
  %.val46 = load i32, ptr %i.d, align 4
  %i.e = shl nuw i32 1, %.val46                   ; 2 uses
  %i.f = tail call ptr @ext4_get_group_info(ptr noundef %i.b, i32 noundef %1) #15 ; 5 uses
  %i.g = icmp samesign ugt i32 %2, 4
  br i1 %i.g, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1579: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1579b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1579) #14, !srcloc !397
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 2715, i32 0, i64 16) #14, !srcloc !398
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.critedge, label %.split, !prof !21

.split:                                           ; preds = %bb.c
  %i.h = load volatile i64, ptr %i.f, align 8
  %i.i = and i64 %i.h, 4
  %.not47 = icmp eq i64 %i.i, 0
  br i1 %.not47, label %bb.d, label %.critedge, !prof !20

bb.d:                                             ; preds = %.split
  %i.j = getelementptr i8, ptr %i.f, i64 20
  %i.k = load i32, ptr %i.j, align 4              ; 4 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.f, i64 24
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %2, label %default.unreachable56 [
    i32 0, label %bb.g
    i32 1, label %bb.n
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %.critedge
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 124
  %i.q = load i8, ptr %i.p, align 4               ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.i, !prof !21

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "1580: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1580b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1580) #14, !srcloc !399
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 2730, i32 0, i64 16) #14, !srcloc !400
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %0, i64 100
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 32
  %i.v = icmp ne i32 %i.u, 0
  %i.w = icmp sgt i32 %i.e, 3
  %or.cond5 = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond5, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = add nsw i32 %i.e, -1
  %i.y = and i32 %i.x, %1
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = getelementptr i8, ptr %0, i64 44
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp slt i32 %i.k, %i.ab
  br i1 %i.ac, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = zext i8 %i.q to i32                     ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 20
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nuw nsw i32 %i.ah, 2
  %.not45 = icmp samesign ugt i32 %i.ai, %i.ad
  br i1 %.not45, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.f, i64 32
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp sge i32 %i.ak, %i.ad
  br label %.critedge

bb.n:                                             ; preds = %bb.f, %bb.f
  %i.am = sdiv i32 %i.k, %i.n
  %i.an = getelementptr i8, ptr %0, i64 44
  %i.ao = load i32, ptr %i.an, align 4
  %.not44 = icmp slt i32 %i.am, %i.ao
  br i1 %.not44, label %bb.p, label %.critedge

bb.o:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %0, i64 44
  %i.aq = load i32, ptr %i.ap, align 4
  %.not43 = icmp slt i32 %i.k, %i.aq
  br i1 %.not43, label %bb.p, label %.critedge

default.unreachable56:                            ; preds = %bb.f
  unreachable

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %.critedge

.critedge:                                        ; preds = %.split, %bb.c, %bb.f, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.e, %bb.d, %bb.p
  %.0 = phi i1 [ true, %bb.o ], [ false, %.split ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.j ], [ false, %bb.k ], [ %i.al, %bb.m ], [ true, %bb.l ], [ true, %bb.f ], [ false, %bb.p ], [ true, %bb.n ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ext4_mb_simple_scan_group(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 124
  %i.f = load i8, ptr %i.e, align 4               ; 3 uses
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1571: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1571b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1571) #14, !srcloc !402
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 2513, i32 0, i64 16) #14, !srcloc !403
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = zext i8 %i.f to i32
  %i.i = getelementptr i8, ptr %i.b, i64 20       ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = zext i8 %i.j to i32
  %i.l = add nuw nsw i32 %i.k, 2
  %i.m = icmp samesign ugt i32 %i.l, %i.h
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.d, i64 88       ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 24
  %i.p = getelementptr i8, ptr %1, i64 8
  %i.q = getelementptr i8, ptr %1, i64 48
  %i.r = getelementptr i8, ptr %1, i64 40
  %i.s = zext i8 %i.f to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 8 uses
  %i.t = getelementptr [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.o, align 8
  %i.x = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.f, label %bb.g, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "1510: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1510b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1510) #14, !srcloc !66
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 536, i32 0, i64 16) #14, !srcloc !67
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = load i16, ptr %i.q, align 8
  %i.aa = zext i16 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 1
  %i.ac = icmp samesign ugt i64 %indvars.iv, %i.ab
  br i1 %i.ac, label %mb_find_buddy.exit.thread, label %mb_find_buddy.exit

mb_find_buddy.exit:                               ; preds = %bb.g
  %i.ad = load ptr, ptr %i.r, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 864
  %.val20.i = load ptr, ptr %i.ae, align 32       ; 2 uses
  %i.af = getelementptr i8, ptr %.val20.i, i64 736
  %i.ag = load ptr, ptr %i.af, align 32
  %i.ah = getelementptr [2 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr i8, ptr %i.x, i64 %i.aj   ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %mb_find_buddy.exit.thread, label %.critedge53

mb_find_buddy.exit.thread:                        ; preds = %bb.g, %mb_find_buddy.exit
  %i.am = tail call i32 @___ratelimit(ptr noundef nonnull @ext4_mb_simple_scan_group._rs, ptr noundef nonnull @__func__.ext4_mb_simple_scan_group) #15
  %.not63 = icmp eq i32 %i.am, 0
  br i1 %.not63, label %.critedge, label %bb.h, !prof !20

bb.h:                                             ; preds = %mb_find_buddy.exit.thread
  %i.an = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.85, ptr nonnull @.str.34, i32 2520, i32 2321, i64 16) #14, !srcloc !404
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.an, i32 noundef %i.ao) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !405
  br label %.critedge

.critedge53:                                      ; preds = %mb_find_buddy.exit
  %i.ap = getelementptr i8, ptr %.val20.i, i64 744
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.au = ptrtoint ptr %i.ak to i64               ; 2 uses
  %.tr.i.i = trunc i64 %i.au to i32
  %i.av = shl i32 %.tr.i.i, 3
  %i.aw = and i32 %i.av, 56                       ; 3 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add i32 %i.aw, %i.as
  %i.az = sext i32 %i.ay to i64
  %i.ba = and i64 %i.au, -8
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = tail call i64 @_find_next_zero_bit(ptr noundef %i.bb, i64 noundef range(i64 -2147483648, 2147483648) %i.az, i64 noundef range(i64 -2147483648, 2147483648) %i.ax) #15
  %i.bd = trunc i64 %i.bc to i32
  %i.be = sub i32 %i.bd, %i.aw                    ; 2 uses
  %.not = icmp slt i32 %i.be, %i.as
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge53
  %i.bf = getelementptr [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.a, align 8
  %i.bh = getelementptr i8, ptr %1, i64 52        ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  tail call void @ext4_mark_group_bitmap_corrupted(ptr noundef %i.bg, i32 noundef %i.bi, i32 noundef 4) #15
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = load i32, ptr %i.bh, align 4
  %i.bl = load i32, ptr %i.bf, align 4
  tail call void (ptr, i32, ptr, i32, i64, i64, ptr, ...) @__ext4_grp_locked_error(ptr noundef nonnull @__func__.ext4_mb_simple_scan_group, i32 noundef 2530, ptr noundef %i.bj, i32 noundef %i.bk, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.86, i32 noundef %i.bl, i32 noundef %i.at) #15
  br label %.loopexit

bb.j:                                             ; preds = %.critedge53
  %i.bm = getelementptr i8, ptr %0, i64 106       ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = add i16 %i.bn, 1
  store i16 %i.bo, ptr %i.bm, align 2
  %i.bp = getelementptr i8, ptr %0, i64 108
  %i.bq = getelementptr i8, ptr %0, i64 123
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr [2 x i8], ptr %i.bp, i64 %i.bs ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = add i16 %i.bu, 1
  store i16 %i.bv, ptr %i.bt, align 2
  %i.bw = shl nuw i32 1, %i.at
  %i.bx = getelementptr i8, ptr %0, i64 60
  store i32 %i.bw, ptr %i.bx, align 4
  %i.by = shl i32 %i.be, %i.at
  %i.bz = getelementptr i8, ptr %0, i64 52
  store i32 %i.by, ptr %i.bz, align 4
  %i.ca = getelementptr i8, ptr %1, i64 52
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = getelementptr i8, ptr %0, i64 56
  store i32 %i.cb, ptr %i.cc, align 8
  tail call fastcc void @ext4_mb_use_best_found(ptr noundef %0, ptr noundef %1) #16, !srcloc !406
  %i.cd = getelementptr i8, ptr %0, i64 76
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr i8, ptr %0, i64 44
  %i.cg = load i32, ptr %i.cf, align 4
  %.not51 = icmp eq i32 %i.ce, %i.cg
  br i1 %.not51, label %bb.l, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "1573: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1573b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1573) #14, !srcloc !407
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 2542, i32 0, i64 16) #14, !srcloc !408
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ch = getelementptr i8, ptr %i.b, i64 864
  %.val54 = load ptr, ptr %i.ch, align 32         ; 2 uses
  %i.ci = getelementptr i8, ptr %.val54, i64 888
  %i.cj = load i32, ptr %i.ci, align 8
  %.not52 = icmp eq i32 %i.cj, 0
  br i1 %.not52, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr i8, ptr %.val54, i64 996  ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ck, ptr elementtype(i32) %i.ck) #14, !srcloc !50
  br label %.loopexit

.critedge:                                        ; preds = %mb_find_buddy.exit.thread, %bb.h, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cl = load i8, ptr %i.i, align 4
  %i.cm = zext i8 %i.cl to i64
  %2 = add nuw nsw i64 %i.cm, 2
  %3 = icmp samesign ult i64 %indvars.iv.next, %2
  br i1 %3, label %bb.d, label %.loopexit, !llvm.loop !401

.loopexit:                                        ; preds = %.critedge, %bb.c, %bb.l, %bb.m, %bb.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ext4_mb_scan_aligned(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.ext4_free_extent, align 4   ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 864      ; 2 uses
  %.val39 = load ptr, ptr %i.c, align 32          ; 6 uses
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !19
  %i.f = getelementptr i8, ptr %.val39, i64 864
  %i.g = load i64, ptr %i.f, align 32             ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1578: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1578b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1578) #14, !srcloc !410
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 2652, i32 0, i64 16) #14, !srcloc !411
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 52
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr i8, ptr %.val39, i64 16
  %.val40.val = load i64, ptr %i.k, align 16
  %i.l = getelementptr i8, ptr %.val39, i64 104
  %.val40.val41 = load ptr, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.val40.val41, i64 20
  %.val40.val41.val = load i32, ptr %i.m, align 4
  %i.n = zext i32 %i.j to i64
  %i.o = mul i64 %.val40.val, %i.n
  %i.p = zext i32 %.val40.val41.val to i64
  %i.q = add i64 %i.o, %i.p                       ; 2 uses
  %i.r = add i64 %i.g, -1                         ; 2 uses
  %i.s = add i64 %i.r, %i.q
  %i.t = and i64 %i.g, 4294967295
  %i.u = udiv i64 %i.s, %i.t
  %i.v = mul i64 %i.u, %i.g
  %i.w = sub i64 %i.v, %i.q
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr i8, ptr %.val39, i64 80
  %i.z = load i32, ptr %i.y, align 16
  %i.aa = zext i32 %i.z to i64
  %i.ab = add i64 %i.r, %i.aa
  %i.ac = getelementptr i8, ptr %.val39, i64 84
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = lshr i64 %i.ab, %i.ae
  %i.ag = trunc i64 %i.af to i32                  ; 3 uses
  %i.ah = ashr i32 %i.x, %i.ad                    ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %.val39, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp ugt i64 %i.ak, %i.ai
  br i1 %i.al, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.am = ptrtoint ptr %i.e to i64                ; 2 uses
  %.tr.i.i = trunc i64 %i.am to i32
  %i.an = shl i32 %.tr.i.i, 3
  %i.ao = and i32 %i.an, 56
  %i.ap = and i64 %i.am, -8
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %.split44

.split44:                                         ; preds = %.lr.ph, %bb.f
  %.043 = phi i32 [ %i.ah, %.lr.ph ], [ %i.bi, %bb.f ] ; 3 uses
  %i.ar = add i32 %.043, %i.ao
  %i.as = sext i32 %i.ar to i64
  %i.at = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aq, i64 range(i64 -2147483648, 4294967296) %i.as) #14, !srcloc !35 ; 2 uses
  %i.au = icmp ult i8 %i.at, 2
  call void @llvm.assume(i1 %i.au)
  %i.av = trunc nuw i8 %i.at to i1
  br i1 %i.av, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.split44
  %i.aw = call fastcc i32 @mb_find_extent(ptr noundef %1, i32 noundef %.043, i32 noundef %i.ag, ptr noundef nonnull %2) #16, !srcloc !412
  %.not38 = icmp slt i32 %i.aw, %i.ag
  br i1 %.not38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr i8, ptr %0, i64 106       ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = add i16 %i.ay, 1
  store i16 %i.az, ptr %i.ax, align 2
  %i.ba = getelementptr i8, ptr %0, i64 108
  %i.bb = getelementptr i8, ptr %0, i64 123
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr [2 x i8], ptr %i.ba, i64 %i.bd ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = add i16 %i.bf, 1
  store i16 %i.bg, ptr %i.be, align 2
  store i32 -559026163, ptr %2, align 4
  %i.bh = getelementptr i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  call fastcc void @ext4_mb_use_best_found(ptr noundef %0, ptr noundef %1) #16, !srcloc !413
  br label %.loopexit

bb.f:                                             ; preds = %.split44, %bb.d
  %i.bi = add i32 %.043, %i.ag                    ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %.val = load ptr, ptr %i.c, align 32
  %i.bk = getelementptr i8, ptr %.val, i64 24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = icmp ugt i64 %i.bl, %i.bj
  br i1 %i.bm, label %.split44, label %.loopexit, !llvm.loop !409

.loopexit:                                        ; preds = %bb.f, %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ext4_mb_complex_scan_group(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.ext4_free_extent, align 4   ; 11 uses
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !19
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.critedge55, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1574: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1574b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1574) #14, !srcloc !415
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.33, ptr nonnull @.str.34, i32 2567, i32 2305, i64 16) #14, !srcloc !416
  tail call void asm sideeffect "1575: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1575b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1575) #14, !srcloc !417
  br label %ext4_mb_check_limits.exit

.critedge55:                                      ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %0, i64 122        ; 6 uses
  %i.m = getelementptr i8, ptr %i.b, i64 864      ; 2 uses
  %i.n = ptrtoint ptr %i.d to i64                 ; 2 uses
  %.tr.i.i = trunc i64 %i.n to i32
  %i.o = shl i32 %.tr.i.i, 3
  %i.p = and i32 %i.o, 56                         ; 6 uses
  %i.q = and i64 %i.n, -8
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 123        ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 44         ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = getelementptr i8, ptr %0, i64 106        ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 108
  %i.z = getelementptr i8, ptr %0, i64 100        ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 60        ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.critedge55, %.backedge
  %.074 = phi i32 [ %i.k, %.critedge55 ], [ %.0.be, %.backedge ]
  %.05073 = phi i32 [ %i.h, %.critedge55 ], [ %.050.be, %.backedge ] ; 4 uses
  %i.ab = load i8, ptr %i.l, align 2              ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 1
  br i1 %i.ac, label %mb_find_next_zero_bit.exit, label %.critedge

mb_find_next_zero_bit.exit:                       ; preds = %bb.c
  %.val59 = load ptr, ptr %i.m, align 32
  %i.ad = getelementptr i8, ptr %.val59, i64 24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = add i32 %.074, %i.p
  %i.ah = sext i32 %i.ag to i64
  %i.ai = add i32 %i.p, %i.af
  %i.aj = sext i32 %i.ai to i64
  %i.ak = call i64 @_find_next_zero_bit(ptr noundef %i.r, i64 noundef range(i64 -2147483648, 2147483648) %i.aj, i64 noundef range(i64 -2147483648, 2147483648) %i.ah) #15
  %.val58.pre = load ptr, ptr %i.m, align 32
  %.phi.trans.insert = getelementptr i8, ptr %.val58.pre, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = sub i32 %i.al, %i.p
  %..i = call i32 @llvm.smin.i32(i32 %i.am, i32 %i.af) ; 5 uses
  %i.an = sext i32 %..i to i64
  %.not53 = icmp ugt i64 %.pre, %i.an
  br i1 %.not53, label %bb.e, label %bb.d

bb.d:                                             ; preds = %mb_find_next_zero_bit.exit
  %i.ao = getelementptr i8, ptr %1, i64 52        ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  call void @ext4_mark_group_bitmap_corrupted(ptr noundef %i.b, i32 noundef %i.ap, i32 noundef 4) #15
  %i.aq = load i32, ptr %i.ao, align 4
  call void (ptr, i32, ptr, i32, i64, i64, ptr, ...) @__ext4_grp_locked_error(ptr noundef nonnull @__func__.ext4_mb_complex_scan_group, i32 noundef 2586, ptr noundef %i.b, i32 noundef %i.aq, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.87, i32 noundef %.05073) #15
  br label %.critedgethread-pre-split

end_hunk_4
