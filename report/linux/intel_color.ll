Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_color?download=true
inline.NumInlined: 670
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@skl_get_config:bb.a
  %i.ah = tail call i32 %i.ag(ptr noundef %i.ae, i32 %i.ad, i1 noundef zeroext true) #11, !inline_history !1 ; 3 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.ad) #11
  %i.ai = getelementptr i8, ptr %i.e, i64 1168
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = icmp ult i16 %i.aj, 35
  br i1 %i.ak, label %bb.e, label %bb.i

bb.e:                                             ; preds = %ilk_read_csc_mode.exit
  %.not17 = icmp sgt i32 %i.ah, -1
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr i8, ptr %0, i64 4400
  store i8 1, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = and i32 %i.ah, 1073741824
  %.not18 = icmp eq i32 %i.am, 0
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %0, i64 4401
  store i8 1, ptr %i.an, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %ilk_read_csc_mode.exit
  %i.ao = and i32 %i.ah, 1073741823
  %i.ap = getelementptr i8, ptr %0, i64 736
  store i32 %i.ao, ptr %i.ap, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xelpd_load_plane_csc_matrix(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [9 x i16], align 16               ; 25 uses
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__drm_to_display(ptr noundef nonnull %i.c) #11
  %.pre = load ptr, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 13 uses
  %i.g = getelementptr i8, ptr %i.e, i64 1360
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.e, i64 1356
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 224
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %i.a, i8 0, i64 18, i1 false)
  %i.m = tail call zeroext i1 @icl_is_hdr_plane(ptr noundef %i.f, i32 noundef %i.j) #11
  %i.n = icmp ne ptr %i.l, null
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.d, label %intel_de_write_dsb.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.l, i64 80
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.r
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.r ] ; 7 uses
  %.0213344 = phi i32 [ 0, %bb.d ], [ %.1, %bb.r ] ; 3 uses
  %i.q = sext i32 %.0213344 to i64
  %i.r = getelementptr [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = and i64 %i.s, 9223372036854775807        ; 12 uses
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 17179869183) ; 6 uses
  %.not226 = icmp sgt i64 %i.s, -1
  br i1 %.not226, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr [2 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.w = load i16, ptr %i.v, align 2
  %i.x = or i16 %i.w, -32768
  store i16 %i.x, ptr %i.v, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = icmp samesign ult i64 %i.t, 536870912
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = lshr i64 %i.u, 17
  %i.aa = icmp samesign ugt i64 %i.t, 536215551
  %i.ab = trunc nuw nsw i64 %i.z to i16
  %i.ac = add nuw nsw i16 %i.ab, 4
  %i.ad = and i16 %i.ac, 4088
  %i.ae = or disjoint i16 %i.ad, 12288
  %i.af = select i1 %i.aa, i16 16376, i16 %i.ae
  %i.ag = getelementptr [2 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = or i16 %i.ah, %i.af
  store i16 %i.ai, ptr %i.ag, align 2
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.aj = icmp samesign ult i64 %i.t, 1073741824
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = lshr i64 %i.u, 18
  %i.al = icmp samesign ugt i64 %i.t, 1072431103
  %i.am = trunc nuw nsw i64 %i.ak to i16
  %i.an = add nuw nsw i16 %i.am, 4
  %i.ao = and i16 %i.an, 4088
  %i.ap = or disjoint i16 %i.ao, 8192
  %i.aq = select i1 %i.al, i16 12280, i16 %i.ap
  %i.ar = getelementptr [2 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = or i16 %i.as, %i.aq
  store i16 %i.at, ptr %i.ar, align 2
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.au = icmp samesign ult i64 %i.t, 2147483648
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = lshr i64 %i.u, 19
  %i.aw = icmp samesign ugt i64 %i.t, 2144862207
  %i.ax = trunc nuw nsw i64 %i.av to i16
  %i.ay = add nuw nsw i16 %i.ax, 4
  %i.az = and i16 %i.ay, 4088
  %i.ba = or disjoint i16 %i.az, 4096
  %i.bb = select i1 %i.aw, i16 8184, i16 %i.ba
  %i.bc = getelementptr [2 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = or i16 %i.bd, %i.bb
  store i16 %i.be, ptr %i.bc, align 2
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bf = icmp samesign ult i64 %i.t, 4294967296
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = lshr i64 %i.u, 20
  %i.bh = icmp samesign ugt i64 %i.t, 4289724415
  %i.bi = trunc nuw nsw i64 %i.bg to i16
  %i.bj = add nuw nsw i16 %i.bi, 4
  %i.bk = and i16 %i.bj, 4088
  %i.bl = select i1 %i.bh, i16 4088, i16 %i.bk
  %i.bm = getelementptr [2 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = or i16 %i.bn, %i.bl
  store i16 %i.bo, ptr %i.bm, align 2
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bp = icmp samesign ult i64 %i.t, 8589934592
  %i.bq = getelementptr [2 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.br = load i16, ptr %i.bq, align 2            ; 2 uses
  br i1 %i.bp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = lshr i64 %i.u, 21
  %i.bt = icmp samesign ugt i64 %i.t, 8579448831
  %i.bu = trunc nuw nsw i64 %i.bs to i16
  %i.bv = add nuw nsw i16 %i.bu, 4
  %i.bw = and i16 %i.bv, 4088
  %i.bx = or disjoint i16 %i.bw, 28672
  %i.by = select i1 %i.bt, i16 32760, i16 %i.bx
  %i.bz = or i16 %i.br, %i.by
  store i16 %i.bz, ptr %i.bq, align 2
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ca = lshr i64 %i.u, 22
  %i.cb = icmp samesign ugt i64 %i.t, 17158897663
  %i.cc = trunc nuw nsw i64 %i.ca to i16
  %i.cd = add nuw nsw i16 %i.cc, 4
  %i.ce = and i16 %i.cd, 4088
  %i.cf = or disjoint i16 %i.ce, 24576
  %i.cg = select i1 %i.cb, i16 28664, i16 %i.cf
  %i.ch = or i16 %i.br, %i.cg
  store i16 %i.ch, ptr %i.bq, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.n, %bb.q, %bb.p, %bb.l, %bb.h
  %i.ci = add i32 %.0213344, 2                    ; 2 uses
  %i.cj = and i32 %i.ci, 3
  %.not227 = icmp eq i32 %i.cj, 0
  %i.ck = add i32 %.0213344, 1
  %.1 = select i1 %.not227, i32 %i.ci, i32 %i.ck
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.s, label %bb.e, !llvm.loop !148

bb.s:                                             ; preds = %bb.r
  %i.cl = shl i32 %i.h, 12
  %i.cm = shl i32 %i.j, 8
  %i.cn = add i32 %i.cm, %i.cl                    ; 11 uses
  %i.co = add i32 %i.cn, 459280                   ; 13 uses
  %i.cp = load i16, ptr %i.a, align 16
  %i.cq = zext i16 %i.cp to i32
  %i.cr = shl nuw i32 %i.cq, 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = zext i16 %i.ct to i32
  %i.cv = or disjoint i32 %i.cr, %i.cu            ; 3 uses
  %.not.i248 = icmp eq ptr %0, null               ; 4 uses
  br i1 %.not.i248, label %bb.t, label %bb.bh

bb.t:                                             ; preds = %bb.s
  %i.cw = zext i32 %i.cv to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !18

arch_test_bit.exit.i.i.i:                         ; preds = %bb.t
  %i.cx = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.cy = zext i32 %i.cx to i64
  %i.cz = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.cy) #12, !srcloc !20 ; 2 uses
  %i.da = icmp ult i8 %i.cz, 2
  tail call void @llvm.assume(i1 %i.da)
  %i.db = trunc nuw i8 %i.cz to i1
  br i1 %i.db, label %bb.u, label %trace_i915_reg_rw.exit.i

bb.u:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.dc = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dc, ptr elementtype(i64) %i.dc) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.dd = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.df, i1 noundef zeroext true, i32 %i.co, i64 noundef range(i64 0, 4294967296) %i.cw, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.dh = getelementptr i8, ptr %i.dc, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dh, ptr elementtype(i64) %i.dh) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i

trace_i915_reg_rw.exit.i:                         ; preds = %bb.w, %arch_test_bit.exit.i.i.i, %bb.t
  %.val.i = load ptr, ptr %i.f, align 8
  %i.di = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #11 ; 2 uses
  %i.dj = icmp ult i32 %i.co, 262144              ; 4 uses
  br i1 %i.dj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %trace_i915_reg_rw.exit.i
  %i.dk = getelementptr i8, ptr %i.di, i64 36
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = add i32 %i.dl, %i.co
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %trace_i915_reg_rw.exit.i
  %.0.i.i = phi i32 [ %i.dm, %bb.x ], [ %i.co, %trace_i915_reg_rw.exit.i ]
  %i.dn = load ptr, ptr %i.di, align 8
  %i.do = zext i32 %.0.i.i to i64
  %i.dp = getelementptr i8, ptr %i.dn, i64 %i.do
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.cv, ptr elementtype(i32) %i.dp) #12, !srcloc !25
  %2 = or disjoint i32 %i.co, 4                   ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dr = load i16, ptr %i.dq, align 4
  %i.ds = zext i16 %i.dr to i32
  %i.dt = shl nuw i32 %i.ds, 16                   ; 2 uses
  %i.du = zext i32 %i.dt to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i251 [label %arch_test_bit.exit.i.i.i250], !srcloc !18

arch_test_bit.exit.i.i.i250:                      ; preds = %bb.y
  %i.dv = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.dw = zext i32 %i.dv to i64
  %i.dx = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.dw) #12, !srcloc !20 ; 2 uses
  %i.dy = icmp ult i8 %i.dx, 2
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = trunc nuw i8 %i.dx to i1
  br i1 %i.dz, label %bb.z, label %trace_i915_reg_rw.exit.i251

bb.z:                                             ; preds = %arch_test_bit.exit.i.i.i250
  %i.ea = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ea, ptr elementtype(i64) %i.ea) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.eb = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i254 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i254, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ed, i1 noundef zeroext true, i32 %2, i64 noundef range(i64 0, 4294967296) %i.du, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.ef = getelementptr i8, ptr %i.ea, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ef, ptr elementtype(i64) %i.ef) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i251

trace_i915_reg_rw.exit.i251:                      ; preds = %bb.ab, %arch_test_bit.exit.i.i.i250, %bb.y
  %.val.i252 = load ptr, ptr %i.f, align 8
  %i.eg = tail call ptr @to_intel_uncore(ptr noundef %.val.i252) #11 ; 2 uses
  br i1 %i.dj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %trace_i915_reg_rw.exit.i251
  %i.eh = getelementptr i8, ptr %i.eg, i64 36
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = add i32 %i.ei, %2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %trace_i915_reg_rw.exit.i251
  %.0.i.i253 = phi i32 [ %i.ej, %bb.ac ], [ %2, %trace_i915_reg_rw.exit.i251 ]
  %i.ek = load ptr, ptr %i.eg, align 8
  %i.el = zext i32 %.0.i.i253 to i64
  %i.em = getelementptr i8, ptr %i.ek, i64 %i.el
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.dt, ptr elementtype(i32) %i.em) #12, !srcloc !25
  %3 = or disjoint i32 %i.co, 8                   ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = zext i16 %i.eo to i32
  %i.eq = shl nuw i32 %i.ep, 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.es = load i16, ptr %i.er, align 8
  %i.et = zext i16 %i.es to i32
  %i.eu = or disjoint i32 %i.eq, %i.et            ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i259 [label %arch_test_bit.exit.i.i.i258], !srcloc !18

arch_test_bit.exit.i.i.i258:                      ; preds = %bb.ad
  %i.ew = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.ex = zext i32 %i.ew to i64
  %i.ey = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ex) #12, !srcloc !20 ; 2 uses
  %i.ez = icmp ult i8 %i.ey, 2
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = trunc nuw i8 %i.ey to i1
  br i1 %i.fa, label %bb.ae, label %trace_i915_reg_rw.exit.i259

bb.ae:                                            ; preds = %arch_test_bit.exit.i.i.i258
  %i.fb = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fb, ptr elementtype(i64) %i.fb) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.fc = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i262 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i262, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.fe, i1 noundef zeroext true, i32 %3, i64 noundef range(i64 0, 4294967296) %i.ev, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.fg = getelementptr i8, ptr %i.fb, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fg, ptr elementtype(i64) %i.fg) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i259

trace_i915_reg_rw.exit.i259:                      ; preds = %bb.ag, %arch_test_bit.exit.i.i.i258, %bb.ad
  %.val.i260 = load ptr, ptr %i.f, align 8
  %i.fh = tail call ptr @to_intel_uncore(ptr noundef %.val.i260) #11 ; 2 uses
  br i1 %i.dj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %trace_i915_reg_rw.exit.i259
  %i.fi = getelementptr i8, ptr %i.fh, i64 36
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = add i32 %i.fj, %3
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %trace_i915_reg_rw.exit.i259
  %.0.i.i261 = phi i32 [ %i.fk, %bb.ah ], [ %3, %trace_i915_reg_rw.exit.i259 ]
  %i.fl = load ptr, ptr %i.fh, align 8
  %i.fm = zext i32 %.0.i.i261 to i64
  %i.fn = getelementptr i8, ptr %i.fl, i64 %i.fm
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.eu, ptr elementtype(i32) %i.fn) #12, !srcloc !25
  %4 = or disjoint i32 %i.co, 12                  ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.fp = load i16, ptr %i.fo, align 2
  %i.fq = zext i16 %i.fp to i32
  %i.fr = shl nuw i32 %i.fq, 16                   ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i267 [label %arch_test_bit.exit.i.i.i266], !srcloc !18

arch_test_bit.exit.i.i.i266:                      ; preds = %bb.ai
  %i.ft = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.fu = zext i32 %i.ft to i64
  %i.fv = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.fu) #12, !srcloc !20 ; 2 uses
  %i.fw = icmp ult i8 %i.fv, 2
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = trunc nuw i8 %i.fv to i1
  br i1 %i.fx, label %bb.aj, label %trace_i915_reg_rw.exit.i267

bb.aj:                                            ; preds = %arch_test_bit.exit.i.i.i266
  %i.fy = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fy, ptr elementtype(i64) %i.fy) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.fz = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i270 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i270, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ga = getelementptr i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.gb, i1 noundef zeroext true, i32 %4, i64 noundef range(i64 0, 4294967296) %i.fs, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.gd = getelementptr i8, ptr %i.fy, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gd, ptr elementtype(i64) %i.gd) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i267

trace_i915_reg_rw.exit.i267:                      ; preds = %bb.al, %arch_test_bit.exit.i.i.i266, %bb.ai
  %.val.i268 = load ptr, ptr %i.f, align 8
  %i.ge = tail call ptr @to_intel_uncore(ptr noundef %.val.i268) #11 ; 2 uses
  br i1 %i.dj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %trace_i915_reg_rw.exit.i267
  %i.gf = getelementptr i8, ptr %i.ge, i64 36
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = add i32 %i.gg, %4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %trace_i915_reg_rw.exit.i267
  %.0.i.i269 = phi i32 [ %i.gh, %bb.am ], [ %4, %trace_i915_reg_rw.exit.i267 ]
  %i.gi = load ptr, ptr %i.ge, align 8
  %i.gj = zext i32 %.0.i.i269 to i64
  %i.gk = getelementptr i8, ptr %i.gi, i64 %i.gj
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.fr, ptr elementtype(i32) %i.gk) #12, !srcloc !25
  %i.gl = add i32 %i.cn, 459296                   ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.gn = load i16, ptr %i.gm, align 4
  %i.go = zext i16 %i.gn to i32
  %i.gp = shl nuw i32 %i.go, 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.gr = load i16, ptr %i.gq, align 2
  %i.gs = zext i16 %i.gr to i32
  %i.gt = or disjoint i32 %i.gp, %i.gs            ; 2 uses
  %i.gu = zext i32 %i.gt to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i275 [label %arch_test_bit.exit.i.i.i274], !srcloc !18

arch_test_bit.exit.i.i.i274:                      ; preds = %bb.an
  %i.gv = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.gw = zext i32 %i.gv to i64
  %i.gx = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.gw) #12, !srcloc !20 ; 2 uses
  %i.gy = icmp ult i8 %i.gx, 2
  tail call void @llvm.assume(i1 %i.gy)
  %i.gz = trunc nuw i8 %i.gx to i1
  br i1 %i.gz, label %bb.ao, label %trace_i915_reg_rw.exit.i275

bb.ao:                                            ; preds = %arch_test_bit.exit.i.i.i274
  %i.ha = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ha, ptr elementtype(i64) %i.ha) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.hb = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i278 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i278, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = getelementptr i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.hd, i1 noundef zeroext true, i32 %i.gl, i64 noundef range(i64 0, 4294967296) %i.gu, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.hf = getelementptr i8, ptr %i.ha, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hf, ptr elementtype(i64) %i.hf) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i275

trace_i915_reg_rw.exit.i275:                      ; preds = %bb.aq, %arch_test_bit.exit.i.i.i274, %bb.an
  %.val.i276 = load ptr, ptr %i.f, align 8
  %i.hg = tail call ptr @to_intel_uncore(ptr noundef %.val.i276) #11 ; 2 uses
  %i.hh = icmp ult i32 %i.co, 262128
  br i1 %i.hh, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %trace_i915_reg_rw.exit.i275
  %i.hi = getelementptr i8, ptr %i.hg, i64 36
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = add i32 %i.hj, %i.gl
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %trace_i915_reg_rw.exit.i275
  %.0.i.i277 = phi i32 [ %i.hk, %bb.ar ], [ %i.gl, %trace_i915_reg_rw.exit.i275 ]
  %i.hl = load ptr, ptr %i.hg, align 8
  %i.hm = zext i32 %.0.i.i277 to i64
  %i.hn = getelementptr i8, ptr %i.hl, i64 %i.hm
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.gt, ptr elementtype(i32) %i.hn) #12, !srcloc !25
  %i.ho = add i32 %i.cn, 459300                   ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hq = load i16, ptr %i.hp, align 16
  %i.hr = zext i16 %i.hq to i32
  %i.hs = shl nuw i32 %i.hr, 16                   ; 2 uses
  %i.ht = zext i32 %i.hs to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i283 [label %arch_test_bit.exit.i.i.i282], !srcloc !18

arch_test_bit.exit.i.i.i282:                      ; preds = %bb.as
  %i.hu = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.hv = zext i32 %i.hu to i64
  %i.hw = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.hv) #12, !srcloc !20 ; 2 uses
  %i.hx = icmp ult i8 %i.hw, 2
  tail call void @llvm.assume(i1 %i.hx)
  %i.hy = trunc nuw i8 %i.hw to i1
  br i1 %i.hy, label %bb.at, label %trace_i915_reg_rw.exit.i283

bb.at:                                            ; preds = %arch_test_bit.exit.i.i.i282
  %i.hz = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hz, ptr elementtype(i64) %i.hz) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.ia = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i286 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i286, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ic, i1 noundef zeroext true, i32 %i.ho, i64 noundef range(i64 0, 4294967296) %i.ht, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.ie = getelementptr i8, ptr %i.hz, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ie, ptr elementtype(i64) %i.ie) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i283

trace_i915_reg_rw.exit.i283:                      ; preds = %bb.av, %arch_test_bit.exit.i.i.i282, %bb.as
  %.val.i284 = load ptr, ptr %i.f, align 8
  %i.if = tail call ptr @to_intel_uncore(ptr noundef %.val.i284) #11 ; 2 uses
  %i.ig = icmp ult i32 %i.co, 262124
  br i1 %i.ig, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %trace_i915_reg_rw.exit.i283
  %i.ih = getelementptr i8, ptr %i.if, i64 36
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = add i32 %i.ii, %i.ho
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %trace_i915_reg_rw.exit.i283
  %.0.i.i285 = phi i32 [ %i.ij, %bb.aw ], [ %i.ho, %trace_i915_reg_rw.exit.i283 ]
  %i.ik = load ptr, ptr %i.if, align 8
  %i.il = zext i32 %.0.i.i285 to i64
  %i.im = getelementptr i8, ptr %i.ik, i64 %i.il
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.hs, ptr elementtype(i32) %i.im) #12, !srcloc !25
  %i.in = add i32 %i.cn, 459304                   ; 6 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i291 [label %arch_test_bit.exit.i.i.i290], !srcloc !18

arch_test_bit.exit.i.i.i290:                      ; preds = %bb.ax
  %i.io = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.ip = zext i32 %i.io to i64
  %i.iq = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ip) #12, !srcloc !20 ; 2 uses
  %i.ir = icmp ult i8 %i.iq, 2
  tail call void @llvm.assume(i1 %i.ir)
  %i.is = trunc nuw i8 %i.iq to i1
  br i1 %i.is, label %bb.ay, label %trace_i915_reg_rw.exit.i291

bb.ay:                                            ; preds = %arch_test_bit.exit.i.i.i290
  %i.it = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.it, ptr elementtype(i64) %i.it) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.iu = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i294 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i294, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.iv = getelementptr i8, ptr %i.iu, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.iw, i1 noundef zeroext true, i32 %i.in, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.iy = getelementptr i8, ptr %i.it, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.iy, ptr elementtype(i64) %i.iy) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i291

trace_i915_reg_rw.exit.i291:                      ; preds = %bb.ba, %arch_test_bit.exit.i.i.i290, %bb.ax
  %.val.i292 = load ptr, ptr %i.f, align 8
  %i.iz = tail call ptr @to_intel_uncore(ptr noundef %.val.i292) #11 ; 2 uses
  %i.ja = icmp ult i32 %i.in, 262144              ; 2 uses
  br i1 %i.ja, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %trace_i915_reg_rw.exit.i291
  %i.jb = getelementptr i8, ptr %i.iz, i64 36
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = add i32 %i.jc, %i.in
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %trace_i915_reg_rw.exit.i291
  %.0.i.i293 = phi i32 [ %i.jd, %bb.bb ], [ %i.in, %trace_i915_reg_rw.exit.i291 ]
  %i.je = load ptr, ptr %i.iz, align 8
  %i.jf = zext i32 %.0.i.i293 to i64
  %i.jg = getelementptr i8, ptr %i.je, i64 %i.jf
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.jg) #12, !srcloc !25
  %5 = or disjoint i32 %i.in, 4                   ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i299 [label %arch_test_bit.exit.i.i.i298], !srcloc !18

arch_test_bit.exit.i.i.i298:                      ; preds = %bb.bc
  %i.jh = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.ji = zext i32 %i.jh to i64
  %i.jj = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ji) #12, !srcloc !20 ; 2 uses
  %i.jk = icmp ult i8 %i.jj, 2
  tail call void @llvm.assume(i1 %i.jk)
  %i.jl = trunc nuw i8 %i.jj to i1
  br i1 %i.jl, label %bb.bd, label %trace_i915_reg_rw.exit.i299

bb.bd:                                            ; preds = %arch_test_bit.exit.i.i.i298
  %i.jm = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.jm, ptr elementtype(i64) %i.jm) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.jn = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i302 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i302, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jo = getelementptr i8, ptr %i.jn, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.jp, i1 noundef zeroext true, i32 %5, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.jr = getelementptr i8, ptr %i.jm, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.jr, ptr elementtype(i64) %i.jr) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i299

trace_i915_reg_rw.exit.i299:                      ; preds = %bb.bf, %arch_test_bit.exit.i.i.i298, %bb.bc
  %.val.i300 = load ptr, ptr %i.f, align 8
  %i.js = tail call ptr @to_intel_uncore(ptr noundef %.val.i300) #11 ; 2 uses
  br i1 %i.ja, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %trace_i915_reg_rw.exit.i299
  %i.jt = getelementptr i8, ptr %i.js, i64 36
  %i.ju = load i32, ptr %i.jt, align 4
  %i.jv = add i32 %i.ju, %5
  br label %bb.bi

bb.bh:                                            ; preds = %bb.s
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.co, i32 noundef %i.cv) #11
  %6 = or disjoint i32 %i.co, 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.jx = load i16, ptr %i.jw, align 4
  %i.jy = zext i16 %i.jx to i32
  %i.jz = shl nuw i32 %i.jy, 16
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %6, i32 noundef %i.jz) #11
  %7 = or disjoint i32 %i.co, 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.kb = load i16, ptr %i.ka, align 2
  %i.kc = zext i16 %i.kb to i32
  %i.kd = shl nuw i32 %i.kc, 16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.kf = load i16, ptr %i.ke, align 8
  %i.kg = zext i16 %i.kf to i32
  %i.kh = or disjoint i32 %i.kd, %i.kg
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %7, i32 noundef %i.kh) #11
  %8 = or disjoint i32 %i.co, 12
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.kj = load i16, ptr %i.ki, align 2
  %i.kk = zext i16 %i.kj to i32
  %i.kl = shl nuw i32 %i.kk, 16
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %8, i32 noundef %i.kl) #11
  %i.km = add i32 %i.cn, 459296
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ko = load i16, ptr %i.kn, align 4
  %i.kp = zext i16 %i.ko to i32
  %i.kq = shl nuw i32 %i.kp, 16
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.ks = load i16, ptr %i.kr, align 2
  %i.kt = zext i16 %i.ks to i32
  %i.ku = or disjoint i32 %i.kq, %i.kt
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.km, i32 noundef %i.ku) #11
  %i.kv = add i32 %i.cn, 459300
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.kx = load i16, ptr %i.kw, align 16
  %i.ky = zext i16 %i.kx to i32
  %i.kz = shl nuw i32 %i.ky, 16
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.kv, i32 noundef %i.kz) #11
  %i.la = add i32 %i.cn, 459304                   ; 2 uses
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.la, i32 noundef 0) #11
  %9 = or disjoint i32 %i.la, 4
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %9, i32 noundef 0) #11
  %i.lb = add i32 %i.cn, 459312
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.lb, i32 noundef 0) #11
  br label %intel_de_write_dsb.exit233

bb.bi:                                            ; preds = %bb.bg, %trace_i915_reg_rw.exit.i299
  %.0.i.i301 = phi i32 [ %i.jv, %bb.bg ], [ %5, %trace_i915_reg_rw.exit.i299 ]
  %i.lc = load ptr, ptr %i.js, align 8
  %i.ld = zext i32 %.0.i.i301 to i64
  %i.le = getelementptr i8, ptr %i.lc, i64 %i.ld
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.le) #12, !srcloc !25
  %i.lf = add i32 %i.cn, 459312                   ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i307 [label %arch_test_bit.exit.i.i.i306], !srcloc !18

arch_test_bit.exit.i.i.i306:                      ; preds = %bb.bi
  %i.lg = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.lh = zext i32 %i.lg to i64
  %i.li = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.lh) #12, !srcloc !20 ; 2 uses
  %i.lj = icmp ult i8 %i.li, 2
  tail call void @llvm.assume(i1 %i.lj)
  %i.lk = trunc nuw i8 %i.li to i1
  br i1 %i.lk, label %bb.bj, label %trace_i915_reg_rw.exit.i307

bb.bj:                                            ; preds = %arch_test_bit.exit.i.i.i306
  %i.ll = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ll, ptr elementtype(i64) %i.ll) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.lm = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i310 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i310, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ln = getelementptr i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.lo, i1 noundef zeroext true, i32 %i.lf, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.lq = getelementptr i8, ptr %i.ll, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.lq, ptr elementtype(i64) %i.lq) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i307

trace_i915_reg_rw.exit.i307:                      ; preds = %bb.bl, %arch_test_bit.exit.i.i.i306, %bb.bi
  %.val.i308 = load ptr, ptr %i.f, align 8
  %i.lr = tail call ptr @to_intel_uncore(ptr noundef %.val.i308) #11 ; 2 uses
  %i.ls = icmp ult i32 %i.in, 262136
  br i1 %i.ls, label %bb.bm, label %intel_de_write_fw.exit313

bb.bm:                                            ; preds = %trace_i915_reg_rw.exit.i307
  %i.lt = getelementptr i8, ptr %i.lr, i64 36
  %i.lu = load i32, ptr %i.lt, align 4
  %i.lv = add i32 %i.lu, %i.lf
  br label %intel_de_write_fw.exit313

intel_de_write_fw.exit313:                        ; preds = %trace_i915_reg_rw.exit.i307, %bb.bm
  %.0.i.i309 = phi i32 [ %i.lv, %bb.bm ], [ %i.lf, %trace_i915_reg_rw.exit.i307 ]
  %i.lw = load ptr, ptr %i.lr, align 8
  %i.lx = zext i32 %.0.i.i309 to i64
  %i.ly = getelementptr i8, ptr %i.lw, i64 %i.lx
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.ly) #12, !srcloc !25
  br label %intel_de_write_dsb.exit233

intel_de_write_dsb.exit233:                       ; preds = %bb.bh, %intel_de_write_fw.exit313
  %i.lz = add i32 %i.cn, 459316                   ; 8 uses
  %i.ma = getelementptr i8, ptr %i.p, i64 24
  %i.mb = load i64, ptr %i.ma, align 8            ; 2 uses
  %i.mc = lshr i64 %i.mb, 19
  %i.md = and i64 %i.mc, 17592186044415
  %i.me = add nuw nsw i64 %i.md, 1
  %i.mf = lshr i64 %i.me, 1                       ; 2 uses
  %i.mg = sub nsw i64 0, %i.mf
  %.not45.i = icmp slt i64 %i.mb, 0
  %i.mh = tail call i64 @llvm.smax.i64(i64 %i.mg, i64 -4096)
  %i.mi = select i1 %.not45.i, i64 %i.mh, i64 %i.mf
  %i.mj = tail call i64 @llvm.smin.i64(i64 %i.mi, i64 4095) ; 2 uses
  %i.mk = trunc nsw i64 %i.mj to i32
  %i.ml = and i32 %i.mk, 8191                     ; 2 uses
  br i1 %.not.i248, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %intel_de_write_dsb.exit233
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.lz, i32 noundef %i.ml) #11
  br label %intel_de_write_dsb.exit231

bb.bo:                                            ; preds = %intel_de_write_dsb.exit233
  %i.mm = and i64 %i.mj, 8191
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i315 [label %arch_test_bit.exit.i.i.i314], !srcloc !18

arch_test_bit.exit.i.i.i314:                      ; preds = %bb.bo
  %i.mn = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.mo = zext i32 %i.mn to i64
  %i.mp = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.mo) #12, !srcloc !20 ; 2 uses
  %i.mq = icmp ult i8 %i.mp, 2
  tail call void @llvm.assume(i1 %i.mq)
  %i.mr = trunc nuw i8 %i.mp to i1
  br i1 %i.mr, label %bb.bp, label %trace_i915_reg_rw.exit.i315

bb.bp:                                            ; preds = %arch_test_bit.exit.i.i.i314
  %i.ms = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ms, ptr elementtype(i64) %i.ms) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.mt = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i318 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i318, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mu = getelementptr i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.mv, i1 noundef zeroext true, i32 %i.lz, i64 noundef range(i64 0, 4294967296) %i.mm, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.mx = getelementptr i8, ptr %i.ms, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.mx, ptr elementtype(i64) %i.mx) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i315

trace_i915_reg_rw.exit.i315:                      ; preds = %bb.br, %arch_test_bit.exit.i.i.i314, %bb.bo
  %.val.i316 = load ptr, ptr %i.f, align 8
  %i.my = tail call ptr @to_intel_uncore(ptr noundef %.val.i316) #11 ; 2 uses
  %i.mz = icmp ult i32 %i.lz, 262144
  br i1 %i.mz, label %bb.bs, label %intel_de_write_fw.exit321

bb.bs:                                            ; preds = %trace_i915_reg_rw.exit.i315
  %i.na = getelementptr i8, ptr %i.my, i64 36
  %i.nb = load i32, ptr %i.na, align 4
  %i.nc = add i32 %i.nb, %i.lz
  br label %intel_de_write_fw.exit321

intel_de_write_fw.exit321:                        ; preds = %trace_i915_reg_rw.exit.i315, %bb.bs
  %.0.i.i317 = phi i32 [ %i.nc, %bb.bs ], [ %i.lz, %trace_i915_reg_rw.exit.i315 ]
  %i.nd = load ptr, ptr %i.my, align 8
  %i.ne = zext i32 %.0.i.i317 to i64
  %i.nf = getelementptr i8, ptr %i.nd, i64 %i.ne
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ml, ptr elementtype(i32) %i.nf) #12, !srcloc !25
  br label %intel_de_write_dsb.exit231

intel_de_write_dsb.exit231:                       ; preds = %bb.bn, %intel_de_write_fw.exit321
  %i.ng = add i32 %i.cn, 459320                   ; 4 uses
  %i.nh = getelementptr i8, ptr %i.p, i64 56
  %i.ni = load i64, ptr %i.nh, align 8            ; 2 uses
  %i.nj = lshr i64 %i.ni, 19
  %i.nk = and i64 %i.nj, 17592186044415
  %i.nl = add nuw nsw i64 %i.nk, 1
  %i.nm = lshr i64 %i.nl, 1                       ; 2 uses
  %i.nn = sub nsw i64 0, %i.nm
  %.not45.i322 = icmp slt i64 %i.ni, 0
  %i.no = tail call i64 @llvm.smax.i64(i64 %i.nn, i64 -4096)
  %i.np = select i1 %.not45.i322, i64 %i.no, i64 %i.nm
  %i.nq = tail call i64 @llvm.smin.i64(i64 %i.np, i64 4095) ; 2 uses
  %i.nr = trunc nsw i64 %i.nq to i32
  %i.ns = and i32 %i.nr, 8191                     ; 2 uses
  br i1 %.not.i248, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %intel_de_write_dsb.exit231
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.ng, i32 noundef %i.ns) #11
  br label %intel_de_write_dsb.exit229

bb.bu:                                            ; preds = %intel_de_write_dsb.exit231
  %i.nt = and i64 %i.nq, 8191
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i326 [label %arch_test_bit.exit.i.i.i325], !srcloc !18

arch_test_bit.exit.i.i.i325:                      ; preds = %bb.bu
  %i.nu = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.nv = zext i32 %i.nu to i64
  %i.nw = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.nv) #12, !srcloc !20 ; 2 uses
  %i.nx = icmp ult i8 %i.nw, 2
  tail call void @llvm.assume(i1 %i.nx)
  %i.ny = trunc nuw i8 %i.nw to i1
  br i1 %i.ny, label %bb.bv, label %trace_i915_reg_rw.exit.i326

bb.bv:                                            ; preds = %arch_test_bit.exit.i.i.i325
  %i.nz = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.nz, ptr elementtype(i64) %i.nz) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.oa = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i329 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i329, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ob = getelementptr i8, ptr %i.oa, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.oc, i1 noundef zeroext true, i32 %i.ng, i64 noundef range(i64 0, 4294967296) %i.nt, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.oe = getelementptr i8, ptr %i.nz, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.oe, ptr elementtype(i64) %i.oe) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i326

trace_i915_reg_rw.exit.i326:                      ; preds = %bb.bx, %arch_test_bit.exit.i.i.i325, %bb.bu
  %.val.i327 = load ptr, ptr %i.f, align 8
  %i.of = tail call ptr @to_intel_uncore(ptr noundef %.val.i327) #11 ; 2 uses
  %i.og = icmp ult i32 %i.lz, 262140
  br i1 %i.og, label %bb.by, label %intel_de_write_fw.exit332

bb.by:                                            ; preds = %trace_i915_reg_rw.exit.i326
  %i.oh = getelementptr i8, ptr %i.of, i64 36
  %i.oi = load i32, ptr %i.oh, align 4
  %i.oj = add i32 %i.oi, %i.ng
  br label %intel_de_write_fw.exit332

intel_de_write_fw.exit332:                        ; preds = %trace_i915_reg_rw.exit.i326, %bb.by
  %.0.i.i328 = phi i32 [ %i.oj, %bb.by ], [ %i.ng, %trace_i915_reg_rw.exit.i326 ]
  %i.ok = load ptr, ptr %i.of, align 8
  %i.ol = zext i32 %.0.i.i328 to i64
  %i.om = getelementptr i8, ptr %i.ok, i64 %i.ol
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ns, ptr elementtype(i32) %i.om) #12, !srcloc !25
  br label %intel_de_write_dsb.exit229

intel_de_write_dsb.exit229:                       ; preds = %bb.bt, %intel_de_write_fw.exit332
  %10 = or disjoint i32 %i.lz, 8                  ; 4 uses
  %i.on = getelementptr i8, ptr %i.p, i64 88
  %i.oo = load i64, ptr %i.on, align 8            ; 2 uses
  %i.op = lshr i64 %i.oo, 19
  %i.oq = and i64 %i.op, 17592186044415
  %i.or = add nuw nsw i64 %i.oq, 1
  %i.os = lshr i64 %i.or, 1                       ; 2 uses
  %i.ot = sub nsw i64 0, %i.os
  %.not45.i333 = icmp slt i64 %i.oo, 0
  %i.ou = tail call i64 @llvm.smax.i64(i64 %i.ot, i64 -4096)
  %i.ov = select i1 %.not45.i333, i64 %i.ou, i64 %i.os
  %i.ow = tail call i64 @llvm.smin.i64(i64 %i.ov, i64 4095) ; 2 uses
  %i.ox = trunc nsw i64 %i.ow to i32
  %i.oy = and i32 %i.ox, 8191                     ; 2 uses
  br i1 %.not.i248, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %intel_de_write_dsb.exit229
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %10, i32 noundef %i.oy) #11
  br label %intel_de_write_dsb.exit

bb.ca:                                            ; preds = %intel_de_write_dsb.exit229
  %i.oz = and i64 %i.ow, 8191
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i337 [label %arch_test_bit.exit.i.i.i336], !srcloc !18

arch_test_bit.exit.i.i.i336:                      ; preds = %bb.ca
  %i.pa = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.pb = zext i32 %i.pa to i64
  %i.pc = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.pb) #12, !srcloc !20 ; 2 uses
  %i.pd = icmp ult i8 %i.pc, 2
  tail call void @llvm.assume(i1 %i.pd)
  %i.pe = trunc nuw i8 %i.pc to i1
  br i1 %i.pe, label %bb.cb, label %trace_i915_reg_rw.exit.i337

bb.cb:                                            ; preds = %arch_test_bit.exit.i.i.i336
  %i.pf = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.pf, ptr elementtype(i64) %i.pf) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.pg = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i340 = icmp eq ptr %i.pg, null
  br i1 %.not.i.i.i340, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ph = getelementptr i8, ptr %i.pg, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.pi, i1 noundef zeroext true, i32 %10, i64 noundef range(i64 0, 4294967296) %i.oz, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.pk = getelementptr i8, ptr %i.pf, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.pk, ptr elementtype(i64) %i.pk) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i337

trace_i915_reg_rw.exit.i337:                      ; preds = %bb.cd, %arch_test_bit.exit.i.i.i336, %bb.ca
  %.val.i338 = load ptr, ptr %i.f, align 8
  %i.pl = tail call ptr @to_intel_uncore(ptr noundef %.val.i338) #11 ; 2 uses
  %i.pm = icmp ult i32 %i.lz, 262144
  br i1 %i.pm, label %bb.ce, label %intel_de_write_fw.exit343

bb.ce:                                            ; preds = %trace_i915_reg_rw.exit.i337
  %i.pn = getelementptr i8, ptr %i.pl, i64 36
  %i.po = load i32, ptr %i.pn, align 4
  %i.pp = add i32 %i.po, %10
  br label %intel_de_write_fw.exit343

intel_de_write_fw.exit343:                        ; preds = %trace_i915_reg_rw.exit.i337, %bb.ce
  %.0.i.i339 = phi i32 [ %i.pp, %bb.ce ], [ %10, %trace_i915_reg_rw.exit.i337 ]
  %i.pq = load ptr, ptr %i.pl, align 8
  %i.pr = zext i32 %.0.i.i339 to i64
  %i.ps = getelementptr i8, ptr %i.pq, i64 %i.pr
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.oy, ptr elementtype(i32) %i.ps) #12, !srcloc !25
  br label %intel_de_write_dsb.exit

intel_de_write_dsb.exit:                          ; preds = %intel_de_write_fw.exit343, %bb.bz, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xelpd_plane_load_luts(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 232        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %xelpd_program_plane_pre_csc_lut.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__drm_to_display(ptr noundef nonnull %i.d) #11
  %.pre.i = load ptr, ptr %1, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %i.g = phi ptr [ %.pre.i, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.h = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ] ; 11 uses
  %i.i = getelementptr i8, ptr %i.g, i64 1360
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.g, i64 1356
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr i8, ptr %i.f, i64 80
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = tail call zeroext i1 @icl_is_hdr_plane(ptr noundef %i.h, i32 noundef %i.l) #11
  br i1 %i.o, label %bb.e, label %xelpd_program_plane_pre_csc_lut.exit

bb.e:                                             ; preds = %bb.d
  %i.p = shl i32 %i.j, 12
  %i.q = shl i32 %i.l, 8
  %i.r = add i32 %i.q, %i.p                       ; 2 uses
  %i.s = add i32 %i.r, 459216                     ; 10 uses
  %.not.i78.i = icmp eq ptr %0, null              ; 3 uses
  br i1 %.not.i78.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.s, i32 noundef 1024) #11
  br label %intel_de_write_dsb.exit79.i

bb.g:                                             ; preds = %bb.e
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i.i [label %arch_test_bit.exit.i.i.i.i], !srcloc !18

arch_test_bit.exit.i.i.i.i:                       ; preds = %bb.g
  %i.t = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.u = zext i32 %i.t to i64
  %i.v = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.u) #12, !srcloc !20 ; 2 uses
  %i.w = icmp ult i8 %i.v, 2
  tail call void @llvm.assume(i1 %i.w)
  %i.x = trunc nuw i8 %i.v to i1
  br i1 %i.x, label %bb.h, label %trace_i915_reg_rw.exit.i.i

bb.h:                                             ; preds = %arch_test_bit.exit.i.i.i.i
  %i.y = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.y, ptr elementtype(i64) %i.y) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.z = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ab, i1 noundef zeroext true, i32 %i.s, i64 noundef range(i64 0, 4294967296) 1024, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.ad = getelementptr i8, ptr %i.y, i64 8       ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ad, ptr elementtype(i64) %i.ad) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i.i

trace_i915_reg_rw.exit.i.i:                       ; preds = %bb.j, %arch_test_bit.exit.i.i.i.i, %bb.g
  %.val.i.i = load ptr, ptr %i.h, align 8
  %i.ae = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #11 ; 2 uses
  %i.af = icmp ult i32 %i.s, 262144
  br i1 %i.af, label %bb.k, label %intel_de_write_fw.exit.i

bb.k:                                             ; preds = %trace_i915_reg_rw.exit.i.i
  %i.ag = getelementptr i8, ptr %i.ae, i64 36
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add i32 %i.ah, %i.s
  br label %intel_de_write_fw.exit.i

intel_de_write_fw.exit.i:                         ; preds = %bb.k, %trace_i915_reg_rw.exit.i.i
  %.0.i.i.i = phi i32 [ %i.ai, %bb.k ], [ %i.s, %trace_i915_reg_rw.exit.i.i ]
  %i.aj = load ptr, ptr %i.ae, align 8
  %i.ak = zext i32 %.0.i.i.i to i64
  %i.al = getelementptr i8, ptr %i.aj, i64 %i.ak
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1024, ptr elementtype(i32) %i.al) #12, !srcloc !25
  br label %intel_de_write_dsb.exit79.i

intel_de_write_dsb.exit79.i:                      ; preds = %intel_de_write_fw.exit.i, %bb.f
  %.not69.i = icmp eq ptr %i.n, null
  %i.am = add i32 %i.r, 459220                    ; 30 uses
  %i.an = icmp ult i32 %i.am, 262144              ; 8 uses
  br i1 %.not69.i, label %.preheader120.i, label %.preheader123.i

.preheader123.i:                                  ; preds = %intel_de_write_dsb.exit79.i, %.preheader123.i.backedge
  %indvars.iv.i = phi i64 [ %indvars.iv.i.be, %.preheader123.i.backedge ], [ 0, %intel_de_write_dsb.exit79.i ] ; 3 uses
  %i.ao = getelementptr [16 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %reass.sub.i.i = mul nuw nsw i64 %i.ar, 16777215
  %i.as = add nuw nsw i64 %reass.sub.i.i, 2147483647
  %i.at = udiv i64 %i.as, 4294967295              ; 2 uses
  %i.au = trunc nuw nsw i64 %i.at to i32          ; 2 uses
  br i1 %.not.i78.i, label %bb.l, label %intel_de_write_dsb.exit77.thread.i

bb.l:                                             ; preds = %.preheader123.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i81.i [label %arch_test_bit.exit.i.i.i80.i], !srcloc !18

arch_test_bit.exit.i.i.i80.i:                     ; preds = %bb.l
  %i.av = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
end_hunk_0
