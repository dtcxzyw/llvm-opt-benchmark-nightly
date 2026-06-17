inline.NumInlined: 2336
inline.NumDeleted: 196
begin_hunk_0_@str_undump:bb.a

bb.br:                                            ; preds = %bb.ad
  %i.ew = getelementptr i8, ptr %.061105, i64 2   ; 3 uses
  %.not.i44 = icmp ult ptr %i.ew, %i.n
  br i1 %.not.i44, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ex = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ex, ptr noundef nonnull @.str.241) #30
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.ey = call i64 @ruby_scan_hex(ptr noundef %i.ew, i64 noundef 2, ptr noundef nonnull %i.a) #28 ; 2 uses
  %i.ez = trunc i64 %i.ey to i8
  store i8 %i.ez, ptr %i.b, align 1, !tbaa !20
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !27
  %.not64.i = icmp eq i64 %i.fa, 2
  br i1 %.not64.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fb = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fb, ptr noundef nonnull @.str.241) #30
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.fc = and i64 %i.ey, 128
  %.not77.i = icmp eq i64 %i.fc, 0
  br i1 %.not77.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fd = trunc nuw i8 %.054107 to i1
  br i1 %i.fd, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.fe = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fe, ptr noundef nonnull @.str.236) #30
  unreachable

bb.by:                                            ; preds = %bb.bw, %bb.bv
  %.2 = phi i1 [ %.0108, %bb.bv ], [ true, %bb.bw ]
  %i.ff = call fastcc i64 @str_buf_cat4(i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, i1 noundef zeroext false) ; 0 uses
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !27
  %i.fh = getelementptr i8, ptr %i.ew, i64 %i.fg
  br label %undump_after_backslash.exit

bb.bz:                                            ; preds = %bb.ad
  %i.fi = call fastcc i64 @str_buf_cat4(i64 noundef %i.q, ptr noundef nonnull %.061105, i64 noundef 2, i1 noundef zeroext false) ; 0 uses
  %i.fj = getelementptr i8, ptr %.061105, i64 2
  br label %undump_after_backslash.exit

undump_after_backslash.exit:                      ; preds = %bb.ae, %unescape_ascii.exit.i, %bb.ax, %rb_str_cat.exit74.i, %bb.by, %bb.bz
  %.360 = phi ptr [ %.057106, %bb.bz ], [ %.057106, %bb.ae ], [ %.057106, %bb.by ], [ %.259, %bb.ax ], [ %.259, %rb_str_cat.exit74.i ], [ %.057106, %unescape_ascii.exit.i ]
  %.256 = phi i8 [ %.054107, %bb.bz ], [ %.054107, %bb.ae ], [ %.054107, %bb.by ], [ 1, %bb.ax ], [ 1, %rb_str_cat.exit74.i ], [ %.054107, %unescape_ascii.exit.i ]
  %.3 = phi i1 [ %.0108, %bb.bz ], [ %.0108, %bb.ae ], [ %.2, %bb.by ], [ false, %bb.ax ], [ false, %rb_str_cat.exit74.i ], [ %.0108, %unescape_ascii.exit.i ]
  %.1.i = phi ptr [ %i.fj, %bb.bz ], [ %i.cp, %bb.ae ], [ %i.fh, %bb.by ], [ %i.dh, %bb.ax ], [ %i.ev, %rb_str_cat.exit74.i ], [ %i.cr, %unescape_ascii.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.cb

bb.ca:                                            ; preds = %bb.o
  %i.fk = call fastcc i64 @str_buf_cat4(i64 noundef %i.q, ptr noundef nonnull %.061105, i64 noundef 1, i1 noundef zeroext false) ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %undump_after_backslash.exit
  %.263 = phi ptr [ %i.bc, %bb.ca ], [ %.1.i, %undump_after_backslash.exit ] ; 2 uses
  %.158 = phi ptr [ %.057106, %bb.ca ], [ %.360, %undump_after_backslash.exit ]
  %.155 = phi i8 [ %.054107, %bb.ca ], [ %.256, %undump_after_backslash.exit ]
  %.1 = phi i1 [ %.0108, %bb.ca ], [ %.3, %undump_after_backslash.exit ]
  %.not33 = icmp ult ptr %.263, %i.n
  br i1 %.not33, label %bb.o, label %._crit_edge

bb.cc:                                            ; preds = %bb.aa, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store ptr %i.c, ptr %i.e, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #28, !srcloc !180
  %i.fl = load ptr, ptr %i.e, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.fm = load volatile i64, ptr %i.fl, align 8, !tbaa !27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  ret i64 %i.q

.thread:                                          ; preds = %bb.q, %bb.x, %bb.w, %bb.v, %bb.r, %bb.s, %bb.m, %bb.l
  %i.fn = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fn, ptr noundef nonnull @.str.235) #30
  unreachable
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_upcase(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call fastcc i32 @check_case_options(i32 noundef %0, ptr noundef %1, i32 noundef 8192) ; 3 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !7
  %i.c = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 22
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = icmp eq i32 %i.g, 127
  br i1 %i.h, label %bb.b, label %get_encoding.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit.i

get_encoding.exit.i:                              ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i32 [ %i.i, %bb.b ], [ %i.g, %bb.a ]
  %i.j = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i) #28 ; 6 uses
  %i.k = tail call i32 @rb_enc_dummy_p(ptr noundef readonly %i.j) #32
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %str_true_enc.exit, label %bb.c

bb.c:                                             ; preds = %get_encoding.exit.i
  %i.l = load i64, ptr @rb_eEncCompatError, align 8, !tbaa !27
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !42
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.246, ptr noundef %.val.i.i) #30
  unreachable

str_true_enc.exit:                                ; preds = %get_encoding.exit.i
  %.not.i = icmp samesign ult i32 %i.b, 4194304   ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %str_true_enc.exit
  %i.n = tail call nonnull ptr @rb_utf8_encoding() #28
  %i.o = icmp eq ptr %i.j, %i.n
  br i1 %i.o, label %case_option_single_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.j, i64 16
  %.val.i = load i32, ptr %i.p, align 8, !tbaa !56
  %i.q = icmp eq i32 %.val.i, 1
  br i1 %i.q, label %case_option_single_p.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %str_true_enc.exit
  %i.r = and i32 %i.b, 1048576
  %.not6.i = icmp eq i32 %i.r, 0
  br i1 %.not6.i, label %case_option_single_p.exit, label %case_option_single_p.exit.thread19

case_option_single_p.exit:                        ; preds = %bb.f
  %i.s = load i64, ptr %i.c, align 8, !tbaa !11
  %i.t = and i64 %i.s, 3145728
  %i.u = icmp eq i64 %i.t, 1048576
  br i1 %i.u, label %case_option_single_p.exit.thread, label %case_option_single_p.exit.thread19

case_option_single_p.exit.thread:                 ; preds = %bb.e, %bb.d, %case_option_single_p.exit
  %i.v = load i64, ptr %i.c, align 8, !tbaa !11
  %i.w = and i64 %i.v, 8192
  %.not.i16 = icmp eq i64 %i.w, 0
  %i.x = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  br i1 %.not.i16, label %RSTRING_PTR.exit, label %bb.g

bb.g:                                             ; preds = %case_option_single_p.exit.thread
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %case_option_single_p.exit.thread, %bb.g
  %i.z = phi ptr [ %i.y, %bb.g ], [ %i.x, %case_option_single_p.exit.thread ]
  %i.aa = getelementptr i8, ptr %i.c, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.ac = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.ad = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.ae = tail call fastcc noundef i64 @str_enc_new(i64 noundef %i.ac, ptr noundef readonly %i.z, i64 noundef %i.ab, ptr noundef nonnull %i.ad) ; 6 uses
  %i.af = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ag = trunc i64 %i.af to i32
  %i.ah = lshr i32 %i.ag, 22
  %i.ai = and i32 %i.ah, 127                      ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 127
  %.pre = inttoptr i64 %i.ae to ptr               ; 5 uses
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %RSTRING_PTR.exit
  %i.ak = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  tail call void @rb_enc_set_index(i64 noundef %i.ae, i32 noundef %i.ak) #28
  br label %str_enc_copy_direct.exit

bb.i:                                             ; preds = %RSTRING_PTR.exit
  %i.al = shl nuw nsw i32 %i.ai, 22
  %i.am = zext nneg i32 %i.al to i64
  %i.an = load i64, ptr %.pre, align 8, !tbaa !11
  %i.ao = and i64 %i.an, -532676609
  %i.ap = or disjoint i64 %i.ao, %i.am
  store i64 %i.ap, ptr %.pre, align 8, !tbaa !11
  br label %str_enc_copy_direct.exit

str_enc_copy_direct.exit:                         ; preds = %bb.h, %bb.i
  %i.aq = load i64, ptr %.pre, align 8, !tbaa !11
  %i.ar = and i64 %i.aq, 8192
  %.not.i.i17 = icmp eq i64 %i.ar, 0
  %i.as = getelementptr i8, ptr %.pre, i64 24     ; 2 uses
  br i1 %.not.i.i17, label %RSTRING_END.exit.i, label %bb.j

bb.j:                                             ; preds = %str_enc_copy_direct.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20
  br label %RSTRING_END.exit.i

RSTRING_END.exit.i:                               ; preds = %bb.j, %str_enc_copy_direct.exit
  %i.au = phi ptr [ %i.at, %bb.j ], [ %i.as, %str_enc_copy_direct.exit ] ; 29 uses
  %i.av = getelementptr i8, ptr %.pre, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14 ; 8 uses
  %i.ax = getelementptr i8, ptr %i.au, i64 %i.aw  ; 2 uses
  %i.ay = icmp ult ptr %i.au, %i.ax
  br i1 %i.ay, label %iter.check, label %upcase_single.exit

iter.check:                                       ; preds = %RSTRING_END.exit.i
  %min.iters.check = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check27 = icmp ult i64 %i.aw, 16
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aw, 8
  %n.vec = and i64 %i.aw, -16                     ; 4 uses
  %i.az = getelementptr i8, ptr %i.au, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue72, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue72 ] ; 17 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %index ; 2 uses
  %i.ba = getelementptr i8, ptr %i.au, i64 %index
  %next.gep28 = getelementptr i8, ptr %i.ba, i64 1
  %i.bb = getelementptr i8, ptr %i.au, i64 %index
  %next.gep29 = getelementptr i8, ptr %i.bb, i64 2
  %i.bc = getelementptr i8, ptr %i.au, i64 %index
  %next.gep30 = getelementptr i8, ptr %i.bc, i64 3
  %i.bd = getelementptr i8, ptr %i.au, i64 %index
  %next.gep31 = getelementptr i8, ptr %i.bd, i64 4
  %i.be = getelementptr i8, ptr %i.au, i64 %index
  %next.gep32 = getelementptr i8, ptr %i.be, i64 5
  %i.bf = getelementptr i8, ptr %i.au, i64 %index
  %next.gep33 = getelementptr i8, ptr %i.bf, i64 6
  %i.bg = getelementptr i8, ptr %i.au, i64 %index
  %next.gep34 = getelementptr i8, ptr %i.bg, i64 7
  %i.bh = getelementptr i8, ptr %i.au, i64 %index
  %next.gep35 = getelementptr i8, ptr %i.bh, i64 8
  %i.bi = getelementptr i8, ptr %i.au, i64 %index
  %next.gep36 = getelementptr i8, ptr %i.bi, i64 9
  %i.bj = getelementptr i8, ptr %i.au, i64 %index
  %next.gep37 = getelementptr i8, ptr %i.bj, i64 10
  %i.bk = getelementptr i8, ptr %i.au, i64 %index
  %next.gep38 = getelementptr i8, ptr %i.bk, i64 11
  %i.bl = getelementptr i8, ptr %i.au, i64 %index
  %next.gep39 = getelementptr i8, ptr %i.bl, i64 12
  %i.bm = getelementptr i8, ptr %i.au, i64 %index
  %next.gep40 = getelementptr i8, ptr %i.bm, i64 13
  %i.bn = getelementptr i8, ptr %i.au, i64 %index
  %next.gep41 = getelementptr i8, ptr %i.bn, i64 14
  %i.bo = getelementptr i8, ptr %i.au, i64 %index
  %next.gep42 = getelementptr i8, ptr %i.bo, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20 ; 17 uses
  %i.bp = add <16 x i8> %wide.load, splat (i8 -97)
  %i.bq = icmp ult <16 x i8> %i.bp, splat (i8 26) ; 16 uses
  %i.br = extractelement <16 x i1> %i.bq, i64 0
  br i1 %i.br, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bs = extractelement <16 x i8> %wide.load, i64 0
  %i.bt = add nsw i8 %i.bs, -32
  store i8 %i.bt, ptr %next.gep, align 1, !tbaa !20
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bu = extractelement <16 x i1> %i.bq, i64 1
  br i1 %i.bu, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue
  %i.bv = extractelement <16 x i8> %wide.load, i64 1
  %i.bw = add nsw i8 %i.bv, -32
  store i8 %i.bw, ptr %next.gep28, align 1, !tbaa !20
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue
  %i.bx = extractelement <16 x i1> %i.bq, i64 2
  br i1 %i.bx, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.by = extractelement <16 x i8> %wide.load, i64 2
  %i.bz = add nsw i8 %i.by, -32
  store i8 %i.bz, ptr %next.gep29, align 1, !tbaa !20
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.ca = extractelement <16 x i1> %i.bq, i64 3
  br i1 %i.ca, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.cb = extractelement <16 x i8> %wide.load, i64 3
  %i.cc = add nsw i8 %i.cb, -32
  store i8 %i.cc, ptr %next.gep30, align 1, !tbaa !20
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.cd = extractelement <16 x i1> %i.bq, i64 4
  br i1 %i.cd, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.ce = extractelement <16 x i8> %wide.load, i64 4
  %i.cf = add nsw i8 %i.ce, -32
  store i8 %i.cf, ptr %next.gep31, align 1, !tbaa !20
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.cg = extractelement <16 x i1> %i.bq, i64 5
  br i1 %i.cg, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  %i.ch = extractelement <16 x i8> %wide.load, i64 5
  %i.ci = add nsw i8 %i.ch, -32
  store i8 %i.ci, ptr %next.gep32, align 1, !tbaa !20
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %i.cj = extractelement <16 x i1> %i.bq, i64 6
  br i1 %i.cj, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  %i.ck = extractelement <16 x i8> %wide.load, i64 6
  %i.cl = add nsw i8 %i.ck, -32
  store i8 %i.cl, ptr %next.gep33, align 1, !tbaa !20
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.cm = extractelement <16 x i1> %i.bq, i64 7
  br i1 %i.cm, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  %i.cn = extractelement <16 x i8> %wide.load, i64 7
  %i.co = add nsw i8 %i.cn, -32
  store i8 %i.co, ptr %next.gep34, align 1, !tbaa !20
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.cp = extractelement <16 x i1> %i.bq, i64 8
  br i1 %i.cp, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %i.cq = extractelement <16 x i8> %wide.load, i64 8
  %i.cr = add nsw i8 %i.cq, -32
  store i8 %i.cr, ptr %next.gep35, align 1, !tbaa !20
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.cs = extractelement <16 x i1> %i.bq, i64 9
  br i1 %i.cs, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  %i.ct = extractelement <16 x i8> %wide.load, i64 9
  %i.cu = add nsw i8 %i.ct, -32
  store i8 %i.cu, ptr %next.gep36, align 1, !tbaa !20
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.cv = extractelement <16 x i1> %i.bq, i64 10
  br i1 %i.cv, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  %i.cw = extractelement <16 x i8> %wide.load, i64 10
  %i.cx = add nsw i8 %i.cw, -32
  store i8 %i.cx, ptr %next.gep37, align 1, !tbaa !20
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.cy = extractelement <16 x i1> %i.bq, i64 11
  br i1 %i.cy, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %i.cz = extractelement <16 x i8> %wide.load, i64 11
  %i.da = add nsw i8 %i.cz, -32
  store i8 %i.da, ptr %next.gep38, align 1, !tbaa !20
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.db = extractelement <16 x i1> %i.bq, i64 12
  br i1 %i.db, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  %i.dc = extractelement <16 x i8> %wide.load, i64 12
  %i.dd = add nsw i8 %i.dc, -32
  store i8 %i.dd, ptr %next.gep39, align 1, !tbaa !20
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %i.de = extractelement <16 x i1> %i.bq, i64 13
  br i1 %i.de, label %pred.store.if67, label %pred.store.continue68

pred.store.if67:                                  ; preds = %pred.store.continue66
  %i.df = extractelement <16 x i8> %wide.load, i64 13
  %i.dg = add nsw i8 %i.df, -32
  store i8 %i.dg, ptr %next.gep40, align 1, !tbaa !20
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.if67, %pred.store.continue66
  %i.dh = extractelement <16 x i1> %i.bq, i64 14
  br i1 %i.dh, label %pred.store.if69, label %pred.store.continue70

pred.store.if69:                                  ; preds = %pred.store.continue68
  %i.di = extractelement <16 x i8> %wide.load, i64 14
  %i.dj = add nsw i8 %i.di, -32
  store i8 %i.dj, ptr %next.gep41, align 1, !tbaa !20
  br label %pred.store.continue70

pred.store.continue70:                            ; preds = %pred.store.if69, %pred.store.continue68
  %i.dk = extractelement <16 x i1> %i.bq, i64 15
  br i1 %i.dk, label %pred.store.if71, label %pred.store.continue72

pred.store.if71:                                  ; preds = %pred.store.continue70
  %i.dl = extractelement <16 x i8> %wide.load, i64 15
  %i.dm = add nsw i8 %i.dl, -32
  store i8 %i.dm, ptr %next.gep42, align 1, !tbaa !20
  br label %pred.store.continue72

pred.store.continue72:                            ; preds = %pred.store.if71, %pred.store.continue70
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %pred.store.continue72
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %upcase_single.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !182

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec74 = and i64 %i.aw, -8                    ; 3 uses
  %i.do = getelementptr i8, ptr %i.au, i64 %n.vec74
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue88.a, %vec.epilog.ph
  %index75 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next89, %pred.store.continue88.a ] ; 9 uses
  %next.gep76 = getelementptr i8, ptr %i.au, i64 %index75 ; 2 uses
  %3 = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep77 = getelementptr i8, ptr %3, i64 1
  %4 = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep78 = getelementptr i8, ptr %4, i64 2
  %5 = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep79 = getelementptr i8, ptr %5, i64 3
  %6 = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep76.a = getelementptr i8, ptr %6, i64 4
  %i.dp = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep77.a = getelementptr i8, ptr %i.dp, i64 5
  %i.dq = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep78.a = getelementptr i8, ptr %i.dq, i64 6
  %i.dr = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep79.a = getelementptr i8, ptr %i.dr, i64 7
  %wide.load84 = load <8 x i8>, ptr %next.gep76, align 1, !tbaa !20 ; 9 uses
  %7 = add <8 x i8> %wide.load84, splat (i8 -97)
  %8 = icmp ult <8 x i8> %7, splat (i8 26)        ; 8 uses
  %i.ds = extractelement <8 x i1> %8, i64 0
  br i1 %i.ds, label %pred.store.if85, label %pred.store.continue86

pred.store.if85:                                  ; preds = %vec.epilog.vector.body
  %9 = extractelement <8 x i8> %wide.load84, i64 0
  %10 = add nsw i8 %9, -32
  store i8 %10, ptr %next.gep76, align 1, !tbaa !20
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.if85, %vec.epilog.vector.body
  %11 = extractelement <8 x i1> %8, i64 1
  br i1 %11, label %pred.store.if87, label %pred.store.continue88

pred.store.if87:                                  ; preds = %pred.store.continue86
  %12 = extractelement <8 x i8> %wide.load84, i64 1
  %13 = add nsw i8 %12, -32
  store i8 %13, ptr %next.gep77, align 1, !tbaa !20
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.if87, %pred.store.continue86
  %14 = extractelement <8 x i1> %8, i64 2
  br i1 %14, label %pred.store.if89, label %pred.store.continue90

pred.store.if89:                                  ; preds = %pred.store.continue88
  %15 = extractelement <8 x i8> %wide.load84, i64 2
  %16 = add nsw i8 %15, -32
  store i8 %16, ptr %next.gep78, align 1, !tbaa !20
  br label %pred.store.continue90

pred.store.continue90:                            ; preds = %pred.store.if89, %pred.store.continue88
  %17 = extractelement <8 x i1> %8, i64 3
  br i1 %17, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue90
  %18 = extractelement <8 x i8> %wide.load84, i64 3
  %19 = add nsw i8 %18, -32
  store i8 %19, ptr %next.gep79, align 1, !tbaa !20
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue90
  %20 = extractelement <8 x i1> %8, i64 4
  br i1 %20, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue92
  %i.dt = extractelement <8 x i8> %wide.load84, i64 4
  %i.du = add nsw i8 %i.dt, -32
  store i8 %i.du, ptr %next.gep76.a, align 1, !tbaa !20
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue92
  %i.dv = extractelement <8 x i1> %8, i64 5
  br i1 %i.dv, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  %i.dw = extractelement <8 x i8> %wide.load84, i64 5
  %i.dx = add nsw i8 %i.dw, -32
  store i8 %i.dx, ptr %next.gep77.a, align 1, !tbaa !20
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %i.dy = extractelement <8 x i1> %8, i64 6
  br i1 %i.dy, label %pred.store.if85.a, label %pred.store.continue86.a

pred.store.if85.a:                                ; preds = %pred.store.continue84
  %i.dz = extractelement <8 x i8> %wide.load84, i64 6
  %i.ea = add nsw i8 %i.dz, -32
  store i8 %i.ea, ptr %next.gep78.a, align 1, !tbaa !20
  br label %pred.store.continue86.a

pred.store.continue86.a:                          ; preds = %pred.store.if85.a, %pred.store.continue84
  %i.eb = extractelement <8 x i1> %8, i64 7
  br i1 %i.eb, label %pred.store.if87.a, label %pred.store.continue88.a

pred.store.if87.a:                                ; preds = %pred.store.continue86.a
  %i.ec = extractelement <8 x i8> %wide.load84, i64 7
  %i.ed = add nsw i8 %i.ec, -32
  store i8 %i.ed, ptr %next.gep79.a, align 1, !tbaa !20
  br label %pred.store.continue88.a

pred.store.continue88.a:                          ; preds = %pred.store.if87.a, %pred.store.continue86.a
  %index.next89 = add nuw i64 %index75, 8         ; 2 uses
  %i.ee = icmp eq i64 %index.next89, %n.vec74
  br i1 %i.ee, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !183

vec.epilog.middle.block:                          ; preds = %pred.store.continue88.a
  %cmp.n90 = icmp eq i64 %i.aw, %n.vec74
  br i1 %cmp.n90, label %upcase_single.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.ph = phi ptr [ %i.au, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.do, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.l
  %.015.i = phi ptr [ %i.ei, %bb.l ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ef = load i8, ptr %.015.i, align 1, !tbaa !20 ; 2 uses
  %i.eg = add i8 %i.ef, -97
  %or.cond.i = icmp ult i8 %i.eg, 26
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.eh = add nsw i8 %i.ef, -32
  store i8 %i.eh, ptr %.015.i, align 1, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.ei = getelementptr i8, ptr %.015.i, i64 1    ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ei, %i.ax
  br i1 %exitcond.not.i, label %upcase_single.exit, label %.lr.ph.i, !llvm.loop !184

case_option_single_p.exit.thread19:               ; preds = %bb.f, %case_option_single_p.exit
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %case_option_single_p.exit.thread19
  %i.ej = getelementptr i8, ptr %i.c, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !14
  %i.el = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.em = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.en = tail call fastcc noundef i64 @str_enc_new(i64 noundef %i.el, ptr noundef readonly null, i64 noundef %i.ek, ptr noundef nonnull %i.em) ; 2 uses
  call fastcc void @rb_str_ascii_casemap(i64 noundef %2, i64 noundef %i.en, ptr noundef %i.a, ptr noundef %i.j)
  br label %upcase_single.exit

bb.n:                                             ; preds = %case_option_single_p.exit.thread19
  %i.eo = call fastcc i64 @rb_str_casemap(i64 noundef %2, ptr noundef %i.a, ptr noundef %i.j)
  br label %upcase_single.exit

upcase_single.exit:                               ; preds = %bb.l, %middle.block, %vec.epilog.middle.block, %RSTRING_END.exit.i, %bb.m, %bb.n
  %.0 = phi i64 [ %i.eo, %bb.n ], [ %i.en, %bb.m ], [ %i.ae, %RSTRING_END.exit.i ], [ %i.ae, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_downcase(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call fastcc i32 @check_case_options(i32 noundef %0, ptr noundef %1, i32 noundef 16384) ; 3 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !7
  %i.c = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 22
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = icmp eq i32 %i.g, 127
  br i1 %i.h, label %bb.b, label %get_encoding.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit.i

get_encoding.exit.i:                              ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i32 [ %i.i, %bb.b ], [ %i.g, %bb.a ]
  %i.j = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i) #28 ; 6 uses
  %i.k = tail call i32 @rb_enc_dummy_p(ptr noundef readonly %i.j) #32
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %str_true_enc.exit, label %bb.c

bb.c:                                             ; preds = %get_encoding.exit.i
  %i.l = load i64, ptr @rb_eEncCompatError, align 8, !tbaa !27
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !42
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.246, ptr noundef %.val.i.i) #30
  unreachable

str_true_enc.exit:                                ; preds = %get_encoding.exit.i
  %.not.i = icmp samesign ult i32 %i.b, 4194304   ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %str_true_enc.exit
  %i.n = tail call nonnull ptr @rb_utf8_encoding() #28
  %i.o = icmp eq ptr %i.j, %i.n
  br i1 %i.o, label %case_option_single_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.j, i64 16
  %.val.i = load i32, ptr %i.p, align 8, !tbaa !56
  %i.q = icmp eq i32 %.val.i, 1
  br i1 %i.q, label %case_option_single_p.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %str_true_enc.exit
  %i.r = and i32 %i.b, 1048576
  %.not6.i = icmp eq i32 %i.r, 0
  br i1 %.not6.i, label %case_option_single_p.exit, label %case_option_single_p.exit.thread19

case_option_single_p.exit:                        ; preds = %bb.f
  %i.s = load i64, ptr %i.c, align 8, !tbaa !11
  %i.t = and i64 %i.s, 3145728
  %i.u = icmp eq i64 %i.t, 1048576
  br i1 %i.u, label %case_option_single_p.exit.thread, label %case_option_single_p.exit.thread19

case_option_single_p.exit.thread:                 ; preds = %bb.e, %bb.d, %case_option_single_p.exit
  %i.v = load i64, ptr %i.c, align 8, !tbaa !11
  %i.w = and i64 %i.v, 8192
  %.not.i16 = icmp eq i64 %i.w, 0
  %i.x = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  br i1 %.not.i16, label %RSTRING_PTR.exit, label %bb.g

bb.g:                                             ; preds = %case_option_single_p.exit.thread
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %case_option_single_p.exit.thread, %bb.g
  %i.z = phi ptr [ %i.y, %bb.g ], [ %i.x, %case_option_single_p.exit.thread ]
  %i.aa = getelementptr i8, ptr %i.c, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.ac = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.ad = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.ae = tail call fastcc noundef i64 @str_enc_new(i64 noundef %i.ac, ptr noundef readonly %i.z, i64 noundef %i.ab, ptr noundef nonnull %i.ad) ; 6 uses
  %i.af = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ag = trunc i64 %i.af to i32
  %i.ah = lshr i32 %i.ag, 22
  %i.ai = and i32 %i.ah, 127                      ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 127
  %.pre = inttoptr i64 %i.ae to ptr               ; 5 uses
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %RSTRING_PTR.exit
  %i.ak = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  tail call void @rb_enc_set_index(i64 noundef %i.ae, i32 noundef %i.ak) #28
  br label %str_enc_copy_direct.exit

bb.i:                                             ; preds = %RSTRING_PTR.exit
  %i.al = shl nuw nsw i32 %i.ai, 22
  %i.am = zext nneg i32 %i.al to i64
  %i.an = load i64, ptr %.pre, align 8, !tbaa !11
  %i.ao = and i64 %i.an, -532676609
  %i.ap = or disjoint i64 %i.ao, %i.am
  store i64 %i.ap, ptr %.pre, align 8, !tbaa !11
  br label %str_enc_copy_direct.exit

str_enc_copy_direct.exit:                         ; preds = %bb.h, %bb.i
  %i.aq = load i64, ptr %.pre, align 8, !tbaa !11
  %i.ar = and i64 %i.aq, 8192
  %.not.i.i17 = icmp eq i64 %i.ar, 0
  %i.as = getelementptr i8, ptr %.pre, i64 24     ; 2 uses
  br i1 %.not.i.i17, label %RSTRING_END.exit.i, label %bb.j

bb.j:                                             ; preds = %str_enc_copy_direct.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20
  br label %RSTRING_END.exit.i

RSTRING_END.exit.i:                               ; preds = %bb.j, %str_enc_copy_direct.exit
  %i.au = phi ptr [ %i.at, %bb.j ], [ %i.as, %str_enc_copy_direct.exit ] ; 29 uses
  %i.av = getelementptr i8, ptr %.pre, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14 ; 8 uses
  %i.ax = getelementptr i8, ptr %i.au, i64 %i.aw  ; 2 uses
  %i.ay = icmp ult ptr %i.au, %i.ax
  br i1 %i.ay, label %iter.check, label %downcase_single.exit

iter.check:                                       ; preds = %RSTRING_END.exit.i
  %min.iters.check = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check27 = icmp ult i64 %i.aw, 16
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aw, 8
  %n.vec = and i64 %i.aw, -16                     ; 4 uses
  %i.az = getelementptr i8, ptr %i.au, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue72, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue72 ] ; 17 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %index ; 2 uses
  %i.ba = getelementptr i8, ptr %i.au, i64 %index
  %next.gep28 = getelementptr i8, ptr %i.ba, i64 1
  %i.bb = getelementptr i8, ptr %i.au, i64 %index
  %next.gep29 = getelementptr i8, ptr %i.bb, i64 2
  %i.bc = getelementptr i8, ptr %i.au, i64 %index
  %next.gep30 = getelementptr i8, ptr %i.bc, i64 3
  %i.bd = getelementptr i8, ptr %i.au, i64 %index
  %next.gep31 = getelementptr i8, ptr %i.bd, i64 4
  %i.be = getelementptr i8, ptr %i.au, i64 %index
  %next.gep32 = getelementptr i8, ptr %i.be, i64 5
  %i.bf = getelementptr i8, ptr %i.au, i64 %index
  %next.gep33 = getelementptr i8, ptr %i.bf, i64 6
  %i.bg = getelementptr i8, ptr %i.au, i64 %index
  %next.gep34 = getelementptr i8, ptr %i.bg, i64 7
  %i.bh = getelementptr i8, ptr %i.au, i64 %index
  %next.gep35 = getelementptr i8, ptr %i.bh, i64 8
  %i.bi = getelementptr i8, ptr %i.au, i64 %index
  %next.gep36 = getelementptr i8, ptr %i.bi, i64 9
  %i.bj = getelementptr i8, ptr %i.au, i64 %index
  %next.gep37 = getelementptr i8, ptr %i.bj, i64 10
  %i.bk = getelementptr i8, ptr %i.au, i64 %index
  %next.gep38 = getelementptr i8, ptr %i.bk, i64 11
  %i.bl = getelementptr i8, ptr %i.au, i64 %index
  %next.gep39 = getelementptr i8, ptr %i.bl, i64 12
  %i.bm = getelementptr i8, ptr %i.au, i64 %index
  %next.gep40 = getelementptr i8, ptr %i.bm, i64 13
  %i.bn = getelementptr i8, ptr %i.au, i64 %index
  %next.gep41 = getelementptr i8, ptr %i.bn, i64 14
  %i.bo = getelementptr i8, ptr %i.au, i64 %index
  %next.gep42 = getelementptr i8, ptr %i.bo, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20 ; 17 uses
  %i.bp = add <16 x i8> %wide.load, splat (i8 -65)
  %i.bq = icmp ult <16 x i8> %i.bp, splat (i8 26) ; 16 uses
  %i.br = extractelement <16 x i1> %i.bq, i64 0
  br i1 %i.br, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bs = extractelement <16 x i8> %wide.load, i64 0
  %i.bt = or disjoint i8 %i.bs, 32
  store i8 %i.bt, ptr %next.gep, align 1, !tbaa !20
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bu = extractelement <16 x i1> %i.bq, i64 1
  br i1 %i.bu, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue
  %i.bv = extractelement <16 x i8> %wide.load, i64 1
  %i.bw = or disjoint i8 %i.bv, 32
  store i8 %i.bw, ptr %next.gep28, align 1, !tbaa !20
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue
  %i.bx = extractelement <16 x i1> %i.bq, i64 2
  br i1 %i.bx, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.by = extractelement <16 x i8> %wide.load, i64 2
  %i.bz = or disjoint i8 %i.by, 32
  store i8 %i.bz, ptr %next.gep29, align 1, !tbaa !20
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.ca = extractelement <16 x i1> %i.bq, i64 3
  br i1 %i.ca, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.cb = extractelement <16 x i8> %wide.load, i64 3
  %i.cc = or disjoint i8 %i.cb, 32
  store i8 %i.cc, ptr %next.gep30, align 1, !tbaa !20
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.cd = extractelement <16 x i1> %i.bq, i64 4
  br i1 %i.cd, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.ce = extractelement <16 x i8> %wide.load, i64 4
  %i.cf = or disjoint i8 %i.ce, 32
  store i8 %i.cf, ptr %next.gep31, align 1, !tbaa !20
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.cg = extractelement <16 x i1> %i.bq, i64 5
  br i1 %i.cg, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  %i.ch = extractelement <16 x i8> %wide.load, i64 5
  %i.ci = or disjoint i8 %i.ch, 32
  store i8 %i.ci, ptr %next.gep32, align 1, !tbaa !20
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %i.cj = extractelement <16 x i1> %i.bq, i64 6
  br i1 %i.cj, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  %i.ck = extractelement <16 x i8> %wide.load, i64 6
  %i.cl = or disjoint i8 %i.ck, 32
  store i8 %i.cl, ptr %next.gep33, align 1, !tbaa !20
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.cm = extractelement <16 x i1> %i.bq, i64 7
  br i1 %i.cm, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  %i.cn = extractelement <16 x i8> %wide.load, i64 7
  %i.co = or disjoint i8 %i.cn, 32
  store i8 %i.co, ptr %next.gep34, align 1, !tbaa !20
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.cp = extractelement <16 x i1> %i.bq, i64 8
  br i1 %i.cp, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %i.cq = extractelement <16 x i8> %wide.load, i64 8
  %i.cr = or disjoint i8 %i.cq, 32
  store i8 %i.cr, ptr %next.gep35, align 1, !tbaa !20
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.cs = extractelement <16 x i1> %i.bq, i64 9
  br i1 %i.cs, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  %i.ct = extractelement <16 x i8> %wide.load, i64 9
  %i.cu = or disjoint i8 %i.ct, 32
  store i8 %i.cu, ptr %next.gep36, align 1, !tbaa !20
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.cv = extractelement <16 x i1> %i.bq, i64 10
  br i1 %i.cv, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  %i.cw = extractelement <16 x i8> %wide.load, i64 10
  %i.cx = or disjoint i8 %i.cw, 32
  store i8 %i.cx, ptr %next.gep37, align 1, !tbaa !20
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.cy = extractelement <16 x i1> %i.bq, i64 11
  br i1 %i.cy, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %i.cz = extractelement <16 x i8> %wide.load, i64 11
  %i.da = or disjoint i8 %i.cz, 32
  store i8 %i.da, ptr %next.gep38, align 1, !tbaa !20
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.db = extractelement <16 x i1> %i.bq, i64 12
  br i1 %i.db, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  %i.dc = extractelement <16 x i8> %wide.load, i64 12
  %i.dd = or disjoint i8 %i.dc, 32
  store i8 %i.dd, ptr %next.gep39, align 1, !tbaa !20
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %i.de = extractelement <16 x i1> %i.bq, i64 13
  br i1 %i.de, label %pred.store.if67, label %pred.store.continue68

pred.store.if67:                                  ; preds = %pred.store.continue66
  %i.df = extractelement <16 x i8> %wide.load, i64 13
  %i.dg = or disjoint i8 %i.df, 32
  store i8 %i.dg, ptr %next.gep40, align 1, !tbaa !20
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.if67, %pred.store.continue66
  %i.dh = extractelement <16 x i1> %i.bq, i64 14
  br i1 %i.dh, label %pred.store.if69, label %pred.store.continue70

pred.store.if69:                                  ; preds = %pred.store.continue68
  %i.di = extractelement <16 x i8> %wide.load, i64 14
  %i.dj = or disjoint i8 %i.di, 32
  store i8 %i.dj, ptr %next.gep41, align 1, !tbaa !20
  br label %pred.store.continue70

pred.store.continue70:                            ; preds = %pred.store.if69, %pred.store.continue68
  %i.dk = extractelement <16 x i1> %i.bq, i64 15
  br i1 %i.dk, label %pred.store.if71, label %pred.store.continue72

pred.store.if71:                                  ; preds = %pred.store.continue70
  %i.dl = extractelement <16 x i8> %wide.load, i64 15
  %i.dm = or disjoint i8 %i.dl, 32
  store i8 %i.dm, ptr %next.gep42, align 1, !tbaa !20
  br label %pred.store.continue72

pred.store.continue72:                            ; preds = %pred.store.if71, %pred.store.continue70
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %pred.store.continue72
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %downcase_single.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !182

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec74 = and i64 %i.aw, -8                    ; 3 uses
  %i.do = getelementptr i8, ptr %i.au, i64 %n.vec74
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue88.a, %vec.epilog.ph
  %index75 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next89, %pred.store.continue88.a ] ; 9 uses
  %next.gep76 = getelementptr i8, ptr %i.au, i64 %index75 ; 2 uses
  %3 = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep77 = getelementptr i8, ptr %3, i64 1
  %4 = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep78 = getelementptr i8, ptr %4, i64 2
  %5 = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep79 = getelementptr i8, ptr %5, i64 3
  %6 = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep76.a = getelementptr i8, ptr %6, i64 4
  %i.dp = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep77.a = getelementptr i8, ptr %i.dp, i64 5
  %i.dq = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep78.a = getelementptr i8, ptr %i.dq, i64 6
  %i.dr = getelementptr i8, ptr %i.au, i64 %index75
  %next.gep79.a = getelementptr i8, ptr %i.dr, i64 7
  %wide.load84 = load <8 x i8>, ptr %next.gep76, align 1, !tbaa !20 ; 9 uses
  %7 = add <8 x i8> %wide.load84, splat (i8 -65)
  %8 = icmp ult <8 x i8> %7, splat (i8 26)        ; 8 uses
  %i.ds = extractelement <8 x i1> %8, i64 0
  br i1 %i.ds, label %pred.store.if85, label %pred.store.continue86

pred.store.if85:                                  ; preds = %vec.epilog.vector.body
  %9 = extractelement <8 x i8> %wide.load84, i64 0
  %10 = or disjoint i8 %9, 32
  store i8 %10, ptr %next.gep76, align 1, !tbaa !20
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.if85, %vec.epilog.vector.body
  %11 = extractelement <8 x i1> %8, i64 1
  br i1 %11, label %pred.store.if87, label %pred.store.continue88

pred.store.if87:                                  ; preds = %pred.store.continue86
  %12 = extractelement <8 x i8> %wide.load84, i64 1
  %13 = or disjoint i8 %12, 32
  store i8 %13, ptr %next.gep77, align 1, !tbaa !20
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.if87, %pred.store.continue86
  %14 = extractelement <8 x i1> %8, i64 2
  br i1 %14, label %pred.store.if89, label %pred.store.continue90

pred.store.if89:                                  ; preds = %pred.store.continue88
  %15 = extractelement <8 x i8> %wide.load84, i64 2
  %16 = or disjoint i8 %15, 32
  store i8 %16, ptr %next.gep78, align 1, !tbaa !20
  br label %pred.store.continue90

pred.store.continue90:                            ; preds = %pred.store.if89, %pred.store.continue88
  %17 = extractelement <8 x i1> %8, i64 3
  br i1 %17, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue90
  %18 = extractelement <8 x i8> %wide.load84, i64 3
  %19 = or disjoint i8 %18, 32
  store i8 %19, ptr %next.gep79, align 1, !tbaa !20
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue90
  %20 = extractelement <8 x i1> %8, i64 4
  br i1 %20, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue92
  %i.dt = extractelement <8 x i8> %wide.load84, i64 4
  %i.du = or disjoint i8 %i.dt, 32
  store i8 %i.du, ptr %next.gep76.a, align 1, !tbaa !20
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue92
  %i.dv = extractelement <8 x i1> %8, i64 5
  br i1 %i.dv, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  %i.dw = extractelement <8 x i8> %wide.load84, i64 5
  %i.dx = or disjoint i8 %i.dw, 32
  store i8 %i.dx, ptr %next.gep77.a, align 1, !tbaa !20
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %i.dy = extractelement <8 x i1> %8, i64 6
  br i1 %i.dy, label %pred.store.if85.a, label %pred.store.continue86.a

pred.store.if85.a:                                ; preds = %pred.store.continue84
  %i.dz = extractelement <8 x i8> %wide.load84, i64 6
  %i.ea = or disjoint i8 %i.dz, 32
  store i8 %i.ea, ptr %next.gep78.a, align 1, !tbaa !20
  br label %pred.store.continue86.a

pred.store.continue86.a:                          ; preds = %pred.store.if85.a, %pred.store.continue84
  %i.eb = extractelement <8 x i1> %8, i64 7
  br i1 %i.eb, label %pred.store.if87.a, label %pred.store.continue88.a

pred.store.if87.a:                                ; preds = %pred.store.continue86.a
  %i.ec = extractelement <8 x i8> %wide.load84, i64 7
  %i.ed = or disjoint i8 %i.ec, 32
  store i8 %i.ed, ptr %next.gep79.a, align 1, !tbaa !20
  br label %pred.store.continue88.a

pred.store.continue88.a:                          ; preds = %pred.store.if87.a, %pred.store.continue86.a
  %index.next89 = add nuw i64 %index75, 8         ; 2 uses
  %i.ee = icmp eq i64 %index.next89, %n.vec74
  br i1 %i.ee, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !186

vec.epilog.middle.block:                          ; preds = %pred.store.continue88.a
  %cmp.n90 = icmp eq i64 %i.aw, %n.vec74
  br i1 %cmp.n90, label %downcase_single.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.ph = phi ptr [ %i.au, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.do, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.l
  %.015.i = phi ptr [ %i.ei, %bb.l ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ef = load i8, ptr %.015.i, align 1, !tbaa !20 ; 2 uses
  %i.eg = add i8 %i.ef, -65
  %or.cond.i = icmp ult i8 %i.eg, 26
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.eh = or disjoint i8 %i.ef, 32
  store i8 %i.eh, ptr %.015.i, align 1, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.ei = getelementptr i8, ptr %.015.i, i64 1    ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ei, %i.ax
  br i1 %exitcond.not.i, label %downcase_single.exit, label %.lr.ph.i, !llvm.loop !187

case_option_single_p.exit.thread19:               ; preds = %bb.f, %case_option_single_p.exit
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %case_option_single_p.exit.thread19
  %i.ej = getelementptr i8, ptr %i.c, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !14
  %i.el = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.em = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.en = tail call fastcc noundef i64 @str_enc_new(i64 noundef %i.el, ptr noundef readonly null, i64 noundef %i.ek, ptr noundef nonnull %i.em) ; 2 uses
  call fastcc void @rb_str_ascii_casemap(i64 noundef %2, i64 noundef %i.en, ptr noundef %i.a, ptr noundef %i.j)
  br label %downcase_single.exit

bb.n:                                             ; preds = %case_option_single_p.exit.thread19
  %i.eo = call fastcc i64 @rb_str_casemap(i64 noundef %2, ptr noundef %i.a, ptr noundef %i.j)
  br label %downcase_single.exit

downcase_single.exit:                             ; preds = %bb.l, %middle.block, %vec.epilog.middle.block, %RSTRING_END.exit.i, %bb.m, %bb.n
  %.0 = phi i64 [ %i.eo, %bb.n ], [ %i.en, %bb.m ], [ %i.ae, %RSTRING_END.exit.i ], [ %i.ae, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_capitalize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call fastcc i32 @check_case_options(i32 noundef %0, ptr noundef %1, i32 noundef 40960) ; 2 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !7
  %i.c = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 22
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = icmp eq i32 %i.g, 127
  br i1 %i.h, label %bb.b, label %get_encoding.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit.i

get_encoding.exit.i:                              ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i32 [ %i.i, %bb.b ], [ %i.g, %bb.a ]
  %i.j = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i) #28 ; 4 uses
  %i.k = tail call i32 @rb_enc_dummy_p(ptr noundef readonly %i.j) #32
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %str_true_enc.exit, label %bb.c

bb.c:                                             ; preds = %get_encoding.exit.i
  %i.l = load i64, ptr @rb_eEncCompatError, align 8, !tbaa !27
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !42
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.246, ptr noundef %.val.i.i) #30
  unreachable

str_true_enc.exit:                                ; preds = %get_encoding.exit.i
  %i.n = getelementptr i8, ptr %i.c, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.d

bb.d:                                             ; preds = %str_true_enc.exit
  %i.q = load i64, ptr %i.c, align 8, !tbaa !11
  %i.r = and i64 %i.q, 8192
  %.not.i = icmp eq i64 %i.r, 0
  %i.s = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.u = phi ptr [ %i.t, %bb.e ], [ %i.s, %bb.d ]
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %.not14 = icmp samesign ult i32 %i.b, 4194304
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.w = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.x = tail call fastcc noundef i64 @str_enc_new(i64 noundef %i.v, ptr noundef readonly null, i64 noundef %i.o, ptr noundef nonnull %i.w) ; 2 uses
  call fastcc void @rb_str_ascii_casemap(i64 noundef %2, i64 noundef %i.x, ptr noundef %i.a, ptr noundef %i.j)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.y = call fastcc i64 @rb_str_casemap(i64 noundef %2, ptr noundef %i.a, ptr noundef %i.j)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %str_true_enc.exit, %RSTRING_PTR.exit
  %.013 = phi i64 [ %2, %str_true_enc.exit ], [ %2, %RSTRING_PTR.exit ], [ %i.x, %bb.g ], [ %i.y, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.013
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_swapcase(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call fastcc i32 @check_case_options(i32 noundef %0, ptr noundef %1, i32 noundef 24576) ; 2 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !7
  %i.c = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 22
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = icmp eq i32 %i.g, 127
  br i1 %i.h, label %bb.b, label %get_encoding.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit.i

get_encoding.exit.i:                              ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i32 [ %i.i, %bb.b ], [ %i.g, %bb.a ]
  %i.j = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i) #28 ; 4 uses
  %i.k = tail call i32 @rb_enc_dummy_p(ptr noundef readonly %i.j) #32
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %str_true_enc.exit, label %bb.c

bb.c:                                             ; preds = %get_encoding.exit.i
  %i.l = load i64, ptr @rb_eEncCompatError, align 8, !tbaa !27
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !42
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.246, ptr noundef %.val.i.i) #30
  unreachable

str_true_enc.exit:                                ; preds = %get_encoding.exit.i
  %i.n = getelementptr i8, ptr %i.c, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %str_true_enc.exit
  %i.q = load i64, ptr %i.c, align 8, !tbaa !11
  %i.r = and i64 %i.q, 8192
  %.not.i = icmp eq i64 %i.r, 0
  %i.s = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.u = phi ptr [ %i.t, %bb.e ], [ %i.s, %bb.d ]
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RSTRING_PTR.exit, %str_true_enc.exit
  %i.v = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.w = tail call fastcc i64 @str_duplicate(i64 noundef %i.v, i64 noundef %2)
  br label %bb.j

bb.g:                                             ; preds = %RSTRING_PTR.exit
  %.not14 = icmp samesign ult i32 %i.b, 4194304
  br i1 %.not14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.y = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.z = tail call fastcc noundef i64 @str_enc_new(i64 noundef %i.x, ptr noundef readonly null, i64 noundef %i.o, ptr noundef nonnull %i.y) ; 2 uses
  call fastcc void @rb_str_ascii_casemap(i64 noundef %2, i64 noundef %i.z, ptr noundef %i.a, ptr noundef %i.j)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = call fastcc i64 @rb_str_casemap(i64 noundef %2, ptr noundef %i.a, ptr noundef %i.j)
  br label %bb.j
end_hunk_0
begin_hunk_1_@llvm.memmove.p0.p0.i64
attributes #26 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind allocsize(1,2) }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { nounwind allocsize(0,1) }
attributes #34 = { "function-inline-cost-multiplier"="2" }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { cold nounwind }
attributes #37 = { nounwind allocsize(1) }
attributes #38 = { nounwind allocsize(0) }

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
!11 = !{!12, !13, i64 0}
!12 = !{!"RBasic", !13, i64 0, !13, i64 8}
!13 = !{!"long", !9, i64 0}
!14 = !{!15, !13, i64 16}
!15 = !{!"RString", !12, i64 0, !13, i64 16, !9, i64 24}
!16 = !{!17, !8, i64 20}
!17 = !{!"OnigEncodingTypeST", !18, i64 0, !19, i64 8, !8, i64 16, !8, i64 20, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !8, i64 128, !8, i64 132}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!9, !9, i64 0}
!21 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!24 = !{!"branch_weights", i32 1073205, i32 2146410443}
!25 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!26 = !{!12, !13, i64 8}
!27 = !{!13, !13, i64 0}
!28 = !{!29, !30, i64 0}
!29 = !{!"fstr_create_arg", !30, i64 0, !30, i64 1}
!30 = !{!"_Bool", !9, i64 0}
!31 = !{!29, !30, i64 1}
!32 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!33 = distinct !{null}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{ptr @rb_str_new_frozen}
!36 = distinct !{null, ptr @rb_str_new_frozen}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTS27rb_execution_context_struct", !18, i64 0}
!42 = !{!17, !19, i64 8}
!43 = !{!44, !18, i64 32}
!44 = !{!"RData", !12, i64 0, !18, i64 16, !18, i64 24, !18, i64 32}
!45 = !{!19, !19, i64 0}
!46 = distinct !{!46, !38}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 long", !18, i64 0}
!49 = !{i64 2156127293}
!50 = distinct !{null}
!51 = distinct !{null, null}
!52 = distinct !{null}
!53 = !{!"branch_weights", i32 2146410443, i32 1073205}
!54 = !{!"branch_weights", i32 -100663296, i32 2097152}
!55 = distinct !{null, null}
!56 = !{!17, !8, i64 16}
!57 = distinct !{!57, !38, !58, !59}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = distinct !{!60, !38, !58, !59}
!61 = distinct !{!61, !38, !59, !58}
!62 = distinct !{!62, !38, !59, !58}
!63 = distinct !{!63, !38, !58, !59}
!64 = distinct !{!64, !38, !59, !58}
!65 = distinct !{!65, !38}
!66 = distinct !{!66, !38}
!67 = distinct !{!67, !38}
!68 = distinct !{!68, !38}
!69 = distinct !{!69, !38}
!70 = !{i64 2156167730}
!71 = !{i64 2156167895}
!72 = distinct !{!72, !38}
!73 = distinct !{!73, !38}
!74 = distinct !{!74, !38}
!75 = distinct !{!75, !38}
!76 = distinct !{!76, !38}
!77 = !{i64 2156181108}
!78 = !{i64 2156182129}
!79 = distinct !{null}
!80 = distinct !{!80, !38}
!81 = distinct !{!81, !38}
!82 = !{i64 2156182910}
!83 = distinct !{!83, !38, !58, !59}
!84 = distinct !{!84, !38, !59, !58}
!85 = distinct !{!85, !38}
!86 = distinct !{!86, !38}
!87 = distinct !{!87, !38, !58, !59}
!88 = distinct !{!88, !38, !59, !58}
!89 = !{ptr @rb_check_frozen_inline}
!90 = !{!"branch_weights", i32 4001, i32 1}
!91 = !{ptr @str_modifiable}
!92 = distinct !{!92, !38}
!93 = !{!17, !18, i64 48}
!94 = distinct !{null}
!95 = distinct !{!95, !38}
!96 = !{i64 2156198350}
!97 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!98 = !{i64 2156198977}
!99 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!100 = distinct !{!100, !38}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = distinct !{!103, !38}
!104 = distinct !{!104, !38}
!105 = distinct !{!105, !38}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38}
!108 = !{i64 2156201933}
!109 = distinct !{!109, !38}
!110 = !{!17, !18, i64 32}
!111 = distinct !{null, null}
!112 = !{!17, !18, i64 88}
!113 = distinct !{null, null}
!114 = !{!115, !117}
!115 = distinct !{!115, !116, !"memcpy.inline: argument 0"}
!116 = distinct !{!116, !"memcpy.inline"}
!117 = distinct !{!117, !116, !"memcpy.inline: argument 1"}
!118 = !{!119, !121}
!119 = distinct !{!119, !120, !"memcpy.inline: argument 0"}
!120 = distinct !{!120, !"memcpy.inline"}
!121 = distinct !{!121, !120, !"memcpy.inline: argument 1"}
!122 = distinct !{!122, !38}
!123 = distinct !{!123, !38}
!124 = distinct !{null, null, null}
!125 = !{!17, !18, i64 40}
!126 = distinct !{null, null, null}
!127 = distinct !{null, null, null}
!128 = distinct !{!128, !38}
!129 = !{!130, !132}
!130 = distinct !{!130, !131, !"memcpy.inline: argument 0"}
!131 = distinct !{!131, !"memcpy.inline"}
!132 = distinct !{!132, !131, !"memcpy.inline: argument 1"}
!133 = !{!134, !136}
!134 = distinct !{!134, !135, !"memcpy.inline: argument 0"}
!135 = distinct !{!135, !"memcpy.inline"}
!136 = distinct !{!136, !135, !"memcpy.inline: argument 1"}
!137 = distinct !{!137, !38}
!138 = distinct !{!138, !38}
!139 = distinct !{!139, !38}
!140 = distinct !{!140, !38}
!141 = distinct !{!141, !38}
!142 = distinct !{ptr @rb_str_new_frozen, null}
!143 = distinct !{!143, !38}
!144 = distinct !{!144, !38}
!145 = distinct !{null}
!146 = distinct !{!146, !38}
!147 = distinct !{!147, !38}
!148 = distinct !{null}
!149 = distinct !{!149, !38}
!150 = !{!151, !13, i64 24}
!151 = !{!"RRegexp", !12, i64 0, !152, i64 16, !13, i64 24, !13, i64 32}
!152 = !{!"p1 _ZTS17re_pattern_buffer", !18, i64 0}
!153 = distinct !{!153, !38}
!154 = distinct !{!154, !38}
!155 = distinct !{!155, !38}
!156 = !{!157, !48, i64 8}
!157 = !{!"re_registers", !8, i64 0, !8, i64 4, !48, i64 8, !48, i64 16}
!158 = !{!157, !48, i64 16}
!159 = !{!157, !8, i64 4}
!160 = distinct !{!160, !38}
!161 = distinct !{!161, !38}
!162 = distinct !{!162, !38}
!163 = distinct !{!163, !38}
!164 = !{!17, !18, i64 24}
!165 = distinct !{null}
!166 = distinct !{!166, !38}
!167 = distinct !{!167, !38}
!168 = !{i64 2156281110}
!169 = distinct !{!169, !38}
!170 = distinct !{!170, !171}
!171 = !{!"llvm.loop.peeled.count", i32 1}
!172 = distinct !{!172, !38}
!173 = distinct !{null, null}
!174 = distinct !{null, null}
!175 = !{!"branch_weights", !"expected", i32 1717127, i32 2145766521}
!176 = !{i64 2156170568}
!177 = !{!178, !178, i64 0}
!178 = !{!"p1 _ZTS18OnigEncodingTypeST", !18, i64 0}
!179 = distinct !{null, null}
!180 = !{i64 2156254004}
!181 = distinct !{!181, !38, !58, !59}
!182 = !{!"branch_weights", i32 8, i32 8}
!183 = distinct !{!183, !38, !58, !59}
!184 = distinct !{!184, !38, !59, !58}
!185 = distinct !{!185, !38, !58, !59}
!186 = distinct !{!186, !38, !58, !59}
!187 = distinct !{!187, !38, !59, !58}
!188 = distinct !{!188, !38}
!189 = distinct !{!189, !38}
!190 = distinct !{!190, !38}
!191 = !{!192}
!192 = distinct !{!192, !193}
!193 = distinct !{!193, !"LVerDomain"}
!194 = !{!195}
!195 = distinct !{!195, !193}
!196 = distinct !{!196, !38, !58, !59}
!197 = !{!"branch_weights", i32 8, i32 24}
!198 = distinct !{!198, !38, !58, !59}
!199 = distinct !{!199, !102}
!200 = distinct !{!200, !38, !58}
!201 = distinct !{!201, !38}
!202 = distinct !{!202, !38}
!203 = distinct !{!203, !38}
!204 = distinct !{!204, !38}
!205 = distinct !{!205, !38}
!206 = !{!207, !9, i64 2047}
!207 = !{!"crypt_data", !9, i64 0, !9, i64 384, !9, i64 768, !9, i64 1280, !9, i64 2047, !9, i64 2048}
!208 = distinct !{!208, !38}
!209 = distinct !{!209, !38}
!210 = distinct !{!210, !38}
!211 = distinct !{!211, !38}
!212 = distinct !{!212, !38}
!213 = distinct !{!213, !38}
!214 = !{!"branch_weights", i32 -2146410, i32 2146410}
!215 = !{i64 2156243166}
!216 = !{!17, !18, i64 112}
!217 = distinct !{!217, !38, !58, !59}
!218 = distinct !{!218, !38, !59, !58}
!219 = distinct !{!219, !38}
!220 = distinct !{!220, !38}
!221 = distinct !{!221, !38}
!222 = distinct !{!222, !38}
!223 = distinct !{!223, !38}
!224 = distinct !{!224, !38}
!225 = distinct !{!225, !38}
!226 = distinct !{!226, !102}
!227 = distinct !{!227, !38}
!228 = !{i64 2156300252}
!229 = !{i8 0, i8 2}
!230 = !{}
!231 = distinct !{!231, !38}
!232 = distinct !{!232, !38}
!233 = distinct !{!233, !38}
!234 = distinct !{null}
!235 = distinct !{!235, !38}
!236 = distinct !{!236, !38}
!237 = distinct !{!237, !38}
!238 = !{!239, !239, i64 0}
!239 = !{!"p1 _ZTS14mapping_buffer", !18, i64 0}
!240 = !{!17, !18, i64 120}
!241 = distinct !{!241, !38}
!242 = !{!18, !18, i64 0}
!243 = distinct !{!243, !38}
!244 = distinct !{!244, !38}
!245 = !{i64 2156255714}
!246 = distinct !{!246, !38}
!247 = distinct !{null, null}
!248 = distinct !{!248, !38}
!249 = !{i64 2156273214}
!250 = distinct !{!250, !38}
!251 = distinct !{!251, !38}
!252 = !{i64 2156275222}
!253 = distinct !{!253, !38}
!254 = !{i64 2156275970}
!255 = !{!152, !152, i64 0}
!256 = !{i64 2156279086}
!257 = distinct !{!257, !38}
!258 = !{i64 2156286094}
!259 = distinct !{!259, !38}
!260 = distinct !{!260, !38}
!261 = !{i64 2156290668}
!262 = !{i64 2156245263}
!263 = distinct !{!263, !38}
!264 = distinct !{!264, !38}
!265 = !{!266, !19, i64 16}
!266 = !{!"tr", !8, i64 0, !8, i64 4, !8, i64 8, !19, i64 16, !19, i64 24}
!267 = !{!266, !19, i64 24}
!268 = !{!266, !8, i64 8}
!269 = !{!266, !8, i64 4}
!270 = !{!266, !8, i64 0}
!271 = distinct !{!271, !38}
!272 = distinct !{!272, !38}
!273 = distinct !{!273, !38}
!274 = distinct !{!274, !38}
!275 = distinct !{!275, !38, !58, !59}
!276 = distinct !{!276, !38}
!277 = distinct !{!277, !38}
!278 = distinct !{!278, !38}
!279 = distinct !{!279, !38}
end_hunk_1
