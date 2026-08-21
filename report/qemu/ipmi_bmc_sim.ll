inline.NumInlined: 327
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@get_msg:bb.a
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %rsp_buffer_pushmore.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  br label %bb.j

bb.i:                                             ; preds = %rsp_buffer_pushmore.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 19496
  store ptr %i.ab, ptr %i.ad, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = load ptr, ptr %i.m, align 8
  store ptr %i.ae, ptr %i.ab, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  tail call void @g_free(ptr noundef nonnull %i.m) #12
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = tail call ptr @object_get_class(ptr noundef %i.ai) #12
  %i.ak = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.aj, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 132, ptr noundef nonnull @__func__.IPMI_INTERFACE_GET_CLASS) #12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1             ; 4 uses
  %i.an = and i8 %i.am, -2
  store i8 %i.an, ptr %i.al, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = and i8 %i.am, 10
  %i.ar = icmp ne i8 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.au = load i8, ptr %i.at, align 8             ; 2 uses
  %i.av = and i8 %i.au, 1
  %.not.i = icmp eq i8 %i.av, 0
  %i.aw = and i8 %i.am, 8
  %or.cond.i = icmp eq i8 %i.aw, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %or.cond.i
  br i1 %or.cond, label %bb.l, label %attn_irq_enabled.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = and i8 %i.au, 2
  %.not7.i = icmp eq i8 %i.ax, 0
  br i1 %.not7.i, label %attn_irq_enabled.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = lshr i8 %i.am, 1
  %.lobit.i = and i8 %i.ay, 1
  %i.az = zext nneg i8 %.lobit.i to i32
  br label %attn_irq_enabled.exit

attn_irq_enabled.exit:                            ; preds = %bb.k, %bb.l, %bb.m
  %i.ba = phi i32 [ %i.az, %bb.m ], [ 1, %bb.k ], [ 0, %bb.l ]
  tail call void %i.ap(ptr noundef %i.ai, i32 noundef %i.as, i32 noundef %i.ba) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %attn_irq_enabled.exit, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @send_msg(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call ptr @object_get_class(ptr noundef %i.b) #12
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 132, ptr noundef nonnull @__func__.IPMI_INTERFACE_GET_CLASS) #12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i8, ptr %i.e, align 1
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -52, ptr %i.g, align 2
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %2, 10
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -57, ptr %i.i, align 2
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1
  %.not65 = icmp eq i8 %i.k, 64
  br i1 %.not65, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -125, ptr %i.l, align 2
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.m = add i32 %2, -3                           ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %iter.check, label %ipmb_checksum.exit.thread

iter.check:                                       ; preds = %bb.g
  %i.o = zext nneg i32 %i.m to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %i.m, 32
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %iter.check
  %i.p = and i64 %i.o, 28
  %n.vec = and i64 %i.o, 2147483616               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi92 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.j, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1
  %wide.load93 = load <16 x i8>, ptr %i.q, align 1
  %i.r = add <16 x i8> %wide.load, %vec.phi       ; 2 uses
  %i.s = add <16 x i8> %wide.load93, %vec.phi92   ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.s, %i.r
  %i.u = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.o
  br i1 %cmp.n, label %ipmb_checksum.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %bc.merge.rdx = phi i8 [ %i.u, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %n.vec95 = and i64 %i.o, 2147483644             ; 3 uses
  %i.v = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next100, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi97 = phi <4 x i8> [ %i.v, %vec.epilog.ph ], [ %i.w, %vec.epilog.vector.body ]
  %next.gep98 = getelementptr i8, ptr %i.j, i64 %index96
  %wide.load99 = load <4 x i8>, ptr %next.gep98, align 1
  %i.w = add <4 x i8> %wide.load99, %vec.phi97    ; 2 uses
  %index.next100 = add nuw i64 %index96, 4        ; 2 uses
  %i.x = icmp eq i64 %index.next100, %n.vec95
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.y = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.w) ; 2 uses
  %cmp.n101 = icmp eq i64 %n.vec95, %i.o
  br i1 %cmp.n101, label %ipmb_checksum.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.ph = phi i8 [ %i.u, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  %.pn.in = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ %n.vec95, %vec.epilog.middle.block ] ; 2 uses
  %.067.i.ph = getelementptr i8, ptr %i.j, i64 %.pn.in
  %.pn = trunc nuw nsw i64 %.pn.in to i32
  %.058.i.ph = sub nsw i32 %i.m, %.pn
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09.i = phi i8 [ %i.aa, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader ]
  %.058.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %.058.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.067.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.067.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.z = load i8, ptr %.067.i, align 1
  %i.aa = add i8 %i.z, %.09.i                     ; 2 uses
  %i.ab = add nsw i32 %.058.i, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %.067.i, i64 1
  %i.ad = icmp samesign ugt i32 %.058.i, 1
  br i1 %i.ad, label %.lr.ph.i, label %ipmb_checksum.exit, !llvm.loop !20

ipmb_checksum.exit:                               ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa91 = phi i8 [ %i.y, %vec.epilog.middle.block ], [ %i.u, %middle.block ], [ %i.aa, %.lr.ph.i ]
  %i.ae = icmp eq i8 %.lcssa91, 0
  br i1 %i.ae, label %ipmb_checksum.exit.thread, label %bb.m

ipmb_checksum.exit.thread:                        ; preds = %bb.g, %ipmb_checksum.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ag = load i8, ptr %i.af, align 1
  %.not67 = icmp eq i8 %i.ag, 32
  br i1 %.not67, label %bb.h, label %bb.m

bb.h:                                             ; preds = %ipmb_checksum.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.aj = and i8 %i.ai, 3
  %.not68 = icmp eq i8 %i.aj, 2
  br i1 %.not68, label %.lr.ph.i71, label %bb.m

.lr.ph.i71:                                       ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1             ; 2 uses
  %i.am = and i8 %i.al, -8                        ; 2 uses
  %i.an = tail call noalias dereferenceable_or_null(320) ptr @g_malloc(i64 noundef 320) #13 ; 14 uses
  %i.ao = or disjoint i8 %i.am, 6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 17 ; 5 uses
  store i8 %i.ao, ptr %i.ap, align 1
  %4 = and i8 %i.ai, -4
  %5 = and i8 %i.al, 3
  %i.aq = sub nuw nsw i8 -6, %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 18
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = load i8, ptr %i.j, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 19
  store i8 %i.as, ptr %i.at, align 1
  %i.au = or disjoint i8 %5, %4
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i8, ptr %i.aw, align 1             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 21
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 22 ; 2 uses
  store i8 0, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  store i8 6, ptr %i.ba, align 8
  %i.bb = load i8, ptr %i.ak, align 1
  %.mask = and i8 %i.bb, -4
  %.not69 = icmp ne i8 %.mask, 24
  %.not70 = icmp ne i8 %i.ax, 1
  %or.cond.not = select i1 %.not69, i1 true, i1 %.not70 ; 2 uses
  br i1 %or.cond.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i71
  store i8 -63, ptr %i.az, align 2
  br label %iter.check120

bb.j:                                             ; preds = %.lr.ph.i71
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 27
  store i32 0, ptr %i.bc, align 1
  store i8 81, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.be, i8 0, i64 6, i1 false)
  store i8 17, ptr %i.ba, align 8
  br label %iter.check120

iter.check120:                                    ; preds = %bb.i, %bb.j
  %i.bf = phi i8 [ 17, %bb.j ], [ 6, %bb.i ]      ; 4 uses
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = zext nneg i8 %i.bf to i64               ; 5 uses
  br i1 %or.cond.not, label %vec.epilog.ph124, label %vector.ph107

vector.ph107:                                     ; preds = %iter.check120
  %i.bi = and i64 %i.bh, 4
  %n.vec108 = and i64 %i.bh, 16                   ; 4 uses
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph107
  %index110 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body109 ] ; 2 uses
  %vec.phi111 = phi <16 x i8> [ zeroinitializer, %vector.ph107 ], [ %i.bj, %vector.body109 ]
  %next.gep112 = getelementptr i8, ptr %i.ap, i64 %index110
  %wide.load113 = load <16 x i8>, ptr %next.gep112, align 1
  %i.bj = add <16 x i8> %wide.load113, %vec.phi111 ; 2 uses
  %index.next114 = add nuw i64 %index110, 16      ; 2 uses
  %i.bk = icmp eq i64 %index.next114, %n.vec108
  br i1 %i.bk, label %middle.block115, label %vector.body109, !llvm.loop !21

middle.block115:                                  ; preds = %vector.body109
  %i.bl = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %i.bj) ; 3 uses
  %cmp.n116 = icmp eq i64 %n.vec108, %i.bh
  br i1 %cmp.n116, label %ipmb_checksum.exit82, label %vec.epilog.iter.check122

vec.epilog.iter.check122:                         ; preds = %middle.block115
  %min.epilog.iters.check123.not.not = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check123.not.not, label %.lr.ph.i78.preheader, label %vec.epilog.ph124, !prof !22

vec.epilog.ph124:                                 ; preds = %iter.check120, %vec.epilog.iter.check122
  %vec.epilog.resume.val117 = phi i64 [ %n.vec108, %vec.epilog.iter.check122 ], [ 0, %iter.check120 ]
  %bc.merge.rdx118 = phi i8 [ %i.bl, %vec.epilog.iter.check122 ], [ 0, %iter.check120 ]
  %n.vec125 = and i64 %i.bh, 20                   ; 3 uses
  %i.bm = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx118, i64 0
  br label %vec.epilog.vector.body126

vec.epilog.vector.body126:                        ; preds = %vec.epilog.vector.body126, %vec.epilog.ph124
  %index127 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph124 ], [ %index.next131, %vec.epilog.vector.body126 ] ; 2 uses
  %vec.phi128 = phi <4 x i8> [ %i.bm, %vec.epilog.ph124 ], [ %i.bn, %vec.epilog.vector.body126 ]
  %next.gep129 = getelementptr i8, ptr %i.ap, i64 %index127
  %wide.load130 = load <4 x i8>, ptr %next.gep129, align 1
  %i.bn = add <4 x i8> %wide.load130, %vec.phi128 ; 2 uses
  %index.next131 = add nuw i64 %index127, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next131, %n.vec125
  br i1 %i.bo, label %vec.epilog.middle.block132, label %vec.epilog.vector.body126, !llvm.loop !23

vec.epilog.middle.block132:                       ; preds = %vec.epilog.vector.body126
  %i.bp = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.bn) ; 2 uses
  %cmp.n133 = icmp eq i64 %n.vec125, %i.bh
  br i1 %cmp.n133, label %ipmb_checksum.exit82, label %.lr.ph.i78.preheader

.lr.ph.i78.preheader:                             ; preds = %vec.epilog.iter.check122, %vec.epilog.middle.block132
  %.09.i79.ph = phi i8 [ %i.bl, %vec.epilog.iter.check122 ], [ %i.bp, %vec.epilog.middle.block132 ]
  %.pn144.in = phi i64 [ %n.vec108, %vec.epilog.iter.check122 ], [ %n.vec125, %vec.epilog.middle.block132 ] ; 2 uses
  %.067.i81.ph = getelementptr i8, ptr %i.ap, i64 %.pn144.in
  %.pn144 = trunc nuw nsw i64 %.pn144.in to i32
  %.058.i80.ph = sub nsw i32 %i.bg, %.pn144
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.preheader, %.lr.ph.i78
  %.09.i79 = phi i8 [ %i.br, %.lr.ph.i78 ], [ %.09.i79.ph, %.lr.ph.i78.preheader ]
  %.058.i80 = phi i32 [ %i.bs, %.lr.ph.i78 ], [ %.058.i80.ph, %.lr.ph.i78.preheader ] ; 2 uses
  %.067.i81 = phi ptr [ %i.bt, %.lr.ph.i78 ], [ %.067.i81.ph, %.lr.ph.i78.preheader ] ; 2 uses
  %i.bq = load i8, ptr %.067.i81, align 1
  %i.br = add i8 %i.bq, %.09.i79                  ; 2 uses
  %i.bs = add nsw i32 %.058.i80, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %.067.i81, i64 1
  %i.bu = icmp samesign ugt i32 %.058.i80, 1
  br i1 %i.bu, label %.lr.ph.i78, label %ipmb_checksum.exit82, !llvm.loop !24

ipmb_checksum.exit82:                             ; preds = %.lr.ph.i78, %vec.epilog.middle.block132, %middle.block115
  %.lcssa = phi i8 [ %i.bp, %vec.epilog.middle.block132 ], [ %i.bl, %middle.block115 ], [ %i.br, %.lr.ph.i78 ]
  %i.bv = sub i8 0, %.lcssa
  %i.bw = zext nneg i8 %i.bf to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bw
  store i8 %i.bv, ptr %i.bx, align 1
  %i.by = add nuw nsw i8 %i.bf, 1
  store i8 %i.by, ptr %i.ba, align 8
  store ptr null, ptr %i.an, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 19496 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ca, ptr %i.cb, align 8
  store ptr %i.an, ptr %i.ca, align 8
  store ptr %i.an, ptr %i.bz, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1             ; 2 uses
  %i.ce = or i8 %i.cd, 1
  store i8 %i.ce, ptr %i.cc, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ci = load i8, ptr %i.ch, align 8             ; 2 uses
  %i.cj = and i8 %i.ci, 1
  %.not.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i, label %bb.k, label %attn_irq_enabled.exit

bb.k:                                             ; preds = %ipmb_checksum.exit82
  %i.ck = and i8 %i.ci, 2
  %.not7.i = icmp eq i8 %i.ck, 0
  br i1 %.not7.i, label %attn_irq_enabled.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = lshr i8 %i.cd, 1
  %.lobit.i = and i8 %i.cl, 1
  %i.cm = zext nneg i8 %.lobit.i to i32
  br label %attn_irq_enabled.exit

attn_irq_enabled.exit:                            ; preds = %ipmb_checksum.exit82, %bb.k, %bb.l
  %i.cn = phi i32 [ %i.cm, %bb.l ], [ 0, %bb.k ], [ 1, %ipmb_checksum.exit82 ]
  tail call void %i.cg(ptr noundef %i.b, i32 noundef 1, i32 noundef %i.cn) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %ipmb_checksum.exit, %ipmb_checksum.exit.thread, %attn_irq_enabled.exit, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @read_evt_msg_buf(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call ptr @object_get_class(ptr noundef %i.b) #12
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 132, ptr noundef nonnull @__func__.IPMI_INTERFACE_GET_CLASS) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 2
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 300 ; 32 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 4 uses
  %i.j = load i32, ptr %i.h, align 4              ; 3 uses
  %i.k = icmp ugt i32 %i.j, 299
  br i1 %i.k, label %.preheader.split.us, label %rsp_buffer_push.exit

.preheader.split.us:                              ; preds = %.preheader
  store i8 -58, ptr %i.i, align 2
  br label %attn_irq_enabled.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -128, ptr %i.l, align 2
  br label %bb.d

rsp_buffer_push.exit:                             ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 19472
  %i.n = load i8, ptr %i.m, align 8
  %i.o = zext nneg i32 %i.j to i64
  %i.p = add nuw nsw i32 %i.j, 1
  store i32 %i.p, ptr %i.h, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %i.o
  store i8 %i.n, ptr %i.q, align 1
  %.pre = load i32, ptr %i.h, align 4             ; 3 uses
  %i.r = icmp ugt i32 %.pre, 299
  br i1 %i.r, label %rsp_buffer_push.exit.5.thread, label %rsp_buffer_push.exit.1

rsp_buffer_push.exit.1:                           ; preds = %rsp_buffer_push.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 19473
  %i.t = load i8, ptr %i.s, align 1
end_hunk_0
