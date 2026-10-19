Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/kyber-iosched?download=true
inline.NumInlined: 149
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@sbitmap_queue_min_shallow_depth
declare dso_local void @sbitmap_queue_min_shallow_depth(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @pcpu_alloc_noprof(i64 noundef, i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #13

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @timer_init_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kyber_timer_fn(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -8
  %i.b = getelementptr i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %i.c = phi i64 [ 0, %bb.a ], [ %i.df, %bb.e ]
  %i.d = load i64, ptr @__cpu_online_mask, align 8
  %i.e = shl nsw i64 -1, %i.c
  %i.f = and i64 %i.d, %i.e                       ; 2 uses
  %.not23.i = icmp eq i64 %i.f, 0
  br i1 %.not23.i, label %.preheader60.preheader, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.b
  %i.g = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.f) #23, !srcloc !48 ; 3 uses
  %i.h = and i64 %i.g, 4294967232
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %.preheader60.preheader

.preheader60.preheader:                           ; preds = %bb.e, %bb.b, %find_next_bit.exit
  %i.j = getelementptr i8, ptr %0, i64 -280       ; 8 uses
  %i.k = tail call fastcc i32 @calculate_percentile(ptr noundef %i.j, i32 noundef 0, i32 noundef 1, i32 noundef 90) #22, !srcloc !49
  %i.l = icmp sgt i32 %i.k, 3
  %i.m = tail call fastcc i32 @calculate_percentile(ptr noundef %i.j, i32 noundef 1, i32 noundef 1, i32 noundef 90) #22, !srcloc !49
  %i.n = icmp sgt i32 %i.m, 3
  %i.o = tail call fastcc i32 @calculate_percentile(ptr noundef %i.j, i32 noundef 2, i32 noundef 1, i32 noundef 90) #22, !srcloc !49
  %i.p = icmp sgt i32 %i.o, 3
  %i.q = select i1 %i.p, i1 true, i1 %i.n
  %spec.select.2 = select i1 %i.q, i1 true, i1 %i.l ; 6 uses
  %i.r = getelementptr i8, ptr %0, i64 256        ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 -264       ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 -272       ; 3 uses
  %i.u = tail call fastcc i32 @calculate_percentile(ptr noundef %i.j, i32 noundef 0, i32 noundef 0, i32 noundef 99) #22, !srcloc !50 ; 5 uses
  br i1 %spec.select.2, label %bb.f, label %bb.h

bb.c:                                             ; preds = %find_next_bit.exit
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.g, 63
  %i.y = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, %i.w
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ac = getelementptr [64 x i8], ptr %i.b, i64 %indvars.iv ; 17 uses
  %i.ad = getelementptr [64 x i8], ptr %i.ab, i64 %indvars.iv ; 17 uses
  %i.ae = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ad, i32 0, ptr elementtype(i32) %i.ad) #18, !srcloc !51
  %i.af = load i32, ptr %i.ac, align 4
  %i.ag = add i32 %i.af, %i.ae
  store i32 %i.ag, ptr %i.ac, align 4
  %i.ah = getelementptr i8, ptr %i.ad, i64 4      ; 2 uses
  %i.ai = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ah, i32 0, ptr elementtype(i32) %i.ah) #18, !srcloc !51
  %i.aj = getelementptr i8, ptr %i.ac, i64 4      ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = add i32 %i.ak, %i.ai
  store i32 %i.al, ptr %i.aj, align 4
  %i.am = getelementptr i8, ptr %i.ad, i64 8      ; 2 uses
  %i.an = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.am, i32 0, ptr elementtype(i32) %i.am) #18, !srcloc !51
  %i.ao = getelementptr i8, ptr %i.ac, i64 8      ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = add i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr i8, ptr %i.ad, i64 12     ; 2 uses
  %i.as = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ar, i32 0, ptr elementtype(i32) %i.ar) #18, !srcloc !51
  %i.at = getelementptr i8, ptr %i.ac, i64 12     ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = add i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 4
  %i.aw = getelementptr i8, ptr %i.ad, i64 16     ; 2 uses
  %i.ax = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aw, i32 0, ptr elementtype(i32) %i.aw) #18, !srcloc !51
  %i.ay = getelementptr i8, ptr %i.ac, i64 16     ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = add i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4
  %i.bb = getelementptr i8, ptr %i.ad, i64 20     ; 2 uses
  %i.bc = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bb, i32 0, ptr elementtype(i32) %i.bb) #18, !srcloc !51
  %i.bd = getelementptr i8, ptr %i.ac, i64 20     ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 4
  %i.bg = getelementptr i8, ptr %i.ad, i64 24     ; 2 uses
  %i.bh = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bg, i32 0, ptr elementtype(i32) %i.bg) #18, !srcloc !51
  %i.bi = getelementptr i8, ptr %i.ac, i64 24     ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = add i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4
  %i.bl = getelementptr i8, ptr %i.ad, i64 28     ; 2 uses
  %i.bm = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bl, i32 0, ptr elementtype(i32) %i.bl) #18, !srcloc !51
  %i.bn = getelementptr i8, ptr %i.ac, i64 28     ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = getelementptr i8, ptr %i.ac, i64 32     ; 2 uses
  %i.br = getelementptr i8, ptr %i.ad, i64 32     ; 2 uses
  %i.bs = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.br, i32 0, ptr elementtype(i32) %i.br) #18, !srcloc !51
  %i.bt = load i32, ptr %i.bq, align 4
  %i.bu = add i32 %i.bt, %i.bs
  store i32 %i.bu, ptr %i.bq, align 4
  %i.bv = getelementptr i8, ptr %i.ad, i64 36     ; 2 uses
  %i.bw = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bv, i32 0, ptr elementtype(i32) %i.bv) #18, !srcloc !51
  %i.bx = getelementptr i8, ptr %i.ac, i64 36     ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4
  %i.ca = getelementptr i8, ptr %i.ad, i64 40     ; 2 uses
  %i.cb = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ca, i32 0, ptr elementtype(i32) %i.ca) #18, !srcloc !51
  %i.cc = getelementptr i8, ptr %i.ac, i64 40     ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = add i32 %i.cd, %i.cb
  store i32 %i.ce, ptr %i.cc, align 4
  %i.cf = getelementptr i8, ptr %i.ad, i64 44     ; 2 uses
  %i.cg = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cf, i32 0, ptr elementtype(i32) %i.cf) #18, !srcloc !51
  %i.ch = getelementptr i8, ptr %i.ac, i64 44     ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = add i32 %i.ci, %i.cg
  store i32 %i.cj, ptr %i.ch, align 4
  %i.ck = getelementptr i8, ptr %i.ad, i64 48     ; 2 uses
  %i.cl = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ck, i32 0, ptr elementtype(i32) %i.ck) #18, !srcloc !51
  %i.cm = getelementptr i8, ptr %i.ac, i64 48     ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = add i32 %i.cn, %i.cl
  store i32 %i.co, ptr %i.cm, align 4
  %i.cp = getelementptr i8, ptr %i.ad, i64 52     ; 2 uses
  %i.cq = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cp, i32 0, ptr elementtype(i32) %i.cp) #18, !srcloc !51
  %i.cr = getelementptr i8, ptr %i.ac, i64 52     ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = add i32 %i.cs, %i.cq
  store i32 %i.ct, ptr %i.cr, align 4
  %i.cu = getelementptr i8, ptr %i.ad, i64 56     ; 2 uses
  %i.cv = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cu, i32 0, ptr elementtype(i32) %i.cu) #18, !srcloc !51
  %i.cw = getelementptr i8, ptr %i.ac, i64 56     ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = add i32 %i.cx, %i.cv
  store i32 %i.cy, ptr %i.cw, align 4
  %i.cz = getelementptr i8, ptr %i.ad, i64 60     ; 2 uses
  %i.da = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cz, i32 0, ptr elementtype(i32) %i.cz) #18, !srcloc !51
  %i.db = getelementptr i8, ptr %i.ac, i64 60     ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = add i32 %i.dc, %i.da
  store i32 %i.dd, ptr %i.db, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.e, label %bb.d, !llvm.loop !46

bb.e:                                             ; preds = %bb.d
  %i.de = add nuw nsw i64 %i.g, 1
  %i.df = and i64 %i.de, 127                      ; 2 uses
  %.not.i = icmp samesign ult i64 %i.df, 64
  br i1 %.not.i, label %bb.b, label %.preheader60.preheader, !prof !52, !llvm.loop !47

bb.f:                                             ; preds = %.preheader60.preheader
  %i.dg = icmp slt i32 %i.u, 0
  br i1 %i.dg, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.dh = load i32, ptr %i.r, align 4
  br label %bb.i

bb.h:                                             ; preds = %.preheader60.preheader
  %i.di = icmp sgt i32 %i.u, -1
  br i1 %i.di, label %bb.i, label %kyber_resize_domain.exit.thread

kyber_resize_domain.exit.thread:                  ; preds = %bb.h
  %i.dj = tail call fastcc i32 @calculate_percentile(ptr noundef %i.j, i32 noundef 1, i32 noundef 0, i32 noundef 99) #22, !srcloc !50
  br label %bb.o

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g
  %storemerge = phi i32 [ -1, %bb.f ], [ -1, %bb.g ], [ %i.u, %bb.h ]
  %.1 = phi i32 [ %i.u, %bb.f ], [ %i.dh, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  store i32 %storemerge, ptr %i.r, align 4
  %i.dk = icmp sgt i32 %.1, -1
  %i.dl = icmp sgt i32 %.1, 3
  %or.cond = or i1 %spec.select.2, %i.dl
  %or.cond55 = and i1 %i.dk, %or.cond
  br i1 %or.cond55, label %bb.j, label %kyber_resize_domain.exit

bb.j:                                             ; preds = %bb.i
  %i.dm = load i32, ptr %i.s, align 8             ; 2 uses
  %i.dn = add nuw i32 %.1, 1
  %i.do = mul i32 %i.dm, %i.dn
  %i.dp = lshr i32 %i.do, 2
  %i.dq = tail call i32 @llvm.umax.i32(i32 %i.dp, i32 1)
  %i.dr = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 256) ; 3 uses
  %.not24.i = icmp eq i32 %i.dr, %i.dm
  br i1 %.not24.i, label %kyber_resize_domain.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @sbitmap_queue_resize(ptr noundef %i.s, i32 noundef %i.dr) #17
  %i.ds = load i32, ptr %i.t, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_kyber_adjust, i64 8), i1 false) #18
          to label %kyber_resize_domain.exit [label %arch_test_bit.exit.i.i.i], !srcloc !21

arch_test_bit.exit.i.i.i:                         ; preds = %bb.k
  %i.dt = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #18, !srcloc !53
  %i.du = zext i32 %i.dt to i64
  %i.dv = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.du) #18, !srcloc !22 ; 2 uses
  %i.dw = icmp ult i8 %i.dv, 2
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = trunc nuw i8 %i.dv to i1
  br i1 %i.dx, label %bb.l, label %kyber_resize_domain.exit

bb.l:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.dy = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dy, ptr elementtype(i64) %i.dy) #18, !srcloc !23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !24
  %i.dz = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_kyber_adjust, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = tail call i32 @__SCT__tp_func_kyber_adjust(ptr noundef %i.eb, i32 noundef %i.ds, ptr noundef nonnull @.str.24, i32 noundef range(i32 0, 1073741824) %i.dr) #17 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !25
  %i.ed = getelementptr i8, ptr %i.dy, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ed, ptr elementtype(i64) %i.ed) #18, !srcloc !26
  br label %kyber_resize_domain.exit

kyber_resize_domain.exit:                         ; preds = %bb.n, %arch_test_bit.exit.i.i.i, %bb.k, %bb.j, %bb.i
  %i.ee = tail call fastcc i32 @calculate_percentile(ptr noundef %i.j, i32 noundef 1, i32 noundef 0, i32 noundef 99) #22, !srcloc !50 ; 3 uses
  br i1 %spec.select.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %kyber_resize_domain.exit.thread, %kyber_resize_domain.exit
  %i.ef = phi i32 [ %i.dj, %kyber_resize_domain.exit.thread ], [ %i.ee, %kyber_resize_domain.exit ] ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, -1
  br i1 %i.eg, label %bb.r, label %kyber_resize_domain.exit.1.thread

kyber_resize_domain.exit.1.thread:                ; preds = %bb.o
  %i.eh = tail call fastcc i32 @calculate_percentile(ptr noundef %i.j, i32 noundef 2, i32 noundef 0, i32 noundef 99) #22, !srcloc !50
  br label %bb.x

bb.p:                                             ; preds = %kyber_resize_domain.exit
  %i.ei = icmp slt i32 %i.ee, 0
  br i1 %i.ei, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ej = getelementptr i8, ptr %0, i64 260
  %i.ek = load i32, ptr %i.ej, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.sink = phi i32 [ %i.ef, %bb.o ], [ -1, %bb.q ], [ -1, %bb.p ]
  %.1.1 = phi i32 [ %i.ef, %bb.o ], [ %i.ek, %bb.q ], [ %i.ee, %bb.p ] ; 3 uses
  %i.el = getelementptr i8, ptr %0, i64 260
  store i32 %.sink, ptr %i.el, align 4
  %i.em = icmp sgt i32 %.1.1, -1
  %i.en = icmp sgt i32 %.1.1, 3
  %or.cond.1 = or i1 %spec.select.2, %i.en
  %or.cond55.1 = and i1 %i.em, %or.cond.1
  br i1 %or.cond55.1, label %bb.s, label %kyber_resize_domain.exit.1

bb.s:                                             ; preds = %bb.r
  %i.eo = getelementptr i8, ptr %0, i64 -200      ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8            ; 2 uses
  %i.eq = add nuw i32 %.1.1, 1
  %i.er = mul i32 %i.ep, %i.eq
  %i.es = lshr i32 %i.er, 2
  %i.et = tail call i32 @llvm.umax.i32(i32 %i.es, i32 1)
  %i.eu = tail call i32 @llvm.umin.i32(i32 %i.et, i32 128) ; 3 uses
  %.not24.i.1 = icmp eq i32 %i.eu, %i.ep
  br i1 %.not24.i.1, label %kyber_resize_domain.exit.1, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @sbitmap_queue_resize(ptr noundef %i.eo, i32 noundef %i.eu) #17
  %i.ev = load i32, ptr %i.t, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_kyber_adjust, i64 8), i1 false) #18
          to label %kyber_resize_domain.exit.1 [label %arch_test_bit.exit.i.i.i.1], !srcloc !21

arch_test_bit.exit.i.i.i.1:                       ; preds = %bb.t
  %i.ew = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #18, !srcloc !53
  %i.ex = zext i32 %i.ew to i64
  %i.ey = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ex) #18, !srcloc !22 ; 2 uses
  %i.ez = icmp ult i8 %i.ey, 2
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = trunc nuw i8 %i.ey to i1
  br i1 %i.fa, label %bb.u, label %kyber_resize_domain.exit.1

bb.u:                                             ; preds = %arch_test_bit.exit.i.i.i.1
  %i.fb = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fb, ptr elementtype(i64) %i.fb) #18, !srcloc !23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !24
  %i.fc = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_kyber_adjust, i64 56), align 8 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = tail call i32 @__SCT__tp_func_kyber_adjust(ptr noundef %i.fe, i32 noundef %i.ev, ptr noundef nonnull @.str.25, i32 noundef range(i32 0, 1073741824) %i.eu) #17 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !25
  %i.fg = getelementptr i8, ptr %i.fb, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fg, ptr elementtype(i64) %i.fg) #18, !srcloc !26
  br label %kyber_resize_domain.exit.1

kyber_resize_domain.exit.1:                       ; preds = %bb.w, %arch_test_bit.exit.i.i.i.1, %bb.t, %bb.s, %bb.r
  %i.fh = tail call fastcc i32 @calculate_percentile(ptr noundef %i.j, i32 noundef 2, i32 noundef 0, i32 noundef 99) #22, !srcloc !50 ; 3 uses
  br i1 %spec.select.2, label %bb.y, label %bb.x

bb.x:                                             ; preds = %kyber_resize_domain.exit.1.thread, %kyber_resize_domain.exit.1
  %i.fi = phi i32 [ %i.eh, %kyber_resize_domain.exit.1.thread ], [ %i.fh, %kyber_resize_domain.exit.1 ] ; 3 uses
  %i.fj = icmp sgt i32 %i.fi, -1
  br i1 %i.fj, label %bb.aa, label %kyber_resize_domain.exit.2

bb.y:                                             ; preds = %kyber_resize_domain.exit.1
  %i.fk = icmp slt i32 %i.fh, 0
  br i1 %i.fk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fl = getelementptr i8, ptr %0, i64 264
  %i.fm = load i32, ptr %i.fl, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.sink88 = phi i32 [ %i.fi, %bb.x ], [ -1, %bb.z ], [ -1, %bb.y ]
  %.1.2 = phi i32 [ %i.fi, %bb.x ], [ %i.fm, %bb.z ], [ %i.fh, %bb.y ] ; 3 uses
  %i.fn = getelementptr i8, ptr %0, i64 264
  store i32 %.sink88, ptr %i.fn, align 4
  %i.fo = icmp sgt i32 %.1.2, -1
  %i.fp = icmp sgt i32 %.1.2, 3
  %or.cond.2 = or i1 %spec.select.2, %i.fp
  %or.cond55.2 = and i1 %i.fo, %or.cond.2
  br i1 %or.cond55.2, label %bb.ab, label %kyber_resize_domain.exit.2

bb.ab:                                            ; preds = %bb.aa
  %i.fq = getelementptr i8, ptr %0, i64 -136      ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8            ; 2 uses
  %i.fs = add nuw i32 %.1.2, 1
  %i.ft = mul i32 %i.fr, %i.fs
  %i.fu = lshr i32 %i.ft, 2
  %i.fv = tail call i32 @llvm.umax.i32(i32 %i.fu, i32 1)
  %i.fw = tail call i32 @llvm.umin.i32(i32 %i.fv, i32 64) ; 3 uses
  %.not24.i.2 = icmp eq i32 %i.fw, %i.fr
  br i1 %.not24.i.2, label %kyber_resize_domain.exit.2, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @sbitmap_queue_resize(ptr noundef %i.fq, i32 noundef %i.fw) #17
  %i.fx = load i32, ptr %i.t, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_kyber_adjust, i64 8), i1 false) #18
          to label %kyber_resize_domain.exit.2 [label %arch_test_bit.exit.i.i.i.2], !srcloc !21

arch_test_bit.exit.i.i.i.2:                       ; preds = %bb.ac
  %i.fy = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #18, !srcloc !53
  %i.fz = zext i32 %i.fy to i64
  %i.ga = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.fz) #18, !srcloc !22 ; 2 uses
  %i.gb = icmp ult i8 %i.ga, 2
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = trunc nuw i8 %i.ga to i1
  br i1 %i.gc, label %bb.ad, label %kyber_resize_domain.exit.2

bb.ad:                                            ; preds = %arch_test_bit.exit.i.i.i.2
  %i.gd = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gd, ptr elementtype(i64) %i.gd) #18, !srcloc !23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !24
  %i.ge = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_kyber_adjust, i64 56), align 8 ; 2 uses
  %.not.i.i.i.2 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.2, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = tail call i32 @__SCT__tp_func_kyber_adjust(ptr noundef %i.gg, i32 noundef %i.fx, ptr noundef nonnull @.str.26, i32 noundef range(i32 0, 1073741824) %i.fw) #17 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !25
  %i.gi = getelementptr i8, ptr %i.gd, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gi, ptr elementtype(i64) %i.gi) #18, !srcloc !26
  br label %kyber_resize_domain.exit.2

kyber_resize_domain.exit.2:                       ; preds = %bb.af, %arch_test_bit.exit.i.i.i.2, %bb.ac, %bb.ab, %bb.aa, %bb.x
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sbitmap_queue_init_node(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -1, 8) i32 @calculate_percentile(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 90, 100) %3) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320
  %i.b = zext nneg i32 %1 to i64                  ; 3 uses
  %i.c = getelementptr [64 x i8], ptr %i.a, i64 %i.b
  %i.d = zext nneg i32 %2 to i64                  ; 2 uses
  %i.e = getelementptr [32 x i8], ptr %i.c, i64 %i.d ; 9 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = getelementptr i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = add i32 %i.h, %i.f
  %i.j = getelementptr i8, ptr %i.e, i64 8
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = add i32 %i.k, %i.i
  %i.m = getelementptr i8, ptr %i.e, i64 12
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = add i32 %i.n, %i.l
  %i.p = getelementptr i8, ptr %i.e, i64 16
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %i.r = add i32 %i.q, %i.o
  %i.s = getelementptr i8, ptr %i.e, i64 20
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = add i32 %i.t, %i.r
  %i.v = getelementptr i8, ptr %i.e, i64 24
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = add i32 %i.w, %i.u
  %i.y = getelementptr i8, ptr %i.e, i64 28
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add i32 %i.z, %i.x                      ; 4 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %trace_kyber_latency.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr i8, ptr %0, i64 512
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %i.b ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %.not45 = icmp eq i64 %i.ad, 0
  br i1 %.not45, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = load volatile i64, ptr @jiffies, align 64
  %i.af = add i64 %i.ae, 1000
  %i.ag = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1) ; 2 uses
  store i64 %i.ag, ptr %i.ac, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = phi i64 [ %i.ag, %bb.c ], [ %i.ad, %bb.b ]
  %i.ai = icmp ult i32 %i.aa, 500
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load volatile i64, ptr @jiffies, align 64
  %i.ak = sub i64 %i.aj, %i.ah
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %trace_kyber_latency.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 0, ptr %i.ac, align 8
  %i.am = mul i32 %i.aa, %3
  %i.an = add i32 %i.am, 99
  %i.ao = udiv i32 %i.an, 100                     ; 2 uses
  %.not46 = icmp ult i32 %i.f, %i.ao
  br i1 %.not46, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ap = sub nuw nsw i32 %i.ao, %i.f             ; 2 uses
  %.not46.1 = icmp ult i32 %i.h, %i.ap
  br i1 %.not46.1, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.aq = sub nuw nsw i32 %i.ap, %i.h             ; 2 uses
  %.not46.2 = icmp ult i32 %i.k, %i.aq
  br i1 %.not46.2, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ar = sub nuw nsw i32 %i.aq, %i.k             ; 2 uses
  %.not46.3 = icmp ult i32 %i.n, %i.ar
  br i1 %.not46.3, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.as = sub nuw nsw i32 %i.ar, %i.n             ; 2 uses
  %.not46.4 = icmp ult i32 %i.q, %i.as
  br i1 %.not46.4, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.at = sub nuw nsw i32 %i.as, %i.q             ; 2 uses
  %.not46.5 = icmp ult i32 %i.t, %i.at
  br i1 %.not46.5, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = sub nuw nsw i32 %i.at, %i.t
  %.not46.6 = icmp ult i32 %i.w, %i.au
  %spec.select = select i1 %.not46.6, i32 7, i32 6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.1.lcssa = phi i32 [ 0, %bb.f ], [ 5, %bb.k ], [ 1, %bb.g ], [ %spec.select, %bb.l ], [ 2, %bb.h ], [ 4, %bb.j ], [ 3, %bb.i ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.av = getelementptr i8, ptr %0, i64 8
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = getelementptr [8 x i8], ptr @kyber_domain_names, i64 %i.b
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr [8 x i8], ptr @kyber_latency_type_names, i64 %i.d
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = add nuw nsw i32 %.1.lcssa, 1
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_kyber_latency, i64 8), i1 false) #18
          to label %trace_kyber_latency.exit [label %arch_test_bit.exit.i.i], !srcloc !21

arch_test_bit.exit.i.i:                           ; preds = %bb.m
  %i.bc = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #18, !srcloc !54
  %i.bd = zext i32 %i.bc to i64
  %i.be = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bd) #18, !srcloc !22 ; 2 uses
  %i.bf = icmp ult i8 %i.be, 2
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = trunc nuw i8 %i.be to i1
  br i1 %i.bg, label %bb.n, label %trace_kyber_latency.exit

bb.n:                                             ; preds = %arch_test_bit.exit.i.i
  %i.bh = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bh, ptr elementtype(i64) %i.bh) #18, !srcloc !23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !24
  %i.bi = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_kyber_latency, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call i32 @__SCT__tp_func_kyber_latency(ptr noundef %i.bk, i32 noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ba, i32 noundef range(i32 90, 100) %3, i32 noundef %i.bb, i32 noundef 4, i32 noundef range(i32 1, 0) %i.aa) #17 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !25
  %i.bm = getelementptr i8, ptr %i.bh, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bm, ptr elementtype(i64) %i.bm) #18, !srcloc !26
  br label %trace_kyber_latency.exit

trace_kyber_latency.exit:                         ; preds = %bb.p, %arch_test_bit.exit.i.i, %bb.m, %bb.e, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.e ], [ %.1.lcssa, %bb.m ], [ %.1.lcssa, %bb.p ], [ %.1.lcssa, %arch_test_bit.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sbitmap_queue_resize(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @blk_bio_list_merge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
end_hunk_0
