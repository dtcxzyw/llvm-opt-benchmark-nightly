Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i9xx_wm?download=true
inline.NumInlined: 555
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_vlv_compute_pipe_wm:bb.a
  %i.cp = and i64 %.pre-phi140, 128
  %.not102.7 = icmp eq i64 %i.cp, 0
  br i1 %.not102.7, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = load i16, ptr %i.am, align 4            ; 2 uses
  %i.cr = icmp ugt i16 %i.bd, %i.cq
  %narrow.i.7 = sub nuw i16 %i.cq, %i.bd
  %.0.i.7 = select i1 %i.cr, i16 -1, i16 %narrow.i.7
  %i.cs = getelementptr i8, ptr %i.bf, i64 14
  store i16 %.0.i.7, ptr %i.cs, align 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ct = tail call i16 @llvm.umax.i16(i16 %i.ax, i16 %i.ba)
  %. = tail call i16 @llvm.umax.i16(i16 %i.au, i16 %i.ct) ; 2 uses
  %.tr = trunc i32 %i.as to i16
  %i.cu = shl i16 %.tr, 9
  %i.cv = add i16 %i.cu, -1                       ; 2 uses
  %i.cw = icmp ugt i16 %., %i.cv
  %narrow.i103 = sub nuw i16 %i.cv, %.
  %.0.i104 = select i1 %i.cw, i16 -1, i16 %narrow.i103
  %i.cx = getelementptr [6 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  store i16 %.0.i104, ptr %i.cx, align 2
  %i.cy = load i16, ptr %i.bc, align 2            ; 2 uses
  %i.cz = icmp ugt i16 %i.cy, 63
  %narrow.i105 = sub nuw i16 63, %i.cy
  %.0.i106 = select i1 %i.cz, i16 -1, i16 %narrow.i105
  %i.da = getelementptr i8, ptr %i.cx, i64 2
  store i16 %.0.i106, ptr %i.da, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.db = load i8, ptr %i.s, align 4
  %i.dc = zext i8 %i.db to i64
  %i.dd = icmp samesign ult i64 %indvars.iv.next, %i.dc
  br i1 %i.dd, label %bb.d, label %.thread, !llvm.loop !126

.thread:                                          ; preds = %bb.v, %vlv_raw_crtc_wm_is_valid.exit, %bb.f, %bb.e, %bb.d
  %.079.lcssa.ph.in = phi i64 [ %indvars.iv.next, %bb.v ], [ %indvars.iv, %vlv_raw_crtc_wm_is_valid.exit ], [ %indvars.iv, %bb.f ], [ %indvars.iv, %bb.e ], [ %indvars.iv, %bb.d ] ; 3 uses
  %i.de = icmp eq i64 %.079.lcssa.ph.in, 0
  br i1 %i.de, label %.thread.thread, label %bb.w

bb.w:                                             ; preds = %.thread
  %.079.lcssa.ph = trunc nuw nsw i64 %.079.lcssa.ph.in to i32
  %i.df = trunc i64 %.079.lcssa.ph.in to i8
  store i8 %i.df, ptr %i.s, align 4
  tail call fastcc void @vlv_invalidate_wms(ptr noundef %i.d, ptr noundef %i.g, i32 noundef %.079.lcssa.ph) #13, !srcloc !127
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.c, %.thread, %bb.w
  %.0 = phi i32 [ 0, %bb.w ], [ -22, %.thread ], [ -22, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @vlv_invalidate_wms(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr i8, ptr %i.c, i64 5536     ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = zext i8 %i.e to i32
  %i.g = icmp slt i32 %2, %i.f
  br i1 %i.g, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 1669       ; 8 uses
  %i.i = getelementptr i8, ptr %1, i64 54
  %i.j = sext i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.j, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.k = getelementptr [18 x i8], ptr %1, i64 %indvars.iv ; 8 uses
  %i.l = load i8, ptr %i.h, align 1
  %i.m = zext i8 %i.l to i64                      ; 2 uses
  %i.n = and i64 %i.m, 1
  %.not17 = icmp eq i64 %i.n, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  store i16 -1, ptr %i.k, align 2
  %.pre = load i8, ptr %i.h, align 1
  %.pre28 = zext i8 %.pre to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader
  %.pre-phi = phi i64 [ %.pre28, %bb.d ], [ %i.m, %.preheader ] ; 2 uses
  %i.o = and i64 %.pre-phi, 2
  %.not17.1 = icmp eq i64 %i.o, 0
  br i1 %.not17.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.k, i64 2
  store i16 -1, ptr %i.p, align 2
  %.pre22 = load i8, ptr %i.h, align 1
  %.pre29 = zext i8 %.pre22 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi30 = phi i64 [ %.pre29, %bb.f ], [ %.pre-phi, %bb.e ] ; 2 uses
  %i.q = and i64 %.pre-phi30, 4
  %.not17.2 = icmp eq i64 %i.q, 0
  br i1 %.not17.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.k, i64 4
  store i16 -1, ptr %i.r, align 2
  %.pre23 = load i8, ptr %i.h, align 1
  %.pre31 = zext i8 %.pre23 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi32 = phi i64 [ %.pre31, %bb.h ], [ %.pre-phi30, %bb.g ] ; 2 uses
  %i.s = and i64 %.pre-phi32, 8
  %.not17.3 = icmp eq i64 %i.s, 0
  br i1 %.not17.3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %i.k, i64 6
  store i16 -1, ptr %i.t, align 2
  %.pre24 = load i8, ptr %i.h, align 1
  %.pre33 = zext i8 %.pre24 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi34 = phi i64 [ %.pre33, %bb.j ], [ %.pre-phi32, %bb.i ] ; 2 uses
  %i.u = and i64 %.pre-phi34, 16
  %.not17.4 = icmp eq i64 %i.u, 0
  br i1 %.not17.4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr i8, ptr %i.k, i64 8
  store i16 -1, ptr %i.v, align 2
  %.pre25 = load i8, ptr %i.h, align 1
  %.pre35 = zext i8 %.pre25 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi36 = phi i64 [ %.pre35, %bb.l ], [ %.pre-phi34, %bb.k ] ; 2 uses
  %i.w = and i64 %.pre-phi36, 32
  %.not17.5 = icmp eq i64 %i.w, 0
  br i1 %.not17.5, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr i8, ptr %i.k, i64 10
  store i16 -1, ptr %i.x, align 2
  %.pre26 = load i8, ptr %i.h, align 1
  %.pre37 = zext i8 %.pre26 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi38 = phi i64 [ %.pre37, %bb.n ], [ %.pre-phi36, %bb.m ] ; 2 uses
  %i.y = and i64 %.pre-phi38, 64
  %.not17.6 = icmp eq i64 %i.y, 0
  br i1 %.not17.6, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr i8, ptr %i.k, i64 12
  store i16 -1, ptr %i.z, align 2
  %.pre27 = load i8, ptr %i.h, align 1
  %.pre39 = zext i8 %.pre27 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi40 = phi i64 [ %.pre39, %bb.p ], [ %.pre-phi38, %bb.o ]
  %i.aa = and i64 %.pre-phi40, 128
  %.not17.7 = icmp eq i64 %i.aa, 0
  br i1 %.not17.7, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr i8, ptr %i.k, i64 14
  store i16 -1, ptr %i.ab, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ac = getelementptr [6 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 2
  store i16 -1, ptr %i.ad, align 2
  store i16 -1, ptr %i.ac, align 2
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ae = load i8, ptr %i.d, align 8
  %i.af = zext i8 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.preheader, label %._crit_edge, !llvm.loop !128

._crit_edge:                                      ; preds = %bb.s, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @vlv_program_watermarks(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.vlv_wm_values, align 2      ; 40 uses
  %i.a = getelementptr i8, ptr %0, i64 5448       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(86) %1, i8 0, i64 84, i1 false)
  %i.b = getelementptr i8, ptr %0, i64 5536
  %i.c = load i8, ptr %i.b, align 8
  %i.d = add i8 %i.c, -1                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 9 uses
  store i8 %i.d, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 85 ; 7 uses
  store i8 1, ptr %i.f, align 1
  %i.g = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %.pn60.i = load ptr, ptr %i.g, align 8          ; 3 uses
  %.not61.i = icmp eq ptr %.pn60.i, %i.g
  br i1 %.not61.i, label %.thread.i.thread, label %.lr.ph.i

.thread.i.thread:                                 ; preds = %bb.a
  store i8 0, ptr %i.f, align 1
  br label %vlv_merge_wm.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %i.h = phi i8 [ %i.w, %bb.e ], [ %i.d, %bb.a ]  ; 2 uses
  %.pn63.i = phi ptr [ %.pn.i, %bb.e ], [ %.pn60.i, %bb.a ] ; 4 uses
  %.05462.i = phi i32 [ %.155.i, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr i8, ptr %.pn63.i, i64 20
  %i.j = load i8, ptr %i.i, align 4, !range !26, !noundef !27
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr i8, ptr %.pn63.i, i64 241
  %i.m = load i8, ptr %i.l, align 1, !range !26, !noundef !27
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.f, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = add i32 %.05462.i, 1
  %i.p = zext i8 %i.h to i16
  %i.q = getelementptr i8, ptr %.pn63.i, i64 240
  %i.r = load i8, ptr %i.q, align 4
  %i.s = zext i8 %i.r to i16
  %i.t = add nsw i16 %i.s, -1
  %i.u = tail call i16 @llvm.smin.i16(i16 %i.t, i16 %i.p)
  %i.v = trunc i16 %i.u to i8                     ; 2 uses
  store i8 %i.v, ptr %i.e, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.w = phi i8 [ %i.v, %bb.d ], [ %i.h, %.lr.ph.i ]
  %.155.i = phi i32 [ %i.o, %bb.d ], [ %.05462.i, %.lr.ph.i ] ; 3 uses
  %.pn.i = load ptr, ptr %.pn63.i, align 8        ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, %i.g
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !129

._crit_edge.i:                                    ; preds = %bb.e
  %.not56.i = icmp eq i32 %.155.i, 1
  br i1 %.not56.i, label %.lr.ph67.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  store i8 0, ptr %i.f, align 1
  %i.x = icmp sgt i32 %.155.i, 1
  br i1 %i.x, label %bb.g, label %.lr.ph67.i

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.e, align 2
  br label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %._crit_edge.i, %bb.f, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 60
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph67.i
  %.pn5766.i = phi ptr [ %.pn60.i, %.lr.ph67.i ], [ %.pn57.i, %bb.j ] ; 5 uses
  %i.aa = getelementptr i8, ptr %.pn5766.i, i64 168
  %i.ab = getelementptr i8, ptr %.pn5766.i, i64 16
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr [18 x i8], ptr %1, i64 %i.ad
  %i.af = load i8, ptr %i.e, align 2
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr [18 x i8], ptr %i.aa, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(18) %i.ae, ptr noundef align 2 dereferenceable(18) %i.ah, i64 18, i1 false)
  %i.ai = getelementptr i8, ptr %.pn5766.i, i64 20
  %i.aj = load i8, ptr %i.ai, align 4, !range !26, !noundef !27
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = load i8, ptr %i.f, align 1, !range !26
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %.pn5766.i, i64 222
  %i.ao = load i8, ptr %i.e, align 2
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr [6 x i8], ptr %i.an, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.y, ptr noundef align 2 dereferenceable(6) %i.aq, i64 6, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = getelementptr [8 x i8], ptr %i.z, i64 %i.ad ; 4 uses
  store i8 -126, ptr %i.ar, align 2
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  store i8 -126, ptr %i.as, align 1
  %i.at = getelementptr i8, ptr %i.ar, i64 2
  store i8 -126, ptr %i.at, align 2
  %i.au = getelementptr i8, ptr %i.ar, i64 7
  store i8 -126, ptr %i.au, align 1
  %.pn57.i = load ptr, ptr %.pn5766.i, align 8    ; 2 uses
  %.not59.i = icmp eq ptr %.pn57.i, %i.g
  br i1 %.not59.i, label %vlv_merge_wm.exit, label %bb.h, !llvm.loop !130

vlv_merge_wm.exit:                                ; preds = %bb.j, %.thread.i.thread
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(86) %i.a, ptr noundef nonnull dereferenceable(86) %1, i64 86)
  %i.av = icmp eq i32 %bcmp, 0
  br i1 %i.av, label %bb.at, label %bb.k

bb.k:                                             ; preds = %vlv_merge_wm.exit
  %i.aw = getelementptr i8, ptr %0, i64 5532      ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 4             ; 2 uses
  %i.ay = load i8, ptr %i.e, align 2              ; 2 uses
  %i.az = icmp ugt i8 %i.ax, 1
  %i.ba = icmp ult i8 %i.ay, 2
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @chv_set_memory_dvfs(ptr noundef %0, i1 noundef zeroext false) #13, !srcloc !134
  %.pre = load i8, ptr %i.aw, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = phi i8 [ %.pre, %bb.l ], [ %i.ax, %bb.k ]
  %i.bd = icmp ne i8 %i.bc, 0
  %i.be = icmp eq i8 %i.ay, 0
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @vlv_punit_get(ptr noundef %0) #12
  %i.bg = tail call i32 @vlv_punit_read(ptr noundef %0, i32 noundef 54) #12
  %i.bh = and i32 %i.bg, -65
  %i.bi = tail call i32 @vlv_punit_write(ptr noundef %0, i32 noundef 54, i32 noundef %i.bh) #12 ; 0 uses
  tail call void @vlv_punit_put(ptr noundef %0) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = getelementptr i8, ptr %0, i64 5533      ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !range !26, !noundef !27
  %i.bl = load i8, ptr %i.f, align 1, !range !26, !noundef !27
  %i.bm = icmp ne i8 %i.bk, 0
  %i.bn = icmp eq i8 %i.bl, 0
  %i.bo = and i1 %i.bm, %i.bn
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = tail call fastcc zeroext i1 @_intel_set_memory_cxsr(ptr noundef %0, i1 noundef zeroext false) #13, !srcloc !135 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = getelementptr i8, ptr %0, i64 1188      ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bs = load i8, ptr %i.bq, align 4
  %i.bt = zext i8 %i.bs to i64                    ; 2 uses
  %i.bu = and i64 %i.bt, 1
  %.not84.i = icmp eq i64 %i.bu, 0
  br i1 %.not84.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = tail call ptr @intel_crtc_for_pipe(ptr noundef %0, i32 noundef 0) #12
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_vlv_wm, i64 8), i1 false) #14
          to label %trace_vlv_wm.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !18

arch_test_bit.exit.i.i.i:                         ; preds = %bb.r
  %i.bw = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #14, !srcloc !136
  %i.bx = zext i32 %i.bw to i64
  %i.by = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bx) #14, !srcloc !19 ; 2 uses
  %i.bz = icmp ult i8 %i.by, 2
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = trunc nuw i8 %i.by to i1
  br i1 %i.ca, label %bb.s, label %trace_vlv_wm.exit.i

bb.s:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.cb = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cb, ptr elementtype(i64) %i.cb) #14, !srcloc !20
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  %i.cc = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_vlv_wm, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call i32 @__SCT__tp_func_vlv_wm(ptr noundef %i.ce, ptr noundef %i.bv, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !22
  %i.cg = getelementptr i8, ptr %i.cb, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cg, ptr elementtype(i64) %i.cg) #14, !srcloc !23
  br label %trace_vlv_wm.exit.i

trace_vlv_wm.exit.i:                              ; preds = %bb.u, %arch_test_bit.exit.i.i.i, %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw i32 %i.cj, 24
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.cm = load i8, ptr %i.cl, align 2
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 16
  %i.cp = or disjoint i32 %i.co, %i.ck
  %2 = load i16, ptr %i.br, align 2
  %i.cq = zext i16 %2 to i32
  %i.cr = or disjoint i32 %i.cp, %i.cq
  call void @intel_dmc_wl_get(ptr noundef %0, i32 2031696) #12
  %.val.i.i = load ptr, ptr %0, align 8
  %i.cs = call ptr @to_intel_uncore(ptr noundef %.val.i.i) #12 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 176
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef %i.cs, i32 2031696, i32 noundef %i.cr, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 2031696) #12
  %.pre.i = load i8, ptr %i.bq, align 4
  %.pre104.i = zext i8 %.pre.i to i64
  br label %bb.v

bb.v:                                             ; preds = %trace_vlv_wm.exit.i, %bb.q
  %.pre-phi.i = phi i64 [ %.pre104.i, %trace_vlv_wm.exit.i ], [ %i.bt, %bb.q ] ; 2 uses
  %i.cv = and i64 %.pre-phi.i, 2
  %.not84.1.i = icmp eq i64 %i.cv, 0
  br i1 %.not84.1.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = call ptr @intel_crtc_for_pipe(ptr noundef %0, i32 noundef 1) #12
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_vlv_wm, i64 8), i1 false) #14
          to label %trace_vlv_wm.exit.1.i [label %arch_test_bit.exit.i.i.1.i], !srcloc !18

arch_test_bit.exit.i.i.1.i:                       ; preds = %bb.w
  %i.cx = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #14, !srcloc !136
  %i.cy = zext i32 %i.cx to i64
  %i.cz = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.cy) #14, !srcloc !19 ; 2 uses
  %i.da = icmp ult i8 %i.cz, 2
  call void @llvm.assume(i1 %i.da)
  %i.db = trunc nuw i8 %i.cz to i1
  br i1 %i.db, label %bb.x, label %trace_vlv_wm.exit.1.i

bb.x:                                             ; preds = %arch_test_bit.exit.i.i.1.i
  %i.dc = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dc, ptr elementtype(i64) %i.dc) #14, !srcloc !20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  %i.dd = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_vlv_wm, i64 56), align 8 ; 2 uses
  %.not.i.i.1.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.1.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call i32 @__SCT__tp_func_vlv_wm(ptr noundef %i.df, ptr noundef %i.cw, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !22
  %i.dh = getelementptr i8, ptr %i.dc, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dh, ptr elementtype(i64) %i.dh) #14, !srcloc !23
  br label %trace_vlv_wm.exit.1.i

trace_vlv_wm.exit.1.i:                            ; preds = %bb.z, %arch_test_bit.exit.i.i.1.i, %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw i32 %i.dl, 24
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 70
  %i.do = load i8, ptr %i.dn, align 2
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 16
  %i.dr = or disjoint i32 %i.dq, %i.dm
  %3 = load i16, ptr %i.di, align 2
  %i.ds = zext i16 %3 to i32
  %i.dt = or disjoint i32 %i.dr, %i.ds
  call void @intel_dmc_wl_get(ptr noundef %0, i32 2031700) #12
  %.val.i.1.i = load ptr, ptr %0, align 8
  %i.du = call ptr @to_intel_uncore(ptr noundef %.val.i.1.i) #12 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 176
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef %i.du, i32 2031700, i32 noundef %i.dt, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 2031700) #12
  %.pre102.i = load i8, ptr %i.bq, align 4
  %.pre105.i = zext i8 %.pre102.i to i64
  br label %bb.aa

bb.aa:                                            ; preds = %trace_vlv_wm.exit.1.i, %bb.v
  %.pre-phi106.i = phi i64 [ %.pre105.i, %trace_vlv_wm.exit.1.i ], [ %.pre-phi.i, %bb.v ] ; 2 uses
  %i.dx = and i64 %.pre-phi106.i, 4
  %.not84.2.i = icmp eq i64 %i.dx, 0
  br i1 %.not84.2.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = call ptr @intel_crtc_for_pipe(ptr noundef %0, i32 noundef 2) #12
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_vlv_wm, i64 8), i1 false) #14
          to label %trace_vlv_wm.exit.2.i [label %arch_test_bit.exit.i.i.2.i], !srcloc !18

arch_test_bit.exit.i.i.2.i:                       ; preds = %bb.ab
  %i.dz = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #14, !srcloc !136
  %i.ea = zext i32 %i.dz to i64
  %i.eb = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ea) #14, !srcloc !19 ; 2 uses
  %i.ec = icmp ult i8 %i.eb, 2
  call void @llvm.assume(i1 %i.ec)
  %i.ed = trunc nuw i8 %i.eb to i1
  br i1 %i.ed, label %bb.ac, label %trace_vlv_wm.exit.2.i

bb.ac:                                            ; preds = %arch_test_bit.exit.i.i.2.i
  %i.ee = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ee, ptr elementtype(i64) %i.ee) #14, !srcloc !20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  %i.ef = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_vlv_wm, i64 56), align 8 ; 2 uses
  %.not.i.i.2.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.2.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call i32 @__SCT__tp_func_vlv_wm(ptr noundef %i.eh, ptr noundef %i.dy, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !22
  %i.ej = getelementptr i8, ptr %i.ee, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ej, ptr elementtype(i64) %i.ej) #14, !srcloc !23
  br label %trace_vlv_wm.exit.2.i

trace_vlv_wm.exit.2.i:                            ; preds = %bb.ae, %arch_test_bit.exit.i.i.2.i, %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 83
  %i.em = load i8, ptr %i.el, align 1
  %i.en = zext i8 %i.em to i32
  %i.eo = shl nuw i32 %i.en, 24
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.eq = load i8, ptr %i.ep, align 2
  %i.er = zext i8 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, 16
  %i.et = or disjoint i32 %i.es, %i.eo
  %4 = load i16, ptr %i.ek, align 2
  %i.eu = zext i16 %4 to i32
  %i.ev = or disjoint i32 %i.et, %i.eu
  call void @intel_dmc_wl_get(ptr noundef %0, i32 2031704) #12
  %.val.i.2.i = load ptr, ptr %0, align 8
  %i.ew = call ptr @to_intel_uncore(ptr noundef %.val.i.2.i) #12 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 176
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef %i.ew, i32 2031704, i32 noundef %i.ev, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 2031704) #12
  %.pre103.i = load i8, ptr %i.bq, align 4
  %.pre107.i = zext i8 %.pre103.i to i64
  br label %bb.af

bb.af:                                            ; preds = %trace_vlv_wm.exit.2.i, %bb.aa
  %.pre-phi108.i = phi i64 [ %.pre107.i, %trace_vlv_wm.exit.2.i ], [ %.pre-phi106.i, %bb.aa ]
  %i.ez = and i64 %.pre-phi108.i, 8
  %.not84.3.i = icmp eq i64 %i.ez, 0
  br i1 %.not84.3.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = call ptr @intel_crtc_for_pipe(ptr noundef %0, i32 noundef 3) #12
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_vlv_wm, i64 8), i1 false) #14
          to label %trace_vlv_wm.exit.3.i [label %arch_test_bit.exit.i.i.3.i], !srcloc !18

arch_test_bit.exit.i.i.3.i:                       ; preds = %bb.ag
  %i.fb = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #14, !srcloc !136
  %i.fc = zext i32 %i.fb to i64
  %i.fd = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.fc) #14, !srcloc !19 ; 2 uses
  %i.fe = icmp ult i8 %i.fd, 2
  call void @llvm.assume(i1 %i.fe)
  %i.ff = trunc nuw i8 %i.fd to i1
  br i1 %i.ff, label %bb.ah, label %trace_vlv_wm.exit.3.i

bb.ah:                                            ; preds = %arch_test_bit.exit.i.i.3.i
  %i.fg = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fg, ptr elementtype(i64) %i.fg) #14, !srcloc !20
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !21
  %i.fh = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_vlv_wm, i64 56), align 8 ; 2 uses
  %.not.i.i.3.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.3.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = call i32 @__SCT__tp_func_vlv_wm(ptr noundef %i.fj, ptr noundef %i.fa, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !22
  %i.fl = getelementptr i8, ptr %i.fg, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fl, ptr elementtype(i64) %i.fl) #14, !srcloc !23
  br label %trace_vlv_wm.exit.3.i

trace_vlv_wm.exit.3.i:                            ; preds = %bb.aj, %arch_test_bit.exit.i.i.3.i, %bb.ag
  %i.fm = getelementptr i8, ptr %1, i64 91
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i32
  %i.fp = shl nuw i32 %i.fo, 24
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 86
  %i.fr = load i8, ptr %i.fq, align 2
  %i.fs = zext i8 %i.fr to i32
  %i.ft = shl nuw nsw i32 %i.fs, 16
  %i.fu = or disjoint i32 %i.ft, %i.fp
  %5 = load i16, ptr %i.e, align 2
  %i.fv = zext i16 %5 to i32
  %i.fw = or disjoint i32 %i.fu, %i.fv
  call void @intel_dmc_wl_get(ptr noundef %0, i32 2031708) #12
  %.val.i.3.i = load ptr, ptr %0, align 8
  %i.fx = call ptr @to_intel_uncore(ptr noundef %.val.i.3.i) #12 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 176
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef %i.fx, i32 2031708, i32 noundef %i.fw, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 2031708) #12
  br label %bb.ak

bb.ak:                                            ; preds = %trace_vlv_wm.exit.3.i, %bb.af
  call void @intel_dmc_wl_get(ptr noundef %0, i32 2031716) #12
  %.val.i85.i = load ptr, ptr %0, align 8
  %i.ga = call ptr @to_intel_uncore(ptr noundef %.val.i85.i) #12 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 176
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef %i.ga, i32 2031716, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 2031716) #12
  call void @intel_dmc_wl_get(ptr noundef %0, i32 2031720) #12
  %.val.i86.i = load ptr, ptr %0, align 8
  %i.gd = call ptr @to_intel_uncore(ptr noundef %.val.i86.i) #12 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 176
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef %i.gd, i32 2031720, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 2031720) #12
  call void @intel_dmc_wl_get(ptr noundef %0, i32 2031728) #12
  %.val.i87.i = load ptr, ptr %0, align 8
  %i.gg = call ptr @to_intel_uncore(ptr noundef %.val.i87.i) #12 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 176
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef %i.gg, i32 2031728, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 2031728) #12
  call void @intel_dmc_wl_get(ptr noundef %0, i32 2031732) #12
  %.val.i88.i = load ptr, ptr %0, align 8
  %i.gj = call ptr @to_intel_uncore(ptr noundef %.val.i88.i) #12 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 176
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef %i.gj, i32 2031732, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 2031732) #12
  call void @intel_dmc_wl_get(ptr noundef %0, i32 2031736) #12
  %.val.i89.i = load ptr, ptr %0, align 8
  %i.gm = call ptr @to_intel_uncore(ptr noundef %.val.i89.i) #12 ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 176
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef %i.gm, i32 2031736, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 2031736) #12
  %i.gp = getelementptr i8, ptr %0, i64 1160      ; 4 uses
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = getelementptr i8, ptr %i.gq, i64 48
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = add i32 %i.gs, 458804                   ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 3 uses
  %i.gv = load i16, ptr %i.gu, align 2
  %i.gw = zext i16 %i.gv to i32
  %i.gx = shl i32 %i.gw, 23
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ha = load i16, ptr %i.gz, align 2
  %i.hb = zext i16 %i.ha to i32
  %i.hc = shl nuw i32 %i.hb, 16
  %i.hd = and i32 %i.hc, 4128768
  %i.he = or disjoint i32 %i.hd, %i.gx
  %i.hf = load i16, ptr %i.gy, align 2
  %i.hg = zext i16 %i.hf to i32
  %i.hh = shl nuw nsw i32 %i.hg, 8
  %i.hi = and i32 %i.hh, 65280
  %i.hj = or disjoint i32 %i.he, %i.hi
  %i.hk = load i16, ptr %1, align 2
  %i.hl = and i16 %i.hk, 255
  %i.hm = zext nneg i16 %i.hl to i32
  %i.hn = or disjoint i32 %i.hj, %i.hm
  call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.gt) #12
  %.val.i90.i = load ptr, ptr %0, align 8
  %i.ho = call ptr @to_intel_uncore(ptr noundef %.val.i90.i) #12 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 176
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef %i.ho, i32 %i.gt, i32 noundef %i.hn, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.gt) #12
  %i.hr = load ptr, ptr %i.gp, align 8
  %i.hs = getelementptr i8, ptr %i.hr, i64 48
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = add i32 %i.ht, 458808                   ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.hw = load i16, ptr %i.hv, align 2
  %i.hx = zext i16 %i.hw to i32
  %i.hy = shl nuw i32 %i.hx, 16
  %i.hz = and i32 %i.hy, 16711680
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ib = load i16, ptr %i.ia, align 2
  %i.ic = zext i16 %i.ib to i32
  %i.id = shl nuw nsw i32 %i.ic, 8
  %i.ie = and i32 %i.id, 16128
  %i.if = or disjoint i32 %i.ie, %i.hz
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = and i16 %i.ih, 255
  %i.ij = zext nneg i16 %i.ii to i32
  %i.ik = or disjoint i32 %i.if, %i.ij
  call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.hu) #12
  %.val.i91.i = load ptr, ptr %0, align 8
  %i.il = call ptr @to_intel_uncore(ptr noundef %.val.i91.i) #12 ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 176
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef %i.il, i32 %i.hu, i32 noundef %i.ik, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.hu) #12
  %i.io = load ptr, ptr %i.gp, align 8
  %i.ip = getelementptr i8, ptr %i.io, i64 48
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = add i32 %i.iq, 458812                   ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.it = load i16, ptr %i.is, align 2
  %i.iu = zext i16 %i.it to i32
  %i.iv = shl i32 %i.iu, 24
  %i.iw = and i32 %i.iv, 1056964608
  call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ir) #12
  %.val.i92.i = load ptr, ptr %0, align 8
  %i.ix = call ptr @to_intel_uncore(ptr noundef %.val.i92.i) #12 ; 2 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 176
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef %i.ix, i32 %i.ir, i32 noundef %i.iw, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ir) #12
  %i.ja = getelementptr i8, ptr %0, i64 8
  %i.jb = load i64, ptr %i.ja, align 8
  %i.jc = and i64 %i.jb, 134217728
  %.not.i17 = icmp eq i64 %i.jc, 0
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 3 uses
  %i.je = load i16, ptr %i.jd, align 2
  %i.jf = zext i16 %i.je to i32
  %i.jg = shl nuw i32 %i.jf, 16
  %i.jh = and i32 %i.jg, 16711680
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.jj = load i16, ptr %i.ji, align 2
  %i.jk = and i16 %i.jj, 255
  %i.jl = zext nneg i16 %i.jk to i32
  %i.jm = or disjoint i32 %i.jh, %i.jl            ; 2 uses
  br i1 %.not.i17, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @intel_dmc_wl_get(ptr noundef %0, i32 2031796) #12
  %.val.i93.i = load ptr, ptr %0, align 8
  %i.jn = call ptr @to_intel_uncore(ptr noundef %.val.i93.i) #12 ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 176
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef %i.jn, i32 2031796, i32 noundef %i.jm, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 2031796) #12
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.js = load i16, ptr %i.jr, align 2
  %i.jt = zext i16 %i.js to i32
  %i.ju = shl nuw i32 %i.jt, 16
  %i.jv = and i32 %i.ju, 16711680
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 38 ; 2 uses
  %i.jx = load i16, ptr %i.jw, align 2
  %i.jy = and i16 %i.jx, 255
  %i.jz = zext nneg i16 %i.jy to i32
  %i.ka = or disjoint i32 %i.jv, %i.jz
  call void @intel_dmc_wl_get(ptr noundef %0, i32 2031800) #12
  %.val.i94.i = load ptr, ptr %0, align 8
  %i.kb = call ptr @to_intel_uncore(ptr noundef %.val.i94.i) #12 ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 176
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef %i.kb, i32 2031800, i32 noundef %i.ka, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 2031800) #12
  %i.ke = load i16, ptr %i.jq, align 2
  %i.kf = zext i16 %i.ke to i32
  %i.kg = shl nuw i32 %i.kf, 16
  %i.kh = and i32 %i.kg, 16711680
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.kj = load i16, ptr %i.ki, align 2
  %i.kk = and i16 %i.kj, 63
  %i.kl = zext nneg i16 %i.kk to i32
  %i.km = or disjoint i32 %i.kh, %i.kl
  call void @intel_dmc_wl_get(ptr noundef %0, i32 2031740) #12
  %.val.i95.i = load ptr, ptr %0, align 8
  %i.kn = call ptr @to_intel_uncore(ptr noundef %.val.i95.i) #12 ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 176
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef %i.kn, i32 2031740, i32 noundef %i.km, i1 noundef zeroext true) #12, !inline_history !131
  call void @intel_dmc_wl_put(ptr noundef %0, i32 2031740) #12
  %i.kq = load i16, ptr %i.gu, align 2
  %i.kr = lshr i16 %i.kq, 9
  %i.ks = zext nneg i16 %i.kr to i32
  %i.kt = shl nuw nsw i32 %i.ks, 24
  %i.ku = and i32 %i.kt, 50331648
  %i.kv = load i16, ptr %i.jr, align 2
  %i.kw = lshr i16 %i.kv, 8
  %i.kx = zext nneg i16 %i.kw to i32
  %i.ky = shl nuw nsw i32 %i.kx, 23
  %i.kz = and i32 %i.ky, 8388608
  %i.la = or disjoint i32 %i.kz, %i.ku
  %i.lb = load i16, ptr %i.jw, align 2
  %i.lc = lshr i16 %i.lb, 8
  %i.ld = zext nneg i16 %i.lc to i32
  %i.le = shl nuw nsw i32 %i.ld, 22
  %i.lf = and i32 %i.le, 4194304
  %i.lg = or disjoint i32 %i.la, %i.lf
  %i.lh = load i16, ptr %i.jq, align 2
  %i.li = lshr i16 %i.lh, 8
  %i.lj = zext nneg i16 %i.li to i32
  %i.lk = shl nuw nsw i32 %i.lj, 21
end_hunk_0
