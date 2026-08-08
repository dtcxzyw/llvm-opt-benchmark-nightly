inline.NumInlined: 78
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@__scm_send:bb.a
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = icmp eq i32 %.sroa.9.0.copyload, %i.da
  br i1 %i.db, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dc = load ptr, ptr %i.bz, align 8
  %i.dd = tail call zeroext i1 @ns_capable(ptr noundef %i.dc, i32 noundef 6) #9
  br i1 %i.dd, label %bb.aj, label %scm_fp_copy.exit.thread

bb.aj:                                            ; preds = %bb.af, %bb.ai, %bb.ah, %bb.ag
  %i.de = load ptr, ptr %2, align 8               ; 2 uses
  %.not61 = icmp eq ptr %i.de, null
  br i1 %.not61, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.df = tail call i32 @pid_vnr(ptr noundef nonnull %i.de) #9
  %.not62 = icmp eq i32 %i.df, %.sroa.0.0.copyload
  br i1 %.not62, label %scm_check_creds.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dg = tail call ptr @find_get_pid(i32 noundef %.sroa.0.0.copyload) #9 ; 5 uses
  %.not63 = icmp eq ptr %i.dg, null
  br i1 %.not63, label %scm_fp_copy.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dh = load ptr, ptr %2, align 8
  tail call void @put_pid(ptr noundef %i.dh) #9
  store ptr null, ptr %2, align 8
  %i.di = tail call i32 @pidfs_register_pid_gfp(ptr noundef nonnull %i.dg, i32 noundef 3264) #9 ; 2 uses
  %.not.i68 = icmp eq i32 %i.di, 0
  br i1 %.not.i68, label %bb.an, label %scm_replace_pid.exit, !prof !17

scm_replace_pid.exit:                             ; preds = %bb.am
  tail call void @put_pid(ptr noundef nonnull %i.dg) #9
  br label %scm_fp_copy.exit.thread

bb.an:                                            ; preds = %bb.am
  store ptr %i.dg, ptr %2, align 8
  %i.dj = tail call i32 @pid_vnr(ptr noundef nonnull %i.dg) #9
  store i32 %i.dj, ptr %i.i, align 8
  br label %scm_check_creds.exit

scm_check_creds.exit:                             ; preds = %bb.ak, %bb.an
  store i32 %.sroa.7.0.copyload, ptr %i.j, align 4
  store i32 %.sroa.9.0.copyload, ptr %i.k, align 8
  br label %scm_fp_copy.exit.thread78

scm_fp_copy.exit.thread78:                        ; preds = %get_uid.exit.i, %._crit_edge.i, %bb.i, %scm_check_creds.exit, %bb.e
  %.val = load ptr, ptr %i.h, align 8
  %.val67 = load i64, ptr %i.c, align 8           ; 2 uses
  %i.dk = load i64, ptr %.04295, align 8
  %i.dl = add i64 %i.dk, 7
  %i.dm = and i64 %i.dl, -8
  %i.dn = getelementptr i8, ptr %.04295, i64 %i.dm ; 3 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %.val to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = icmp ugt i64 %i.dr, %.val67
  %.not120 = icmp eq ptr %i.dn, null
  %.not = or i1 %i.ds, %.not120
  br i1 %.not, label %select.unfold._crit_edge, label %bb.c

select.unfold._crit_edge:                         ; preds = %scm_fp_copy.exit.thread78, %bb.a, %bb.b
  %i.dt = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not55 = icmp eq ptr %i.du, null
  br i1 %.not55, label %scm_destroy.exit, label %bb.ao

bb.ao:                                            ; preds = %select.unfold._crit_edge
  %i.dv = load i16, ptr %i.du, align 8
  %.not56 = icmp eq i16 %i.dv, 0
  br i1 %.not56, label %bb.ap, label %scm_destroy.exit

bb.ap:                                            ; preds = %bb.ao
  tail call void @kfree(ptr noundef nonnull %i.du) #9
  store ptr null, ptr %i.dt, align 8
  br label %scm_destroy.exit

scm_fp_copy.exit.thread:                          ; preds = %bb.al, %bb.aa, %bb.ae, %bb.ai, %bb.y, %bb.x, %bb.n, %bb.l, %bb.j, %bb.f, %bb.g, %bb.h, %bb.c, %bb.d, %bb.o, %bb.p, %scm_replace_pid.exit, %bb.r
  %.2 = phi i32 [ -22, %bb.r ], [ -9, %bb.o ], [ %i.di, %scm_replace_pid.exit ], [ -9, %bb.p ], [ -1, %bb.ai ], [ -22, %bb.x ], [ -1, %bb.aa ], [ -22, %bb.y ], [ -12, %bb.l ], [ -22, %bb.n ], [ -3, %bb.al ], [ -1, %bb.ae ], [ -22, %bb.c ], [ -22, %bb.d ], [ -22, %bb.j ], [ -22, %bb.g ], [ -22, %bb.h ], [ -22, %bb.f ] ; 2 uses
  %i.dw = load ptr, ptr %2, align 8
  tail call void @put_pid(ptr noundef %i.dw) #9
  store ptr null, ptr %2, align 8
  %i.dx = load ptr, ptr %i.l, align 8             ; 5 uses
  %.not.i69 = icmp eq ptr %i.dx, null
  br i1 %.not.i69, label %scm_destroy.exit, label %bb.aq

bb.aq:                                            ; preds = %scm_fp_copy.exit.thread
  store ptr null, ptr %i.l, align 8
  %i.dy = load i16, ptr %i.dx, align 8            ; 2 uses
  %i.dz = icmp sgt i16 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.i.i, label %__scm_destroy.exit.i

.lr.ph.i.i:                                       ; preds = %bb.aq
  %i.ea = getelementptr i8, ptr %i.dx, i64 40
  %i.eb = zext nneg i16 %i.dy to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.eb, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ar ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i.i
  %i.ed = load ptr, ptr %i.ec, align 8
  tail call void @fput(ptr noundef %i.ed) #9
  %i.ee = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.ee, label %bb.ar, label %__scm_destroy.exit.i, !llvm.loop !11

__scm_destroy.exit.i:                             ; preds = %bb.ar, %bb.aq
  %i.ef = getelementptr i8, ptr %i.dx, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8
  tail call void @free_uid(ptr noundef %i.eg) #9
  tail call void @kfree(ptr noundef nonnull %i.dx) #9
  br label %scm_destroy.exit

scm_destroy.exit:                                 ; preds = %__scm_destroy.exit.i, %scm_fp_copy.exit.thread, %select.unfold._crit_edge, %bb.ao, %bb.ap
  %.0 = phi i32 [ 0, %bb.ao ], [ 0, %select.unfold._crit_edge ], [ 0, %bb.ap ], [ %.2, %scm_fp_copy.exit.thread ], [ %.2, %__scm_destroy.exit.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @find_get_pid(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @put_cmsg(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = add i32 %3, 16                           ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 68         ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %.not = icmp sgt i32 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @put_cmsg_compat(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #9
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 6 uses
  %.not121 = icmp eq ptr %i.g, null
  br i1 %.not121, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.i = load i64, ptr %i.h, align 8
  %.fr = freeze i64 %i.i                          ; 3 uses
  %i.j = icmp ult i64 %.fr, 16
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = or i32 %i.d, 8
  store i32 %i.k, ptr %i.c, align 4
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.l = sext i32 %i.b to i64
  %i.m = icmp ult i64 %.fr, %i.l
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = or i32 %i.d, 8
  store i32 %i.n, ptr %i.c, align 4
  %i.o = trunc i64 %.fr to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0103 = phi i32 [ %i.o, %bb.g ], [ %i.b, %bb.f ] ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 64
  %i.q = load i8, ptr %i.p, align 8
  %i.r = trunc i8 %i.q to i1
  br i1 %i.r, label %.split186, label %bb.o

.split186:                                        ; preds = %bb.h
  %i.s = sext i32 %.0103 to i64                   ; 3 uses
  %i.t = add nsw i64 %i.s, -16                    ; 5 uses
  %i.u = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #11, !srcloc !18
  %i.v = tail call ptr asm "cmp $1,$0\0A\09cmova $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.u, ptr nonnull readnone %i.g) #11, !srcloc !19 ; 5 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8        ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 12       ; 2 uses
  %i.y = getelementptr i8, ptr %i.v, i64 16       ; 3 uses
  %i.z = icmp ugt i64 %i.t, 7
  %i.aa = icmp ugt i64 %i.t, 3
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12
  br i1 %i.z, label %.split185.us, label %.split185

.split185.us:                                     ; preds = %.split186
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.s, ptr elementtype(%struct.__large_struct) %i.v) #12
          to label %bb.i [label %.split.a], !srcloc !20

bb.i:                                             ; preds = %.split185.us
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %1, ptr elementtype(%struct.__large_struct) %i.w) #12
          to label %bb.j [label %.split.a], !srcloc !21

bb.j:                                             ; preds = %bb.i
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %2, ptr elementtype(%struct.__large_struct) %i.x) #12
          to label %.lr.ph.us.us.us [label %.split.a], !srcloc !22

.lr.ph.us.us.us:                                  ; preds = %bb.j, %bb.k
  %.0108162.us.us.us = phi ptr [ %i.ac, %bb.k ], [ %i.y, %bb.j ] ; 3 uses
  %.0112161.us.us.us = phi ptr [ %i.ad, %bb.k ], [ %4, %bb.j ] ; 3 uses
  %.0116160.us.us.us = phi i64 [ %i.ae, %bb.k ], [ %i.t, %bb.j ] ; 2 uses
  %i.ab = load i64, ptr %.0112161.us.us.us, align 8
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.ab, ptr elementtype(%struct.__large_struct) %.0108162.us.us.us) #12
          to label %bb.k [label %.split.a], !srcloc !23

bb.k:                                             ; preds = %.lr.ph.us.us.us
  %i.ac = getelementptr i8, ptr %.0108162.us.us.us, i64 8 ; 3 uses
  %i.ad = getelementptr i8, ptr %.0112161.us.us.us, i64 8 ; 3 uses
  %i.ae = add i64 %.0116160.us.us.us, -8          ; 4 uses
  %i.af = icmp ugt i64 %i.ae, 7
  br i1 %i.af, label %.lr.ph.us.us.us, label %..preheader145_crit_edge.us.us.us, !llvm.loop !24

.lr.ph168.us.us.us:                               ; preds = %..preheader145_crit_edge.us.us.us
  %i.ag = load i32, ptr %i.ad, align 4
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %i.ag, ptr elementtype(%struct.__large_struct) %i.ac) #12
          to label %.preheader143.us.us.us.loopexit [label %.split.a], !srcloc !25

.lr.ph175.us.us.us:                               ; preds = %.preheader143.us.us.us
  %i.ah = load i16, ptr %.1113.lcssa.us.us.us, align 2
  callbr void asm sideeffect "\0A1:\09movw $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i16 %i.ah, ptr elementtype(%struct.__large_struct) %.1109.lcssa.us.us.us) #12
          to label %.preheader.us.us.us.loopexit [label %.split.a], !srcloc !26

.preheader.us.us.us.loopexit:                     ; preds = %.lr.ph175.us.us.us
  %i.ai = add nsw i64 %.1117.lcssa.us.us.us, -2
  %i.aj = getelementptr i8, ptr %.1113.lcssa.us.us.us, i64 2
  %i.ak = getelementptr i8, ptr %.1109.lcssa.us.us.us, i64 2
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.loopexit, %.preheader143.us.us.us
  %.2118.lcssa.us.us.us = phi i64 [ %.1117.lcssa.us.us.us, %.preheader143.us.us.us ], [ %i.ai, %.preheader.us.us.us.loopexit ]
  %.2114.lcssa.us.us.us = phi ptr [ %.1113.lcssa.us.us.us, %.preheader143.us.us.us ], [ %i.aj, %.preheader.us.us.us.loopexit ]
  %.2110.lcssa.us.us.us = phi ptr [ %.1109.lcssa.us.us.us, %.preheader143.us.us.us ], [ %i.ak, %.preheader.us.us.us.loopexit ]
  %.not122179.us.us.us = icmp eq i64 %.2118.lcssa.us.us.us, 0
  br i1 %.not122179.us.us.us, label %.split.us.us.us, label %.lr.ph182.us.us.us

.preheader143.us.us.us.loopexit:                  ; preds = %.lr.ph168.us.us.us
  %i.al = add nsw i64 %.0116160.us.us.us, -12
  %i.am = getelementptr i8, ptr %.0112161.us.us.us, i64 12
  %i.an = getelementptr i8, ptr %.0108162.us.us.us, i64 12
  br label %.preheader143.us.us.us

.preheader143.us.us.us:                           ; preds = %.preheader143.us.us.us.loopexit, %..preheader145_crit_edge.us.us.us
  %.1117.lcssa.us.us.us = phi i64 [ %i.ae, %..preheader145_crit_edge.us.us.us ], [ %i.al, %.preheader143.us.us.us.loopexit ] ; 3 uses
  %.1113.lcssa.us.us.us = phi ptr [ %i.ad, %..preheader145_crit_edge.us.us.us ], [ %i.am, %.preheader143.us.us.us.loopexit ] ; 3 uses
  %.1109.lcssa.us.us.us = phi ptr [ %i.ac, %..preheader145_crit_edge.us.us.us ], [ %i.an, %.preheader143.us.us.us.loopexit ] ; 3 uses
  %i.ao = icmp samesign ugt i64 %.1117.lcssa.us.us.us, 1
  br i1 %i.ao, label %.lr.ph175.us.us.us, label %.preheader.us.us.us

..preheader145_crit_edge.us.us.us:                ; preds = %bb.k
  %i.ap = icmp samesign ugt i64 %i.ae, 3
  br i1 %i.ap, label %.lr.ph168.us.us.us, label %.preheader143.us.us.us

.lr.ph182.us.us.us:                               ; preds = %.preheader.us.us.us
  %i.aq = load i8, ptr %.2114.lcssa.us.us.us, align 1
  callbr void asm sideeffect "\0A1:\09movb $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "iq,*m,!i,~{dirflag},~{fpsr},~{flags}"(i8 %i.aq, ptr elementtype(%struct.__large_struct) %.2110.lcssa.us.us.us) #12
          to label %.split.us.us.us [label %.split.a], !srcloc !27

.split.us.us.us:                                  ; preds = %.lr.ph182.us.us.us, %.preheader.us.us.us
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !28
  br label %.thread141

.split185:                                        ; preds = %.split186
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.s, ptr elementtype(%struct.__large_struct) %i.v) #12
          to label %bb.l [label %.split.a], !srcloc !20

bb.l:                                             ; preds = %.split185
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %1, ptr elementtype(%struct.__large_struct) %i.w) #12
          to label %bb.m [label %.split.a], !srcloc !21

bb.m:                                             ; preds = %bb.l
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %2, ptr elementtype(%struct.__large_struct) %i.x) #12
          to label %.preheader145 [label %.split.a], !srcloc !22

.preheader145:                                    ; preds = %bb.m
  br i1 %i.aa, label %.lr.ph168, label %.preheader143

.preheader143:                                    ; preds = %bb.n, %.preheader145
  %.1117.lcssa = phi i64 [ %i.t, %.preheader145 ], [ %i.av, %bb.n ] ; 3 uses
  %.1113.lcssa = phi ptr [ %4, %.preheader145 ], [ %i.au, %bb.n ] ; 3 uses
  %.1109.lcssa = phi ptr [ %i.y, %.preheader145 ], [ %i.at, %bb.n ] ; 3 uses
  %i.ar = icmp samesign ugt i64 %.1117.lcssa, 1
  br i1 %i.ar, label %.lr.ph175, label %.preheader

.lr.ph168:                                        ; preds = %.preheader145, %bb.n
  %.1109167 = phi ptr [ %i.at, %bb.n ], [ %i.y, %.preheader145 ] ; 2 uses
  %.1113166 = phi ptr [ %i.au, %bb.n ], [ %4, %.preheader145 ] ; 2 uses
  %.1117165 = phi i64 [ %i.av, %bb.n ], [ %i.t, %.preheader145 ]
  %i.as = load i32, ptr %.1113166, align 4
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %i.as, ptr elementtype(%struct.__large_struct) %.1109167) #12
          to label %bb.n [label %.split.a], !srcloc !25

bb.n:                                             ; preds = %.lr.ph168
  %i.at = getelementptr i8, ptr %.1109167, i64 4  ; 2 uses
  %i.au = getelementptr i8, ptr %.1113166, i64 4  ; 2 uses
  %i.av = add nsw i64 %.1117165, -4               ; 3 uses
  %i.aw = icmp ugt i64 %i.av, 3
  br i1 %i.aw, label %.lr.ph168, label %.preheader143, !llvm.loop !29

.preheader.loopexit:                              ; preds = %.lr.ph175
  %i.ax = add nsw i64 %.1117.lcssa, -2
  %i.ay = getelementptr i8, ptr %.1113.lcssa, i64 2
  %i.az = getelementptr i8, ptr %.1109.lcssa, i64 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader143
  %.2118.lcssa = phi i64 [ %.1117.lcssa, %.preheader143 ], [ %i.ax, %.preheader.loopexit ]
  %.2114.lcssa = phi ptr [ %.1113.lcssa, %.preheader143 ], [ %i.ay, %.preheader.loopexit ]
  %.2110.lcssa = phi ptr [ %.1109.lcssa, %.preheader143 ], [ %i.az, %.preheader.loopexit ]
  %.not122179 = icmp eq i64 %.2118.lcssa, 0
  br i1 %.not122179, label %.thread, label %.lr.ph182

.lr.ph182:                                        ; preds = %.preheader
  %i.ba = load i8, ptr %.2114.lcssa, align 1
  callbr void asm sideeffect "\0A1:\09movb $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "iq,*m,!i,~{dirflag},~{fpsr},~{flags}"(i8 %i.ba, ptr elementtype(%struct.__large_struct) %.2110.lcssa) #12
          to label %.thread [label %.split.a], !srcloc !27

.lr.ph175:                                        ; preds = %.preheader143
  %i.bb = load i16, ptr %.1113.lcssa, align 2
  callbr void asm sideeffect "\0A1:\09movw $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i16 %i.bb, ptr elementtype(%struct.__large_struct) %.1109.lcssa) #12
          to label %.preheader.loopexit [label %.split.a], !srcloc !26

.split.a:                                         ; preds = %.lr.ph168, %.lr.ph.us.us.us, %.lr.ph175, %.lr.ph168.us.us.us, %.lr.ph175.us.us.us, %bb.j, %bb.i, %.split185.us, %bb.m, %.split185, %bb.l, %.lr.ph182, %.lr.ph182.us.us.us
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !28
  br label %bb.p

.thread:                                          ; preds = %.lr.ph182, %.preheader
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !28
  br label %.thread141

bb.o:                                             ; preds = %bb.h
  %i.bc = getelementptr i8, ptr %i.g, i64 8
  store i32 %1, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %i.g, i64 12
  store i32 %2, ptr %i.bd, align 4
  %i.be = sext i32 %.0103 to i64                  ; 2 uses
  store i64 %i.be, ptr %i.g, align 8
  %i.bf = getelementptr i8, ptr %i.g, i64 16
  %i.bg = add nsw i64 %i.be, -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %4, i64 %i.bg, i1 false)
  br label %.thread141

.thread141:                                       ; preds = %.thread, %.split.us.us.us, %bb.o
  %i.bh = add nsw i64 %i.a, 7
  %i.bi = and i64 %i.bh, -8
  %i.bj = add nsw i64 %i.bi, 16
  %i.bk = load i64, ptr %i.h, align 8             ; 2 uses
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bk)
  %i.bm = load ptr, ptr %i.f, align 8
  %sext123 = shl i64 %i.bl, 32
  %i.bn = ashr exact i64 %sext123, 32             ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 %i.bn
  store ptr %i.bo, ptr %i.f, align 8
  %i.bp = sub i64 %i.bk, %i.bn
  store i64 %i.bp, ptr %i.h, align 8
  br label %bb.p

bb.p:                                             ; preds = %.split.a, %.thread141, %bb.e, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.e ], [ -14, %.split.a ], [ 0, %.thread141 ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @put_cmsg_compat(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @put_cmsg_notrunc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8
  %i.e = sext i32 %3 to i64
  %i.f = add nsw i64 %i.e, 16
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @put_cmsg(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ -525, %bb.b ], [ -525, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @put_cmsg_scm_timestamping64(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.scm_timestamping64, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = load i64, ptr %1, align 8
  %i.b = tail call { i64, i64 } @ns_to_timespec64(i64 noundef %i.a) #9 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  store i64 %i.c, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call { i64, i64 } @ns_to_timespec64(i64 noundef %i.g) #9 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.j, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = tail call { i64, i64 } @ns_to_timespec64(i64 noundef %i.n) #9 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.q, ptr %i.s, align 8
  %i.t = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 65, i32 noundef 48, ptr noundef nonnull %2) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local { i64, i64 } @ns_to_timespec64(i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @put_cmsg_scm_timestamping(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.scm_timestamping, align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = load i64, ptr %1, align 8
  %i.b = tail call { i64, i64 } @ns_to_timespec64(i64 noundef %i.a) #9 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  store i64 %i.c, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call { i64, i64 } @ns_to_timespec64(i64 noundef %i.g) #9 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.j, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = tail call { i64, i64 } @ns_to_timespec64(i64 noundef %i.n) #9 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.q, ptr %i.s, align 8
  %i.t = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 37, i32 noundef 48, ptr noundef nonnull %2) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @scm_detach_fds(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 68         ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = lshr i32 %i.d, 11
  %i.f = and i32 %i.e, 524288
  %i.g = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %.val = load i64, ptr %i.g, align 8             ; 2 uses
  %i.h = icmp ult i64 %.val, 17
  %i.i = add i64 %.val, 17179869168
  %i.j = lshr i64 %i.i, 2
  %i.k = trunc i64 %i.j to i32
  %.0.i = select i1 %i.h, i32 0, i32 %i.k
  %i.l = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i16, ptr %i.m, align 8
  %i.o = sext i16 %i.n to i32
  %i.p = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 %i.o) ; 4 uses
  %i.q = getelementptr i8, ptr %i.b, i64 16
  %i.r = getelementptr i8, ptr %0, i64 64
  %i.s = load i8, ptr %i.r, align 8
  %i.t = trunc i8 %i.s to i1
  br i1 %i.t, label %.critedge, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "994: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 994b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 994) #12, !srcloc !30
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 364, i32 2307, i64 16) #12, !srcloc !31
  tail call void asm sideeffect "995: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 995b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 995) #12, !srcloc !32
  br label %__scm_destroy.exit

.critedge:                                        ; preds = %bb.a
  %.not = icmp sgt i32 %i.d, -1
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %.critedge
  %i.u = icmp sgt i32 %i.p, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.critedge81

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %.lr.ph

bb.c:                                             ; preds = %.critedge
  tail call void @scm_detach_fds_compat(ptr noundef %0, ptr noundef %1) #9
  br label %__scm_destroy.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.v = getelementptr [4 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %scm_recv_one_fd.exit.thread.split.loop.exit99, label %scm_recv_one_fd.exit

scm_recv_one_fd.exit:                             ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.l, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 40
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 @receive_fd(ptr noundef %i.z, ptr noundef nonnull %i.v, i32 noundef range(i32 0, 524289) %i.f) #9
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %scm_recv_one_fd.exit.thread.split.loop.exit97, label %bb.d

bb.d:                                             ; preds = %scm_recv_one_fd.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %scm_recv_one_fd.exit.thread, label %.lr.ph, !llvm.loop !33

scm_recv_one_fd.exit.thread.split.loop.exit97:    ; preds = %scm_recv_one_fd.exit
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  br label %scm_recv_one_fd.exit.thread

scm_recv_one_fd.exit.thread.split.loop.exit99:    ; preds = %.lr.ph
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  br label %scm_recv_one_fd.exit.thread

scm_recv_one_fd.exit.thread:                      ; preds = %bb.d, %scm_recv_one_fd.exit.thread.split.loop.exit99, %scm_recv_one_fd.exit.thread.split.loop.exit97
  %.071.lcssa = phi i32 [ %i.ac, %scm_recv_one_fd.exit.thread.split.loop.exit97 ], [ %i.ad, %scm_recv_one_fd.exit.thread.split.loop.exit99 ], [ %i.p, %bb.d ] ; 8 uses
  %i.ae = icmp sgt i32 %.071.lcssa, 0
  br i1 %i.ae, label %bb.e, label %.critedge81

bb.e:                                             ; preds = %scm_recv_one_fd.exit.thread
  %i.af = zext nneg i32 %.071.lcssa to i64
  %i.ag = shl i32 %.071.lcssa, 2
  %i.ah = getelementptr i8, ptr %i.b, i64 8
  %i.ai = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.aj = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.ah, i32 1, i64 4, i64 %i.ai) #12, !srcloc !34 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = ptrtoint ptr %i.ak to i64
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.al)
  %i.an = and i64 %i.am, 4294967295
  %.not76 = icmp eq i64 %i.an, 0
  br i1 %.not76, label %bb.f, label %.critedge81

end_hunk_0
