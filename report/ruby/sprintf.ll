inline.NumInlined: 279
inline.NumDeleted: 61
begin_hunk_0_@rb_str_format:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.thread1452

bb.nf:                                            ; preds = %get_num.exit1253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  %i.ajr = icmp eq i64 %.0987, 36
  br i1 %i.ajr, label %bb.ng, label %bb.nl

bb.ng:                                            ; preds = %bb.nf
  switch i32 %.1973, label %check_next_arg.exit1354 [
    i32 -1, label %bb.nh
    i32 -2, label %bb.ni
  ]

bb.nh:                                            ; preds = %bb.ng
  %i.ajs = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ajs, ptr noundef nonnull @.str.41, i32 noundef %.1959) #19
  unreachable

bb.ni:                                            ; preds = %bb.ng
  %i.ajt = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ajt, ptr noundef nonnull @.str.42, i32 noundef %.1959) #19
  unreachable

check_next_arg.exit1354:                          ; preds = %bb.ng
  %.not1102 = icmp slt i32 %.1959, %i.q
  br i1 %.not1102, label %bb.nk, label %bb.nj

bb.nj:                                            ; preds = %check_next_arg.exit1354
  %i.aju = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aju, ptr noundef nonnull @.str) #19
  unreachable

bb.nk:                                            ; preds = %check_next_arg.exit1354
  %i.ajv = add nsw i32 %.1959, 1
  %i.ajw = sext i32 %.1959 to i64
  %i.ajx = getelementptr [8 x i8], ptr %i.r, i64 %i.ajw
  %i.ajy = load i64, ptr %i.ajx, align 8, !tbaa !11
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nf, %bb.nk
  %.9981 = phi i32 [ %.1959, %bb.nk ], [ %.1973, %bb.nf ] ; 2 uses
  %.8966 = phi i32 [ %i.ajv, %bb.nk ], [ %.1959, %bb.nf ] ; 2 uses
  %i.ajz = phi i64 [ %i.ajy, %bb.nk ], [ %.0987, %bb.nf ] ; 11 uses
  store i64 %i.ajz, ptr %i.m, align 8, !tbaa !11
  %i.aka = lshr i32 %.1952, 2
  %.lobit = and i32 %i.aka, 1                     ; 2 uses
  %i.akb = trunc i64 %i.ajz to i1
  br i1 %i.akb, label %rb_integer_type_p.exit.thread, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.akc = icmp eq i64 %i.ajz, 0
  %i.akd = and i64 %i.ajz, 6
  %i.ake = icmp ne i64 %i.akd, 0
  %i.akf = or i1 %i.akc, %i.ake
  br i1 %i.akf, label %.thread1537, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.nm
  %i.akg = inttoptr i64 %i.ajz to ptr
  %i.akh = load i64, ptr %i.akg, align 8, !tbaa !13
  %i.aki = and i64 %i.akh, 31
  %i.akj = icmp eq i64 %i.aki, 10
  br i1 %i.akj, label %rb_integer_type_p.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit1213

rbimpl_RB_TYPE_P_fastpath.exit1213:               ; preds = %rb_integer_type_p.exit
  %i.akk = inttoptr i64 %i.ajz to ptr
  %i.akl = load i64, ptr %i.akk, align 8, !tbaa !13
  %i.akm = and i64 %i.akl, 31
  %i.akn = icmp eq i64 %i.akm, 15
  br i1 %i.akn, label %bb.nn, label %.thread1537

bb.nn:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit1213
  %i.ako = call i64 @rb_rational_den(i64 noundef %i.ajz) #22
  %i.akp = call i64 @rb_rational_num(i64 noundef %i.ajz) #22
  br label %rb_integer_type_p.exit.thread

rb_integer_type_p.exit.thread:                    ; preds = %bb.nl, %rb_integer_type_p.exit, %bb.nn
  %.0948 = phi i64 [ %i.akp, %bb.nn ], [ %i.ajz, %rb_integer_type_p.exit ], [ %i.ajz, %bb.nl ] ; 7 uses
  %.0947 = phi i64 [ %i.ako, %bb.nn ], [ 3, %rb_integer_type_p.exit ], [ 3, %bb.nl ] ; 3 uses
  %i.akq = and i32 %.1952, 64
  %.not1104 = icmp eq i32 %i.akq, 0
  %spec.select1580 = select i1 %.not1104, i32 6, i32 %.01426 ; 5 uses
  %i.akr = trunc i64 %.0948 to i1
  br i1 %i.akr, label %bb.no, label %bb.ns

bb.no:                                            ; preds = %rb_integer_type_p.exit.thread
  %i.aks = icmp slt i64 %.0948, 0
  br i1 %i.aks, label %bb.np, label %rb_long2num_inline.exit

bb.np:                                            ; preds = %bb.no
  %i.akt = ashr i64 %.0948, 1
  %i.aku = sub nsw i64 0, %i.akt                  ; 2 uses
  %i.akv = icmp samesign ult i64 %i.aku, 4611686018427387904
  br i1 %i.akv, label %bb.nq, label %bb.nr

bb.nq:                                            ; preds = %bb.np
  %i.akw = shl nuw nsw i64 %i.aku, 1
  %i.akx = or disjoint i64 %i.akw, 1
  br label %rb_long2num_inline.exit

bb.nr:                                            ; preds = %bb.np
  %i.aky = call i64 @rb_int2big(i64 noundef 4611686018427387904) #20
  br label %rb_long2num_inline.exit

bb.ns:                                            ; preds = %rb_integer_type_p.exit.thread
  %i.akz = inttoptr i64 %.0948 to ptr
  %i.ala = load i64, ptr %i.akz, align 8, !tbaa !13
  %i.alb = and i64 %i.ala, 8192
  %.not.i1357 = icmp eq i64 %i.alb, 0
  br i1 %.not.i1357, label %bb.nt, label %rb_long2num_inline.exit

bb.nt:                                            ; preds = %bb.ns
  %i.alc = call i64 @rb_big_uminus(i64 noundef %.0948) #20
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.nr, %bb.nq, %bb.ns, %bb.nt, %bb.no
  %.1949 = phi i64 [ %.0948, %bb.ns ], [ %.0948, %bb.no ], [ %i.alc, %bb.nt ], [ %i.akx, %bb.nq ], [ %i.aky, %bb.nr ] ; 2 uses
  %.0946 = phi i32 [ %.lobit, %bb.ns ], [ %.lobit, %bb.no ], [ -1, %bb.nt ], [ -1, %bb.nq ], [ -1, %bb.nr ] ; 3 uses
  %.not1105 = icmp eq i64 %.0947, 3
  br i1 %.not1105, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %rb_long2num_inline.exit
  %i.ald = sext i32 %spec.select1580 to i64       ; 2 uses
  %i.ale = call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.ald) #20
  %i.alf = call i64 @rb_int_mul(i64 noundef %.1949, i64 noundef %i.ale) #20
  %i.alg = call i64 @rb_int_idiv(i64 noundef %.0947, i64 noundef 5) #20
  %i.alh = call i64 @rb_int_plus(i64 noundef %i.alf, i64 noundef %i.alg) #20
  %i.ali = call i64 @rb_int_idiv(i64 noundef %i.alh, i64 noundef %.0947) #20
  br label %bb.nw

bb.nv:                                            ; preds = %rb_long2num_inline.exit
  %spec.select1199 = call i32 @llvm.smax.i32(i32 %spec.select1580, i32 0)
  %.pre = sext i32 %spec.select1580 to i64
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %bb.nu
  %.pre-phi = phi i64 [ %.pre, %bb.nv ], [ %i.ald, %bb.nu ] ; 9 uses
  %.2950 = phi i64 [ %.1949, %bb.nv ], [ %i.ali, %bb.nu ]
  %.0945 = phi i32 [ %spec.select1199, %bb.nv ], [ 0, %bb.nu ] ; 2 uses
  %i.alj = call i64 @rb_int2str(i64 noundef %.2950, i32 noundef 10) #20 ; 2 uses
  store i64 %i.alj, ptr %i.m, align 8, !tbaa !11
  %i.alk = inttoptr i64 %i.alj to ptr
  %i.all = getelementptr i8, ptr %i.alk, i64 16
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !16
  %i.aln = zext nneg i32 %.0945 to i64            ; 4 uses
  %i.alo = add i64 %i.alm, %i.aln                 ; 2 uses
  %.not1106 = icmp sgt i64 %i.alo, %.pre-phi
  %i.alp = add i32 %spec.select1580, 1
  %i.alq = sext i32 %i.alp to i64
  %.0942 = select i1 %.not1106, i64 %i.alo, i64 %i.alq
  %.not1107 = icmp ne i32 %.0946, 0
  %i.alr = and i32 %.1952, 16
  %.not1108 = icmp ne i32 %i.alr, 0
  %or.cond1200.not = select i1 %.not1107, i1 true, i1 %.not1108 ; 2 uses
  %i.als = zext i1 %or.cond1200.not to i64
  %i.alt = icmp sgt i32 %spec.select1580, 0       ; 3 uses
  %i.alu = zext i1 %i.alt to i64
  %.1943 = add nuw nsw i64 %i.als, %i.alu
  %.2944 = add i64 %.1943, %.0942                 ; 3 uses
  %i.alv = sext i32 %.0928 to i64                 ; 2 uses
  %i.alw = icmp slt i64 %.2944, %i.alv
  %i.alx = sub i64 %i.alv, %.2944
  %i.aly = select i1 %i.alw, i64 %i.alx, i64 0    ; 8 uses
  %i.alz = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.ama = and i64 %i.alz, 3145728
  %i.amb = add i64 %i.aly, %.2944
  br label %bb.nx

bb.nx:                                            ; preds = %bb.ny, %bb.nw
  %.25911 = phi i64 [ %.1887, %bb.nw ], [ %i.ame, %bb.ny ] ; 4 uses
  %i.amc = sub i64 %.25911, %i.by
  %i.amd = icmp sgt i64 %i.amb, %i.amc
  br i1 %i.amd, label %bb.ny, label %bb.oa

bb.ny:                                            ; preds = %bb.nx
  %i.ame = shl i64 %.25911, 1                     ; 2 uses
  %i.amf = icmp slt i64 %i.ame, 0
  br i1 %i.amf, label %bb.nz, label %bb.nx, !llvm.loop !57

bb.nz:                                            ; preds = %bb.ny
  %i.amg = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.amg, ptr noundef nonnull @.str.2) #19
  unreachable

bb.oa:                                            ; preds = %bb.nx
  %i.amh = call i64 @rb_str_resize(i64 noundef %i.ah, i64 noundef %.25911) #20 ; 0 uses
  %i.ami = load i64, ptr %i.aj, align 8, !tbaa !13 ; 2 uses
  %i.amj = and i64 %i.ami, -3145729
  %i.amk = or disjoint i64 %i.amj, %i.ama
  store i64 %i.amk, ptr %i.aj, align 8, !tbaa !13
  %i.aml = and i64 %i.ami, 8192
  %.not.i1358 = icmp eq i64 %i.aml, 0
  br i1 %.not.i1358, label %RSTRING_PTR.exit1359, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.amm = load ptr, ptr %i.am, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1359

RSTRING_PTR.exit1359:                             ; preds = %bb.oa, %bb.ob
  %i.amn = phi ptr [ %i.amm, %bb.ob ], [ %i.am, %bb.oa ] ; 11 uses
  %.not1109 = icmp eq i64 %i.aly, 0               ; 3 uses
  %i.amo = and i32 %.1952, 10                     ; 2 uses
  %.not1110 = icmp ne i32 %i.amo, 0
  %or.cond1201.not = select i1 %.not1109, i1 true, i1 %.not1110
  br i1 %or.cond1201.not, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %RSTRING_PTR.exit1359
  %i.amp = getelementptr i8, ptr %i.amn, i64 %i.by
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.amp, i8 noundef 32, i64 noundef %i.aly, i1 noundef false) #20
  %i.amq = add i64 %i.aly, %i.by
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %RSTRING_PTR.exit1359
  %.14 = phi i64 [ %i.by, %RSTRING_PTR.exit1359 ], [ %i.amq, %bb.oc ] ; 3 uses
  br i1 %or.cond1200.not, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  %i.amr = icmp sgt i32 %.0946, 0
  %i.ams = icmp slt i32 %.0946, 0
  %i.amt = select i1 %i.ams, i8 45, i8 32
  %i.amu = select i1 %i.amr, i8 43, i8 %i.amt
  %i.amv = add i64 %.14, 1
  %i.amw = getelementptr i8, ptr %i.amn, i64 %.14
  store i8 %i.amu, ptr %i.amw, align 1, !tbaa !15
  br label %bb.of

bb.of:                                            ; preds = %bb.od, %bb.oe
  %.15 = phi i64 [ %i.amv, %bb.oe ], [ %.14, %bb.od ] ; 3 uses
  %i.amx = icmp ne i32 %i.amo, 8
  %or.cond1205.not = select i1 %.not1109, i1 true, i1 %i.amx
  br i1 %or.cond1205.not, label %bb.oh, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.amy = getelementptr i8, ptr %i.amn, i64 %.15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.amy, i8 noundef 48, i64 noundef %i.aly, i1 noundef false) #20
  %i.amz = add i64 %.15, %i.aly
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.of
  %.16 = phi i64 [ %i.amz, %bb.og ], [ %.15, %bb.of ] ; 3 uses
  %i.ana = load i64, ptr %i.m, align 8, !tbaa !11
  %i.anb = inttoptr i64 %i.ana to ptr             ; 3 uses
  %i.anc = getelementptr i8, ptr %i.anb, i64 16
  %i.and = load i64, ptr %i.anc, align 8, !tbaa !16
  %i.ane = add i64 %i.and, %i.aln                 ; 7 uses
  %i.anf = load i64, ptr %i.anb, align 8, !tbaa !13
  %i.ang = and i64 %i.anf, 8192
  %.not.i1360 = icmp eq i64 %i.ang, 0
  %i.anh = getelementptr i8, ptr %i.anb, i64 24   ; 2 uses
  br i1 %.not.i1360, label %RSTRING_PTR.exit1361, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1361

RSTRING_PTR.exit1361:                             ; preds = %bb.oh, %bb.oi
  %i.anj = phi ptr [ %i.ani, %bb.oi ], [ %i.anh, %bb.oh ] ; 3 uses
  %i.ank = icmp sgt i64 %i.ane, %.pre-phi
  br i1 %i.ank, label %bb.oj, label %bb.ol

bb.oj:                                            ; preds = %RSTRING_PTR.exit1361
  %i.anl = sub i64 %i.ane, %.pre-phi              ; 3 uses
  %.not.i1362 = icmp eq i64 %i.anl, 0
  br i1 %.not.i1362, label %ruby_nonempty_memcpy.exit1364, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %3 = getelementptr i8, ptr %i.amn, i64 %.16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull readonly align 1 %i.anj, i64 noundef range(i64 1, 0) %i.anl, i1 noundef false) #20
  br label %ruby_nonempty_memcpy.exit1364

bb.ol:                                            ; preds = %RSTRING_PTR.exit1361
  %4 = getelementptr i8, ptr %i.amn, i64 %.16
  store i8 48, ptr %4, align 1, !tbaa !15
  br label %ruby_nonempty_memcpy.exit1364

ruby_nonempty_memcpy.exit1364:                    ; preds = %bb.ok, %bb.oj, %bb.ol
  %.pn = phi i64 [ 1, %bb.ol ], [ 0, %bb.oj ], [ %i.anl, %bb.ok ]
  %.17 = add i64 %.pn, %.16                       ; 3 uses
  br i1 %i.alt, label %bb.om, label %bb.on

bb.om:                                            ; preds = %ruby_nonempty_memcpy.exit1364
  %i.anm = add i64 %.17, 1
  %i.ann = getelementptr i8, ptr %i.amn, i64 %.17
  store i8 46, ptr %i.ann, align 1, !tbaa !15
  br label %bb.on

bb.on:                                            ; preds = %bb.om, %ruby_nonempty_memcpy.exit1364
  %.18 = phi i64 [ %i.anm, %bb.om ], [ %.17, %ruby_nonempty_memcpy.exit1364 ] ; 7 uses
  %.not1112 = icmp eq i32 %.0945, 0
  br i1 %.not1112, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.ano = getelementptr i8, ptr %i.amn, i64 %.18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ano, i8 noundef 48, i64 noundef %i.aln, i1 noundef false) #20
  %i.anp = add i64 %.18, %i.aln
  br label %bb.ot

bb.op:                                            ; preds = %bb.on
  %i.anq = icmp slt i64 %i.ane, %.pre-phi
  br i1 %i.anq, label %bb.oq, label %bb.os

bb.oq:                                            ; preds = %bb.op
  %i.anr = getelementptr i8, ptr %i.amn, i64 %.18 ; 2 uses
  %i.ans = sub i64 %.pre-phi, %i.ane              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.anr, i8 noundef 48, i64 noundef %i.ans, i1 noundef false) #20
  %.not.i1365 = icmp eq i64 %i.ane, 0
  br i1 %.not.i1365, label %ruby_nonempty_memcpy.exit1367, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.ant = getelementptr i8, ptr %i.anr, i64 %i.ans
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ant, ptr noundef nonnull readonly align 1 %i.anj, i64 noundef range(i64 1, 0) %i.ane, i1 noundef false) #20
  br label %ruby_nonempty_memcpy.exit1367

ruby_nonempty_memcpy.exit1367:                    ; preds = %bb.oq, %bb.or
  %i.anu = add i64 %.18, %.pre-phi
  br label %bb.ot

bb.os:                                            ; preds = %bb.op
  br i1 %i.alt, label %ruby_nonempty_memcpy.exit1370, label %bb.ot

ruby_nonempty_memcpy.exit1370:                    ; preds = %bb.os
  %i.anv = getelementptr i8, ptr %i.amn, i64 %.18
  %i.anw = getelementptr i8, ptr %i.anj, i64 %i.ane
  %i.anx = sub nsw i64 0, %.pre-phi
  %i.any = getelementptr i8, ptr %i.anw, i64 %i.anx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.anv, ptr noundef nonnull readonly align 1 %i.any, i64 noundef range(i64 1, 0) %.pre-phi, i1 noundef false) #20
  %i.anz = add i64 %.18, %.pre-phi
  br label %bb.ot

bb.ot:                                            ; preds = %ruby_nonempty_memcpy.exit1367, %ruby_nonempty_memcpy.exit1370, %bb.os, %bb.oo
  %.19 = phi i64 [ %i.anp, %bb.oo ], [ %i.anu, %ruby_nonempty_memcpy.exit1367 ], [ %i.anz, %ruby_nonempty_memcpy.exit1370 ], [ %.18, %bb.os ] ; 3 uses
  %i.aoa = and i32 %.1952, 2
  %.not1113 = icmp eq i32 %i.aoa, 0
  %or.cond1206 = select i1 %.not1109, i1 true, i1 %.not1113
  br i1 %or.cond1206, label %bb.qo, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.aob = getelementptr i8, ptr %i.amn, i64 %.19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.aob, i8 noundef 32, i64 noundef %i.aly, i1 noundef false) #20
  %i.aoc = add i64 %.19, %i.aly
  br label %bb.qo

.thread1537:                                      ; preds = %bb.nm, %rbimpl_RB_TYPE_P_fastpath.exit1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  br label %.loopexit1595

.loopexit1595:                                    ; preds = %get_num.exit1253, %get_num.exit1253, %get_num.exit1253, %get_num.exit1253, %get_num.exit1253, %get_num.exit1253, %.thread1537
  %.5992 = phi i64 [ %i.ajz, %.thread1537 ], [ %.0987, %get_num.exit1253 ], [ %.0987, %get_num.exit1253 ], [ %.0987, %get_num.exit1253 ], [ %.0987, %get_num.exit1253 ], [ %.0987, %get_num.exit1253 ], [ %.0987, %get_num.exit1253 ] ; 2 uses
  %.10982 = phi i32 [ %.9981, %.thread1537 ], [ %.1973, %get_num.exit1253 ], [ %.1973, %get_num.exit1253 ], [ %.1973, %get_num.exit1253 ], [ %.1973, %get_num.exit1253 ], [ %.1973, %get_num.exit1253 ], [ %.1973, %get_num.exit1253 ] ; 2 uses
  %.9967 = phi i32 [ %.8966, %.thread1537 ], [ %.1959, %get_num.exit1253 ], [ %.1959, %get_num.exit1253 ], [ %.1959, %get_num.exit1253 ], [ %.1959, %get_num.exit1253 ], [ %.1959, %get_num.exit1253 ], [ %.1959, %get_num.exit1253 ] ; 7 uses
  %i.aod = icmp eq i64 %.5992, 36
  br i1 %i.aod, label %bb.ov, label %bb.pa

bb.ov:                                            ; preds = %.loopexit1595
  switch i32 %.10982, label %check_next_arg.exit1371 [
    i32 -1, label %bb.ow
    i32 -2, label %bb.ox
  ]

bb.ow:                                            ; preds = %bb.ov
  %i.aoe = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aoe, ptr noundef nonnull @.str.41, i32 noundef %.9967) #19
  unreachable

bb.ox:                                            ; preds = %bb.ov
  %i.aof = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aof, ptr noundef nonnull @.str.42, i32 noundef %.9967) #19
  unreachable

check_next_arg.exit1371:                          ; preds = %bb.ov
  %.not1114 = icmp slt i32 %.9967, %i.q
  br i1 %.not1114, label %bb.oz, label %bb.oy

bb.oy:                                            ; preds = %check_next_arg.exit1371
  %i.aog = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aog, ptr noundef nonnull @.str) #19
  unreachable

bb.oz:                                            ; preds = %check_next_arg.exit1371
  %i.aoh = add nsw i32 %.9967, 1
  %i.aoi = sext i32 %.9967 to i64
  %i.aoj = getelementptr [8 x i8], ptr %i.r, i64 %i.aoi
  %i.aok = load i64, ptr %i.aoj, align 8, !tbaa !11
  br label %bb.pa

bb.pa:                                            ; preds = %.loopexit1595, %bb.oz
  %.11983 = phi i32 [ %.9967, %bb.oz ], [ %.10982, %.loopexit1595 ] ; 3 uses
  %.10968 = phi i32 [ %i.aoh, %bb.oz ], [ %.9967, %.loopexit1595 ] ; 3 uses
  %i.aol = phi i64 [ %i.aok, %bb.oz ], [ %.5992, %.loopexit1595 ]
  %i.aom = call i64 @rb_Float(i64 noundef %i.aol) #20 ; 5 uses
  %i.aon = and i64 %i.aom, 3
  %i.aoo = icmp eq i64 %i.aon, 2
  br i1 %i.aoo, label %bb.pb, label %bb.pd

bb.pb:                                            ; preds = %bb.pa
  %.not.i.i1373 = icmp eq i64 %i.aom, -9223372036854775806
  br i1 %.not.i.i1373, label %rb_float_value_inline.exit1375.thread, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %.neg.i.i1374 = ashr i64 %i.aom, 63
  %i.aop = add nsw i64 %.neg.i.i1374, 2
  %i.aoq = and i64 %i.aom, -4
  %i.aor = or i64 %i.aop, %i.aoq                  ; 2 uses
  %i.aos = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.aor, i64 range(i64 1, 0) %i.aor, i64 61)
  %i.aot = bitcast i64 %i.aos to double
  br label %rb_float_value_inline.exit1375

bb.pd:                                            ; preds = %bb.pa
  %i.aou = inttoptr i64 %i.aom to ptr
  %i.aov = getelementptr i8, ptr %i.aou, i64 16
  %i.aow = load double, ptr %i.aov, align 8, !tbaa !41
  br label %rb_float_value_inline.exit1375

rb_float_value_inline.exit1375:                   ; preds = %bb.pc, %bb.pd
  %.0.i1372 = phi double [ %i.aow, %bb.pd ], [ %i.aot, %bb.pc ] ; 4 uses
  %i.aox = call double @llvm.fabs.f64(double %.0.i1372)
  %i.aoy = fcmp ueq double %i.aox, +inf
  br i1 %i.aoy, label %bb.pe, label %rb_float_value_inline.exit1375.thread

bb.pe:                                            ; preds = %rb_float_value_inline.exit1375
  %i.aoz = fcmp ord double %.0.i1372, 0.000000e+00
  %.str.30..str.29 = select i1 %i.aoz, ptr @.str.30, ptr @.str.29 ; 2 uses
  %i.apa = fcmp olt double %.0.i1372, 0.000000e+00
  br i1 %i.apa, label %bb.ph, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.apb = and i32 %.1952, 20
  %.not = icmp eq i32 %i.apb, 0
  br i1 %.not, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.apc = and i32 %.1952, 4
  %.not1115 = icmp eq i32 %i.apc, 0
  %i.apd = select i1 %.not1115, i8 32, i8 43
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pe, %bb.pf, %bb.pg
  %.0854 = phi i8 [ 0, %bb.pf ], [ %i.apd, %bb.pg ], [ 45, %bb.pe ] ; 3 uses
  %.not1116 = icmp eq i8 %.0854, 0                ; 3 uses
  %spec.select1207 = select i1 %.not1116, i32 3, i32 4 ; 2 uses
  %i.ape = and i32 %.1952, 32
  %.not1117.not = icmp eq i32 %i.ape, 0
  %i.apf = call i32 @llvm.smax.i32(i32 %spec.select1207, i32 %.0928)
  %.1862 = select i1 %.not1117.not, i32 %spec.select1207, i32 %i.apf ; 3 uses
  %i.apg = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.aph = and i64 %i.apg, 3145728
  %i.api = zext nneg i32 %.1862 to i64            ; 3 uses
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pj, %bb.ph
  %.28 = phi i64 [ %.1887, %bb.ph ], [ %i.apl, %bb.pj ] ; 5 uses
  %i.apj = sub i64 %.28, %i.by
  %i.apk = icmp slt i64 %i.apj, %i.api
  br i1 %i.apk, label %bb.pj, label %bb.pl

bb.pj:                                            ; preds = %bb.pi
  %i.apl = shl i64 %.28, 1                        ; 2 uses
  %i.apm = icmp slt i64 %i.apl, 0
  br i1 %i.apm, label %bb.pk, label %bb.pi, !llvm.loop !58

bb.pk:                                            ; preds = %bb.pj
  %i.apn = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.apn, ptr noundef nonnull @.str.2) #19
  unreachable

bb.pl:                                            ; preds = %bb.pi
  %i.apo = call i64 @rb_str_resize(i64 noundef %i.ah, i64 noundef %.28) #20 ; 0 uses
  %i.app = load i64, ptr %i.aj, align 8, !tbaa !13 ; 2 uses
  %i.apq = and i64 %i.app, -3145729
  %i.apr = or disjoint i64 %i.apq, %i.aph
  store i64 %i.apr, ptr %i.aj, align 8, !tbaa !13
  %i.aps = and i64 %i.app, 8192
  %.not.i1376 = icmp eq i64 %i.aps, 0
  br i1 %.not.i1376, label %RSTRING_PTR.exit1377, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.apt = load ptr, ptr %i.am, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@rb_enc_vsprintf:bb.a
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ruby_vsprintf0(i64 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.rb_printf_buffer_extra, align 8 ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.e = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.f = and i64 %i.e, 3145728
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.h, %bb.b ]
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  br label %bb.d

bb.d:                                             ; preds = %RSTRING_PTR.exit, %bb.a
  %.0 = phi i64 [ %i.m, %RSTRING_PTR.exit ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 520, ptr %i.n, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.p, align 8, !tbaa !76
  %i.q = tail call i64 @rb_str_capacity(i64 noundef %0) #22
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !77
  store ptr %i.b, ptr %i.o, align 8, !tbaa !78
  store ptr %1, ptr %4, align 8, !tbaa !79
  store i64 0, ptr %i.c, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @ruby__sfvwrite, ptr %i.s, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr @ruby__sfvextra, ptr %i.t, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  store volatile i64 0, ptr %i.u, align 8, !tbaa !82
  %i.v = call fastcc i64 @BSD_vfprintf(ptr noundef %4, ptr noundef %2, ptr noundef %3) ; 0 uses
  store i64 %i.d, ptr %i.c, align 8, !tbaa !11
  %i.w = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.x = and i64 %i.w, 8192
  %.not.i26 = icmp eq i64 %i.x, 0
  %i.y = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i26, label %RSTRING_PTR.exit27, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15
  br label %RSTRING_PTR.exit27

RSTRING_PTR.exit27:                               ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.z, %bb.e ], [ %i.y, %bb.d ] ; 3 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !79
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = trunc i64 %i.w to i32
  %i.ag = and i32 %i.af, 3145728                  ; 2 uses
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !7
  %.not25 = icmp ne i32 %i.ag, 0
  %i.ah = icmp slt i64 %.0, %i.ae
  %or.cond = select i1 %.not25, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RSTRING_PTR.exit27
  %i.ai = getelementptr i8, ptr %i.aa, i64 %.0
  %i.aj = getelementptr i8, ptr %i.aa, i64 %i.ae
  %i.ak = call ptr @rb_enc_get(i64 noundef %0) #20
  %i.al = call i64 @rb_str_coderange_scan_restartable(ptr noundef %i.ai, ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.am = load i32, ptr %i.a, align 4, !tbaa !7
  %i.an = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ao = and i64 %i.an, -3145729
  %i.ap = zext i32 %i.am to i64
  %i.aq = or i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %RSTRING_PTR.exit27
  %i.ar = call i64 @rb_str_resize(i64 noundef %0, i64 noundef %i.ae) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_vsprintf(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_str_buf_new(i64 noundef 120) #20 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = and i64 %i.c, 8192
  %.not.i.i = icmp eq i64 %i.d, 0
  %i.e = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i.i, label %rb_enc_vsprintf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %rb_enc_vsprintf.exit

rb_enc_vsprintf.exit:                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  tail call fastcc void @ruby_vsprintf0(i64 noundef %i.a, ptr noundef %i.g, ptr noundef nonnull %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_sprintf(ptr noundef nonnull %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call i64 @rb_str_buf_new(i64 noundef 120) #20 ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = and i64 %i.c, 8192
  %.not.i.i.i = icmp eq i64 %i.d, 0
  %i.e = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %rb_vsprintf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %rb_vsprintf.exit

rb_vsprintf.exit:                                 ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  call fastcc void @ruby_vsprintf0(i64 noundef %i.a, ptr noundef %i.g, ptr noundef nonnull %0, ptr noundef nonnull %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_vcatf(i64 noundef %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.b = call i64 @rb_string_value(ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !11
  call void @rb_str_modify(i64 noundef %i.c) #20
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ]
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr i8, ptr %i.j, i64 %i.l
  call fastcc void @ruby_vsprintf0(i64 noundef %i.d, ptr noundef %i.m, ptr noundef %1, ptr noundef %2)
  %i.n = load i64, ptr %i.a, align 8, !tbaa !11
  ret i64 %i.n
}

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #11

declare ptr @onigenc_get_right_adjust_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_check_hash_type(i64 noundef) local_unnamed_addr #3

declare i64 @rb_key_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #1

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #3

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #12

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @BSD__sfvwrite(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #13 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !63
  %i.f = and i16 %i.e, 3
  %or.cond = icmp eq i16 %i.f, 0
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !86     ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !89
  %i.k = getelementptr i8, ptr %i.g, i64 16
  %i.l = getelementptr i8, ptr %0, i64 8          ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.g
  %i.m = phi i64 [ %i.ad, %bb.g ], [ %i.b, %.preheader ] ; 2 uses
  %.034 = phi i64 [ %i.ac, %bb.g ], [ %i.j, %.preheader ] ; 2 uses
  %.032 = phi ptr [ %i.ab, %bb.g ], [ %i.h, %.preheader ]
  %.030 = phi ptr [ %.131.lcssa, %bb.g ], [ %i.k, %.preheader ] ; 2 uses
  %i.n = icmp eq i64 %.034, 0
  br i1 %i.n, label %.lr.ph, label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.13140 = phi ptr [ %i.q, %.lr.ph ], [ %.030, %bb.c ] ; 3 uses
  %i.o = getelementptr i8, ptr %.13140, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !89   ; 2 uses
  %i.q = getelementptr i8, ptr %.13140, i64 16    ; 2 uses
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph
  %i.s = load ptr, ptr %.13140, align 8, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.135.lcssa = phi i64 [ %i.p, %._crit_edge ], [ %.034, %bb.c ] ; 3 uses
  %.133.lcssa = phi ptr [ %i.s, %._crit_edge ], [ %.032, %bb.c ] ; 2 uses
  %.131.lcssa = phi ptr [ %i.q, %._crit_edge ], [ %.030, %bb.c ]
  %i.t = load i64, ptr %i.l, align 8, !tbaa !69   ; 3 uses
  %i.u = load i16, ptr %i.d, align 8, !tbaa !63
  %i.v = and i16 %i.u, 512
  %.not38 = icmp eq i16 %i.v, 0
  br i1 %.not38, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.135.lcssa, i64 %i.t) ; 3 uses
  %.not.i = icmp eq i64 %i.t, 0
  %.pre45 = load ptr, ptr %0, align 8, !tbaa !67  ; 2 uses
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.pre45, ptr noundef nonnull readonly align 1 %.133.lcssa, i64 noundef range(i64 1, 0) %spec.select, i1 noundef false) #20
  %.pre = load i64, ptr %i.l, align 8, !tbaa !69
  %.pre44 = load ptr, ptr %0, align 8, !tbaa !67
  %.pre46.pre = load i64, ptr %i.a, align 8, !tbaa !83
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.e, %bb.f
  %.pre46 = phi i64 [ %i.m, %bb.e ], [ %.pre46.pre, %bb.f ]
  %i.w = phi ptr [ %.pre45, %bb.e ], [ %.pre44, %bb.f ]
  %i.x = phi i64 [ 0, %bb.e ], [ %.pre, %bb.f ]
  %i.y = sub i64 %i.x, %spec.select
  store i64 %i.y, ptr %i.l, align 8, !tbaa !69
  %i.z = getelementptr i8, ptr %i.w, i64 %spec.select
  store ptr %i.z, ptr %0, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %ruby_nonempty_memcpy.exit
  %i.aa = phi i64 [ %.pre46, %ruby_nonempty_memcpy.exit ], [ %i.m, %bb.d ] ; 2 uses
  %.1 = phi i64 [ %.135.lcssa, %ruby_nonempty_memcpy.exit ], [ %i.t, %bb.d ] ; 4 uses
  %i.ab = getelementptr i8, ptr %.133.lcssa, i64 %.1
  %i.ac = sub i64 %.135.lcssa, %.1
  %i.ad = sub i64 %i.aa, %.1                      ; 2 uses
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !83
  %.not39 = icmp eq i64 %i.aa, %.1
  br i1 %.not39, label %.loopexit, label %bb.c, !llvm.loop !91

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc i64 @BSD_vfprintf(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef %2) unnamed_addr #14 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 3 uses
  %i.b = alloca [5 x i8], align 1                 ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca i8, align 1                       ; 17 uses
  %i.f = alloca i32, align 4                      ; 19 uses
  %i.g = alloca [7 x i8], align 1                 ; 11 uses
  %i.h = alloca i64, align 8                      ; 11 uses
  %i.i = alloca i64, align 8                      ; 7 uses
  %3 = alloca %struct.__suio, align 8             ; 54 uses
  %4 = alloca [8 x %struct.__siov], align 16      ; 88 uses
  %i.j = alloca [1335 x i8], align 16             ; 16 uses
  %i.k = alloca [4 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store i64 0, ptr %i.h, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1335 ; 5 uses
  %i.m = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !63
  %i.o = and i16 %i.n, 26
  %i.p = icmp eq i16 %i.o, 10
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %0, i64 18
  %i.r = load i16, ptr %i.q, align 2, !tbaa !92
  %i.s = icmp sgt i16 %i.r, -1
  br i1 %i.s, label %bb.kh, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %4, ptr %3, align 8, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 101 uses
  store i64 0, ptr %i.t, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 122 uses
  store i32 0, ptr %i.u, align 8, !tbaa !93
  %i.v = getelementptr i8, ptr %0, i64 40         ; 49 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 44 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 22 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.z = ptrtoint ptr %i.j to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.021.i768 = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  %scevgep.i773 = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.ad = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 1334 ; 4 uses
  %i.ah = ptrtoint ptr %i.l to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  br label %.outer2270

.outer2270:                                       ; preds = %bb.kg, %bb.c
  %.0903.ph = phi i32 [ %.2905, %bb.kg ], [ 0, %bb.c ] ; 10 uses
  %.0543.ph = phi i64 [ %i.arr, %bb.kg ], [ 0, %bb.c ]
  %.0531.ph = phi double [ %.2533, %bb.kg ], [ 0.000000e+00, %bb.c ] ; 7 uses
  %.0526.ph = phi i32 [ %.3529, %bb.kg ], [ 0, %bb.c ] ; 16 uses
  %.0519.ph = phi i32 [ %.5524, %bb.kg ], [ 0, %bb.c ] ; 10 uses
  %.0503.ph = phi ptr [ %.5508, %bb.kg ], [ null, %bb.c ] ; 15 uses
  %.0492.ph = phi ptr [ %.7, %bb.kg ], [ %1, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %.backedge2271, %.outer2270
  %.0555 = phi ptr [ %4, %.outer2270 ], [ %.2557, %.backedge2271 ] ; 4 uses
  %.0543 = phi i64 [ %.0543.ph, %.outer2270 ], [ %.1544, %.backedge2271 ] ; 3 uses
  %.0492 = phi ptr [ %.0492.ph, %.outer2270 ], [ %.3, %.backedge2271 ] ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.1 = phi ptr [ %.0492, %bb.d ], [ %i.am, %bb.f ] ; 5 uses
  %i.al = load i8, ptr %.1, align 1, !tbaa !15    ; 2 uses
  switch i8 %i.al, label %bb.f [
    i8 37, label %bb.g
    i8 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr i8, ptr %.1, i64 1
  br label %bb.e, !llvm.loop !94

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.an = ptrtoint ptr %.1 to i64
  %i.ao = ptrtoint ptr %.0492 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %.not = icmp eq ptr %.1, %.0492
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %.0492, ptr %.0555, align 8, !tbaa !87
  %i.aq = getelementptr i8, ptr %.0555, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !89
  %i.ar = load i64, ptr %i.t, align 8, !tbaa !83
  %i.as = add i64 %i.ar, %i.ap                    ; 2 uses
  store i64 %i.as, ptr %i.t, align 8, !tbaa !83
  %i.at = getelementptr i8, ptr %.0555, i64 16
  %i.au = load i32, ptr %i.u, align 8, !tbaa !93
  %i.av = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.av, ptr %i.u, align 8, !tbaa !93
  %i.aw = icmp sgt i32 %i.av, 7
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp eq i64 %i.as, 0
  br i1 %i.ax, label %BSD__sprint.exit.thread, label %BSD__sprint.exit

BSD__sprint.exit.thread:                          ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !93
  br label %bb.j

BSD__sprint.exit:                                 ; preds = %bb.i
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !71
  %i.az = call i32 %i.ay(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !95
  store i64 0, ptr %i.t, align 8, !tbaa !83
  store i32 0, ptr %i.u, align 8, !tbaa !93
  %.not639 = icmp eq i32 %i.az, 0
  br i1 %.not639, label %bb.j, label %.thread1011

bb.j:                                             ; preds = %BSD__sprint.exit.thread, %BSD__sprint.exit, %bb.h
  %.1556 = phi ptr [ %i.at, %bb.h ], [ %4, %BSD__sprint.exit ], [ %4, %BSD__sprint.exit.thread ]
  %i.ba = add i64 %i.ap, %.0543
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.2557 = phi ptr [ %.1556, %bb.j ], [ %.0555, %bb.g ] ; 11 uses
  %.1544 = phi i64 [ %i.ba, %bb.j ], [ %.0543, %bb.g ] ; 57 uses
  %i.bb = icmp eq i8 %i.al, 0
  br i1 %i.bb, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr i8, ptr %.1, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !15
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.l
  %i.bd = phi i8 [ 0, %bb.l ], [ %.be, %.backedge.backedge ] ; 14 uses
  %.0546 = phi i32 [ 0, %bb.l ], [ %.0546.be, %.backedge.backedge ] ; 40 uses
  %.0540 = phi i32 [ 0, %bb.l ], [ %.0540.be, %.backedge.backedge ]
  %.0535 = phi i32 [ -1, %bb.l ], [ %.0535.be, %.backedge.backedge ]
  %.2 = phi ptr [ %i.bc, %bb.l ], [ %.2.be, %.backedge.backedge ] ; 2 uses
  %i.be = getelementptr i8, ptr %.2, i64 1
  %i.bf = load i8, ptr %.2, align 1, !tbaa !15
  %i.bg = sext i8 %i.bf to i32
  br label %.outer

.outer.loopexit:                                  ; preds = %bb.ab
  br label %.outer, !llvm.loop !96

.outer:                                           ; preds = %.outer.loopexit, %.backedge
  %.1541.ph = phi i32 [ %.0540, %.backedge ], [ %i.cw, %.outer.loopexit ] ; 13 uses
  %.1536.ph = phi i32 [ %.0535, %.backedge ], [ %.1536, %.outer.loopexit ]
  %.0494.ph = phi i32 [ %i.bg, %.backedge ], [ %i.cz, %.outer.loopexit ]
  %.3.ph = phi ptr [ %i.be, %.backedge ], [ %i.cx, %.outer.loopexit ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.backedge, %.outer
  %.1536 = phi i32 [ %.1536.ph, %.outer ], [ %.1536.be, %._crit_edge.backedge ] ; 32 uses
  %.0494 = phi i32 [ %.0494.ph, %.outer ], [ %.0494.be, %._crit_edge.backedge ] ; 18 uses
  %.3 = phi ptr [ %.3.ph, %.outer ], [ %.3.be, %._crit_edge.backedge ] ; 26 uses
  switch i32 %.0494, label %bb.gd [
    i32 32, label %bb.m
    i32 35, label %bb.o
    i32 42, label %bb.p
    i32 45, label %.loopexit1039
    i32 43, label %bb.u
    i32 46, label %bb.v
    i32 48, label %bb.aa
    i32 49, label %.preheader2255
end_hunk_1
begin_hunk_2_@ruby__sfvextra:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %.not = icmp eq i64 %1, 8
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %2, align 8, !tbaa !11     ; 8 uses
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !73
  %.not22 = icmp eq i64 %i.g, 0
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.47) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %4, 43
  br i1 %i.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  switch i64 %i.e, label %bb.i [
    i64 4, label %bb.f
    i64 20, label %bb.g
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  store i64 3, ptr %3, align 8, !tbaa !11
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  store i64 4, ptr %3, align 8, !tbaa !11
  br label %bb.t

bb.h:                                             ; preds = %bb.e
  store i64 5, ptr %3, align 8, !tbaa !11
  br label %bb.t

bb.i:                                             ; preds = %bb.e
  %i.j = tail call i64 @rb_inspect(i64 noundef %i.e) #20
  br label %.sink.split

bb.j:                                             ; preds = %bb.d
  %i.k = and i64 %i.e, 255
  %i.l = icmp eq i64 %i.k, 12
  br i1 %i.l, label %RB_SYMBOL_P.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = icmp eq i64 %i.e, 0
  %i.n = and i64 %i.e, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = or i1 %i.m, %i.o
  br i1 %i.p, label %RB_SYMBOL_P.exit.thread25, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.k
  %i.q = inttoptr i64 %i.e to ptr
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13
  %i.s = and i64 %i.r, 31
  %i.t = icmp eq i64 %i.s, 20
  br i1 %i.t, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread25

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.j, %RB_SYMBOL_P.exit
  %i.u = tail call i64 @rb_sym2str(i64 noundef %i.e) #20 ; 5 uses
  store i64 %i.u, ptr %i.a, align 8, !tbaa !11
  %i.v = icmp eq i32 %4, 32
  br i1 %i.v, label %bb.l, label %bb.o

bb.l:                                             ; preds = %RB_SYMBOL_P.exit.thread
  %i.w = tail call i32 @rb_str_symname_p(i64 noundef %i.u) #20
  %.not23 = icmp eq i32 %i.w, 0
  br i1 %.not23, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.x = tail call i64 @rb_str_escape(i64 noundef %i.u) #20
  br label %.sink.split

RB_SYMBOL_P.exit.thread25:                        ; preds = %bb.k, %RB_SYMBOL_P.exit
  %i.y = tail call i64 @rb_obj_as_string(i64 noundef %i.e) #20 ; 3 uses
  store i64 %i.y, ptr %i.a, align 8, !tbaa !11
  %i.z = icmp eq i32 %4, 32
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %RB_SYMBOL_P.exit.thread25
  %i.aa = tail call i64 @rb_str_quote_unprintable(i64 noundef %i.y) #20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.n, %bb.m
  %.sink = phi i64 [ %i.x, %bb.m ], [ %i.aa, %bb.n ], [ %i.j, %bb.i ] ; 2 uses
  store i64 %.sink, ptr %i.a, align 8, !tbaa !11
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l, %RB_SYMBOL_P.exit.thread, %RB_SYMBOL_P.exit.thread25
  %i.ab = phi i64 [ %i.y, %RB_SYMBOL_P.exit.thread25 ], [ %i.u, %bb.l ], [ %i.u, %RB_SYMBOL_P.exit.thread ], [ %.sink, %.sink.split ] ; 3 uses
  %i.ac = tail call ptr @rb_enc_compatible(i64 noundef %i.d, i64 noundef %i.ab) #20 ; 2 uses
  %.not24 = icmp eq ptr %i.ac, null
  br i1 %.not24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = tail call i64 @rb_enc_associate(i64 noundef %i.d, ptr noundef nonnull %i.ac) #20 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ae = tail call ptr @rb_enc_get(i64 noundef %i.d) #20
  %i.af = tail call ptr @rb_enc_get(i64 noundef %i.ab) #20
  %i.ag = tail call i64 @rb_str_conv_enc_opts(i64 noundef %i.ab, ptr noundef %i.af, ptr noundef %i.ae, i32 noundef 34, i64 noundef 4) #20 ; 2 uses
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !11
  store volatile i64 %i.ag, ptr %2, align 8, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ah = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.al = and i64 %i.ak, 8192
  %.not.i = icmp eq i64 %i.al, 0
  %i.am = getelementptr i8, ptr %i.aj, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.r, %bb.s
  %i.ao = phi ptr [ %i.an, %bb.s ], [ %i.am, %bb.r ]
  %i.ap = getelementptr i8, ptr %i.aj, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  store i64 %i.aq, ptr %3, align 8, !tbaa !11
  %i.ar = getelementptr i8, ptr %0, i64 56
  store volatile i64 %i.ai, ptr %i.ar, align 8, !tbaa !82
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %RSTRING_PTR.exit, %bb.h, %bb.g, %bb.f
  %.0 = phi ptr [ @.str.51, %bb.h ], [ %i.ao, %RSTRING_PTR.exit ], [ @.str.49, %bb.f ], [ @.str.50, %bb.g ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.0
}

declare i32 @rb_str_symname_p(i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_escape(i64 noundef) local_unnamed_addr #3

declare ptr @rb_enc_compatible(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_conv_enc_opts(i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #3

declare i64 @rb_str_quote_unprintable(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { cold nounwind }
attributes #26 = { memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"RBasic", !12, i64 0, !12, i64 8}
!15 = !{!9, !9, i64 0}
!16 = !{!17, !12, i64 16}
!17 = !{!"RString", !14, i64 0, !12, i64 16, !9, i64 24}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{!22, !23, i64 88}
!22 = !{!"OnigEncodingTypeST", !23, i64 0, !24, i64 8, !8, i64 16, !8, i64 20, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !23, i64 80, !23, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !23, i64 120, !8, i64 128, !8, i64 132}
!23 = !{!"any pointer", !9, i64 0}
!24 = !{!"p1 omnipotent char", !23, i64 0}
!25 = distinct !{null}
!26 = distinct !{null, null}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
!31 = !{!22, !23, i64 48}
!32 = distinct !{null}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 long", !23, i64 0}
!38 = !{i64 2155118875}
!39 = distinct !{!39, !19}
!40 = !{i64 2155119832}
!41 = !{!42, !43, i64 16}
!42 = !{!"RFloat", !14, i64 0, !43, i64 16}
!43 = !{!"double", !9, i64 0}
!44 = distinct !{ptr @rb_str_new, null}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = !{i64 2155126043}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = !{i64 2155129537}
!60 = distinct !{!60, !19}
!61 = !{!22, !8, i64 20}
!62 = !{!22, !24, i64 8}
!63 = !{!64, !65, i64 16}
!64 = !{!"rb_printf_sfile", !24, i64 0, !12, i64 8, !65, i64 16, !65, i64 18, !66, i64 24, !23, i64 40, !23, i64 48}
!65 = !{!"short", !9, i64 0}
!66 = !{!"rb_printf_sbuf", !24, i64 0, !12, i64 8}
!67 = !{!64, !24, i64 0}
!68 = !{!64, !24, i64 24}
!69 = !{!64, !12, i64 8}
!70 = !{!64, !12, i64 32}
!71 = !{!64, !23, i64 40}
!72 = !{!64, !23, i64 48}
!73 = !{!14, !12, i64 8}
!74 = !{!75, !65, i64 16}
!75 = !{!"", !64, i64 0, !12, i64 56}
!76 = !{!75, !12, i64 32}
!77 = !{!75, !12, i64 8}
!78 = !{!75, !24, i64 24}
!79 = !{!75, !24, i64 0}
!80 = !{!75, !23, i64 40}
!81 = !{!75, !23, i64 48}
!82 = !{!75, !12, i64 56}
!83 = !{!84, !12, i64 16}
!84 = !{!"__suio", !85, i64 0, !8, i64 8, !12, i64 16}
!85 = !{!"p1 _ZTS6__siov", !23, i64 0}
!86 = !{!84, !85, i64 0}
!87 = !{!88, !23, i64 0}
!88 = !{!"__siov", !23, i64 0, !12, i64 8}
!89 = !{!88, !12, i64 8}
!90 = distinct !{!90, !19}
!91 = distinct !{!91, !19}
!92 = !{!64, !65, i64 18}
!93 = !{!84, !8, i64 8}
!94 = distinct !{!94, !19}
!95 = distinct !{null}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = !{!43, !43, i64 0}
!99 = !{!24, !24, i64 0}
!100 = !{!101, !103}
!101 = distinct !{!101, !102, !"memcpy.inline: argument 0"}
!102 = distinct !{!102, !"memcpy.inline"}
!103 = distinct !{!103, !102, !"memcpy.inline: argument 1"}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !19}
!106 = !{!107, !107, i64 0}
!107 = !{!"p1 short", !23, i64 0}
!108 = !{!65, !65, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"p1 int", !23, i64 0}
!111 = !{!23, !23, i64 0}
!112 = distinct !{!112, !19}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !19}
!118 = distinct !{!118, !19}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !19}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
end_hunk_2
