inline.NumInlined: 6676
inline.NumDeleted: 333
begin_hunk_0_@rb_iseq_build_from_ary:bb.a
  %i.aeg = call i64 @rb_to_symbol_type(i64 noundef %i.aef) #37
  %i.aeh = call i64 @rb_ary_push(i64 noundef %i.adc, i64 noundef %i.aeg) #37 ; 0 uses
  %i.aei = add i32 %.0148.i, 1
  %.pre324.i = load i64, ptr %i.d, align 8, !tbaa !36
  br label %bb.fv, !llvm.loop !306

bb.fz:                                            ; preds = %insn_op_type.exit.i
  %i.aej = getelementptr [8 x i8], ptr %i.aah, i64 %indvars.iv.i162
  store i64 %i.aaq, ptr %i.aej, align 8, !tbaa !36
  %i.aek = load i64, ptr %i.d, align 8, !tbaa !36
  %i.ael = call i64 @rb_num2uint(i64 noundef %i.aek) #37
  %i.aem = trunc i64 %i.ael to i32
  %i.aen = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.aeo = getelementptr i8, ptr %i.aen, i64 252
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !123
  %.not157.i = icmp ugt i32 %i.aep, %i.aem
  br i1 %.not157.i, label %rb_obj_written.exit.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aeq = load i64, ptr %i.d, align 8, !tbaa !36 ; 3 uses
  %i.aer = trunc i64 %i.aeq to i1
  br i1 %i.aer, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.aes = call i64 @rb_fix2int(i64 noundef %i.aeq) #37
  br label %rb_num2int_inline.exit189.i

bb.gc:                                            ; preds = %bb.ga
  %i.aet = call i64 @rb_num2int(i64 noundef %i.aeq) #37
  br label %rb_num2int_inline.exit189.i

rb_num2int_inline.exit189.i:                      ; preds = %bb.gc, %bb.gb
  %.0.i188.i = phi i64 [ %i.aes, %bb.gb ], [ %i.aet, %bb.gc ]
  %i.aeu = trunc i64 %.0.i188.i to i32
  %i.aev = add i32 %i.aeu, 1
  %i.aew = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.aex = getelementptr i8, ptr %i.aew, i64 252
  store i32 %i.aev, ptr %i.aex, align 4, !tbaa !123
  br label %rb_obj_written.exit.i

bb.gd:                                            ; preds = %insn_op_type.exit.i
  %i.aey = getelementptr [8 x i8], ptr %i.aah, i64 %indvars.iv.i162
  store i64 %i.aaq, ptr %i.aey, align 8, !tbaa !36
  %i.aez = load i64, ptr %i.d, align 8, !tbaa !36
  %i.afa = call i64 @rb_num2uint(i64 noundef %i.aez) #37
  %i.afb = trunc i64 %i.afa to i32
  %i.afc = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.afd = getelementptr i8, ptr %i.afc, i64 256
  %i.afe = load i32, ptr %i.afd, align 8, !tbaa !122
  %.not156.i = icmp ugt i32 %i.afe, %i.afb
  br i1 %.not156.i, label %rb_obj_written.exit.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aff = load i64, ptr %i.d, align 8, !tbaa !36 ; 3 uses
  %i.afg = trunc i64 %i.aff to i1
  br i1 %i.afg, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.afh = call i64 @rb_fix2int(i64 noundef %i.aff) #37
  br label %rb_num2int_inline.exit191.i

bb.gg:                                            ; preds = %bb.ge
  %i.afi = call i64 @rb_num2int(i64 noundef %i.aff) #37
  br label %rb_num2int_inline.exit191.i

rb_num2int_inline.exit191.i:                      ; preds = %bb.gg, %bb.gf
  %.0.i190.i = phi i64 [ %i.afh, %bb.gf ], [ %i.afi, %bb.gg ]
  %i.afj = trunc i64 %.0.i190.i to i32
  %i.afk = add i32 %i.afj, 1
  %i.afl = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.afm = getelementptr i8, ptr %i.afl, i64 256
  store i32 %i.afk, ptr %i.afm, align 8, !tbaa !122
  br label %rb_obj_written.exit.i

bb.gh:                                            ; preds = %insn_op_type.exit.i
  %i.afn = icmp eq i64 %i.aaq, 4
  br i1 %i.afn, label %.thread.i.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.afo = call i64 @rb_intern2(ptr noundef nonnull @.str.220, i64 noundef 3) #37
  %i.afp = call i64 @rb_id2sym(i64 noundef %i.afo) #37
  %i.afq = call i64 @rb_hash_aref(i64 noundef %i.aaq, i64 noundef %i.afp) #37 ; 2 uses
  %i.afr = call i64 @rb_intern2(ptr noundef nonnull @.str.221, i64 noundef 4) #37
  %i.afs = call i64 @rb_id2sym(i64 noundef %i.afr) #37
  %i.aft = call i64 @rb_hash_aref(i64 noundef %i.aaq, i64 noundef %i.afs) #37 ; 2 uses
  %i.afu = call i64 @rb_intern2(ptr noundef nonnull @.str.222, i64 noundef 9) #37
  %i.afv = call i64 @rb_id2sym(i64 noundef %i.afu) #37
  %i.afw = call i64 @rb_hash_aref(i64 noundef %i.aaq, i64 noundef %i.afv) #37 ; 2 uses
  %i.afx = call i64 @rb_intern2(ptr noundef nonnull @.str.223, i64 noundef 6) #37
  %i.afy = call i64 @rb_id2sym(i64 noundef %i.afx) #37
  %i.afz = call i64 @rb_hash_aref(i64 noundef %i.aaq, i64 noundef %i.afy) #37 ; 2 uses
  %i.aga = icmp eq i64 %i.afq, 4
  br i1 %i.aga, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.agb = call i64 @rb_sym2id(i64 noundef %i.afq) #37
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.0.i192.i = phi i64 [ 0, %bb.gi ], [ %i.agb, %bb.gj ] ; 2 uses
  %i.agc = icmp eq i64 %i.aft, 4
  br i1 %i.agc, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.agd = call i64 @rb_num2uint(i64 noundef %i.aft) #37
  %i.age = trunc i64 %i.agd to i32
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.037.i.i = phi i32 [ 0, %bb.gk ], [ %i.age, %bb.gl ] ; 4 uses
  %i.agf = icmp eq i64 %i.afw, 4
  br i1 %i.agf, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.agg = call i64 @rb_fix2int(i64 noundef %i.afw) #37
  %i.agh = trunc i64 %i.agg to i32
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.035.i.i = phi i32 [ 0, %bb.gm ], [ %i.agh, %bb.gn ] ; 2 uses
  %i.agi = icmp eq i64 %i.afz, 4
  br i1 %i.agi, label %.thread.i.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.agj = inttoptr i64 %i.afz to ptr             ; 5 uses
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !74 ; 2 uses
  %i.agl = and i64 %i.agk, 8192
  %.not.i.i.i193.i = icmp eq i64 %i.agl, 0
  br i1 %.not.i.i.i193.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.agm = lshr i64 %i.agk, 15
  %i.agn = and i64 %i.agm, 127
  br label %rb_array_len.exit.i.i.i

bb.gr:                                            ; preds = %bb.gp
  %i.ago = getelementptr i8, ptr %i.agj, i64 16
  %i.agp = load i64, ptr %i.ago, align 8, !tbaa !20
  br label %rb_array_len.exit.i.i.i

rb_array_len.exit.i.i.i:                          ; preds = %bb.gr, %bb.gq
  %.0.i.i.i.i = phi i64 [ %i.agn, %bb.gq ], [ %i.agp, %bb.gr ] ; 6 uses
  %i.agq = add i64 %.0.i.i.i.i, 2147483648
  %.not.i1.i.i.i = icmp ult i64 %i.agq, 4294967296
  br i1 %.not.i1.i.i.i, label %RARRAY_LENINT.exit.i.i, label %bb.gs

bb.gs:                                            ; preds = %rb_array_len.exit.i.i.i
  call void @rb_out_of_int(i64 noundef %.0.i.i.i.i) #38
  unreachable

RARRAY_LENINT.exit.i.i:                           ; preds = %rb_array_len.exit.i.i.i
  %i.agr = trunc nsw i64 %.0.i.i.i.i to i32       ; 2 uses
  %i.ags = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  %i.agt = call i64 @rb_size_mul_add_or_raise(i64 noundef %.0.i.i.i.i, i64 noundef 8, i64 noundef 8, i64 noundef %i.ags) #37
  %i.agu = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.agt) #42 ; 4 uses
  %i.agv = getelementptr i8, ptr %i.agu, i64 4
  store i32 0, ptr %i.agv, align 4, !tbaa !7
  store i32 %i.agr, ptr %i.agu, align 8, !tbaa !7
  %i.agw = icmp sgt i64 %.0.i.i.i.i, 0
  br i1 %i.agw, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %RARRAY_LENINT.exit.i.i
  %i.agx = getelementptr i8, ptr %i.agj, i64 16
  %i.agy = getelementptr i8, ptr %i.agj, i64 32
  %i.agz = getelementptr i8, ptr %i.agu, i64 8
  br label %bb.gt

bb.gt:                                            ; preds = %RARRAY_AREF.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i196.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i197.i, %RARRAY_AREF.exit.i.i ] ; 3 uses
  %i.aha = load i64, ptr %i.agj, align 8, !tbaa !74
  %i.ahb = and i64 %i.aha, 8192
  %.not.i.i42.i.i = icmp eq i64 %i.ahb, 0
  br i1 %.not.i.i42.i.i, label %bb.gu, label %RARRAY_AREF.exit.i.i

bb.gu:                                            ; preds = %bb.gt
  %i.ahc = load ptr, ptr %i.agy, align 8, !tbaa !20
  br label %RARRAY_AREF.exit.i.i

RARRAY_AREF.exit.i.i:                             ; preds = %bb.gu, %bb.gt
  %.0.i.i43.i.i = phi ptr [ %i.ahc, %bb.gu ], [ %i.agx, %bb.gt ]
  %i.ahd = getelementptr [8 x i8], ptr %.0.i.i43.i.i, i64 %indvars.iv.i196.i
  %i.ahe = load i64, ptr %i.ahd, align 8, !tbaa !36 ; 2 uses
  %i.ahf = call i64 @rb_sym2id(i64 noundef %i.ahe) #37 ; 0 uses
  %i.ahg = getelementptr [8 x i8], ptr %i.agz, i64 %indvars.iv.i196.i
  store i64 %i.ahe, ptr %i.ahg, align 8, !tbaa !36
  %indvars.iv.next.i197.i = add nuw nsw i64 %indvars.iv.i196.i, 1 ; 2 uses
  %exitcond.not.i198.i = icmp eq i64 %indvars.iv.next.i197.i, %.0.i.i.i.i
  br i1 %exitcond.not.i198.i, label %._crit_edge.i.i, label %bb.gt, !llvm.loop !307

._crit_edge.i.i:                                  ; preds = %RARRAY_AREF.exit.i.i, %RARRAY_LENINT.exit.i.i
  %i.ahh = or i32 %.037.i.i, 32
  %i.ahi = add i32 %.035.i.i, %i.agr
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i.i, %bb.go, %bb.gh
  %.in.in.in.i.i = phi i32 [ %.037.i.i, %._crit_edge.i.i ], [ %.037.i.i, %bb.go ], [ 0, %bb.gh ]
  %.153.i.i = phi i64 [ %.0.i192.i, %._crit_edge.i.i ], [ %.0.i192.i, %bb.go ], [ 0, %bb.gh ] ; 3 uses
  %.14052.i.i = phi ptr [ %i.agu, %._crit_edge.i.i ], [ null, %bb.go ], [ null, %bb.gh ] ; 2 uses
  %.015.i.i.i = phi i32 [ %i.ahh, %._crit_edge.i.i ], [ %.037.i.i, %bb.go ], [ 0, %bb.gh ] ; 3 uses
  %.0.i.i194.i = phi i32 [ %i.ahi, %._crit_edge.i.i ], [ %.035.i.i, %bb.go ], [ 0, %bb.gh ] ; 3 uses
  %.in.in.i.i = lshr i32 %.in.in.in.i.i, 4
  %.in.i.i = and i32 %.in.in.i.i, 1
  %7 = xor i32 %.in.i.i, 1
  %i.ahj = and i32 %.015.i.i.i, 8291
  %8 = or i32 %i.ahj, %7
  %or.cond.not.i.i.i = icmp eq i32 %8, 0
  %i.ahk = or i32 %.015.i.i.i, 16
  %spec.select.i.i195.i = select i1 %or.cond.not.i.i.i, i32 %i.ahk, i32 %.015.i.i.i ; 3 uses
  %i.ahl = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 260  ; 2 uses
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !109
  %i.aho = add i32 %i.ahn, 1
  store i32 %i.aho, ptr %i.ahm, align 4, !tbaa !109
  %.not.i.i44.i.i = icmp ugt i64 %.153.i.i, 4294967295
  %i.ahp = icmp ugt i32 %spec.select.i.i195.i, 65535
  %or.cond13.i.i.i.i = or i1 %.not.i.i44.i.i, %i.ahp
  br i1 %or.cond13.i.i.i.i, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %.thread.i.i
  %i.ahq = icmp ugt i32 %.0.i.i194.i, 32767
  %i.ahr = icmp ne ptr %.14052.i.i, null
  %or.cond.i.i.i.i = or i1 %i.ahr, %i.ahq
  br i1 %or.cond.i.i.i.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ahs = shl nuw i64 %.153.i.i, 32
  %i.aht = shl nuw i32 %spec.select.i.i195.i, 16
  %i.ahu = zext i32 %i.aht to i64
  %i.ahv = or disjoint i64 %i.ahs, %i.ahu
  %i.ahw = shl nuw nsw i32 %.0.i.i194.i, 1
  %i.ahx = zext nneg i32 %i.ahw to i64
  %i.ahy = or disjoint i64 %i.ahv, %i.ahx
  %i.ahz = or disjoint i64 %i.ahy, 1
  %i.aia = inttoptr i64 %i.ahz to ptr
  br label %vm_ci_new_.exit.i.i.i

bb.gx:                                            ; preds = %bb.gv, %.thread.i.i
  %i.aib = call ptr @rb_vm_ci_lookup(i64 noundef %.153.i.i, i32 noundef %spec.select.i.i195.i, i32 noundef %.0.i.i194.i, ptr noundef %.14052.i.i) #37
  br label %vm_ci_new_.exit.i.i.i

vm_ci_new_.exit.i.i.i:                            ; preds = %bb.gx, %bb.gw
  %.0.i.i45.i.i = phi ptr [ %i.aib, %bb.gx ], [ %i.aia, %bb.gw ] ; 2 uses
  %i.aic = ptrtoint ptr %.0.i.i45.i.i to i64      ; 4 uses
  %i.aid = icmp eq ptr %.0.i.i45.i.i, null
  %i.aie = and i64 %i.aic, 7
  %i.aif = icmp ne i64 %i.aie, 0
  %i.aig = or i1 %i.aid, %i.aif
  br i1 %i.aig, label %iseq_build_callinfo_from_hash.exit.i, label %bb.gy

bb.gy:                                            ; preds = %vm_ci_new_.exit.i.i.i
  call void @rb_gc_writebarrier(i64 noundef %i.oc, i64 noundef %i.aic) #37
  call void @rb_gc_writebarrier(i64 noundef %i.oc, i64 noundef %i.aic) #37
  br label %iseq_build_callinfo_from_hash.exit.i

iseq_build_callinfo_from_hash.exit.i:             ; preds = %bb.gy, %vm_ci_new_.exit.i.i.i
  %i.aih = getelementptr [8 x i8], ptr %i.aah, i64 %indvars.iv.i162
  store i64 %i.aic, ptr %i.aih, align 8, !tbaa !36
  br label %rb_obj_written.exit.i

bb.gz:                                            ; preds = %insn_op_type.exit.i
  %i.aii = call i64 @rb_to_symbol_type(i64 noundef %i.aaq) #37
  %i.aij = getelementptr [8 x i8], ptr %i.aah, i64 %indvars.iv.i162
  store i64 %i.aii, ptr %i.aij, align 8, !tbaa !36
  br label %rb_obj_written.exit.i

bb.ha:                                            ; preds = %insn_op_type.exit.i
  %i.aik = inttoptr i64 %i.aaq to ptr             ; 2 uses
  %i.ail = load i64, ptr %i.aik, align 8, !tbaa !74 ; 2 uses
  %i.aim = and i64 %i.ail, 8192
  %.not.i199.i = icmp eq i64 %i.aim, 0
  br i1 %.not.i199.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ain = lshr i64 %i.ail, 15
  %i.aio = and i64 %i.ain, 127
  br label %rb_array_len.exit201.i

bb.hc:                                            ; preds = %bb.ha
  %i.aip = getelementptr i8, ptr %i.aik, i64 16
  %i.aiq = load i64, ptr %i.aip, align 8, !tbaa !20
  br label %rb_array_len.exit201.i

rb_array_len.exit201.i:                           ; preds = %bb.hc, %bb.hb
  %.0.i200.i = phi i64 [ %i.aio, %bb.hb ], [ %i.aiq, %bb.hc ]
  %i.air = sdiv i64 %.0.i200.i, 2
  %i.ais = call i64 @rb_hash_new_with_size(i64 noundef %i.air) #37 ; 7 uses
  %i.ait = call ptr @rb_hash_tbl_raw(i64 noundef %i.ais, ptr noundef nonnull @.str, i32 noundef 12136) #37
  %i.aiu = getelementptr i8, ptr %i.ait, i64 8
  store ptr @cdhash_type, ptr %i.aiu, align 8, !tbaa !308
  %i.aiv = load i64, ptr %i.d, align 8, !tbaa !36
  %i.aiw = call i64 @rb_to_array_type(i64 noundef %i.aiv) #37 ; 2 uses
  store i64 %i.aiw, ptr %i.d, align 8, !tbaa !36
  br label %bb.hd

bb.hd:                                            ; preds = %register_label.exit, %rb_array_len.exit201.i
  %i.aix = phi i64 [ %i.aiw, %rb_array_len.exit201.i ], [ %.pre.i165, %register_label.exit ]
  %.0145.i = phi i32 [ 0, %rb_array_len.exit201.i ], [ %i.alj, %register_label.exit ] ; 2 uses
  %i.aiy = sext i32 %.0145.i to i64               ; 3 uses
  %i.aiz = inttoptr i64 %i.aix to ptr             ; 4 uses
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !74 ; 2 uses
  %i.ajb = and i64 %i.aja, 8192
  %.not.i202.i = icmp eq i64 %i.ajb, 0
  br i1 %.not.i202.i, label %rb_array_len.exit204.i, label %rb_array_len.exit204.thread.i

rb_array_len.exit204.i:                           ; preds = %bb.hd
  %i.ajc = getelementptr i8, ptr %i.aiz, i64 16
  %i.ajd = load i64, ptr %i.ajc, align 8, !tbaa !20
  %i.aje = icmp sgt i64 %i.ajd, %i.aiy
  br i1 %i.aje, label %bb.he, label %bb.hj

rb_array_len.exit204.thread.i:                    ; preds = %bb.hd
  %i.ajf = lshr i64 %i.aja, 15
  %i.ajg = and i64 %i.ajf, 127
  %i.ajh = icmp sgt i64 %i.ajg, %i.aiy
  br i1 %i.ajh, label %.thread222.i, label %bb.hj

.thread222.i:                                     ; preds = %rb_array_len.exit204.thread.i
  %i.aji = getelementptr i8, ptr %i.aiz, i64 16
  br label %RARRAY_AREF.exit210.i

bb.he:                                            ; preds = %rb_array_len.exit204.i
  %i.ajj = getelementptr i8, ptr %i.aiz, i64 32
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !20
  br label %RARRAY_AREF.exit210.i

RARRAY_AREF.exit210.i:                            ; preds = %bb.he, %.thread222.i
  %.pn.i = phi ptr [ %i.aji, %.thread222.i ], [ %i.ajk, %bb.he ]
  %.in241.i = getelementptr [8 x i8], ptr %.pn.i, i64 %i.aiy ; 2 uses
  %i.ajl = load i64, ptr %.in241.i, align 8, !tbaa !36
  %i.ajm = getelementptr i8, ptr %.in241.i, i64 8
  %i.ajn = load i64, ptr %i.ajm, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ajo = call i64 @rb_to_symbol_type(i64 noundef %i.ajn) #37 ; 2 uses
  %i.ajp = call i32 @rb_st_lookup(ptr noundef %i.uf, i64 noundef %i.ajo, ptr noundef nonnull %i.a) #37
  %i.ajq = icmp eq i32 %i.ajp, 0
  br i1 %i.ajq, label %bb.hf, label %bb.hi

bb.hf:                                            ; preds = %RARRAY_AREF.exit210.i
  %.val13.i.i = load ptr, ptr %i.od, align 8, !tbaa !20
  %i.ajr = getelementptr i8, ptr %.val13.i.i, i64 96 ; 2 uses
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !37 ; 4 uses
  %i.ajt = getelementptr i8, ptr %i.ajs, i64 8
  %i.aju = load i32, ptr %i.ajt, align 8, !tbaa !7 ; 2 uses
  %i.ajv = zext i32 %i.aju to i64
  %i.ajw = add nuw nsw i64 %i.ajv, 48
  %i.ajx = getelementptr i8, ptr %i.ajs, i64 12
  %i.ajy = load i32, ptr %i.ajx, align 4, !tbaa !7 ; 4 uses
  %i.ajz = zext i32 %i.ajy to i64                 ; 2 uses
  %i.aka = icmp samesign ugt i64 %i.ajw, %i.ajz
  br i1 %i.aka, label %.preheader.i.i.i.i.i170, label %new_label_body.exit.i

.preheader.i.i.i.i.i170:                          ; preds = %bb.hf
  %i.akb = icmp ult i32 %i.ajy, 48
  br i1 %i.akb, label %.lr.ph.i.i.i.i.i175, label %._crit_edge.i.i.i.i.i171

.lr.ph.i.i.i.i.i175:                              ; preds = %.preheader.i.i.i.i.i170, %bb.hh
  %.027.i.i.i.i.i176 = phi i32 [ %i.akd, %bb.hh ], [ %i.ajy, %.preheader.i.i.i.i.i170 ] ; 3 uses
  %i.akc = icmp samesign ugt i32 %.027.i.i.i.i.i176, 1073741822
  br i1 %i.akc, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %.lr.ph.i.i.i.i.i175
  call void @rb_memerror() #38
  unreachable

bb.hh:                                            ; preds = %.lr.ph.i.i.i.i.i175
  %i.akd = shl nuw nsw i32 %.027.i.i.i.i.i176, 1  ; 3 uses
  %i.ake = icmp samesign ult i32 %.027.i.i.i.i.i176, 24
  br i1 %i.ake, label %.lr.ph.i.i.i.i.i175, label %._crit_edge.i.i.loopexit.i.i.i177, !llvm.loop !38

._crit_edge.i.i.loopexit.i.i.i177:                ; preds = %bb.hh
  %i.akf = zext nneg i32 %i.akd to i64
  br label %._crit_edge.i.i.i.i.i171

._crit_edge.i.i.i.i.i171:                         ; preds = %._crit_edge.i.i.loopexit.i.i.i177, %.preheader.i.i.i.i.i170
  %.0.lcssa.i.i.i.i.i172 = phi i32 [ %i.ajy, %.preheader.i.i.i.i.i170 ], [ %i.akd, %._crit_edge.i.i.loopexit.i.i.i177 ]
  %.lcssa.i.i.i.i.i173 = phi i64 [ %i.ajz, %.preheader.i.i.i.i.i170 ], [ %i.akf, %._crit_edge.i.i.loopexit.i.i.i177 ]
  %i.akg = add nuw nsw i64 %.lcssa.i.i.i.i.i173, 16
  %i.akh = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.akg, i64 noundef 1) #39 ; 6 uses
  store ptr %i.akh, ptr %i.ajs, align 8, !tbaa !37
  store ptr %i.akh, ptr %i.ajr, align 8, !tbaa !37
  store ptr null, ptr %i.akh, align 8, !tbaa !37
  %i.aki = getelementptr i8, ptr %i.akh, i64 8
  store i32 0, ptr %i.aki, align 8, !tbaa !7
  %i.akj = getelementptr i8, ptr %i.akh, i64 12
  store i32 %.0.lcssa.i.i.i.i.i172, ptr %i.akj, align 4, !tbaa !7
  br label %new_label_body.exit.i

new_label_body.exit.i:                            ; preds = %._crit_edge.i.i.i.i.i171, %bb.hf
  %i.akk = phi i32 [ %i.aju, %bb.hf ], [ 0, %._crit_edge.i.i.i.i.i171 ] ; 2 uses
  %.022.i.i.i.i.i169 = phi ptr [ %i.ajs, %bb.hf ], [ %i.akh, %._crit_edge.i.i.i.i.i171 ] ; 2 uses
  %i.akl = getelementptr i8, ptr %.022.i.i.i.i.i169, i64 16
  %i.akm = getelementptr i8, ptr %.022.i.i.i.i.i169, i64 8
  %i.akn = zext i32 %i.akk to i64
  %i.ako = getelementptr i8, ptr %i.akl, i64 %i.akn ; 7 uses
  %i.akp = add i32 %i.akk, 48
  store i32 %i.akp, ptr %i.akm, align 8, !tbaa !7
  store i32 1, ptr %i.ako, align 8, !tbaa !193
  %i.akq = getelementptr i8, ptr %i.ako, i64 8
  store ptr null, ptr %i.akq, align 8, !tbaa !194
  %i.akr = load ptr, ptr %i.od, align 8, !tbaa !20
  %i.aks = getelementptr i8, ptr %i.akr, i64 132  ; 2 uses
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !195 ; 2 uses
  %i.aku = add i32 %i.akt, 1
  store i32 %i.aku, ptr %i.aks, align 4, !tbaa !195
  %i.akv = getelementptr i8, ptr %i.ako, i64 24
  store i32 %i.akt, ptr %i.akv, align 8, !tbaa !94
  %i.akw = getelementptr i8, ptr %i.ako, i64 44   ; 2 uses
  %i.akx = load i8, ptr %i.akw, align 4
end_hunk_0
begin_hunk_1_@iseq_pop_newarray:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36
  switch i64 %i.c, label %bb.f [
    i64 1, label %bb.b
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  store ptr %i.e, ptr %i.h, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %ELEM_REMOVE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.i, align 8, !tbaa !34
  br label %ELEM_REMOVE.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35   ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.k, ptr %i.n, align 8, !tbaa !35
  %.not.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i4, label %ELEM_REMOVE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.k, i64 16
  store ptr %i.m, ptr %i.o, align 8, !tbaa !34
  br label %ELEM_REMOVE.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 24
  store i32 46, ptr %i.p, align 8, !tbaa !64
  br label %ELEM_REMOVE.exit

ELEM_REMOVE.exit:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i64 @rb_errinfo() local_unnamed_addr #4

declare i64 @rb_reg_compile(i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @rb_attr_get(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_freeze(i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_resurrect(i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @vm_ci_new_(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #17 {
bb.a:
  %.not = icmp ugt i64 %0, 4294967295
  %i.a = icmp ugt i32 %1, 65535
  %or.cond13 = or i1 %.not, %i.a
  br i1 %or.cond13, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %2, 32767
  %i.c = icmp ne ptr %3, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw i64 %0, 32
  %i.e = shl nuw i32 %1, 16
  %i.f = zext i32 %i.e to i64
  %i.g = or disjoint i64 %i.d, %i.f
  %i.h = shl nuw nsw i32 %2, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = or disjoint i64 %i.g, %i.i
  %i.k = or disjoint i64 %i.j, 1
  %i.l = inttoptr i64 %i.k to ptr
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.m = tail call ptr @rb_vm_ci_lookup(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.m, %bb.d ], [ %i.l, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 32) i32 @rb_type(i64 noundef %0) unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !74
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %0, 37
  %switch.shifted = lshr i64 68720525329, %0
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.i, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i64 %0 to i1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = and i64 %0, 254
  %i.l = icmp eq i64 %i.k, 12
  %spec.select = select i1 %i.l, i32 20, i32 4
  br label %bb.f

switch.lookup:                                    ; preds = %bb.c
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ibf_dump_object_list_i, i64 %0
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %spec.select, %bb.e ], [ 21, %bb.d ], [ %switch.ext, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #4

declare ptr @rb_vm_ci_lookup(i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @insn_set_specialized_instruction(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %2, 84
  br i1 %i.a, label %new_callinfo.exit, label %bb.b

new_callinfo.exit:                                ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = getelementptr i8, ptr %i.f, i64 260      ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !109
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !109
  %i.j = tail call ptr (ptr, ptr, i32, i32, ...) @insn_replace_with_operands(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 84, i32 noundef 2, i64 noundef 601296470019, i64 noundef %i.d) ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 24
  store i32 %2, ptr %i.k, align 8, !tbaa !64
  %i.l = sext i32 %2 to i64
  %i.m = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !20
  %i.o = zext i8 %i.n to i32
  %i.p = add nsw i32 %i.o, -1
  %i.q = getelementptr i8, ptr %1, i64 28
  store i32 %i.p, ptr %i.q, align 4, !tbaa !79
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %new_callinfo.exit
  %i.r = getelementptr i8, ptr %1, i64 56         ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !80
  %i.t = or i32 %i.s, 96
  store i32 %i.t, ptr %i.r, align 8, !tbaa !80
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @new_callinfo(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %3, 32
  %i.b = load i32, ptr %4, align 8, !tbaa !7
  %i.c = add i32 %i.b, %2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.015 = phi i32 [ %i.a, %bb.b ], [ %3, %bb.a ]  ; 3 uses
  %.0 = phi i32 [ %i.c, %bb.b ], [ %2, %bb.a ]    ; 3 uses
  %i.d = and i32 %.015, 8291
  %6 = or i32 %i.d, %5
  %or.cond.not = icmp eq i32 %6, 0
  %i.e = or i32 %.015, 16
  %spec.select = select i1 %or.cond.not, i32 %i.e, i32 %.015 ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.h = getelementptr i8, ptr %i.g, i64 260      ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !109
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !109
  %.not.i = icmp ugt i64 %1, 4294967295
  %i.k = icmp ugt i32 %spec.select, 65535
  %or.cond13.i = or i1 %.not.i, %i.k
  br i1 %or.cond13.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %.0, 32767
  %i.m = icmp ne ptr %4, null
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = shl nuw i64 %1, 32
  %i.o = shl nuw i32 %spec.select, 16
  %i.p = zext i32 %i.o to i64
  %i.q = or disjoint i64 %i.n, %i.p
  %i.r = shl nuw nsw i32 %.0, 1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = or disjoint i64 %i.q, %i.s
  %i.u = or disjoint i64 %i.t, 1
  %i.v = inttoptr i64 %i.u to ptr
  br label %vm_ci_new_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.w = tail call ptr @rb_vm_ci_lookup(i64 noundef %1, i32 noundef %spec.select, i32 noundef %.0, ptr noundef %4) #37
  br label %vm_ci_new_.exit

vm_ci_new_.exit:                                  ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.w, %bb.f ], [ %i.v, %bb.e ] ; 3 uses
  %i.x = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.y = icmp eq ptr %.0.i, null
  %i.z = and i64 %i.x, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %rb_obj_written.exit, label %bb.g

bb.g:                                             ; preds = %vm_ci_new_.exit
  %i.ac = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.ac, i64 noundef %i.x) #37
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %vm_ci_new_.exit, %bb.g
  ret ptr %.0.i
}

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #4

declare void @rb_iseq_insns_info_encode_positions(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @calc_sp_depth(i32 noundef %0, i32 %.24.val, ptr nofree readonly captures(none) %.40.val) unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %.24.val to i64
  %i.b = getelementptr i8, ptr @comptime_insn_stack_increase_dispatch.t, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !20    ; 2 uses
  %.not.i.i = icmp eq i8 %i.c, -127
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i8 %i.c to i64
  br label %comptime_insn_stack_increase.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %.24.val, label %bb.d [
    i32 23, label %bb.e
    i32 25, label %bb.h
    i32 27, label %bb.l
    i32 31, label %bb.o
    i32 34, label %bb.t
    i32 37, label %bb.w
    i32 41, label %bb.z
    i32 43, label %bb.ac
    i32 44, label %bb.ae
    i32 45, label %bb.ag
    i32 46, label %bb.ai
    i32 55, label %bb.al
    i32 56, label %bb.ao
    i32 57, label %bb.ar
    i32 65, label %bb.au
    i32 66, label %bb.ax
    i32 67, label %bb.bb
    i32 68, label %bb.be
    i32 69, label %bb.bh
    i32 77, label %comptime_insn_stack_increase.exit
    i32 100, label %bb.bk
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = load i64, ptr %.40.val, align 8, !tbaa !36 ; 3 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = ashr i64 %i.e, 1
  br label %rb_num2long_inline.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.h = tail call i64 @rb_num2long(i64 noundef %i.e) #37
  br label %rb_num2long_inline.exit.i.i

rb_num2long_inline.exit.i.i:                      ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i64 [ %i.g, %bb.f ], [ %i.h, %bb.g ]
  %i.i = sub i64 1, %.0.i.i.i
  br label %comptime_insn_stack_increase.exit

bb.h:                                             ; preds = %bb.c
  %i.j = load i64, ptr %.40.val, align 8, !tbaa !36 ; 2 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %rb_num2long_inline.exit36.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i64 @rb_num2long(i64 noundef %i.j) #37 ; 0 uses
  br label %rb_num2long_inline.exit36.i.i

rb_num2long_inline.exit36.i.i:                    ; preds = %bb.i, %bb.h
  %i.m = getelementptr i8, ptr %.40.val, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rb_num2long_inline.exit36.i.i
  %i.p = ashr i64 %i.n, 1
  br label %rb_num2long_inline.exit38.i.i

bb.k:                                             ; preds = %rb_num2long_inline.exit36.i.i
  %i.q = tail call i64 @rb_num2long(i64 noundef %i.n) #37
  br label %rb_num2long_inline.exit38.i.i

rb_num2long_inline.exit38.i.i:                    ; preds = %bb.k, %bb.j
  %.0.i37.i.i = phi i64 [ %i.p, %bb.j ], [ %i.q, %bb.k ]
  %i.r = sub i64 1, %.0.i37.i.i
  br label %comptime_insn_stack_increase.exit

bb.l:                                             ; preds = %bb.c
  %i.s = load i64, ptr %.40.val, align 8, !tbaa !36 ; 3 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.u = ashr i64 %i.s, 1
  br label %rb_num2long_inline.exit40.i.i

bb.n:                                             ; preds = %bb.l
  %i.v = tail call i64 @rb_num2long(i64 noundef %i.s) #37
  br label %rb_num2long_inline.exit40.i.i

rb_num2long_inline.exit40.i.i:                    ; preds = %bb.n, %bb.m
  %.0.i39.i.i = phi i64 [ %i.u, %bb.m ], [ %i.v, %bb.n ]
  %i.w = sub i64 1, %.0.i39.i.i
  br label %comptime_insn_stack_increase.exit

bb.o:                                             ; preds = %bb.c
  %i.x = load i64, ptr %.40.val, align 8, !tbaa !36 ; 3 uses
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.z = ashr i64 %i.x, 1
  br label %rb_num2long_inline.exit42.i.i

bb.q:                                             ; preds = %bb.o
  %i.aa = tail call i64 @rb_num2long(i64 noundef %i.x) #37
  br label %rb_num2long_inline.exit42.i.i

rb_num2long_inline.exit42.i.i:                    ; preds = %bb.q, %bb.p
  %.0.i41.i.i = phi i64 [ %i.z, %bb.p ], [ %i.aa, %bb.q ]
  %i.ab = getelementptr i8, ptr %.40.val, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !36 ; 3 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rb_num2long_inline.exit42.i.i
  %i.ae = ashr i64 %i.ac, 1
  br label %rb_num2long_inline.exit44.i.i

bb.s:                                             ; preds = %rb_num2long_inline.exit42.i.i
  %i.af = tail call i64 @rb_num2long(i64 noundef %i.ac) #37
  br label %rb_num2long_inline.exit44.i.i

rb_num2long_inline.exit44.i.i:                    ; preds = %bb.s, %bb.r
  %.0.i43.i.i = phi i64 [ %i.ae, %bb.r ], [ %i.af, %bb.s ]
  %i.ag = add i64 %.0.i41.i.i, -1
  %i.ah = and i64 %.0.i43.i.i, 1
  %i.ai = add i64 %i.ag, %i.ah
  br label %comptime_insn_stack_increase.exit

bb.t:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %.40.val, align 8, !tbaa !36 ; 3 uses
  %i.ak = trunc i64 %i.aj to i1
  br i1 %i.ak, label %bb.u, label %bb.v

end_hunk_1
begin_hunk_2_@compile_super:ISEQ_COMPILE_DATA.exit198
bb.v:                                             ; preds = %bb.u, %rbimpl_intern_const.exit
  %.sink314 = phi ptr [ %i.fw, %bb.u ], [ %i.fr, %rbimpl_intern_const.exit ] ; 3 uses
  %i.fx = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.fy = getelementptr i8, ptr %.sink314, i64 16
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !34
  %i.fz = getelementptr i8, ptr %i.fx, i64 8
  store ptr %.sink314, ptr %i.fz, align 8, !tbaa !35
  store ptr %.sink314, ptr %i.e, align 8, !tbaa !11
  %i.ga = load i32, ptr %i.al, align 8, !tbaa !220
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph276, label %._crit_edge277

.lr.ph276:                                        ; preds = %bb.v
  %i.gc = getelementptr i8, ptr %i.al, i64 16
  %i.gd = getelementptr i8, ptr %i.ag, i64 24
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph276, %get_local_var_idx.exit226
  %indvars.iv = phi i64 [ 0, %.lr.ph276 ], [ %indvars.iv.next, %get_local_var_idx.exit226 ] ; 2 uses
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !227
  %i.gf = getelementptr [8 x i8], ptr %i.ge, i64 %indvars.iv
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !36 ; 2 uses
  %i.gh = load ptr, ptr %i.ah, align 8, !tbaa !43
  %i.gi = getelementptr i8, ptr %i.gh, i64 176
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !275
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !43 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 240
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !175 ; 2 uses
  %.not.i.i215 = icmp eq i32 %i.gn, 0
  br i1 %.not.i.i215, label %get_dyna_var_idx_at_raw.exit.thread.i221, label %.lr.ph.i.i216

.lr.ph.i.i216:                                    ; preds = %bb.w
  %i.go = getelementptr i8, ptr %i.gl, i64 144
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !188
  %wide.trip.count.i.i217 = zext i32 %i.gn to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.i216
  %indvars.iv.i.i218 = phi i64 [ 0, %.lr.ph.i.i216 ], [ %indvars.iv.next.i.i219, %bb.y ] ; 3 uses
  %i.gq = getelementptr [8 x i8], ptr %i.gp, i64 %indvars.iv.i.i218
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !36
  %i.gs = icmp eq i64 %i.gr, %i.gg
  br i1 %i.gs, label %get_dyna_var_idx_at_raw.exit.i225, label %bb.y

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next.i.i219 = add nuw nsw i64 %indvars.iv.i.i218, 1 ; 2 uses
  %exitcond.not.i.i220 = icmp eq i64 %indvars.iv.next.i.i219, %wide.trip.count.i.i217
  br i1 %exitcond.not.i.i220, label %get_dyna_var_idx_at_raw.exit.thread.i221, label %bb.x, !llvm.loop !1027

get_dyna_var_idx_at_raw.exit.i225:                ; preds = %bb.x
  %i.gt = trunc nuw i64 %indvars.iv.i.i218 to i32 ; 3 uses
  %i.gu = icmp slt i32 %i.gt, 0
  br i1 %i.gu, label %get_dyna_var_idx_at_raw.exit.thread.i221, label %get_local_var_idx.exit226

get_dyna_var_idx_at_raw.exit.thread.i221:         ; preds = %bb.y, %get_dyna_var_idx_at_raw.exit.i225, %bb.w
  %.07.i8.i222 = phi i32 [ %i.gt, %get_dyna_var_idx_at_raw.exit.i225 ], [ -1, %bb.w ], [ -1, %bb.y ] ; 2 uses
  %i.gv = load ptr, ptr %i.gd, align 8, !tbaa !20
  %i.gw = getelementptr i8, ptr %i.gv, i64 128
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !21
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %i.ag, i32 noundef %i.gx, ptr noundef nonnull @.str.146, i32 noundef %.07.i8.i222)
  br label %get_local_var_idx.exit226

get_local_var_idx.exit226:                        ; preds = %get_dyna_var_idx_at_raw.exit.i225, %get_dyna_var_idx_at_raw.exit.thread.i221
  %.07.i9.i224 = phi i32 [ %.07.i8.i222, %get_dyna_var_idx_at_raw.exit.thread.i221 ], [ %i.gt, %get_dyna_var_idx_at_raw.exit.i225 ]
  %i.gy = sub i32 %i.ev, %.07.i9.i224
  %i.gz = load i64, ptr %2, align 8, !tbaa !176
  %i.ha = lshr i64 %i.gz, 15
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = load i32, ptr %i.fa, align 8, !tbaa !278
  %i.hd = call i64 @rb_id2sym(i64 noundef %i.gg) #37
  %i.he = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.hb, i32 noundef %i.hc, i32 noundef 19, i32 noundef 1, i64 noundef %i.hd) ; 3 uses
  %i.hf = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.hg = getelementptr i8, ptr %i.he, i64 16
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !34
  %i.hh = getelementptr i8, ptr %i.hf, i64 8
  store ptr %i.he, ptr %i.hh, align 8, !tbaa !35
  store ptr %i.he, ptr %i.e, align 8, !tbaa !11
  call fastcc void @iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef %i.gy, i32 noundef %.0.lcssa.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hi = load i32, ptr %i.al, align 8, !tbaa !220
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv.next, %i.hj
  br i1 %i.hk, label %bb.w, label %._crit_edge277.loopexit, !llvm.loop !1067

._crit_edge277.loopexit:                          ; preds = %get_local_var_idx.exit226
  %i.hl = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.hm = shl i32 %i.hl, 1
  %i.hn = or disjoint i32 %i.hm, 1
  %i.ho = sext i32 %i.hn to i64
  %i.hp = shl nsw i64 %i.ho, 1
  %i.hq = or disjoint i64 %i.hp, 1
  br label %._crit_edge277

._crit_edge277:                                   ; preds = %._crit_edge277.loopexit, %bb.v
  %.1175.lcssa = phi i64 [ 3, %bb.v ], [ %i.hq, %._crit_edge277.loopexit ]
  %i.hr = load i64, ptr %2, align 8, !tbaa !176
  %i.hs = lshr i64 %i.hr, 15
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = load i32, ptr %i.fa, align 8, !tbaa !278
  %i.hv = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.ht, i32 noundef %i.hu, i64 noundef 167, i64 noundef %.1175.lcssa, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.hw = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hv, i64 16
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !34
  %i.hy = getelementptr i8, ptr %i.hw, i64 8
  store ptr %i.hv, ptr %i.hy, align 8, !tbaa !35
  store ptr %i.hv, ptr %i.e, align 8, !tbaa !11
  %i.hz = or i32 %i.er, 2112
  store i32 %i.hz, ptr %i.a, align 4, !tbaa !7
  br label %bb.ab

bb.z:                                             ; preds = %bb.r
  %i.ia = and i16 %i.es, 32
  %.not185 = icmp eq i16 %i.ia, 0
  br i1 %.not185, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ib = getelementptr i8, ptr %i.ai, i64 240
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !175
  %i.id = getelementptr i8, ptr %i.al, i64 12
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !225
  %i.if = sub i32 %i.ic, %i.ie
  call fastcc void @iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef %i.if, i32 noundef %.0.lcssa.i)
  %i.ig = add i32 %.4, 1
  %i.ih = or i32 %i.er, 64
  store i32 %i.ih, ptr %i.a, align 4, !tbaa !7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.d, %._crit_edge277, %bb.aa, %bb.z
  %.2172 = phi i1 [ %i.ae, %bb.d ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %._crit_edge277 ]
  %.6 = phi i32 [ %i.q, %bb.d ], [ %.4, %bb.z ], [ %i.ig, %bb.aa ], [ %i.ew, %._crit_edge277 ] ; 2 uses
  %i.ii = icmp eq ptr %i.i, null
  %or.cond = select i1 %.2172, i1 %i.ii, i1 false
  br i1 %or.cond, label %bb.ac, label %iseq_set_use_block.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ij = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ik = getelementptr i8, ptr %i.ij, i64 176
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !275
  %i.im = getelementptr i8, ptr %i.il, i64 16
  %.val = load ptr, ptr %i.im, align 8, !tbaa !43 ; 2 uses
  %i.in = getelementptr i8, ptr %.val, i64 16     ; 2 uses
  %i.io = load i16, ptr %i.in, align 8            ; 2 uses
  %i.ip = and i16 %i.io, 4096
  %.not.i231 = icmp eq i16 %i.ip, 0
  br i1 %.not.i231, label %bb.ad, label %iseq_set_use_block.exit

bb.ad:                                            ; preds = %bb.ac
  %i.iq = or disjoint i16 %i.io, 4096
  store i16 %i.iq, ptr %i.in, align 8
  %i.ir = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !232
  %i.is = call zeroext i1 @rb_warning_category_enabled_p(i32 noundef 4) #37
  br i1 %i.is, label %iseq_set_use_block.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.it = getelementptr i8, ptr %.val, i64 80
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !234
  %i.iv = call i64 @rb_intern_str(i64 noundef %i.iu) #37
  %i.iw = getelementptr i8, ptr %i.ir, i64 1304
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !235
  %i.iy = call i32 @rb_set_insert(ptr noundef %i.ix, i64 noundef %i.iv) #37 ; 0 uses
  br label %iseq_set_use_block.exit

iseq_set_use_block.exit:                          ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.iz = load i32, ptr %i.a, align 4, !tbaa !7
  %i.ja = icmp eq i32 %4, 42
  %spec.select195.v = select i1 %i.ja, i32 772, i32 260
  %spec.select195 = or i32 %i.iz, %spec.select195.v
  store i32 %spec.select195, ptr %i.a, align 4, !tbaa !7
  %i.jb = load i64, ptr %2, align 8, !tbaa !176
  %i.jc = lshr i64 %i.jb, 15
  %i.jd = trunc i64 %i.jc to i32
  %i.je = getelementptr i8, ptr %2, i64 24        ; 3 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !278
  %i.jg = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.jd, i32 noundef %i.jf, i32 noundef 18, i32 noundef 0, ptr noundef null) ; 5 uses
  %i.jh = getelementptr i8, ptr %1, i64 24        ; 7 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !11 ; 2 uses
  %i.jj = getelementptr i8, ptr %i.jg, i64 16
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !34
  %i.jk = getelementptr i8, ptr %i.ji, i64 8
  store ptr %i.jg, ptr %i.jk, align 8, !tbaa !35
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !11
  %i.jl = load ptr, ptr %i.j, align 8, !tbaa !62  ; 2 uses
  %.not.i235 = icmp eq ptr %i.jl, null
  br i1 %.not.i235, label %APPEND_LIST.exit, label %bb.af

bb.af:                                            ; preds = %iseq_set_use_block.exit
  %i.jm = getelementptr i8, ptr %i.jg, i64 8
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !35
  %i.jn = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.jo = getelementptr i8, ptr %i.jn, i64 16
  store ptr %i.jg, ptr %i.jo, align 8, !tbaa !34
  %i.jp = load ptr, ptr %i.e, align 8, !tbaa !11
  store ptr %i.jp, ptr %i.jh, align 8, !tbaa !11
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %iseq_set_use_block.exit, %bb.af
  %i.jq = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.jr = load ptr, ptr %i.b, align 8, !tbaa !1058 ; 4 uses
  %i.js = icmp ne ptr %i.i, null
  %6 = zext i1 %i.js to i32
  %.not.i236 = icmp eq ptr %i.jr, null
  br i1 %.not.i236, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %APPEND_LIST.exit
  %i.jt = or i32 %i.jq, 32
  %i.ju = load i32, ptr %i.jr, align 8, !tbaa !7
  %i.jv = add i32 %i.ju, %.6
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %APPEND_LIST.exit
  %.015.i = phi i32 [ %i.jt, %bb.ag ], [ %i.jq, %APPEND_LIST.exit ] ; 3 uses
  %.0.i237 = phi i32 [ %i.jv, %bb.ag ], [ %.6, %APPEND_LIST.exit ] ; 3 uses
  %i.jw = and i32 %.015.i, 8291
  %7 = or i32 %i.jw, %6
  %or.cond.not.i = icmp eq i32 %7, 0
  %i.jx = or i32 %.015.i, 16
  %spec.select.i = select i1 %or.cond.not.i, i32 %i.jx, i32 %.015.i ; 3 uses
  %i.jy = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.jz = getelementptr i8, ptr %i.jy, i64 260    ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !109
  %i.kb = add i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !109
  %i.kc = icmp ugt i32 %spec.select.i, 65535
  br i1 %i.kc, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kd = icmp ugt i32 %.0.i237, 32767
  %i.ke = icmp ne ptr %i.jr, null
  %or.cond.i.i = or i1 %i.ke, %i.kd
  br i1 %or.cond.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kf = shl nuw i32 %spec.select.i, 16
  %i.kg = shl nuw nsw i32 %.0.i237, 1
  %i.kh = or disjoint i32 %i.kf, %i.kg
  %i.ki = or disjoint i32 %i.kh, 1
  %i.kj = zext i32 %i.ki to i64
  %i.kk = inttoptr i64 %i.kj to ptr
  br label %vm_ci_new_.exit.i

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.kl = call ptr @rb_vm_ci_lookup(i64 noundef 0, i32 noundef %spec.select.i, i32 noundef %.0.i237, ptr noundef %i.jr) #37
  br label %vm_ci_new_.exit.i

vm_ci_new_.exit.i:                                ; preds = %bb.ak, %bb.aj
  %.0.i.i = phi ptr [ %i.kl, %bb.ak ], [ %i.kk, %bb.aj ] ; 3 uses
  %i.km = ptrtoint ptr %.0.i.i to i64             ; 5 uses
  %i.kn = icmp eq ptr %.0.i.i, null
  %i.ko = and i64 %i.km, 7
  %i.kp = icmp ne i64 %i.ko, 0
  %i.kq = or i1 %i.kn, %i.kp
  br i1 %i.kq, label %new_callinfo.exit, label %bb.al

bb.al:                                            ; preds = %vm_ci_new_.exit.i
  %i.kr = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.kr, i64 noundef %i.km) #37
  br label %new_callinfo.exit

new_callinfo.exit:                                ; preds = %vm_ci_new_.exit.i, %bb.al
  %.not.i.i238 = trunc i64 %i.km to i1
  br i1 %.not.i.i238, label %bb.am, label %bb.an

bb.am:                                            ; preds = %new_callinfo.exit
  %i.ks = trunc i64 %i.km to i32
  %i.kt = lshr i32 %i.ks, 16
  br label %vm_ci_flag.exit

bb.an:                                            ; preds = %new_callinfo.exit
  %i.ku = getelementptr i8, ptr %.0.i.i, i64 24
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !69
  %i.kw = trunc i64 %i.kv to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.am, %bb.an
  %.0.i239 = phi i32 [ %i.kt, %bb.am ], [ %i.kw, %bb.an ]
  %i.kx = and i32 %.0.i239, 8192
  %.not191 = icmp eq i32 %i.kx, 0
  %i.ky = load i64, ptr %2, align 8, !tbaa !176
  %i.kz = lshr i64 %i.ky, 15
  %i.la = trunc i64 %i.kz to i32
  %i.lb = load i32, ptr %i.je, align 8, !tbaa !278
  %i.lc = ptrtoint ptr %i.i to i64
  %. = select i1 %.not191, i32 67, i32 68
  %i.ld = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.la, i32 noundef %i.lb, i32 noundef %., i32 noundef 2, i64 noundef %i.km, i64 noundef %i.lc) ; 3 uses
  %i.le = load ptr, ptr %i.jh, align 8, !tbaa !11 ; 2 uses
  %i.lf = getelementptr i8, ptr %i.ld, i64 16
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !34
  %i.lg = getelementptr i8, ptr %i.le, i64 8
  store ptr %i.ld, ptr %i.lg, align 8, !tbaa !35
  store ptr %i.ld, ptr %i.jh, align 8, !tbaa !11
  %.not192 = icmp eq i32 %3, 0
  br i1 %.not192, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %vm_ci_flag.exit
  %i.lh = load i64, ptr %2, align 8, !tbaa !176
  %i.li = lshr i64 %i.lh, 15
  %i.lj = trunc i64 %i.li to i32
  %i.lk = load i32, ptr %i.je, align 8, !tbaa !278
  %i.ll = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.lj, i32 noundef %i.lk, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.lm = load ptr, ptr %i.jh, align 8, !tbaa !11 ; 2 uses
  %i.ln = getelementptr i8, ptr %i.ll, i64 16
  store ptr %i.lm, ptr %i.ln, align 8, !tbaa !34
  %i.lo = getelementptr i8, ptr %i.lm, i64 8
  store ptr %i.ll, ptr %i.lo, align 8, !tbaa !35
  store ptr %i.ll, ptr %i.jh, align 8, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %bb.a, %vm_ci_flag.exit, %bb.ao
  %.1 = phi i32 [ 1, %vm_ci_flag.exit ], [ 1, %bb.ao ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 2) i32 @compile_array(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !176   ; 3 uses
  %i.a = trunc i64 %.val to i32
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 127                        ; 2 uses
  switch i32 %i.c, label %nd_line.exit190 [
    i32 44, label %bb.b
    i32 43, label %.critedge185
  ]

bb.b:                                             ; preds = %bb.a
  %.not183 = icmp eq i32 %3, 0
  br i1 %.not183, label %nd_line.exit, label %.loopexit274

nd_line.exit:                                     ; preds = %bb.b
  %i.d = lshr i64 %.val, 15
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr i8, ptr %2, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !278
  %i.h = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.g, i32 noundef 27, i32 noundef 1, i64 noundef 1) ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !34
  %i.l = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.h, ptr %i.l, align 8, !tbaa !35
  store ptr %i.h, ptr %i.i, align 8, !tbaa !11
  br label %.loopexit274

nd_line.exit190:                                  ; preds = %bb.a
  %i.m = lshr i64 %.val, 15
  %i.n = trunc i64 %i.m to i32
  %i.o = tail call ptr @ruby_node_name(i32 noundef %i.c) #37
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.n, ptr noundef nonnull @.str.189, ptr noundef %i.o)
  br label %.loopexit274

.critedge185:                                     ; preds = %bb.a
  %.not170 = icmp eq i32 %3, 0
  br i1 %.not170, label %.lr.ph313, label %.lr.ph

.lr.ph313:                                        ; preds = %.critedge185
  %i.p = zext i1 %4 to i8
  %i.q = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.r = getelementptr i8, ptr %2, i64 24         ; 8 uses
  %i.s = getelementptr i8, ptr %1, i64 24         ; 16 uses
  %i.t = ptrtoint ptr %0 to i64
  br label %.backedge

.lr.ph:                                           ; preds = %.critedge185, %iseq_compile_each.exit
  %.0153282 = phi ptr [ %i.z, %iseq_compile_each.exit ], [ %2, %.critedge185 ] ; 2 uses
  %i.u = getelementptr i8, ptr %.0153282, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !941  ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %iseq_compile_each.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.x = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %i.v, i32 noundef %3), !inline_history !174 ; 0 uses
  br label %iseq_compile_each.exit

iseq_compile_each.exit:                           ; preds = %.lr.ph, %bb.c
  %i.y = getelementptr i8, ptr %.0153282, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !943  ; 2 uses
  %.not182 = icmp eq ptr %i.z, null
  br i1 %.not182, label %.loopexit274, label %.lr.ph, !llvm.loop !1068

.loopexit:                                        ; preds = %bb.s, %rb_obj_written.exit
  %.5164.lcssa = phi i8 [ %.0159310, %rb_obj_written.exit ], [ %.7166, %bb.s ] ; 2 uses
  %.5158.lcssa = phi ptr [ %.1154311, %rb_obj_written.exit ], [ %i.fy, %bb.s ] ; 2 uses
  %.4152.lcssa = phi i32 [ %.0148312, %rb_obj_written.exit ], [ %.6, %bb.s ] ; 3 uses
  %.not171 = icmp eq ptr %.5158.lcssa, null
  br i1 %.not171, label %._crit_edge314, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.loopexit, %.loopexit.thread
  %.0148312.be = phi i32 [ %.4152.lcssa, %.loopexit ], [ 0, %.loopexit.thread ]
  %.1154311.be = phi ptr [ %.5158.lcssa, %.loopexit ], [ %.2155.lcssa, %.loopexit.thread ]
  %.0159310.be = phi i8 [ %.5164.lcssa, %.loopexit ], [ 0, %.loopexit.thread ]
  br label %.backedge, !llvm.loop !1069

.loopexit.thread:                                 ; preds = %bb.h, %bb.g
  %.not171351 = icmp eq ptr %.2155.lcssa, null
  br i1 %.not171351, label %.loopexit274, label %.backedge.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph313
  %.0148312 = phi i32 [ 0, %.lr.ph313 ], [ %.0148312.be, %.backedge.backedge ] ; 4 uses
  %.1154311 = phi ptr [ %2, %.lr.ph313 ], [ %.1154311.be, %.backedge.backedge ] ; 6 uses
  %.0159310 = phi i8 [ %i.p, %.lr.ph313 ], [ %.0159310.be, %.backedge.backedge ] ; 3 uses
  %i.aa = getelementptr i8, ptr %.1154311, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !941
  %.val187 = load i64, ptr %i.ab, align 8, !tbaa !176
  %i.ac = trunc i64 %.val187 to i32
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = and i32 %i.ad, 127
  switch i32 %i.ae, label %.lr.ph305.preheader [
    i32 101, label %.preheader
    i32 68, label %.preheader
    i32 109, label %.preheader
    i32 111, label %.preheader
    i32 59, label %.preheader
    i32 60, label %.preheader
    i32 61, label %.preheader
end_hunk_2
begin_hunk_3_@compile_array:bb.a

.thread268:                                       ; preds = %bb.o, %bb.p
  %i.eo = load i64, ptr %2, align 8, !tbaa !176
  %i.ep = lshr i64 %i.eo, 15
  %i.eq = trunc i64 %i.ep to i32
  %i.er = load i32, ptr %i.r, align 8, !tbaa !278
  %i.es = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.eq, i32 noundef %i.er, i32 noundef 28, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.et = load ptr, ptr %i.s, align 8, !tbaa !11  ; 2 uses
  %i.eu = getelementptr i8, ptr %i.es, i64 16
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !34
  %i.ev = getelementptr i8, ptr %i.et, i64 8
  store ptr %i.es, ptr %i.ev, align 8, !tbaa !35
  store ptr %i.es, ptr %i.s, align 8, !tbaa !11
  br label %.loopexit274

keyword_node_p.exit.thread:                       ; preds = %.lr.ph305
  %i.ew = icmp eq ptr %i.da, null
  br i1 %i.ew, label %ISEQ_COMPILE_DATA.exit.i234, label %keyword_node_p.exit.thread.thread

ISEQ_COMPILE_DATA.exit.i234:                      ; preds = %keyword_node_p.exit.thread
  %i.ex = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.ey = getelementptr i8, ptr %i.ex, i64 128
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !21 ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i234
  %i.fb = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !174
  %i.fc = tail call i64 @rb_fix2int(i64 noundef %i.fb) #37, !inline_history !174
  %i.fd = trunc i64 %i.fc to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %ISEQ_COMPILE_DATA.exit.i234
  %.0.i236 = phi i32 [ %i.fd, %bb.q ], [ %i.ez, %ISEQ_COMPILE_DATA.exit.i234 ]
  %i.fe = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i236, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !174 ; 3 uses
  %i.ff = load ptr, ptr %i.s, align 8, !tbaa !11  ; 2 uses
  %i.fg = getelementptr i8, ptr %i.fe, i64 16
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !34
  %i.fh = getelementptr i8, ptr %i.ff, i64 8
  store ptr %i.fe, ptr %i.fh, align 8, !tbaa !35
  store ptr %i.fe, ptr %i.s, align 8, !tbaa !11
  br label %iseq_compile_each.exit237

keyword_node_p.exit.thread.thread:                ; preds = %keyword_node_p.exit, %bb.i, %keyword_node_p.exit.thread
  %i.fi = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %i.da, i32 noundef 0), !inline_history !174 ; 0 uses
  br label %iseq_compile_each.exit237

iseq_compile_each.exit237:                        ; preds = %bb.r, %keyword_node_p.exit.thread.thread
  %i.fj = add i32 %.4152303, 1                    ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, 255
  br i1 %i.fk, label %.sink.split382, label %bb.s

.sink.split382:                                   ; preds = %iseq_compile_each.exit237
  %i.fl = trunc nuw i8 %.5164301 to i1
  %i.fm = load i64, ptr %2, align 8, !tbaa !176
  %i.fn = lshr i64 %i.fm, 15
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = load i32, ptr %i.r, align 8, !tbaa !278
  %i.fq = shl nuw i32 %i.fj, 1
  %i.fr = or disjoint i32 %i.fq, 1
  %i.fs = zext i32 %i.fr to i64
  %.391 = select i1 %i.fl, i32 27, i32 34
  %i.ft = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.fo, i32 noundef %i.fp, i32 noundef %.391, i32 noundef 1, i64 noundef %i.fs) ; 3 uses
  %i.fu = load ptr, ptr %i.s, align 8, !tbaa !11  ; 2 uses
  %i.fv = getelementptr i8, ptr %i.ft, i64 16
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !34
  %i.fw = getelementptr i8, ptr %i.fu, i64 8
  store ptr %i.ft, ptr %i.fw, align 8, !tbaa !35
  store ptr %i.ft, ptr %i.s, align 8, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %.sink.split382, %iseq_compile_each.exit237
  %.7166 = phi i8 [ %.5164301, %iseq_compile_each.exit237 ], [ 0, %.sink.split382 ] ; 2 uses
  %.6 = phi i32 [ %i.fj, %iseq_compile_each.exit237 ], [ 0, %.sink.split382 ] ; 2 uses
  %i.fx = add i32 %.4147304, -1                   ; 2 uses
  %i.fy = load ptr, ptr %i.cx, align 8, !tbaa !943 ; 2 uses
  %.not178 = icmp eq i32 %i.fx, 0
  br i1 %.not178, label %.loopexit, label %.lr.ph305, !llvm.loop !1072

._crit_edge314:                                   ; preds = %.loopexit
  %.not172 = icmp eq i32 %.4152.lcssa, 0
  br i1 %.not172, label %.loopexit274, label %bb.t

bb.t:                                             ; preds = %._crit_edge314
  %i.fz = trunc nuw i8 %.5164.lcssa to i1
  %i.ga = load i64, ptr %2, align 8, !tbaa !176
  %i.gb = lshr i64 %i.ga, 15
  %i.gc = trunc i64 %i.gb to i32                  ; 2 uses
  %i.gd = getelementptr i8, ptr %2, i64 24
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !278 ; 2 uses
  %i.gf = sext i32 %.4152.lcssa to i64
  %i.gg = shl nsw i64 %i.gf, 1
  %i.gh = or disjoint i64 %i.gg, 1                ; 2 uses
  %i.gi = getelementptr i8, ptr %1, i64 24        ; 4 uses
  br i1 %i.fz, label %nd_line.exit246, label %nd_line.exit249

nd_line.exit246:                                  ; preds = %bb.t
  %i.gj = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.gc, i32 noundef %i.ge, i32 noundef 27, i32 noundef 1, i64 noundef %i.gh) ; 3 uses
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !11 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gj, i64 16
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !34
  %i.gm = getelementptr i8, ptr %i.gk, i64 8
  store ptr %i.gj, ptr %i.gm, align 8, !tbaa !35
  store ptr %i.gj, ptr %i.gi, align 8, !tbaa !11
  br label %.loopexit274

nd_line.exit249:                                  ; preds = %bb.t
  %i.gn = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.gc, i32 noundef %i.ge, i32 noundef 34, i32 noundef 1, i64 noundef %i.gh) ; 3 uses
  %i.go = load ptr, ptr %i.gi, align 8, !tbaa !11 ; 2 uses
  %i.gp = getelementptr i8, ptr %i.gn, i64 16
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !34
  %i.gq = getelementptr i8, ptr %i.go, i64 8
  store ptr %i.gn, ptr %i.gq, align 8, !tbaa !35
  store ptr %i.gn, ptr %i.gi, align 8, !tbaa !11
  br label %.loopexit274

.loopexit274:                                     ; preds = %iseq_compile_each.exit, %.loopexit.thread, %.thread268, %nd_line.exit190, %nd_line.exit246, %nd_line.exit249, %._crit_edge314, %bb.b, %nd_line.exit
  %.4 = phi i32 [ -1, %nd_line.exit190 ], [ 0, %bb.b ], [ 1, %._crit_edge314 ], [ 0, %nd_line.exit ], [ 1, %.thread268 ], [ 1, %nd_line.exit246 ], [ 1, %nd_line.exit249 ], [ 1, %.loopexit.thread ], [ 1, %iseq_compile_each.exit ]
  ret i32 %.4
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 2) i32 @compile_hash(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %5 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 11 uses
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = getelementptr i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1073 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val283 = load i64, ptr %i.c, align 8, !tbaa !176 ; 2 uses
  %i.d = trunc i64 %.val283 to i32
  %i.e = lshr i32 %i.d, 8
  %i.f = and i32 %i.e, 127                        ; 2 uses
  switch i32 %i.f, label %nd_line.exit286 [
    i32 44, label %bb.c
    i32 43, label %.critedge279
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not277 = icmp eq i32 %4, 0
  br i1 %.not277, label %nd_line.exit, label %.loopexit463

nd_line.exit:                                     ; preds = %bb.c
  %i.g = load i64, ptr %2, align 8, !tbaa !176
  %i.h = lshr i64 %i.g, 15
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !278
  %i.l = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.k, i32 noundef 37, i32 noundef 1, i64 noundef 1) ; 3 uses
  %i.m = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = getelementptr i8, ptr %i.l, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !34
  %i.p = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.l, ptr %i.p, align 8, !tbaa !35
  store ptr %i.l, ptr %i.m, align 8, !tbaa !11
  br label %.loopexit463

nd_line.exit286:                                  ; preds = %bb.b
  %i.q = lshr i64 %.val283, 15
  %i.r = trunc i64 %i.q to i32
  %i.s = tail call ptr @ruby_node_name(i32 noundef %i.f) #37
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.r, ptr noundef nonnull @.str.190, ptr noundef %i.s)
  br label %.loopexit463

.critedge279:                                     ; preds = %bb.b
  %.not256 = icmp eq i32 %4, 0
  br i1 %.not256, label %bb.e, label %.preheader462

.preheader462:                                    ; preds = %.critedge279, %iseq_compile_each.exit
  %.0230464 = phi ptr [ %i.y, %iseq_compile_each.exit ], [ %i.c, %.critedge279 ] ; 2 uses
  %i.t = getelementptr i8, ptr %.0230464, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !941  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %iseq_compile_each.exit, label %bb.d

bb.d:                                             ; preds = %.preheader462
  %i.w = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %i.u, i32 noundef %4), !inline_history !174 ; 0 uses
  br label %iseq_compile_each.exit

iseq_compile_each.exit:                           ; preds = %.preheader462, %bb.d
  %i.x = getelementptr i8, ptr %.0230464, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !943  ; 2 uses
  %.not276 = icmp eq ptr %i.y, null
  br i1 %.not276, label %.loopexit463, label %.preheader462, !llvm.loop !1074

bb.e:                                             ; preds = %.critedge279
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %5, ptr %i.z, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 19 uses
  %i.ab = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = getelementptr i8, ptr %1, i64 24        ; 52 uses
  %i.ae = getelementptr i8, ptr %2, i64 24        ; 25 uses
  %i.af = ptrtoint ptr %0 to i64
  %6 = icmp ne i32 %3, 0                          ; 2 uses
  br label %.backedge

.loopexit:                                        ; preds = %bb.ar, %rb_obj_written.exit
  %.5244.lcssa = phi i32 [ %.0239497, %rb_obj_written.exit ], [ %.7, %bb.ar ] ; 2 uses
  %.4237.lcssa = phi i32 [ %.0233498, %rb_obj_written.exit ], [ %.6, %bb.ar ] ; 4 uses
  %.5.lcssa = phi ptr [ %.1231499, %rb_obj_written.exit ], [ %i.ns, %bb.ar ] ; 2 uses
  %.not257 = icmp eq ptr %.5.lcssa, null
  br i1 %.not257, label %bb.as, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.loopexit, %.loopexit.thread
  %.1231499.be = phi ptr [ %.5.lcssa, %.loopexit ], [ %.2.lcssa, %.loopexit.thread ]
  %.0233498.be = phi i32 [ %.4237.lcssa, %.loopexit ], [ 0, %.loopexit.thread ]
  %.0239497.be = phi i32 [ %.5244.lcssa, %.loopexit ], [ 0, %.loopexit.thread ]
  br label %.backedge, !llvm.loop !1075

.loopexit.thread:                                 ; preds = %bb.x, %bb.y
  %.not257558 = icmp eq ptr %.2.lcssa, null
  br i1 %.not257558, label %.thread, label %.backedge.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.e
  %.1231499 = phi ptr [ %i.c, %bb.e ], [ %.1231499.be, %.backedge.backedge ] ; 6 uses
  %.0233498 = phi i32 [ 0, %bb.e ], [ %.0233498.be, %.backedge.backedge ] ; 6 uses
  %.0239497 = phi i32 [ 1, %bb.e ], [ %.0239497.be, %.backedge.backedge ] ; 3 uses
  %i.ag = getelementptr i8, ptr %.1231499, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !941 ; 2 uses
  %.not.i289 = icmp eq ptr %i.ah, null
  br i1 %.not.i289, label %.lr.ph493.preheader, label %bb.f

bb.f:                                             ; preds = %.backedge
  %.val5.i = load i64, ptr %i.ah, align 8, !tbaa !176
  %i.ai = trunc i64 %.val5.i to i32
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = and i32 %i.aj, 127
  switch i32 %i.ak, label %.lr.ph493.preheader [
    i32 101, label %bb.g
    i32 68, label %bb.g
    i32 109, label %bb.g
    i32 111, label %bb.g
    i32 59, label %bb.g
    i32 60, label %bb.g
    i32 61, label %bb.g
    i32 62, label %bb.g
    i32 95, label %bb.g
    i32 96, label %bb.g
    i32 97, label %bb.g
    i32 63, label %bb.g
    i32 110, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = getelementptr i8, ptr %.1231499, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !943 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !941
  %.val.i = load i64, ptr %i.ao, align 8, !tbaa !176
  %i.ap = trunc i64 %.val.i to i32
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = and i32 %i.aq, 127
  switch i32 %i.ar, label %.lr.ph493.preheader [
    i32 101, label %.preheader
    i32 68, label %.preheader
    i32 109, label %.preheader
    i32 111, label %.preheader
    i32 59, label %.preheader
    i32 60, label %.preheader
    i32 61, label %.preheader
    i32 62, label %.preheader
    i32 95, label %.preheader
    i32 96, label %.preheader
    i32 97, label %.preheader
    i32 63, label %static_literal_node_pair_p.exit
    i32 110, label %static_literal_node_pair_p.exit
  ]

static_literal_node_pair_p.exit:                  ; preds = %bb.g, %bb.g
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.at = getelementptr i8, ptr %i.as, i64 152
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.av = load i16, ptr %i.au, align 4
  %i.aw = and i16 %i.av, 192
  %.not500 = icmp eq i16 %i.aw, 64
  br i1 %.not500, label %.preheader, label %.lr.ph493.preheader

.preheader:                                       ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %static_literal_node_pair_p.exit
  %.0246.in467 = getelementptr i8, ptr %i.am, i64 48
  %.0246468 = load ptr, ptr %.0246.in467, align 8, !tbaa !943 ; 2 uses
  %.not501 = icmp eq ptr %.0246468, null
  br i1 %.not501, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %static_literal_node_pair_p.exit294.thread445
  %.0246470 = phi ptr [ %.0246, %static_literal_node_pair_p.exit294.thread445 ], [ %.0246468, %.preheader ] ; 2 uses
  %.0247469 = phi i32 [ %i.bo, %static_literal_node_pair_p.exit294.thread445 ], [ 1, %.preheader ] ; 5 uses
  %i.ax = getelementptr i8, ptr %.0246470, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !941 ; 2 uses
  %.not.i290 = icmp eq ptr %i.ay, null
  br i1 %.not.i290, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %.val5.i291 = load i64, ptr %i.ay, align 8, !tbaa !176
  %i.az = trunc i64 %.val5.i291 to i32
  %i.ba = lshr i32 %i.az, 8
  %i.bb = and i32 %i.ba, 127
  switch i32 %i.bb, label %.critedge [
    i32 101, label %bb.i
    i32 68, label %bb.i
    i32 109, label %bb.i
    i32 111, label %bb.i
    i32 59, label %bb.i
    i32 60, label %bb.i
    i32 61, label %bb.i
    i32 62, label %bb.i
    i32 95, label %bb.i
    i32 96, label %bb.i
    i32 97, label %bb.i
    i32 63, label %bb.i
    i32 110, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.bc = getelementptr i8, ptr %.0246470, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !943 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !941
  %.val.i292 = load i64, ptr %i.bf, align 8, !tbaa !176
  %i.bg = trunc i64 %.val.i292 to i32
  %i.bh = lshr i32 %i.bg, 8
  %i.bi = and i32 %i.bh, 127
  switch i32 %i.bi, label %.critedge [
    i32 101, label %static_literal_node_pair_p.exit294.thread445
    i32 68, label %static_literal_node_pair_p.exit294.thread445
    i32 109, label %static_literal_node_pair_p.exit294.thread445
    i32 111, label %static_literal_node_pair_p.exit294.thread445
    i32 59, label %static_literal_node_pair_p.exit294.thread445
    i32 60, label %static_literal_node_pair_p.exit294.thread445
    i32 61, label %static_literal_node_pair_p.exit294.thread445
    i32 62, label %static_literal_node_pair_p.exit294.thread445
    i32 95, label %static_literal_node_pair_p.exit294.thread445
    i32 96, label %static_literal_node_pair_p.exit294.thread445
    i32 97, label %static_literal_node_pair_p.exit294.thread445
    i32 63, label %static_literal_node_pair_p.exit294
    i32 110, label %static_literal_node_pair_p.exit294
  ]

static_literal_node_pair_p.exit294:               ; preds = %bb.i, %bb.i
  %i.bj = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.bk = getelementptr i8, ptr %i.bj, i64 152
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42
  %i.bm = load i16, ptr %i.bl, align 4
  %i.bn = and i16 %i.bm, 192
  %.not460 = icmp eq i16 %i.bn, 64
  br i1 %.not460, label %static_literal_node_pair_p.exit294.thread445, label %.critedge

static_literal_node_pair_p.exit294.thread445:     ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %static_literal_node_pair_p.exit294
  %i.bo = add i32 %.0247469, 1                    ; 2 uses
  %.0246.in = getelementptr i8, ptr %i.bd, i64 48
  %.0246 = load ptr, ptr %.0246.in, align 8, !tbaa !943 ; 2 uses
  %.not502 = icmp eq ptr %.0246, null
  br i1 %.not502, label %.critedge, label %.lr.ph, !llvm.loop !1076

.critedge:                                        ; preds = %static_literal_node_pair_p.exit294, %static_literal_node_pair_p.exit294.thread445, %bb.h, %.lr.ph, %bb.i, %.preheader
  %.0247.lcssa = phi i32 [ 1, %.preheader ], [ %.0247469, %bb.i ], [ %.0247469, %.lr.ph ], [ %.0247469, %bb.h ], [ %i.bo, %static_literal_node_pair_p.exit294.thread445 ], [ %.0247469, %static_literal_node_pair_p.exit294 ] ; 6 uses
  %.lcssa = phi i1 [ false, %.preheader ], [ true, %bb.i ], [ true, %.lr.ph ], [ true, %bb.h ], [ false, %static_literal_node_pair_p.exit294.thread445 ], [ true, %static_literal_node_pair_p.exit294 ]
  %i.bp = icmp eq i32 %.0239497, 0                ; 3 uses
  %i.bq = icmp ne i32 %.0233498, 0
  %or.cond.not264 = select i1 %i.bp, i1 true, i1 %i.bq
  %or.cond3 = or i1 %or.cond.not264, %.lcssa
  %i.br = icmp slt i32 %.0247.lcssa, 2048
  %or.cond5.not = select i1 %or.cond3, i1 %i.br, i1 false
  br i1 %or.cond5.not, label %rb_obj_written.exit, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.bs = sext i32 %.0247.lcssa to i64
  %i.bt = call i64 @rb_ary_hidden_new(i64 noundef %i.bs) #37 ; 2 uses
  %.not266483 = icmp eq i32 %.0247.lcssa, 0
  br i1 %.not266483, label %._crit_edge, label %.lr.ph486

.lr.ph486:                                        ; preds = %bb.j, %bb.n
  %.2485 = phi ptr [ %i.cq, %bb.n ], [ %.1231499, %bb.j ] ; 2 uses
  %.1248484 = phi i32 [ %i.cn, %bb.n ], [ %.0247.lcssa, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.bu = getelementptr i8, ptr %.2485, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !941
  %i.bw = call fastcc i64 @static_literal_value(ptr noundef %i.bv, ptr noundef %0) ; 5 uses
  store i64 %i.bw, ptr %i.a, align 16, !tbaa !36
  %i.bx = icmp eq i64 %i.bw, 0
  %i.by = and i64 %i.bw, 7
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = or i1 %i.bx, %i.bz
  br i1 %i.ca, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph486
  call void @rb_obj_freeze_inline(i64 noundef %i.bw) #37
  %i.cb = call i64 @rb_obj_set_shareable(i64 noundef %i.bw) #37 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph486
  %i.cc = getelementptr i8, ptr %.2485, i64 48    ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !943
  %i.ce = getelementptr i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !941
end_hunk_3
begin_hunk_4_@compile_hash:bb.a
  %i.ia = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.ib = shl nuw i32 %i.hp, 1
  %i.ic = or disjoint i32 %i.ib, 1
  %i.id = zext i32 %i.ic to i64
  %i.ie = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.hz, i32 noundef %i.ia, i32 noundef 37, i32 noundef 1, i64 noundef %i.id)
  br label %bb.ag

nd_line.exit356:                                  ; preds = %bb.ac
  %i.if = load i64, ptr %2, align 8, !tbaa !176
  %i.ig = lshr i64 %i.if, 15
  %i.ih = trunc i64 %i.ig to i32
  %i.ii = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.ij = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ih, i32 noundef %i.ii, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.ik = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.il = getelementptr i8, ptr %i.ij, i64 16
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !34
  %i.im = getelementptr i8, ptr %i.ik, i64 8
  store ptr %i.ij, ptr %i.im, align 8, !tbaa !35
  store ptr %i.ij, ptr %i.ad, align 8, !tbaa !11
  %i.in = load i64, ptr %2, align 8, !tbaa !176
  %i.io = lshr i64 %i.in, 15
  %i.ip = trunc i64 %i.io to i32
  %i.iq = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.ir = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.ip, i32 noundef %i.iq, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 5 uses
  %i.is = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.it = getelementptr i8, ptr %i.ir, i64 16
  store ptr %i.is, ptr %i.it, align 8, !tbaa !34
  %i.iu = getelementptr i8, ptr %i.is, i64 8
  store ptr %i.ir, ptr %i.iu, align 8, !tbaa !35
  store ptr %i.ir, ptr %i.ad, align 8, !tbaa !11
  %i.iv = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %.not.i358 = icmp eq ptr %i.iv, null
  br i1 %.not.i358, label %nd_line.exit362, label %bb.af

bb.af:                                            ; preds = %nd_line.exit356
  %i.iw = getelementptr i8, ptr %i.ir, i64 8
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !35
  %i.ix = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.iy = getelementptr i8, ptr %i.ix, i64 16
  store ptr %i.ir, ptr %i.iy, align 8, !tbaa !34
  %i.iz = load ptr, ptr %i.z, align 8, !tbaa !11
  store ptr %i.iz, ptr %i.ad, align 8, !tbaa !11
  br label %nd_line.exit362

nd_line.exit362:                                  ; preds = %nd_line.exit356, %bb.af
  %i.ja = load i64, ptr %2, align 8, !tbaa !176
  %i.jb = lshr i64 %i.ja, 15
  %i.jc = trunc i64 %i.jb to i32
  %i.jd = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.je = add nuw i32 %.4237491, 3
  %i.jf = sext i32 %i.je to i64
  %i.jg = shl nsw i64 %i.jf, 1
  %i.jh = or disjoint i64 %i.jg, 1
  %i.ji = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.jc, i32 noundef %i.jd, i64 noundef 167, i64 noundef %i.jh, ptr noundef null, i64 noundef 1, ptr noundef null)
  br label %bb.ag

bb.ag:                                            ; preds = %nd_line.exit362, %APPEND_LIST.exit347
  %.sink582 = phi ptr [ %i.ji, %nd_line.exit362 ], [ %i.ie, %APPEND_LIST.exit347 ] ; 3 uses
  %i.jj = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.jk = getelementptr i8, ptr %.sink582, i64 16
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !34
  %i.jl = getelementptr i8, ptr %i.jj, i64 8
  store ptr %.sink582, ptr %i.jl, align 8, !tbaa !35
  store ptr %.sink582, ptr %i.ad, align 8, !tbaa !11
  store ptr %5, ptr %i.z, align 8, !tbaa !11
  store ptr null, ptr %i.aa, align 8, !tbaa !35
  br label %bb.ar

bb.ah:                                            ; preds = %.lr.ph493
  %.not271 = icmp eq i32 %.4237491, 0
  br i1 %.not271, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not272 = icmp eq i32 %.5244490, 0
  br i1 %.not272, label %nd_line.exit373, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jm = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %.not.i363 = icmp eq ptr %i.jm, null
  br i1 %.not.i363, label %APPEND_LIST.exit364, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jn = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 8
  store ptr %i.jm, ptr %i.jo, align 8, !tbaa !35
  %i.jp = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.jq = getelementptr i8, ptr %i.jp, i64 16
  store ptr %i.jn, ptr %i.jq, align 8, !tbaa !34
  %i.jr = load ptr, ptr %i.z, align 8, !tbaa !11
  store ptr %i.jr, ptr %i.ad, align 8, !tbaa !11
  br label %APPEND_LIST.exit364

APPEND_LIST.exit364:                              ; preds = %bb.ak, %bb.aj
  %i.js = load i64, ptr %2, align 8, !tbaa !176
  %i.jt = lshr i64 %i.js, 15
  %i.ju = trunc i64 %i.jt to i32
  %i.jv = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.jw = sext i32 %.4237491 to i64
  %i.jx = shl nsw i64 %i.jw, 1
  %i.jy = or disjoint i64 %i.jx, 1
  %i.jz = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ju, i32 noundef %i.jv, i32 noundef 37, i32 noundef 1, i64 noundef %i.jy)
  br label %bb.am

nd_line.exit373:                                  ; preds = %bb.ai
  %i.ka = load i64, ptr %2, align 8, !tbaa !176
  %i.kb = lshr i64 %i.ka, 15
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.ke = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.kc, i32 noundef %i.kd, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.kf = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.kg = getelementptr i8, ptr %i.ke, i64 16
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !34
  %i.kh = getelementptr i8, ptr %i.kf, i64 8
  store ptr %i.ke, ptr %i.kh, align 8, !tbaa !35
  store ptr %i.ke, ptr %i.ad, align 8, !tbaa !11
  %i.ki = load i64, ptr %2, align 8, !tbaa !176
  %i.kj = lshr i64 %i.ki, 15
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.km = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.kk, i32 noundef %i.kl, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 5 uses
  %i.kn = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.ko = getelementptr i8, ptr %i.km, i64 16
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !34
  %i.kp = getelementptr i8, ptr %i.kn, i64 8
  store ptr %i.km, ptr %i.kp, align 8, !tbaa !35
  store ptr %i.km, ptr %i.ad, align 8, !tbaa !11
  %i.kq = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %.not.i375 = icmp eq ptr %i.kq, null
  br i1 %.not.i375, label %nd_line.exit379, label %bb.al

bb.al:                                            ; preds = %nd_line.exit373
  %i.kr = getelementptr i8, ptr %i.km, i64 8
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !35
  %i.ks = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.kt = getelementptr i8, ptr %i.ks, i64 16
  store ptr %i.km, ptr %i.kt, align 8, !tbaa !34
  %i.ku = load ptr, ptr %i.z, align 8, !tbaa !11
  store ptr %i.ku, ptr %i.ad, align 8, !tbaa !11
  br label %nd_line.exit379

nd_line.exit379:                                  ; preds = %nd_line.exit373, %bb.al
  %i.kv = load i64, ptr %2, align 8, !tbaa !176
  %i.kw = lshr i64 %i.kv, 15
  %i.kx = trunc i64 %i.kw to i32
  %i.ky = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.kz = add i32 %.4237491, 1
  %i.la = sext i32 %i.kz to i64
  %i.lb = shl nsw i64 %i.la, 1
  %i.lc = or disjoint i64 %i.lb, 1
  %i.ld = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.kx, i32 noundef %i.ky, i64 noundef 167, i64 noundef %i.lc, ptr noundef null, i64 noundef 1, ptr noundef null)
  br label %bb.am

bb.am:                                            ; preds = %nd_line.exit379, %APPEND_LIST.exit364
  %.sink588 = phi ptr [ %i.ld, %nd_line.exit379 ], [ %i.jz, %APPEND_LIST.exit364 ] ; 3 uses
  %i.le = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.lf = getelementptr i8, ptr %.sink588, i64 16
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !34
  %i.lg = getelementptr i8, ptr %i.le, i64 8
  store ptr %.sink588, ptr %i.lg, align 8, !tbaa !35
  store ptr %.sink588, ptr %i.ad, align 8, !tbaa !11
  store ptr %5, ptr %i.z, align 8, !tbaa !11
  store ptr null, ptr %i.aa, align 8, !tbaa !35
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ah
  %.6245 = phi i32 [ 0, %bb.am ], [ %.5244490, %bb.ah ] ; 2 uses
  %i.lh = getelementptr i8, ptr %.5492, i64 48
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !943 ; 3 uses
  %i.lj = getelementptr i8, ptr %i.li, i64 32
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !941 ; 5 uses
  %.val282 = load i64, ptr %i.lk, align 8, !tbaa !176
  %i.ll = trunc i64 %.val282 to i32
  %i.lm = lshr i32 %i.ll, 8
  %i.ln = and i32 %i.lm, 127                      ; 2 uses
  %i.lo = icmp eq i32 %i.ln, 45
  br i1 %i.lo, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.lp = getelementptr i8, ptr %i.lk, i64 32
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !1073
  %.not273 = icmp eq ptr %i.lq, null
  %i.lr = icmp ne i32 %.6245, 0                   ; 3 uses
  %i.ls = getelementptr i8, ptr %i.li, i64 48
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !943
  %.not274 = icmp eq ptr %i.lt, null
  %i.lu = select i1 %.not274, i1 %i.lr, i1 false  ; 2 uses
  br i1 %.not273, label %.critedge281, label %.thread458

bb.ap:                                            ; preds = %bb.an
  %i.lv = icmp ne i32 %.6245, 0                   ; 3 uses
  %i.lw = getelementptr i8, ptr %i.li, i64 48
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !943
  %.not274457 = icmp eq ptr %i.lx, null
  %i.ly = select i1 %.not274457, i1 %i.lv, i1 false ; 2 uses
  %i.lz = icmp eq i32 %i.ln, 95
  br i1 %i.lz, label %.critedge281, label %.thread458

.critedge281:                                     ; preds = %bb.ao, %bb.ap
  %i.ma = phi i1 [ %i.lu, %bb.ao ], [ %i.ly, %bb.ap ]
  %i.mb = phi i1 [ %i.lr, %bb.ao ], [ %i.lv, %bb.ap ]
  %or.cond7 = and i1 %6, %i.ma
  br i1 %or.cond7, label %iseq_compile_each.exit385, label %bb.aq

iseq_compile_each.exit385:                        ; preds = %.critedge281
  %i.mc = call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %i.lk, i32 noundef 0), !inline_history !174 ; 0 uses
  br label %bb.ar

bb.aq:                                            ; preds = %.critedge281
  br i1 %i.mb, label %nd_line.exit388, label %bb.ar

nd_line.exit388:                                  ; preds = %bb.aq
  %i.md = load i64, ptr %2, align 8, !tbaa !176
  %i.me = lshr i64 %i.md, 15
  %i.mf = trunc i64 %i.me to i32
  %i.mg = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.mh = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.mf, i32 noundef %i.mg, i32 noundef 37, i32 noundef 1, i64 noundef 1) ; 3 uses
  %i.mi = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.mj = getelementptr i8, ptr %i.mh, i64 16
  store ptr %i.mi, ptr %i.mj, align 8, !tbaa !34
  %i.mk = getelementptr i8, ptr %i.mi, i64 8
  store ptr %i.mh, ptr %i.mk, align 8, !tbaa !35
  store ptr %i.mh, ptr %i.ad, align 8, !tbaa !11
  br label %bb.ar

.thread458:                                       ; preds = %bb.ao, %bb.ap
  %i.ml = phi i1 [ %i.lv, %bb.ap ], [ %i.lr, %bb.ao ]
  %i.mm = phi i1 [ %i.ly, %bb.ap ], [ %i.lu, %bb.ao ]
  %or.cond9 = and i1 %6, %i.mm
  br i1 %or.cond9, label %iseq_compile_each.exit394, label %nd_line.exit397

iseq_compile_each.exit394:                        ; preds = %.thread458
  %i.mn = call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %i.lk, i32 noundef 0), !inline_history !174 ; 0 uses
  br label %bb.ar

nd_line.exit397:                                  ; preds = %.thread458
  %i.mo = load i64, ptr %2, align 8, !tbaa !176
  %i.mp = lshr i64 %i.mo, 15
  %i.mq = trunc i64 %i.mp to i32
  %i.mr = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.ms = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.mq, i32 noundef %i.mr, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.mt = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.mu = getelementptr i8, ptr %i.ms, i64 16
  store ptr %i.mt, ptr %i.mu, align 8, !tbaa !34
  %i.mv = getelementptr i8, ptr %i.mt, i64 8
  store ptr %i.ms, ptr %i.mv, align 8, !tbaa !35
  store ptr %i.ms, ptr %i.ad, align 8, !tbaa !11
  %i.mw = load i64, ptr %2, align 8, !tbaa !176
  %i.mx = lshr i64 %i.mw, 15
  %i.my = trunc i64 %i.mx to i32                  ; 2 uses
  %i.mz = load i32, ptr %i.ae, align 8, !tbaa !278 ; 2 uses
  br i1 %i.ml, label %nd_line.exit400, label %nd_line.exit403

nd_line.exit400:                                  ; preds = %nd_line.exit397
  %i.na = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.my, i32 noundef %i.mz, i32 noundef 37, i32 noundef 1, i64 noundef 1)
  br label %nd_line.exit413

nd_line.exit403:                                  ; preds = %nd_line.exit397
  %i.nb = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.my, i32 noundef %i.mz, i32 noundef 42, i32 noundef 0, ptr noundef null)
  br label %nd_line.exit413

nd_line.exit413:                                  ; preds = %nd_line.exit403, %nd_line.exit400
  %.sink594 = phi ptr [ %i.nb, %nd_line.exit403 ], [ %i.na, %nd_line.exit400 ] ; 3 uses
  %i.nc = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.nd = getelementptr i8, ptr %.sink594, i64 16
  store ptr %i.nc, ptr %i.nd, align 8, !tbaa !34
  %i.ne = getelementptr i8, ptr %i.nc, i64 8
  store ptr %.sink594, ptr %i.ne, align 8, !tbaa !35
  store ptr %.sink594, ptr %i.ad, align 8, !tbaa !11
  %i.nf = call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.lk, i32 noundef 0), !inline_history !174 ; 0 uses
  %i.ng = load i64, ptr %2, align 8, !tbaa !176
  %i.nh = lshr i64 %i.ng, 15
  %i.ni = trunc i64 %i.nh to i32
  %i.nj = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.nk = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.ni, i32 noundef %i.nj, i64 noundef 168, i64 noundef 5, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.nl = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nk, i64 16
  store ptr %i.nl, ptr %i.nm, align 8, !tbaa !34
  %i.nn = getelementptr i8, ptr %i.nl, i64 8
  store ptr %i.nk, ptr %i.nn, align 8, !tbaa !35
  store ptr %i.nk, ptr %i.ad, align 8, !tbaa !11
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %nd_line.exit388, %iseq_compile_each.exit385, %nd_line.exit413, %iseq_compile_each.exit394, %bb.ag, %iseq_compile_each.exit345
  %.7 = phi i32 [ 0, %bb.ag ], [ %.5244490, %iseq_compile_each.exit345 ], [ 0, %iseq_compile_each.exit394 ], [ 0, %nd_line.exit413 ], [ 0, %iseq_compile_each.exit385 ], [ 0, %nd_line.exit388 ], [ 0, %bb.aq ] ; 2 uses
  %.6 = phi i32 [ 0, %bb.ag ], [ %i.hp, %iseq_compile_each.exit345 ], [ 0, %iseq_compile_each.exit394 ], [ 0, %nd_line.exit413 ], [ 0, %iseq_compile_each.exit385 ], [ 0, %nd_line.exit388 ], [ 0, %bb.aq ] ; 2 uses
  %i.no = add i32 %.4251489, -1                   ; 2 uses
  %i.np = getelementptr i8, ptr %.5492, i64 48
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !943
  %i.nr = getelementptr i8, ptr %i.nq, i64 48
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !943 ; 2 uses
  %.not269 = icmp eq i32 %i.no, 0
  br i1 %.not269, label %.loopexit, label %.lr.ph493, !llvm.loop !1078

bb.as:                                            ; preds = %.loopexit
  %.not258 = icmp eq i32 %.4237.lcssa, 0
  br i1 %.not258, label %.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not259 = icmp eq i32 %.5244.lcssa, 0
  br i1 %.not259, label %nd_line.exit424, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nt = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %.not.i414 = icmp eq ptr %i.nt, null
  br i1 %.not.i414, label %APPEND_LIST.exit415, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nu = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 8
  store ptr %i.nt, ptr %i.nv, align 8, !tbaa !35
  %i.nw = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.nx = getelementptr i8, ptr %i.nw, i64 16
  store ptr %i.nu, ptr %i.nx, align 8, !tbaa !34
  %i.ny = load ptr, ptr %i.z, align 8, !tbaa !11
  store ptr %i.ny, ptr %i.ad, align 8, !tbaa !11
  br label %APPEND_LIST.exit415

APPEND_LIST.exit415:                              ; preds = %bb.av, %bb.au
  %i.nz = load i64, ptr %2, align 8, !tbaa !176
  %i.oa = lshr i64 %i.nz, 15
  %i.ob = trunc i64 %i.oa to i32
  %i.oc = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.od = sext i32 %.4237.lcssa to i64
  %i.oe = shl nsw i64 %i.od, 1
  %i.of = or disjoint i64 %i.oe, 1
  %i.og = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ob, i32 noundef %i.oc, i32 noundef 37, i32 noundef 1, i64 noundef %i.of)
  br label %bb.ax

nd_line.exit424:                                  ; preds = %bb.at
  %i.oh = load i64, ptr %2, align 8, !tbaa !176
  %i.oi = lshr i64 %i.oh, 15
  %i.oj = trunc i64 %i.oi to i32
  %i.ok = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.ol = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.oj, i32 noundef %i.ok, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.om = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.on = getelementptr i8, ptr %i.ol, i64 16
  store ptr %i.om, ptr %i.on, align 8, !tbaa !34
  %i.oo = getelementptr i8, ptr %i.om, i64 8
  store ptr %i.ol, ptr %i.oo, align 8, !tbaa !35
  store ptr %i.ol, ptr %i.ad, align 8, !tbaa !11
  %i.op = load i64, ptr %2, align 8, !tbaa !176
  %i.oq = lshr i64 %i.op, 15
  %i.or = trunc i64 %i.oq to i32
  %i.os = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.ot = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.or, i32 noundef %i.os, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 5 uses
  %i.ou = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.ov = getelementptr i8, ptr %i.ot, i64 16
  store ptr %i.ou, ptr %i.ov, align 8, !tbaa !34
  %i.ow = getelementptr i8, ptr %i.ou, i64 8
  store ptr %i.ot, ptr %i.ow, align 8, !tbaa !35
  store ptr %i.ot, ptr %i.ad, align 8, !tbaa !11
  %i.ox = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %.not.i426 = icmp eq ptr %i.ox, null
  br i1 %.not.i426, label %nd_line.exit430, label %bb.aw

bb.aw:                                            ; preds = %nd_line.exit424
  %i.oy = getelementptr i8, ptr %i.ot, i64 8
  store ptr %i.ox, ptr %i.oy, align 8, !tbaa !35
  %i.oz = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.pa = getelementptr i8, ptr %i.oz, i64 16
  store ptr %i.ot, ptr %i.pa, align 8, !tbaa !34
  %i.pb = load ptr, ptr %i.z, align 8, !tbaa !11
  store ptr %i.pb, ptr %i.ad, align 8, !tbaa !11
  br label %nd_line.exit430

nd_line.exit430:                                  ; preds = %nd_line.exit424, %bb.aw
  %i.pc = load i64, ptr %2, align 8, !tbaa !176
  %i.pd = lshr i64 %i.pc, 15
  %i.pe = trunc i64 %i.pd to i32
  %i.pf = load i32, ptr %i.ae, align 8, !tbaa !278
  %i.pg = add i32 %.4237.lcssa, 1
  %i.ph = sext i32 %i.pg to i64
  %i.pi = shl nsw i64 %i.ph, 1
  %i.pj = or disjoint i64 %i.pi, 1
  %i.pk = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.pe, i32 noundef %i.pf, i64 noundef 167, i64 noundef %i.pj, ptr noundef null, i64 noundef 1, ptr noundef null)
  br label %bb.ax

bb.ax:                                            ; preds = %nd_line.exit430, %APPEND_LIST.exit415
  %.sink600 = phi ptr [ %i.pk, %nd_line.exit430 ], [ %i.og, %APPEND_LIST.exit415 ] ; 3 uses
  %i.pl = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.pm = getelementptr i8, ptr %.sink600, i64 16
  store ptr %i.pl, ptr %i.pm, align 8, !tbaa !34
  %i.pn = getelementptr i8, ptr %i.pl, i64 8
  store ptr %.sink600, ptr %i.pn, align 8, !tbaa !35
  store ptr %.sink600, ptr %i.ad, align 8, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %.loopexit.thread, %bb.ax, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.loopexit463

.loopexit463:                                     ; preds = %iseq_compile_each.exit, %nd_line.exit286, %bb.c, %nd_line.exit, %.thread
  %.1 = phi i32 [ -1, %nd_line.exit286 ], [ 0, %bb.c ], [ 1, %.thread ], [ 0, %nd_line.exit ], [ 1, %iseq_compile_each.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_return(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !46   ; 5 uses
  %i.d = getelementptr i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1079 ; 3 uses
  %i.f = and i32 %i.c, -2
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.b, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170  ; 3 uses
  %.not61157 = icmp eq ptr %i.i, null
  br i1 %.not61157, label %._crit_edge.loopexit, label %.lr.ph158

.lr.ph:                                           ; preds = %.lr.ph158
  %i.j = getelementptr i8, ptr %i.n, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 3 uses
  %.not61 = icmp eq ptr %i.k, null
  br i1 %.not61, label %._crit_edge.loopexit, label %.lr.ph158, !llvm.loop !1081

.lr.ph158:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.l = phi ptr [ %i.k, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
end_hunk_4
begin_hunk_5_@compile_dstr:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_node_dstr_string_val(ptr noundef nonnull %2) #37 ; 5 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !176
  %i.e = lshr i64 %i.d, 15
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr i8, ptr %2, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !278
  %i.i = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 21, i32 noundef 1, i64 noundef %i.c) ; 3 uses
  %i.j = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !34
  %i.m = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.i, ptr %i.m, align 8, !tbaa !35
  store ptr %i.i, ptr %i.j, align 8, !tbaa !11
  %i.n = tail call i64 @rb_obj_set_shareable(i64 noundef %i.c) #37 ; 0 uses
  %i.o = icmp eq i64 %i.c, 0
  %i.p = and i64 %i.c, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %rb_obj_written.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.s, i64 noundef %i.c) #37
  br label %rb_obj_written.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  store ptr %0, ptr %3, align 8, !tbaa !1089
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %1, ptr %i.t, align 8, !tbaa !1091
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 4, ptr %i.u, align 8, !tbaa !1092
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.x = call fastcc i32 @compile_dstr_fragments_0(ptr noundef %3, ptr noundef nonnull %2), !inline_history !1093
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %compile_dstr_fragments.exit.thread, label %bb.e

compile_dstr_fragments.exit.thread:               ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %rb_obj_written.exit

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.u, align 8, !tbaa !1092 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4
  br i1 %i.z, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr %i.w, align 8, !tbaa !1094
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %3, align 8, !tbaa !1089  ; 2 uses
  %i.ab = tail call i64 @rb_fstring(i64 noundef %i.y) #37 ; 4 uses
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !1091
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !1095 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %nd_line.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !176
  %i.af = lshr i64 %i.ae, 15
  %i.ag = trunc i64 %i.af to i32
  br label %nd_line.exit.i

nd_line.exit.i:                                   ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.ag, %bb.g ], [ -1, %bb.f ]
  %i.ah = getelementptr i8, ptr %i.ad, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !278
  %i.aj = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %i.aa, i32 noundef %.0.i.i, i32 noundef %i.ai, i32 noundef 19, i32 noundef 1, i64 noundef %i.ab) ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ac, i64 24     ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !11 ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !34
  %i.an = getelementptr i8, ptr %i.al, i64 8
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !35
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !11
  %i.ao = icmp eq i64 %i.ab, 0
  %i.ap = and i64 %i.ab, 7
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = or i1 %i.ao, %i.aq
  br i1 %i.ar, label %rb_obj_written.exit.i, label %bb.h

bb.h:                                             ; preds = %nd_line.exit.i
  %i.as = ptrtoint ptr %i.aa to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.as, i64 noundef %i.ab) #37
  br label %rb_obj_written.exit.i

rb_obj_written.exit.i:                            ; preds = %bb.h, %nd_line.exit.i
  %i.at = load i32, ptr %i.w, align 8, !tbaa !1094
  %i.au = add i32 %i.at, 1
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %rb_obj_written.exit.i
  %i.av = phi i32 [ %.pre, %._crit_edge ], [ %i.au, %rb_obj_written.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.aw = load i64, ptr %2, align 8, !tbaa !176
  %i.ax = lshr i64 %i.aw, 15
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr i8, ptr %2, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !278
  %i.bb = sext i32 %i.av to i64
  %i.bc = shl nsw i64 %i.bb, 1
  %i.bd = or disjoint i64 %i.bc, 1
  %i.be = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef 23, i32 noundef 1, i64 noundef %i.bd) ; 3 uses
  %i.bf = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !11 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.be, i64 16
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !34
  %i.bi = getelementptr i8, ptr %i.bg, i64 8
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !35
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !11
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %compile_dstr_fragments.exit.thread, %bb.c, %bb.b, %bb.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @new_insn_send(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef range(i64 1, 0) %6, ptr noundef %7) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  %i.d = tail call i64 @rb_size_mul_or_raise(i64 noundef 8, i64 noundef 2, i64 noundef %i.c) #37 ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr i8, ptr %i.f, i64 96       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37   ; 4 uses
  %i.i = icmp ugt i64 %i.d, 2147483646
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @rb_memerror() #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !7    ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = add nuw nsw i64 %i.d, %i.l
  %i.n = getelementptr i8, ptr %i.h, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7    ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = icmp samesign ugt i64 %i.m, %i.p
  br i1 %i.q, label %.preheader.i.i.i, label %compile_data_calloc2.exit

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.r = icmp samesign ugt i64 %i.d, %i.p
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.e
  %.027.i.i.i = phi i32 [ %i.t, %bb.e ], [ %i.o, %.preheader.i.i.i ] ; 2 uses
  %i.s = icmp ugt i32 %.027.i.i.i, 1073741822
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.t = shl nuw nsw i32 %.027.i.i.i, 1           ; 3 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = icmp ugt i64 %i.d, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !38

._crit_edge.i.i.i:                                ; preds = %bb.e, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.o, %.preheader.i.i.i ], [ %i.t, %bb.e ]
  %.lcssa.i.i.i = phi i64 [ %i.p, %.preheader.i.i.i ], [ %i.u, %bb.e ]
  %i.w = add nuw nsw i64 %.lcssa.i.i.i, 16
  %i.x = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.w, i64 noundef 1) #39 ; 6 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !37
  store ptr %i.x, ptr %i.g, align 8, !tbaa !37
  store ptr null, ptr %i.x, align 8, !tbaa !37
  %i.y = getelementptr i8, ptr %i.x, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !7
  %i.z = getelementptr i8, ptr %i.x, i64 12
  store i32 %.0.lcssa.i.i.i, ptr %i.z, align 4, !tbaa !7
  br label %compile_data_calloc2.exit

compile_data_calloc2.exit:                        ; preds = %bb.c, %._crit_edge.i.i.i
  %i.aa = phi i32 [ 0, %._crit_edge.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.022.i.i.i = phi ptr [ %i.x, %._crit_edge.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.022.i.i.i, i64 16
  %i.ac = getelementptr i8, ptr %.022.i.i.i, i64 8
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr i8, ptr %i.ab, i64 %i.ad  ; 4 uses
  %i.af = trunc nuw nsw i64 %i.d to i32
  %i.ag = add i32 %i.aa, %i.af
  store i32 %i.ag, ptr %i.ac, align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ae, i8 noundef 0, i64 noundef %i.d, i1 noundef false) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ah = tail call i64 @rb_fix2int(i64 noundef %4) #37
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  %i.aj = tail call i64 @rb_fix2int(i64 noundef %6) #37
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = icmp ne ptr %5, null                    ; 2 uses
  %8 = zext i1 %i.al to i32
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %compile_data_calloc2.exit
  %i.am = or i32 %i.ak, 32
  %i.an = load i32, ptr %7, align 8, !tbaa !7
  %i.ao = add i32 %i.an, %i.ai
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %compile_data_calloc2.exit
  %.015.i = phi i32 [ %i.am, %bb.f ], [ %i.ak, %compile_data_calloc2.exit ] ; 3 uses
  %.0.i = phi i32 [ %i.ao, %bb.f ], [ %i.ai, %compile_data_calloc2.exit ] ; 3 uses
  %i.ap = and i32 %.015.i, 8291
  %9 = or i32 %i.ap, %8
  %or.cond.not.i = icmp eq i32 %9, 0
  %i.aq = or i32 %.015.i, 16
  %spec.select.i = select i1 %or.cond.not.i, i32 %i.aq, i32 %.015.i ; 3 uses
  %i.ar = getelementptr i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !43
  %i.at = getelementptr i8, ptr %i.as, i64 260    ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !109
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !109
  %.not.i.i = icmp ugt i64 %3, 4294967295
  %i.aw = icmp ugt i32 %spec.select.i, 65535
  %or.cond13.i.i = or i1 %.not.i.i, %i.aw
  br i1 %or.cond13.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = icmp ugt i32 %.0.i, 32767
  %i.ay = icmp ne ptr %7, null
  %or.cond.i.i = or i1 %i.ay, %i.ax
  br i1 %or.cond.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = shl nuw i64 %3, 32
  %i.ba = shl nuw i32 %spec.select.i, 16
  %i.bb = zext i32 %i.ba to i64
  %i.bc = or disjoint i64 %i.az, %i.bb
  %i.bd = shl nuw nsw i32 %.0.i, 1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = or disjoint i64 %i.bc, %i.be
  %i.bg = or disjoint i64 %i.bf, 1
  %i.bh = inttoptr i64 %i.bg to ptr
  br label %vm_ci_new_.exit.i

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bi = tail call ptr @rb_vm_ci_lookup(i64 noundef %3, i32 noundef %spec.select.i, i32 noundef %.0.i, ptr noundef %7) #37
  br label %vm_ci_new_.exit.i

vm_ci_new_.exit.i:                                ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %i.bi, %bb.j ], [ %i.bh, %bb.i ] ; 4 uses
  %i.bj = ptrtoint ptr %.0.i.i to i64             ; 7 uses
  %i.bk = icmp eq ptr %.0.i.i, null
  %i.bl = and i64 %i.bj, 7
  %i.bm = icmp ne i64 %i.bl, 0                    ; 2 uses
  %i.bn = or i1 %i.bk, %i.bm
  br i1 %i.bn, label %new_callinfo.exit, label %bb.k

bb.k:                                             ; preds = %vm_ci_new_.exit.i
  %i.bo = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.bo, i64 noundef %i.bj) #37
  br label %new_callinfo.exit

new_callinfo.exit:                                ; preds = %vm_ci_new_.exit.i, %bb.k
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !36
  store i64 %i.bj, ptr %i.ae, align 8, !tbaa !36
  %i.bp = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.bq = getelementptr i8, ptr %i.ae, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !36
  %i.br = and i64 %i.bp, 7
  %.not26 = icmp eq i64 %i.br, 0
  %or.cond = and i1 %i.al, %.not26
  br i1 %or.cond, label %bb.l, label %rb_obj_written.exit

bb.l:                                             ; preds = %new_callinfo.exit
  %i.bs = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.bs, i64 noundef %i.bp) #37
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.l, %new_callinfo.exit
  %.not.i.i23 = trunc i64 %i.bj to i1
  br i1 %.not.i.i23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %rb_obj_written.exit
  %i.bt = trunc i64 %i.bj to i32
  %i.bu = lshr i32 %i.bt, 16
  br label %vm_ci_flag.exit

bb.n:                                             ; preds = %rb_obj_written.exit
  %i.bv = getelementptr i8, ptr %.0.i.i, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !69
  %i.bx = trunc i64 %i.bw to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.m, %bb.n
  %.0.i24 = phi i32 [ %i.bu, %bb.m ], [ %i.bx, %bb.n ]
  %i.by = and i32 %.0.i24, 8192
  %.not = icmp eq i32 %i.by, 0
  %. = select i1 %.not, i32 55, i32 56
  %i.bz = tail call fastcc ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %., i32 noundef 2, ptr noundef nonnull %i.ae)
  %i.ca = icmp eq ptr %.0.i.i, null
  %i.cb = or i1 %i.ca, %i.bm
  br i1 %i.cb, label %rb_obj_written.exit25, label %bb.o

bb.o:                                             ; preds = %vm_ci_flag.exit
  %i.cc = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.cc, i64 noundef %i.bj) #37
  br label %rb_obj_written.exit25

rb_obj_written.exit25:                            ; preds = %vm_ci_flag.exit, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store ptr %i.a, ptr %i.b, align 8, !tbaa !88
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #37, !srcloc !1096
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.ce = load volatile i64, ptr %i.cd, align 8, !tbaa !36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret ptr %i.bz
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_evstr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %iseq_compile_each.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %ISEQ_COMPILE_DATA.exit.i, label %iseq_compile_each.exit.thread.thread39

ISEQ_COMPILE_DATA.exit.i:                         ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr i8, ptr %i.c, i64 128
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i
  %i.g = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !174
  %i.h = tail call i64 @rb_fix2int(i64 noundef %i.g) #37, !inline_history !174
  %i.i = trunc i64 %i.h to i32
  br label %bb.d

iseq_compile_each.exit:                           ; preds = %bb.a
  %i.j = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !inline_history !174
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %iseq_compile_each.exit.thread.thread39, label %iseq_compile_each.exit.thread

iseq_compile_each.exit.thread:                    ; preds = %iseq_compile_each.exit
  %.not20 = icmp eq i32 %3, 0
  br i1 %.not20, label %.thread, label %iseq_compile_each.exit.thread.thread39

bb.d:                                             ; preds = %bb.c, %ISEQ_COMPILE_DATA.exit.i
  %.0.i = phi i32 [ %i.i, %bb.c ], [ %i.e, %ISEQ_COMPILE_DATA.exit.i ]
  %i.k = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !174 ; 3 uses
  %i.l = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !34
  %i.o = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.k, ptr %i.o, align 8, !tbaa !35
  store ptr %i.k, ptr %i.l, align 8, !tbaa !11
  br label %nd_line.exit32

.thread:                                          ; preds = %iseq_compile_each.exit.thread
  %i.p = tail call fastcc i32 @all_string_result_p(ptr noundef nonnull %2)
  %.not2141 = icmp eq i32 %i.p, 0
  br i1 %.not2141, label %.thread42, label %iseq_compile_each.exit.thread.thread39

.thread42:                                        ; preds = %.thread
  %i.q = load i64, ptr %2, align 8, !tbaa !176
  %i.r = lshr i64 %i.q, 15
  %i.s = trunc i64 %i.r to i32
  br label %nd_line.exit32

nd_line.exit32:                                   ; preds = %bb.d, %.thread42
  %.0.i23 = phi i32 [ %i.s, %.thread42 ], [ -1, %bb.d ]
  %i.t = getelementptr i8, ptr %2, i64 24         ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !278
  %i.v = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %.0.i23, i32 noundef %i.u, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.w = getelementptr i8, ptr %1, i64 24         ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11   ; 2 uses
  %i.y = getelementptr i8, ptr %i.v, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !34
  %i.z = getelementptr i8, ptr %i.x, i64 8
  store ptr %i.v, ptr %i.z, align 8, !tbaa !35
  store ptr %i.v, ptr %i.w, align 8, !tbaa !11
  %i.aa = load i64, ptr %2, align 8, !tbaa !176
  %i.ab = lshr i64 %i.aa, 15
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = load i32, ptr %i.t, align 8, !tbaa !278
  %i.ae = getelementptr i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ag = getelementptr i8, ptr %i.af, i64 260    ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !109
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !109
  %i.aj = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef 59, i32 noundef 1, i64 noundef 14504105869313) ; 3 uses
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !11  ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !34
  %i.am = getelementptr i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !35
  store ptr %i.aj, ptr %i.w, align 8, !tbaa !11
  %i.an = load i64, ptr %2, align 8, !tbaa !176
  %i.ao = lshr i64 %i.an, 15
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = load i32, ptr %i.t, align 8, !tbaa !278
  %i.ar = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef 24, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !11  ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !34
  %i.au = getelementptr i8, ptr %i.as, i64 8
  store ptr %i.ar, ptr %i.au, align 8, !tbaa !35
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !11
end_hunk_5
begin_hunk_6_@iseq_compile_pattern_each:nd_line.exit
  br i1 %i.cnu, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.lr.ph.i.i.i.i2049
  tail call void @rb_memerror() #38
  unreachable

bb.cu:                                            ; preds = %.lr.ph.i.i.i.i2049
  %i.cnv = shl nuw nsw i32 %.027.i.i.i.i2050, 1   ; 3 uses
  %i.cnw = icmp samesign ult i32 %.027.i.i.i.i2050, 24
  br i1 %i.cnw, label %.lr.ph.i.i.i.i2049, label %._crit_edge.i.i.loopexit.i.i2051, !llvm.loop !38

._crit_edge.i.i.loopexit.i.i2051:                 ; preds = %bb.cu
  %i.cnx = zext nneg i32 %i.cnv to i64
  br label %._crit_edge.i.i.i.i2044

._crit_edge.i.i.i.i2044:                          ; preds = %._crit_edge.i.i.loopexit.i.i2051, %.preheader.i.i.i.i2043
  %.0.lcssa.i.i.i.i2045 = phi i32 [ %i.cnq, %.preheader.i.i.i.i2043 ], [ %i.cnv, %._crit_edge.i.i.loopexit.i.i2051 ]
  %.lcssa.i.i.i.i2046 = phi i64 [ %i.cnr, %.preheader.i.i.i.i2043 ], [ %i.cnx, %._crit_edge.i.i.loopexit.i.i2051 ]
  %i.cny = add nuw nsw i64 %.lcssa.i.i.i.i2046, 16
  %i.cnz = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.cny, i64 noundef 1) #39 ; 6 uses
  store ptr %i.cnz, ptr %i.cnk, align 8, !tbaa !37
  store ptr %i.cnz, ptr %i.cnj, align 8, !tbaa !37
  store ptr null, ptr %i.cnz, align 8, !tbaa !37
  %i.coa = getelementptr i8, ptr %i.cnz, i64 8
  store i32 0, ptr %i.coa, align 8, !tbaa !7
  %i.cob = getelementptr i8, ptr %i.cnz, i64 12
  store i32 %.0.lcssa.i.i.i.i2045, ptr %i.cob, align 4, !tbaa !7
  br label %new_label_body.exit2052

new_label_body.exit2052:                          ; preds = %bb.cs, %._crit_edge.i.i.i.i2044
  %i.coc = phi i32 [ %i.cnm, %bb.cs ], [ 0, %._crit_edge.i.i.i.i2044 ] ; 2 uses
  %.022.i.i.i.i2042 = phi ptr [ %i.cnk, %bb.cs ], [ %i.cnz, %._crit_edge.i.i.i.i2044 ] ; 2 uses
  %i.cod = getelementptr i8, ptr %.022.i.i.i.i2042, i64 16
  %i.coe = getelementptr i8, ptr %.022.i.i.i.i2042, i64 8
  %i.cof = zext i32 %i.coc to i64
  %i.cog = getelementptr i8, ptr %i.cod, i64 %i.cof ; 9 uses
  %i.coh = add i32 %i.coc, 48
  store i32 %i.coh, ptr %i.coe, align 8, !tbaa !7
  store i32 1, ptr %i.cog, align 8, !tbaa !193
  %i.coi = getelementptr i8, ptr %i.cog, i64 8
  store ptr null, ptr %i.coi, align 8, !tbaa !194
  %i.coj = load ptr, ptr %i.cni, align 8, !tbaa !20
  %i.cok = getelementptr i8, ptr %i.coj, i64 132  ; 2 uses
  %i.col = load i32, ptr %i.cok, align 4, !tbaa !195 ; 2 uses
  %i.com = add i32 %i.col, 1
  store i32 %i.com, ptr %i.cok, align 4, !tbaa !195
  %i.con = getelementptr i8, ptr %i.cog, i64 24
  store i32 %i.col, ptr %i.con, align 8, !tbaa !94
  %i.coo = getelementptr i8, ptr %i.cog, i64 44   ; 2 uses
  %i.cop = load i8, ptr %i.coo, align 4
  %i.coq = and i8 %i.cop, -16
  store i8 %i.coq, ptr %i.coo, align 4
  %i.cor = getelementptr i8, ptr %i.cog, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.cor, align 4, !tbaa !7
  %.val13.i2053 = load ptr, ptr %i.cni, align 8, !tbaa !20
  %i.cos = getelementptr i8, ptr %.val13.i2053, i64 96 ; 2 uses
  %i.cot = load ptr, ptr %i.cos, align 8, !tbaa !37 ; 4 uses
  %i.cou = getelementptr i8, ptr %i.cot, i64 8
  %i.cov = load i32, ptr %i.cou, align 8, !tbaa !7 ; 2 uses
  %i.cow = zext i32 %i.cov to i64
  %i.cox = add nuw nsw i64 %i.cow, 48
  %i.coy = getelementptr i8, ptr %i.cot, i64 12
  %i.coz = load i32, ptr %i.coy, align 4, !tbaa !7 ; 4 uses
  %i.cpa = zext i32 %i.coz to i64                 ; 2 uses
  %i.cpb = icmp samesign ugt i64 %i.cox, %i.cpa
  br i1 %i.cpb, label %.preheader.i.i.i.i2056, label %nd_line.exit2068

.preheader.i.i.i.i2056:                           ; preds = %new_label_body.exit2052
  %i.cpc = icmp ult i32 %i.coz, 48
  br i1 %i.cpc, label %.lr.ph.i.i.i.i2062, label %._crit_edge.i.i.i.i2057

.lr.ph.i.i.i.i2062:                               ; preds = %.preheader.i.i.i.i2056, %bb.cw
  %.027.i.i.i.i2063 = phi i32 [ %i.cpe, %bb.cw ], [ %i.coz, %.preheader.i.i.i.i2056 ] ; 3 uses
  %i.cpd = icmp samesign ugt i32 %.027.i.i.i.i2063, 1073741822
  br i1 %i.cpd, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i2062
  tail call void @rb_memerror() #38
  unreachable

bb.cw:                                            ; preds = %.lr.ph.i.i.i.i2062
  %i.cpe = shl nuw nsw i32 %.027.i.i.i.i2063, 1   ; 3 uses
  %i.cpf = icmp samesign ult i32 %.027.i.i.i.i2063, 24
  br i1 %i.cpf, label %.lr.ph.i.i.i.i2062, label %._crit_edge.i.i.loopexit.i.i2064, !llvm.loop !38

._crit_edge.i.i.loopexit.i.i2064:                 ; preds = %bb.cw
  %i.cpg = zext nneg i32 %i.cpe to i64
  br label %._crit_edge.i.i.i.i2057

._crit_edge.i.i.i.i2057:                          ; preds = %._crit_edge.i.i.loopexit.i.i2064, %.preheader.i.i.i.i2056
  %.0.lcssa.i.i.i.i2058 = phi i32 [ %i.coz, %.preheader.i.i.i.i2056 ], [ %i.cpe, %._crit_edge.i.i.loopexit.i.i2064 ]
  %.lcssa.i.i.i.i2059 = phi i64 [ %i.cpa, %.preheader.i.i.i.i2056 ], [ %i.cpg, %._crit_edge.i.i.loopexit.i.i2064 ]
  %i.cph = add nuw nsw i64 %.lcssa.i.i.i.i2059, 16
  %i.cpi = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.cph, i64 noundef 1) #39 ; 6 uses
  store ptr %i.cpi, ptr %i.cot, align 8, !tbaa !37
  store ptr %i.cpi, ptr %i.cos, align 8, !tbaa !37
  store ptr null, ptr %i.cpi, align 8, !tbaa !37
  %i.cpj = getelementptr i8, ptr %i.cpi, i64 8
  store i32 0, ptr %i.cpj, align 8, !tbaa !7
  %i.cpk = getelementptr i8, ptr %i.cpi, i64 12
  store i32 %.0.lcssa.i.i.i.i2058, ptr %i.cpk, align 4, !tbaa !7
  br label %nd_line.exit2068

nd_line.exit2068:                                 ; preds = %new_label_body.exit2052, %._crit_edge.i.i.i.i2057
  %i.cpl = phi i32 [ %i.cov, %new_label_body.exit2052 ], [ 0, %._crit_edge.i.i.i.i2057 ] ; 2 uses
  %.022.i.i.i.i2055 = phi ptr [ %i.cot, %new_label_body.exit2052 ], [ %i.cpi, %._crit_edge.i.i.i.i2057 ] ; 2 uses
  %i.cpm = getelementptr i8, ptr %.022.i.i.i.i2055, i64 16
  %i.cpn = getelementptr i8, ptr %.022.i.i.i.i2055, i64 8
  %i.cpo = zext i32 %i.cpl to i64
  %i.cpp = getelementptr i8, ptr %i.cpm, i64 %i.cpo ; 9 uses
  %i.cpq = add i32 %i.cpl, 48
  store i32 %i.cpq, ptr %i.cpn, align 8, !tbaa !7
  store i32 1, ptr %i.cpp, align 8, !tbaa !193
  %i.cpr = getelementptr i8, ptr %i.cpp, i64 8
  store ptr null, ptr %i.cpr, align 8, !tbaa !194
  %i.cps = load ptr, ptr %i.cni, align 8, !tbaa !20
  %i.cpt = getelementptr i8, ptr %i.cps, i64 132  ; 2 uses
  %i.cpu = load i32, ptr %i.cpt, align 4, !tbaa !195 ; 2 uses
  %i.cpv = add i32 %i.cpu, 1
  store i32 %i.cpv, ptr %i.cpt, align 4, !tbaa !195
  %i.cpw = getelementptr i8, ptr %i.cpp, i64 24
  store i32 %i.cpu, ptr %i.cpw, align 8, !tbaa !94
  %i.cpx = getelementptr i8, ptr %i.cpp, i64 44   ; 2 uses
  %i.cpy = load i8, ptr %i.cpx, align 4
  %i.cpz = and i8 %i.cpy, -16
  store i8 %i.cpz, ptr %i.cpx, align 4
  %i.cqa = getelementptr i8, ptr %i.cpp, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.cqa, align 4, !tbaa !7
  %i.cqb = load i64, ptr %2, align 8, !tbaa !176
  %i.cqc = lshr i64 %i.cqb, 15
  %i.cqd = trunc i64 %i.cqc to i32
  %i.cqe = getelementptr i8, ptr %2, i64 24       ; 4 uses
  %i.cqf = load i32, ptr %i.cqe, align 8, !tbaa !278
  %i.cqg = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.cqd, i32 noundef %i.cqf, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.cqh = getelementptr i8, ptr %1, i64 24       ; 10 uses
  %i.cqi = load ptr, ptr %i.cqh, align 8, !tbaa !11 ; 2 uses
  %i.cqj = getelementptr i8, ptr %i.cqg, i64 16
  store ptr %i.cqi, ptr %i.cqj, align 8, !tbaa !34
  %i.cqk = getelementptr i8, ptr %i.cqi, i64 8
  store ptr %i.cqg, ptr %i.cqk, align 8, !tbaa !35
  store ptr %i.cqg, ptr %i.cqh, align 8, !tbaa !11
  %i.cql = getelementptr i8, ptr %2, i64 32
  %i.cqm = load ptr, ptr %i.cql, align 8, !tbaa !831
  %i.cqn = add i32 %7, 1
  %i.cqo = tail call fastcc i32 @iseq_compile_pattern_each(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.cqm, ptr noundef nonnull %i.cog, ptr noundef nonnull %i.cpp, i1 noundef zeroext %5, i1 noundef zeroext true, i32 noundef %i.cqn, i1 noundef zeroext %8)
  %.not = icmp eq i32 %i.cqo, 0
  br i1 %.not, label %.critedge1252, label %nd_line.exit2079

nd_line.exit2079:                                 ; preds = %nd_line.exit2068
  %i.cqp = load ptr, ptr %i.cqh, align 8, !tbaa !11 ; 2 uses
  %i.cqq = getelementptr i8, ptr %i.cog, i64 16
  store ptr %i.cqp, ptr %i.cqq, align 8, !tbaa !34
  %i.cqr = getelementptr i8, ptr %i.cqp, i64 8
  store ptr %i.cog, ptr %i.cqr, align 8, !tbaa !35
  store ptr %i.cog, ptr %i.cqh, align 8, !tbaa !11
  %i.cqs = load i64, ptr %2, align 8, !tbaa !176
  %i.cqt = lshr i64 %i.cqs, 15
  %i.cqu = trunc i64 %i.cqt to i32
  %i.cqv = load i32, ptr %i.cqe, align 8, !tbaa !278
  %i.cqw = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.cqu, i32 noundef %i.cqv, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.cqx = load ptr, ptr %i.cqh, align 8, !tbaa !11 ; 2 uses
  %i.cqy = getelementptr i8, ptr %i.cqw, i64 16
  store ptr %i.cqx, ptr %i.cqy, align 8, !tbaa !34
  %i.cqz = getelementptr i8, ptr %i.cqx, i64 8
  store ptr %i.cqw, ptr %i.cqz, align 8, !tbaa !35
  store ptr %i.cqw, ptr %i.cqh, align 8, !tbaa !11
  %i.cra = load i64, ptr %2, align 8, !tbaa !176
  %i.crb = lshr i64 %i.cra, 15
  %i.crc = trunc i64 %i.crb to i32
  %i.crd = load i32, ptr %i.cqe, align 8, !tbaa !278
  %i.cre = ptrtoint ptr %3 to i64
  %i.crf = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.crc, i32 noundef %i.crd, i32 noundef 72, i32 noundef 1, i64 noundef %i.cre) ; 3 uses
  %i.crg = load ptr, ptr %i.cqh, align 8, !tbaa !11 ; 2 uses
  %i.crh = getelementptr i8, ptr %i.crf, i64 16
  store ptr %i.crg, ptr %i.crh, align 8, !tbaa !34
  %i.cri = getelementptr i8, ptr %i.crg, i64 8
  store ptr %i.crf, ptr %i.cri, align 8, !tbaa !35
  store ptr %i.crf, ptr %i.cqh, align 8, !tbaa !11
  %i.crj = getelementptr i8, ptr %3, i64 40       ; 2 uses
  %i.crk = load i32, ptr %i.crj, align 8, !tbaa !273
  %i.crl = add i32 %i.crk, 1
  store i32 %i.crl, ptr %i.crj, align 8, !tbaa !273
  %i.crm = load i64, ptr %2, align 8, !tbaa !176
  %i.crn = lshr i64 %i.crm, 15
  %i.cro = trunc i64 %i.crn to i32
  %i.crp = load i32, ptr %i.cqe, align 8, !tbaa !278
  %i.crq = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.cro, i32 noundef %i.crp, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.crr = load ptr, ptr %i.cqh, align 8, !tbaa !11 ; 2 uses
  %i.crs = getelementptr i8, ptr %i.crq, i64 16
  store ptr %i.crr, ptr %i.crs, align 8, !tbaa !34
  %i.crt = getelementptr i8, ptr %i.crr, i64 8
  store ptr %i.crq, ptr %i.crt, align 8, !tbaa !35
  %i.cru = getelementptr i8, ptr %i.cpp, i64 16
  store ptr %i.crq, ptr %i.cru, align 8, !tbaa !34
  %i.crv = getelementptr i8, ptr %i.crq, i64 8
  store ptr %i.cpp, ptr %i.crv, align 8, !tbaa !35
  store ptr %i.cpp, ptr %i.cqh, align 8, !tbaa !11
  %i.crw = getelementptr i8, ptr %2, i64 40
  %i.crx = load ptr, ptr %i.crw, align 8, !tbaa !833
  %i.cry = tail call fastcc i32 @iseq_compile_pattern_each(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.crx, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext true, i32 noundef %7, i1 noundef zeroext %8)
  %.not1203.not = icmp eq i32 %i.cry, 0
  br i1 %.not1203.not, label %.critedge1252, label %bb.cx

nd_line.exit2083:                                 ; preds = %nd_line.exit
  %i.crz = lshr i64 %.pre, 15
  %i.csa = trunc i64 %i.crz to i32
  %i.csb = tail call ptr @ruby_node_name(i32 noundef %i.c) #37
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.csa, ptr noundef nonnull @.str.124, ptr noundef %i.csb)
  br label %.critedge1252

.sink.split:                                      ; preds = %nd_line.exit1930, %nd_line.exit1462, %nd_line.exit1709, %nd_line.exit1917, %nd_line.exit1939, %nd_line.exit1960, %nd_line.exit2008, %nd_line.exit2039
  %.sink2457 = phi ptr [ %4, %nd_line.exit2039 ], [ %3, %nd_line.exit2008 ], [ %3, %nd_line.exit1960 ], [ %3, %nd_line.exit1939 ], [ %4, %nd_line.exit1917 ], [ %4, %nd_line.exit1709 ], [ %4, %nd_line.exit1462 ], [ %4, %nd_line.exit1930 ]
  %i.csc = getelementptr i8, ptr %.sink2457, i64 40 ; 2 uses
  %i.csd = load i32, ptr %i.csc, align 8, !tbaa !273
  %i.cse = add i32 %i.csd, 1
  store i32 %i.cse, ptr %i.csc, align 8, !tbaa !273
  br label %bb.cx

bb.cx:                                            ; preds = %.sink.split, %nd_line.exit2079
  br label %.critedge1252

.critedge1252:                                    ; preds = %new_label_body.exit2128, %new_label_body.exit2096, %new_label_body.exit2112, %.critedge1255, %new_label_body.exit2160, %nd_line.exit1957, %nd_line.exit1954, %nd_line.exit2068, %bb.r, %nd_line.exit1377, %nd_line.exit2024, %nd_line.exit2027, %bb.cr, %iseq_compile_each.exit1969, %nd_line.exit1934, %iseq_compile_each.exit, %.loopexit, %nd_line.exit1882, %new_label_body.exit1516, %nd_line.exit1622, %nd_line.exit1604, %nd_line.exit2079, %bb.cx, %nd_line.exit2083
  %.19 = phi i32 [ 0, %nd_line.exit2083 ], [ 1, %bb.cx ], [ 0, %bb.r ], [ 0, %new_label_body.exit2112 ], [ 0, %new_label_body.exit1516 ], [ 0, %nd_line.exit2079 ], [ 0, %.loopexit ], [ 0, %nd_line.exit1934 ], [ 0, %nd_line.exit2068 ], [ 0, %iseq_compile_each.exit ], [ 0, %new_label_body.exit2160 ], [ 0, %nd_line.exit1604 ], [ 0, %nd_line.exit1622 ], [ 0, %nd_line.exit1882 ], [ 0, %.critedge1255 ], [ 0, %iseq_compile_each.exit1969 ], [ 0, %bb.cr ], [ 0, %nd_line.exit2027 ], [ 0, %nd_line.exit2024 ], [ 0, %new_label_body.exit2096 ], [ 0, %nd_line.exit1957 ], [ 0, %nd_line.exit1377 ], [ 0, %nd_line.exit1954 ], [ 0, %new_label_body.exit2128 ]
  ret i32 %.19
}

declare noalias ptr @rb_xmalloc_mul_add(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @iseq_compile_pattern_constant(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1133
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !176
  %i.d = lshr i64 %i.c, 15
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr i8, ptr %2, i64 24         ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !278
  %i.h = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.g, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 24         ; 12 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !34
  %i.l = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.h, ptr %i.l, align 8, !tbaa !35
  store ptr %i.h, ptr %i.i, align 8, !tbaa !11
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1133 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ISEQ_COMPILE_DATA.exit.i, label %iseq_compile_each.exit

ISEQ_COMPILE_DATA.exit.i:                         ; preds = %nd_line.exit
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = getelementptr i8, ptr %i.p, i64 128
  %i.r = load i32, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %iseq_compile_each.exit.thread

bb.b:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i
  %i.t = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !174
  %i.u = tail call i64 @rb_fix2int(i64 noundef %i.t) #37, !inline_history !174
  %i.v = trunc i64 %i.u to i32
  br label %iseq_compile_each.exit.thread

iseq_compile_each.exit.thread:                    ; preds = %ISEQ_COMPILE_DATA.exit.i, %bb.b
  %.0.i31 = phi i32 [ %i.v, %bb.b ], [ %i.r, %ISEQ_COMPILE_DATA.exit.i ]
  %i.w = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i31, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !174 ; 3 uses
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !34
  %i.z = getelementptr i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %i.z, align 8, !tbaa !35
  store ptr %i.w, ptr %i.i, align 8, !tbaa !11
  br label %bb.c

iseq_compile_each.exit:                           ; preds = %nd_line.exit
  %i.aa = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.m, i32 noundef 0), !inline_history !174
  %.not29 = icmp eq i32 %i.aa, 0
  br i1 %.not29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %iseq_compile_each.exit.thread, %iseq_compile_each.exit
  %i.ab = load i64, ptr %2, align 8, !tbaa !176
  %i.ac = lshr i64 %i.ab, 15
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %i.ae = load i32, ptr %i.f, align 8, !tbaa !278 ; 2 uses
  br i1 %4, label %nd_line.exit37, label %nd_line.exit40

nd_line.exit37:                                   ; preds = %bb.c
  %i.af = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef 41, i32 noundef 1, i64 noundef 5) ; 3 uses
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !34
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !35
  store ptr %i.af, ptr %i.i, align 8, !tbaa !11
  %i.aj = load i64, ptr %2, align 8, !tbaa !176
  %i.ak = lshr i64 %i.aj, 15
  %i.al = trunc i64 %i.ak to i32
  %i.am = load i32, ptr %i.f, align 8, !tbaa !278
  %i.an = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.al, i32 noundef %i.am, i32 noundef 49, i32 noundef 1, i64 noundef 5) ; 3 uses
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 16
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !34
  %i.aq = getelementptr i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !35
  store ptr %i.an, ptr %i.i, align 8, !tbaa !11
  %i.ar = add i32 %5, 3
  tail call fastcc void @iseq_compile_pattern_set_eqq_errmsg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.ar)
  br label %nd_line.exit43

nd_line.exit40:                                   ; preds = %bb.c
  %i.as = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef 49, i32 noundef 1, i64 noundef 5) ; 3 uses
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !34
  %i.av = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.as, ptr %i.av, align 8, !tbaa !35
  store ptr %i.as, ptr %i.i, align 8, !tbaa !11
  br label %nd_line.exit43

nd_line.exit43:                                   ; preds = %nd_line.exit40, %nd_line.exit37
  %i.aw = load i64, ptr %2, align 8, !tbaa !176
  %i.ax = lshr i64 %i.aw, 15
  %i.ay = trunc i64 %i.ax to i32
  %i.az = load i32, ptr %i.f, align 8, !tbaa !278
  %i.ba = ptrtoint ptr %3 to i64
  %i.bb = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef 74, i32 noundef 1, i64 noundef %i.ba) ; 3 uses
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !34
  %i.be = getelementptr i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !35
  store ptr %i.bb, ptr %i.i, align 8, !tbaa !11
  %i.bf = getelementptr i8, ptr %3, i64 40        ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !273
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !273
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %nd_line.exit43, %iseq_compile_each.exit
  %.0 = phi i32 [ 0, %iseq_compile_each.exit ], [ 1, %nd_line.exit43 ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @iseq_compile_array_deconstruct(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, i32 noundef %8, i1 noundef zeroext %9) unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq ptr %2, null                  ; 2 uses
  br i1 %9, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %nd_line.exit122, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load i64, ptr %2, align 8, !tbaa !176
  %i.b = lshr i64 %i.a, 15
  %i.c = trunc i64 %i.b to i32
  br label %nd_line.exit122

nd_line.exit122:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.c, %bb.c ], [ -1, %bb.b ]
  %i.d = getelementptr i8, ptr %2, i64 24         ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !278
  %i.f = sext i32 %8 to i64
  %i.g = shl nsw i64 %i.f, 1
  %i.h = or disjoint i64 %i.g, 1                  ; 2 uses
  %i.i = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.e, i32 noundef 44, i32 noundef 1, i64 noundef %i.h) ; 3 uses
  %i.j = getelementptr i8, ptr %1, i64 24         ; 13 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !34
  %i.m = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.i, ptr %i.m, align 8, !tbaa !35
  store ptr %i.i, ptr %i.j, align 8, !tbaa !11
  %i.n = load i64, ptr %2, align 8, !tbaa !176
  %i.o = lshr i64 %i.n, 15
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.d, align 8, !tbaa !278
  %i.r = ptrtoint ptr %3 to i64
  %i.s = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.p, i32 noundef %i.q, i32 noundef 75, i32 noundef 1, i64 noundef %i.r) ; 3 uses
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !34
  %i.v = getelementptr i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.v, align 8, !tbaa !35
  store ptr %i.s, ptr %i.j, align 8, !tbaa !11
  %i.w = getelementptr i8, ptr %3, i64 40         ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !273
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !273
  %i.z = load i64, ptr %2, align 8, !tbaa !176
  %i.aa = lshr i64 %i.z, 15
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = load i32, ptr %i.d, align 8, !tbaa !278
  %i.ad = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef 44, i32 noundef 1, i64 noundef %i.h) ; 3 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !11  ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !34
end_hunk_6
begin_hunk_7_@pm_compile_forwarding_super_node:bb.a
  %i.kd = and i16 %i.ka, 16
  %.not227 = icmp eq i16 %i.kd, 0
  br i1 %.not227, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ke = getelementptr i8, ptr %i.ff, i64 240    ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !175
  %i.kg = add i32 %.4, 1
  %i.kh = load i32, ptr %2, align 4, !tbaa !553
  %i.ki = load i32, ptr %i.cw, align 4, !tbaa !556
  %i.kj = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.kh, i32 noundef %i.ki, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.kk = load ptr, ptr %i.ez, align 8, !tbaa !11 ; 2 uses
  %i.kl = getelementptr i8, ptr %i.kj, i64 16
  store ptr %i.kk, ptr %i.kl, align 8, !tbaa !34
  %i.km = getelementptr i8, ptr %i.kk, i64 8
  store ptr %i.kj, ptr %i.km, align 8, !tbaa !35
  store ptr %i.kj, ptr %i.ez, align 8, !tbaa !11
  %i.kn = load i16, ptr %i.fo, align 8
  %i.ko = and i16 %i.kn, 32
  %.not229 = icmp eq i16 %i.ko, 0
  br i1 %.not229, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kp = load i32, ptr %i.ke, align 8, !tbaa !175
  %i.kq = getelementptr i8, ptr %i.kc, i64 12
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !225
  %i.ks = sub i32 %i.kp, %i.kr
  %i.kt = load i32, ptr %2, align 4, !tbaa !553
  %i.ku = load i32, ptr %i.cw, align 4, !tbaa !556
  call fastcc void @pm_iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef %7, i32 noundef %i.kt, i32 noundef %i.ku, i32 noundef %i.ks, i32 noundef %.0.lcssa.i)
  %i.kv = load i32, ptr %2, align 4, !tbaa !553
  %i.kw = load i32, ptr %i.cw, align 4, !tbaa !556
  %.pr.i = load i64, ptr @pm_compile_forwarding_super_node.rbimpl_id, align 8, !tbaa !36 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i274, label %rbimpl_intern_const.exit

.lr.ph.i274:                                      ; preds = %bb.af, %.lr.ph.i274
  %i.kx = call i64 @rb_intern2(ptr noundef nonnull @.str.113, i64 noundef 3) #37 ; 3 uses
  store i64 %i.kx, ptr @pm_compile_forwarding_super_node.rbimpl_id, align 8, !tbaa !36
  %.not.i275 = icmp eq i64 %i.kx, 0
  br i1 %.not.i275, label %.lr.ph.i274, label %rbimpl_intern_const.exit, !llvm.loop !230

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i274, %bb.af
  %.lcssa.i = phi i64 [ %.pr.i, %bb.af ], [ %i.kx, %.lr.ph.i274 ]
  %i.ky = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.kv, i32 noundef %i.kw, i64 noundef %.lcssa.i, i64 noundef 1, ptr noundef null, i64 noundef 1, ptr noundef null)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.kz = load i32, ptr %2, align 4, !tbaa !553
  %i.la = load i32, ptr %i.cw, align 4, !tbaa !556
  %i.lb = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.kz, i32 noundef %i.la, i32 noundef 37, i32 noundef 1, i64 noundef 1)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %rbimpl_intern_const.exit
  %.sink388 = phi ptr [ %i.lb, %bb.ag ], [ %i.ky, %rbimpl_intern_const.exit ] ; 3 uses
  %i.lc = load ptr, ptr %i.ez, align 8, !tbaa !11 ; 2 uses
  %i.ld = getelementptr i8, ptr %.sink388, i64 16
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !34
  %i.le = getelementptr i8, ptr %i.lc, i64 8
  store ptr %.sink388, ptr %i.le, align 8, !tbaa !35
  store ptr %.sink388, ptr %i.ez, align 8, !tbaa !11
  %i.lf = load i32, ptr %i.kc, align 8, !tbaa !220
  %i.lg = icmp sgt i32 %i.lf, 0
  br i1 %i.lg, label %.lr.ph327, label %._crit_edge328

.lr.ph327:                                        ; preds = %bb.ah
  %i.lh = getelementptr i8, ptr %i.kc, i64 16
  %i.li = getelementptr i8, ptr %i.fd, i64 24
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph327, %get_local_var_idx.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph327 ], [ %indvars.iv.next, %get_local_var_idx.exit ] ; 2 uses
  %i.lj = load ptr, ptr %i.lh, align 8, !tbaa !227
  %i.lk = getelementptr [8 x i8], ptr %i.lj, i64 %indvars.iv
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !36 ; 2 uses
  %i.lm = load ptr, ptr %i.fe, align 8, !tbaa !43
  %i.ln = getelementptr i8, ptr %i.lm, i64 176
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !275
  %i.lp = getelementptr i8, ptr %i.lo, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !43 ; 2 uses
  %i.lr = getelementptr i8, ptr %i.lq, i64 240
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !175 ; 2 uses
  %.not.i.i276 = icmp eq i32 %i.ls, 0
  br i1 %.not.i.i276, label %get_dyna_var_idx_at_raw.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai
  %i.lt = getelementptr i8, ptr %i.lq, i64 144
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !188
  %wide.trip.count.i.i = zext i32 %i.ls to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ak ] ; 3 uses
  %i.lv = getelementptr [8 x i8], ptr %i.lu, i64 %indvars.iv.i.i
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !36
  %i.lx = icmp eq i64 %i.lw, %i.ll
  br i1 %i.lx, label %get_dyna_var_idx_at_raw.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %get_dyna_var_idx_at_raw.exit.thread.i, label %bb.aj, !llvm.loop !1027

get_dyna_var_idx_at_raw.exit.i:                   ; preds = %bb.aj
  %i.ly = trunc nuw i64 %indvars.iv.i.i to i32    ; 3 uses
  %i.lz = icmp slt i32 %i.ly, 0
  br i1 %i.lz, label %get_dyna_var_idx_at_raw.exit.thread.i, label %get_local_var_idx.exit

get_dyna_var_idx_at_raw.exit.thread.i:            ; preds = %bb.ak, %get_dyna_var_idx_at_raw.exit.i, %bb.ai
  %.07.i8.i = phi i32 [ %i.ly, %get_dyna_var_idx_at_raw.exit.i ], [ -1, %bb.ai ], [ -1, %bb.ak ] ; 2 uses
  %i.ma = load ptr, ptr %i.li, align 8, !tbaa !20
  %i.mb = getelementptr i8, ptr %i.ma, i64 128
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !21
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %i.fd, i32 noundef %i.mc, ptr noundef nonnull @.str.146, i32 noundef %.07.i8.i)
  br label %get_local_var_idx.exit

get_local_var_idx.exit:                           ; preds = %get_dyna_var_idx_at_raw.exit.i, %get_dyna_var_idx_at_raw.exit.thread.i
  %.07.i9.i = phi i32 [ %.07.i8.i, %get_dyna_var_idx_at_raw.exit.thread.i ], [ %i.ly, %get_dyna_var_idx_at_raw.exit.i ]
  %i.md = sub i32 %i.kf, %.07.i9.i
  %i.me = call i64 @rb_id2sym(i64 noundef %i.ll) #37
  %i.mf = load i32, ptr %2, align 4, !tbaa !553
  %i.mg = load i32, ptr %i.cw, align 4, !tbaa !556
  %i.mh = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.mf, i32 noundef %i.mg, i32 noundef 19, i32 noundef 1, i64 noundef %i.me) ; 3 uses
  %i.mi = load ptr, ptr %i.ez, align 8, !tbaa !11 ; 2 uses
  %i.mj = getelementptr i8, ptr %i.mh, i64 16
  store ptr %i.mi, ptr %i.mj, align 8, !tbaa !34
  %i.mk = getelementptr i8, ptr %i.mi, i64 8
  store ptr %i.mh, ptr %i.mk, align 8, !tbaa !35
  store ptr %i.mh, ptr %i.ez, align 8, !tbaa !11
  %i.ml = load i32, ptr %2, align 4, !tbaa !553
  %i.mm = load i32, ptr %i.cw, align 4, !tbaa !556
  call fastcc void @pm_iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef %7, i32 noundef %i.ml, i32 noundef %i.mm, i32 noundef %i.md, i32 noundef %.0.lcssa.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.mn = load i32, ptr %i.kc, align 8, !tbaa !220
  %i.mo = sext i32 %i.mn to i64
  %i.mp = icmp slt i64 %indvars.iv.next, %i.mo
  br i1 %i.mp, label %bb.ai, label %._crit_edge328.loopexit, !llvm.loop !1340

._crit_edge328.loopexit:                          ; preds = %get_local_var_idx.exit
  %i.mq = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.mr = shl i32 %i.mq, 1
  %i.ms = or disjoint i32 %i.mr, 1
  %i.mt = sext i32 %i.ms to i64
  %i.mu = shl nsw i64 %i.mt, 1
  %i.mv = or disjoint i64 %i.mu, 1
  br label %._crit_edge328

._crit_edge328:                                   ; preds = %._crit_edge328.loopexit, %bb.ah
  %.0213.lcssa = phi i64 [ 3, %bb.ah ], [ %i.mv, %._crit_edge328.loopexit ]
  %i.mw = load i32, ptr %2, align 4, !tbaa !553
  %i.mx = load i32, ptr %i.cw, align 4, !tbaa !556
  %i.my = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.mw, i32 noundef %i.mx, i64 noundef 167, i64 noundef %.0213.lcssa, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.mz = load ptr, ptr %i.ez, align 8, !tbaa !11 ; 2 uses
  %i.na = getelementptr i8, ptr %i.my, i64 16
  store ptr %i.mz, ptr %i.na, align 8, !tbaa !34
  %i.nb = getelementptr i8, ptr %i.mz, i64 8
  store ptr %i.my, ptr %i.nb, align 8, !tbaa !35
  store ptr %i.my, ptr %i.ez, align 8, !tbaa !11
  %i.nc = or disjoint i32 %.0210, 2112
  br label %bb.an

bb.al:                                            ; preds = %bb.ad
  %i.nd = and i16 %i.ka, 32
  %.not228 = icmp eq i16 %i.nd, 0
  br i1 %.not228, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ne = getelementptr i8, ptr %i.ff, i64 240
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !175
  %i.ng = getelementptr i8, ptr %i.kc, i64 12
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !225
  %i.ni = sub i32 %i.nf, %i.nh
  %i.nj = load i32, ptr %2, align 4, !tbaa !553
  %i.nk = load i32, ptr %i.cw, align 4, !tbaa !556
  call fastcc void @pm_iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef %7, i32 noundef %i.nj, i32 noundef %i.nk, i32 noundef %i.ni, i32 noundef %.0.lcssa.i)
  %i.nl = add i32 %.4, 1
  %i.nm = or disjoint i32 %.0210, 64
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %._crit_edge328
  %.5 = phi i32 [ %i.kg, %._crit_edge328 ], [ %i.nl, %bb.am ], [ %.4, %bb.al ] ; 3 uses
  %.1 = phi i32 [ %i.nc, %._crit_edge328 ], [ %i.nm, %bb.am ], [ %.0210, %bb.al ] ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !62 ; 2 uses
  %.not.i277 = icmp eq ptr %i.no, null
  br i1 %.not.i277, label %APPEND_LIST.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.np = load ptr, ptr %i.cz, align 8, !tbaa !11 ; 2 uses
  %i.nq = getelementptr i8, ptr %i.np, i64 8
  store ptr %i.no, ptr %i.nq, align 8, !tbaa !35
  %i.nr = load ptr, ptr %i.nn, align 8, !tbaa !62
  %i.ns = getelementptr i8, ptr %i.nr, i64 16
  store ptr %i.np, ptr %i.ns, align 8, !tbaa !34
  %i.nt = load ptr, ptr %i.ez, align 8, !tbaa !11
  store ptr %i.nt, ptr %i.cz, align 8, !tbaa !11
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %bb.an, %bb.ao
  %i.nu = icmp ne ptr %.0, null
  %8 = zext i1 %i.nu to i32
  %i.nv = and i32 %.1, 8291
  %9 = or i32 %i.nv, %8
  %or.cond.not.i = icmp eq i32 %9, 0
  %i.nw = or i32 %.1, 16
  %spec.select.i279 = select i1 %or.cond.not.i, i32 %i.nw, i32 %.1 ; 2 uses
  %i.nx = load ptr, ptr %i.fa, align 8, !tbaa !43
  %i.ny = getelementptr i8, ptr %i.nx, i64 260    ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !109
  %i.oa = add i32 %i.nz, 1
  store i32 %i.oa, ptr %i.ny, align 4, !tbaa !109
  %i.ob = icmp ugt i32 %.5, 32767
  br i1 %i.ob, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %APPEND_LIST.exit
  %i.oc = shl nuw nsw i32 %spec.select.i279, 16
  %i.od = shl nuw nsw i32 %.5, 1
  %i.oe = or disjoint i32 %i.oc, %i.od
  %i.of = or disjoint i32 %i.oe, 1
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = inttoptr i64 %i.og to ptr
  br label %vm_ci_new_.exit.i

bb.aq:                                            ; preds = %APPEND_LIST.exit
  %i.oi = call ptr @rb_vm_ci_lookup(i64 noundef 0, i32 noundef %spec.select.i279, i32 noundef %.5, ptr noundef null) #37
  br label %vm_ci_new_.exit.i

vm_ci_new_.exit.i:                                ; preds = %bb.aq, %bb.ap
  %.0.i.i = phi ptr [ %i.oi, %bb.aq ], [ %i.oh, %bb.ap ] ; 2 uses
  %i.oj = ptrtoint ptr %.0.i.i to i64             ; 3 uses
  %i.ok = icmp eq ptr %.0.i.i, null
  %i.ol = and i64 %i.oj, 7
  %i.om = icmp ne i64 %i.ol, 0
  %i.on = or i1 %i.ok, %i.om
  br i1 %i.on, label %new_callinfo.exit280, label %bb.ar

bb.ar:                                            ; preds = %vm_ci_new_.exit.i
  %i.oo = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.oo, i64 noundef %i.oj) #37
  br label %new_callinfo.exit280

new_callinfo.exit280:                             ; preds = %vm_ci_new_.exit.i, %bb.ar
  %i.op = load i32, ptr %2, align 4, !tbaa !553
  %i.oq = load i32, ptr %i.cw, align 4, !tbaa !556
  %i.or = ptrtoint ptr %.0 to i64                 ; 2 uses
  %i.os = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.op, i32 noundef %i.oq, i32 noundef 67, i32 noundef 2, i64 noundef %i.oj, i64 noundef %i.or) ; 7 uses
  %i.ot = load ptr, ptr %i.cz, align 8, !tbaa !11 ; 2 uses
  %i.ou = getelementptr i8, ptr %i.os, i64 16
  store ptr %i.ot, ptr %i.ou, align 8, !tbaa !34
  %i.ov = getelementptr i8, ptr %i.ot, i64 8
  store ptr %i.os, ptr %i.ov, align 8, !tbaa !35
  store ptr %i.os, ptr %i.cz, align 8, !tbaa !11
  %i.ow = load ptr, ptr %i.c, align 8, !tbaa !1334
  %.not230 = icmp eq ptr %i.ow, null
  br i1 %.not230, label %bb.az, label %bb.as

bb.as:                                            ; preds = %new_callinfo.exit280
  %i.ox = load i32, ptr %i.os, align 8, !tbaa !63
  %i.oy = icmp eq i32 %i.ox, 2
  br i1 %i.oy, label %get_prev_insn.exit.i.preheader, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.as, %.preheader1.i
  %.pn.i.i = phi ptr [ %.0.i.i281, %.preheader1.i ], [ %i.os, %bb.as ]
  %.0.in.i.i = getelementptr i8, ptr %.pn.i.i, i64 16
  %.0.i.i281 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !34, !nonnull !148, !noundef !148 ; 3 uses
  %i.oz = load i32, ptr %.0.i.i281, align 8, !tbaa !63
  %i.pa = and i32 %i.oz, -2
  %switch.i.i = icmp eq i32 %i.pa, 2
  br i1 %switch.i.i, label %get_prev_insn.exit.i.preheader, label %.preheader1.i

get_prev_insn.exit.i.preheader:                   ; preds = %.preheader1.i, %bb.as
  %.0.i283.ph = phi ptr [ %i.os, %bb.as ], [ %.0.i.i281, %.preheader1.i ]
  br label %get_prev_insn.exit.i

get_prev_insn.exit.i.loopexit:                    ; preds = %bb.at, %.preheader.i284
  br label %get_prev_insn.exit.i

get_prev_insn.exit.i:                             ; preds = %get_prev_insn.exit.i.preheader, %get_prev_insn.exit.i.loopexit
  %.0.i283 = phi ptr [ %.0.i19.i, %get_prev_insn.exit.i.loopexit ], [ %.0.i283.ph, %get_prev_insn.exit.i.preheader ] ; 5 uses
  %i.pb = getelementptr i8, ptr %.0.i283, i64 24
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !64
  switch i32 %i.pc, label %.preheader.i284 [
    i32 55, label %.critedge.i
    i32 67, label %.critedge.i
    i32 56, label %.critedge.i
    i32 68, label %.critedge.i
  ]

.preheader.i284:                                  ; preds = %get_prev_insn.exit.i, %bb.at
  %.pn.i17.i = phi ptr [ %.0.i19.i, %bb.at ], [ %.0.i283, %get_prev_insn.exit.i ]
  %.0.in.i18.i = getelementptr i8, ptr %.pn.i17.i, i64 16
  %.0.i19.i = load ptr, ptr %.0.in.i18.i, align 8, !tbaa !34 ; 4 uses
  %.not.i20.i = icmp eq ptr %.0.i19.i, null
  br i1 %.not.i20.i, label %get_prev_insn.exit.i.loopexit, label %bb.at, !llvm.loop !1333

bb.at:                                            ; preds = %.preheader.i284
  %i.pd = load i32, ptr %.0.i19.i, align 8, !tbaa !63
  %i.pe = and i32 %i.pd, -2
  %switch.i21.i = icmp eq i32 %i.pe, 2
  br i1 %switch.i21.i, label %get_prev_insn.exit.i.loopexit, label %.preheader.i284, !llvm.loop !1333

.critedge.i:                                      ; preds = %get_prev_insn.exit.i, %get_prev_insn.exit.i, %get_prev_insn.exit.i, %get_prev_insn.exit.i
  %i.pf = getelementptr i8, ptr %.0.i283, i64 8   ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !35
  %i.ph = getelementptr i8, ptr %.0209, i64 8     ; 2 uses
  store ptr %i.pg, ptr %i.ph, align 8, !tbaa !35
  %i.pi = getelementptr i8, ptr %.0209, i64 16
  store ptr %.0.i283, ptr %i.pi, align 8, !tbaa !34
  store ptr %.0209, ptr %i.pf, align 8, !tbaa !35
  %i.pj = load ptr, ptr %i.ph, align 8, !tbaa !35 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.pj, null
  br i1 %.not.i23.i, label %ELEM_INSERT_NEXT.exit.i, label %bb.au

bb.au:                                            ; preds = %.critedge.i
  %i.pk = getelementptr i8, ptr %i.pj, i64 16
  store ptr %.0209, ptr %i.pk, align 8, !tbaa !34
  br label %ELEM_INSERT_NEXT.exit.i

ELEM_INSERT_NEXT.exit.i:                          ; preds = %bb.au, %.critedge.i
  %i.pl = icmp eq ptr %.0.i283, %i.os
  br i1 %i.pl, label %bb.av, label %pm_compile_retry_end_label.exit

bb.av:                                            ; preds = %ELEM_INSERT_NEXT.exit.i
  store ptr %.0209, ptr %i.cz, align 8, !tbaa !11
  br label %pm_compile_retry_end_label.exit

pm_compile_retry_end_label.exit:                  ; preds = %ELEM_INSERT_NEXT.exit.i, %bb.av
  %i.pm = ptrtoint ptr %.0208 to i64
  %i.pn = or i64 %i.pm, 1
  %i.po = ptrtoint ptr %.0209 to i64
  %i.pp = or i64 %i.po, 1                         ; 2 uses
  %i.pq = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 5, i32 noundef 9, i64 noundef %i.pn, i64 noundef %i.pp, i64 noundef %i.or, i64 noundef %i.pp) #37 ; 3 uses
  %.not231 = icmp eq ptr %.0208, null
  br i1 %.not231, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %pm_compile_retry_end_label.exit
  %i.pr = getelementptr i8, ptr %.0208, i64 40    ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !273
  %i.pt = add i32 %i.ps, 1
  store i32 %i.pt, ptr %i.pr, align 8, !tbaa !273
  %i.pu = getelementptr i8, ptr %.0208, i64 44    ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 4
  %i.pw = or i8 %i.pv, 8
  store i8 %i.pw, ptr %i.pu, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %pm_compile_retry_end_label.exit, %bb.aw
  %i.px = getelementptr i8, ptr %.0209, i64 40    ; 2 uses
  %i.py = load i32, ptr %i.px, align 8, !tbaa !273
  %i.pz = add i32 %i.py, 2
  store i32 %i.pz, ptr %i.px, align 8, !tbaa !273
  %i.qa = load i64, ptr %0, align 8, !tbaa !111
  %i.qb = and i64 %i.qa, 262144
  %.not.i285 = icmp eq i64 %i.qb, 0
  br i1 %.not.i285, label %ISEQ_COMPILE_DATA.exit287, label %ISEQ_COMPILE_DATA.exit287.thread

ISEQ_COMPILE_DATA.exit287:                        ; preds = %bb.ax
  %i.qc = load i64, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !85
  %i.qd = icmp eq i64 %i.qc, 4
  br i1 %i.qd, label %ISEQ_COMPILE_DATA.exit290, label %rb_obj_write.exit

ISEQ_COMPILE_DATA.exit287.thread:                 ; preds = %bb.ax
  %i.qe = getelementptr i8, ptr %0, i64 24
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !20 ; 2 uses
  %i.qg = getelementptr i8, ptr %i.qf, i64 8
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !85
  %i.qi = icmp eq i64 %i.qh, 4
  br i1 %i.qi, label %ISEQ_COMPILE_DATA.exit290, label %rb_obj_write.exit

ISEQ_COMPILE_DATA.exit290:                        ; preds = %ISEQ_COMPILE_DATA.exit287.thread, %ISEQ_COMPILE_DATA.exit287
  %.0.i289 = phi ptr [ null, %ISEQ_COMPILE_DATA.exit287 ], [ %i.qf, %ISEQ_COMPILE_DATA.exit287.thread ]
  %i.qj = getelementptr i8, ptr %.0.i289, i64 8
  %i.qk = call i64 @rb_ary_hidden_new(i64 noundef 3) #37 ; 4 uses
  store i64 %i.qk, ptr %i.qj, align 8, !tbaa !36
  %i.ql = icmp eq i64 %i.qk, 0
  %i.qm = and i64 %i.qk, 7
  %i.qn = icmp ne i64 %i.qm, 0
  %i.qo = or i1 %i.ql, %i.qn
  br i1 %i.qo, label %rb_obj_write.exit, label %bb.ay

bb.ay:                                            ; preds = %ISEQ_COMPILE_DATA.exit290
  %i.qp = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.qp, i64 noundef %i.qk) #37
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.ay, %ISEQ_COMPILE_DATA.exit290, %ISEQ_COMPILE_DATA.exit287.thread, %ISEQ_COMPILE_DATA.exit287
  %i.qq = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !20
  %i.qs = getelementptr i8, ptr %i.qr, i64 8
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !85
  call void @rb_obj_freeze_inline(i64 noundef %i.pq) #37
  %i.qu = inttoptr i64 %i.pq to ptr
  %i.qv = getelementptr i8, ptr %i.qu, i64 8
  store i64 0, ptr %i.qv, align 8, !tbaa !36
  %i.qw = call i64 @rb_ary_push(i64 noundef %i.qt, i64 noundef %i.pq) #37 ; 0 uses
  %i.qx = load ptr, ptr %i.qq, align 8, !tbaa !20
  %i.qy = getelementptr i8, ptr %i.qx, i64 72
  store ptr %.0207, ptr %i.qy, align 8, !tbaa !622
  br label %bb.az

bb.az:                                            ; preds = %rb_obj_write.exit, %new_callinfo.exit280
  br i1 %4, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.qz = load i32, ptr %2, align 4, !tbaa !553
  %i.ra = load i32, ptr %i.cw, align 4, !tbaa !556
end_hunk_7
begin_hunk_8_@pm_compile_super_node:bb.a
bb.j:                                             ; preds = %._crit_edge.i
  %i.dv = getelementptr i8, ptr %.pre.i107.pre, i64 80
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !234
  %i.dx = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.194, i32 noundef %spec.select.i, i64 noundef %i.dw) #37
  br label %make_name_for_block.exit

make_name_for_block.exit:                         ; preds = %.thread.i, %bb.j
  %.013.i = phi i64 [ %i.du, %.thread.i ], [ %i.dx, %bb.j ]
  %i.dy = call i64 @rb_fstring(i64 noundef %.013.i) #37
  %i.dz = load i32, ptr %2, align 4, !tbaa !553
  %i.ea = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.eb = getelementptr i8, ptr %i.ea, i64 140
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !827 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ed = call i64 @rb_iseq_path(ptr noundef nonnull %0) #37
  %i.ee = call i64 @rb_iseq_realpath(ptr noundef nonnull %0) #37
  %.not.i108 = icmp eq i32 %i.ec, 0
  %i.ef = add i32 %i.ec, 1
  %i.eg = select i1 %.not.i108, i32 0, i32 %i.ef
  %i.eh = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.ei = getelementptr i8, ptr %i.eh, i64 152
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !42
  %i.ek = call ptr @pm_iseq_new_with_opt(ptr noundef nonnull %7, i64 noundef %i.dy, i64 noundef %i.ed, i64 noundef %i.ee, i32 noundef %i.dz, ptr noundef nonnull %0, i32 noundef %i.eg, i32 noundef 2, ptr noundef %i.ej, ptr noundef nonnull %i.a) #37 ; 3 uses
  %i.el = load i32, ptr %i.a, align 4, !tbaa !7
  %.not12.i = icmp eq i32 %i.el, 0
  br i1 %.not12.i, label %pm_new_child_iseq.exit, label %bb.k

bb.k:                                             ; preds = %make_name_for_block.exit
  call void @pm_scope_node_destroy(ptr noundef nonnull %7)
  %i.em = load i32, ptr %i.a, align 4, !tbaa !7
  call void @rb_jump_tag(i32 noundef %i.em) #41
  unreachable

pm_new_child_iseq.exit:                           ; preds = %make_name_for_block.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.eo = getelementptr i8, ptr %i.en, i64 72
  store ptr %i.ek, ptr %i.eo, align 8, !tbaa !622
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !536 ; 2 uses
  %.not.i112 = icmp eq ptr %i.eq, null
  br i1 %.not.i112, label %bb.m, label %bb.l

bb.l:                                             ; preds = %pm_new_child_iseq.exit
  call void @rb_st_free_table(ptr noundef nonnull %i.eq) #37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %pm_new_child_iseq.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %.pr = load ptr, ptr %i.cp, align 8, !tbaa !1486
  %.not82 = icmp eq ptr %.pr, null
  br i1 %.not82, label %.thread, label %iseq_set_use_block.exit

.thread:                                          ; preds = %bb.g, %bb.m
  %.0151 = phi ptr [ %i.ek, %bb.m ], [ null, %bb.g ] ; 3 uses
  %i.er = getelementptr i8, ptr %0, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !43
  %i.et = getelementptr i8, ptr %i.es, i64 176
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !275
  %i.ev = getelementptr i8, ptr %i.eu, i64 16
  %.val = load ptr, ptr %i.ev, align 8, !tbaa !43 ; 2 uses
  %i.ew = getelementptr i8, ptr %.val, i64 16     ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 8            ; 2 uses
  %i.ey = and i16 %i.ex, 4096
  %.not.i113 = icmp eq i16 %i.ey, 0
  br i1 %.not.i113, label %bb.n, label %iseq_set_use_block.exit

bb.n:                                             ; preds = %.thread
  %i.ez = or disjoint i16 %i.ex, 4096
  store i16 %i.ez, ptr %i.ew, align 8
  %i.fa = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !232
  %i.fb = call zeroext i1 @rb_warning_category_enabled_p(i32 noundef 4) #37
  br i1 %i.fb, label %iseq_set_use_block.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fc = getelementptr i8, ptr %.val, i64 80
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !234
  %i.fe = call i64 @rb_intern_str(i64 noundef %i.fd) #37
  %i.ff = getelementptr i8, ptr %i.fa, i64 1304
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !235
  %i.fh = call i32 @rb_set_insert(ptr noundef %i.fg, i64 noundef %i.fe) #37 ; 0 uses
  br label %iseq_set_use_block.exit

iseq_set_use_block.exit:                          ; preds = %bb.h, %bb.o, %bb.n, %.thread, %bb.m
  %.0150 = phi ptr [ %.0151, %bb.o ], [ %i.ek, %bb.m ], [ %.0151, %.thread ], [ %.0151, %bb.n ], [ null, %bb.h ] ; 4 uses
  %i.fi = and i32 %i.cy, 2114
  %or.cond88 = icmp eq i32 %i.fi, 66
  br i1 %or.cond88, label %bb.p, label %bb.q

bb.p:                                             ; preds = %iseq_set_use_block.exit
  %i.fj = load i32, ptr %2, align 4, !tbaa !553
  %i.fk = load i32, ptr %i.ch, align 4, !tbaa !556
  %i.fl = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.fj, i32 noundef %i.fk, i32 noundef 36, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fl, i64 16
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !34
  %i.fo = getelementptr i8, ptr %i.fm, i64 8
  store ptr %i.fl, ptr %i.fo, align 8, !tbaa !35
  store ptr %i.fl, ptr %i.d, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %iseq_set_use_block.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !62 ; 2 uses
  %.not.i115 = icmp eq ptr %i.fq, null
  br i1 %.not.i115, label %APPEND_LIST.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fr = load ptr, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 8
  store ptr %i.fq, ptr %i.fs, align 8, !tbaa !35
  %i.ft = load ptr, ptr %i.fp, align 8, !tbaa !62
  %i.fu = getelementptr i8, ptr %i.ft, i64 16
  store ptr %i.fr, ptr %i.fu, align 8, !tbaa !34
  %i.fv = load ptr, ptr %i.d, align 8, !tbaa !11
  store ptr %i.fv, ptr %i.cc, align 8, !tbaa !11
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %bb.q, %bb.r
  br i1 %i.cx, label %bb.s, label %APPEND_LIST.exit._crit_edge

bb.s:                                             ; preds = %APPEND_LIST.exit
  %i.fw = getelementptr i8, ptr %0, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !43 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 176
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !275
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !43
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  %i.gd = load i16, ptr %i.gc, align 8
  %i.ge = and i16 %i.gd, 8192
  %.not86 = icmp eq i16 %i.ge, 0
  br i1 %.not86, label %APPEND_LIST.exit._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gf = or i32 %i.cy, 8452                      ; 2 uses
  store i32 %i.gf, ptr %i.b, align 4, !tbaa !7
  %i.gg = load ptr, ptr %i.c, align 8, !tbaa !1058 ; 4 uses
  %.not.i116 = icmp eq ptr %i.gg, null
  br i1 %.not.i116, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gh = or i32 %i.cy, 8484
  %i.gi = load i32, ptr %i.gg, align 8, !tbaa !7
  %i.gj = add i32 %i.gi, %i.cr
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.015.i = phi i32 [ %i.gh, %bb.u ], [ %i.gf, %bb.t ] ; 3 uses
  %.0.i117 = phi i32 [ %i.gj, %bb.u ], [ %i.cr, %bb.t ] ; 3 uses
  %i.gk = getelementptr i8, ptr %i.fx, i64 260    ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !109
  %i.gm = add i32 %i.gl, 1
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !109
  %i.gn = icmp ugt i32 %.015.i, 65535
  br i1 %i.gn, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.go = icmp ugt i32 %.0.i117, 32767
  %i.gp = icmp ne ptr %i.gg, null
  %or.cond.i.i = or i1 %i.gp, %i.go
  br i1 %or.cond.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gq = shl nuw i32 %.015.i, 16
  %i.gr = shl nuw nsw i32 %.0.i117, 1
  %i.gs = or disjoint i32 %i.gr, %i.gq
  %i.gt = or disjoint i32 %i.gs, 1
  %i.gu = zext i32 %i.gt to i64
  %i.gv = inttoptr i64 %i.gu to ptr
  br label %vm_ci_new_.exit.i

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.gw = call ptr @rb_vm_ci_lookup(i64 noundef 0, i32 noundef %.015.i, i32 noundef %.0.i117, ptr noundef %i.gg) #37
  br label %vm_ci_new_.exit.i

vm_ci_new_.exit.i:                                ; preds = %bb.y, %bb.x
  %.0.i.i = phi ptr [ %i.gw, %bb.y ], [ %i.gv, %bb.x ] ; 2 uses
  %i.gx = ptrtoint ptr %.0.i.i to i64             ; 3 uses
  %i.gy = icmp eq ptr %.0.i.i, null
  %i.gz = and i64 %i.gx, 7
  %i.ha = icmp ne i64 %i.gz, 0
  %i.hb = or i1 %i.gy, %i.ha
  br i1 %i.hb, label %new_callinfo.exit, label %bb.z

bb.z:                                             ; preds = %vm_ci_new_.exit.i
  %i.hc = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.hc, i64 noundef %i.gx) #37
  br label %new_callinfo.exit

new_callinfo.exit:                                ; preds = %vm_ci_new_.exit.i, %bb.z
  %i.hd = load i32, ptr %2, align 4, !tbaa !553
  %i.he = load i32, ptr %i.ch, align 4, !tbaa !556
  %i.hf = ptrtoint ptr %.0150 to i64
  %i.hg = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.hd, i32 noundef %i.he, i32 noundef 68, i32 noundef 2, i64 noundef %i.gx, i64 noundef %i.hf)
  br label %bb.ag

APPEND_LIST.exit._crit_edge:                      ; preds = %APPEND_LIST.exit, %bb.s
  %i.hh = load ptr, ptr %i.c, align 8, !tbaa !1058 ; 4 uses
  %i.hi = icmp ne ptr %.0150, null
  %8 = zext i1 %i.hi to i32
  %.not.i119 = icmp eq ptr %i.hh, null
  br i1 %.not.i119, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %APPEND_LIST.exit._crit_edge
  %i.hj = or i32 %i.cy, 292
  %i.hk = load i32, ptr %i.hh, align 8, !tbaa !7
  %i.hl = add i32 %i.hk, %i.cr
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %APPEND_LIST.exit._crit_edge
  %.015.i120 = phi i32 [ %i.hj, %bb.aa ], [ %i.cz, %APPEND_LIST.exit._crit_edge ] ; 3 uses
  %.0.i121 = phi i32 [ %i.hl, %bb.aa ], [ %i.cr, %APPEND_LIST.exit._crit_edge ] ; 3 uses
  %i.hm = and i32 %.015.i120, 8291
  %9 = or i32 %i.hm, %8
  %or.cond.not.i122 = icmp eq i32 %9, 0
  %i.hn = or i32 %.015.i120, 16
  %spec.select.i123 = select i1 %or.cond.not.i122, i32 %i.hn, i32 %.015.i120 ; 3 uses
  %i.ho = getelementptr i8, ptr %0, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !43
  %i.hq = getelementptr i8, ptr %i.hp, i64 260    ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !109
  %i.hs = add i32 %i.hr, 1
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !109
  %i.ht = icmp ugt i32 %spec.select.i123, 65535
  br i1 %i.ht, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hu = icmp ugt i32 %.0.i121, 32767
  %i.hv = icmp ne ptr %i.hh, null
  %or.cond.i.i124 = or i1 %i.hv, %i.hu
  br i1 %or.cond.i.i124, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hw = shl nuw i32 %spec.select.i123, 16
  %i.hx = shl nuw nsw i32 %.0.i121, 1
  %i.hy = or disjoint i32 %i.hw, %i.hx
  %i.hz = or disjoint i32 %i.hy, 1
  %i.ia = zext i32 %i.hz to i64
  %i.ib = inttoptr i64 %i.ia to ptr
  br label %vm_ci_new_.exit.i125

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.ic = call ptr @rb_vm_ci_lookup(i64 noundef 0, i32 noundef %spec.select.i123, i32 noundef %.0.i121, ptr noundef %i.hh) #37
  br label %vm_ci_new_.exit.i125

vm_ci_new_.exit.i125:                             ; preds = %bb.ae, %bb.ad
  %.0.i.i126 = phi ptr [ %i.ic, %bb.ae ], [ %i.ib, %bb.ad ] ; 2 uses
  %i.id = ptrtoint ptr %.0.i.i126 to i64          ; 3 uses
  %i.ie = icmp eq ptr %.0.i.i126, null
  %i.if = and i64 %i.id, 7
  %i.ig = icmp ne i64 %i.if, 0
  %i.ih = or i1 %i.ie, %i.ig
  br i1 %i.ih, label %new_callinfo.exit127, label %bb.af

bb.af:                                            ; preds = %vm_ci_new_.exit.i125
  %i.ii = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.ii, i64 noundef %i.id) #37
  br label %new_callinfo.exit127

new_callinfo.exit127:                             ; preds = %vm_ci_new_.exit.i125, %bb.af
  %i.ij = load i32, ptr %2, align 4, !tbaa !553
  %i.ik = load i32, ptr %i.ch, align 4, !tbaa !556
  %i.il = ptrtoint ptr %.0150 to i64
  %i.im = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.ij, i32 noundef %i.ik, i32 noundef 67, i32 noundef 2, i64 noundef %i.id, i64 noundef %i.il)
  br label %bb.ag

bb.ag:                                            ; preds = %new_callinfo.exit127, %new_callinfo.exit
  %.sink187 = phi ptr [ %i.im, %new_callinfo.exit127 ], [ %i.hg, %new_callinfo.exit ] ; 7 uses
  %i.in = load ptr, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %i.io = getelementptr i8, ptr %.sink187, i64 16
  store ptr %i.in, ptr %i.io, align 8, !tbaa !34
  %i.ip = getelementptr i8, ptr %i.in, i64 8
  store ptr %.sink187, ptr %i.ip, align 8, !tbaa !35
  store ptr %.sink187, ptr %i.cc, align 8, !tbaa !11
  %i.iq = load i32, ptr %.sink187, align 8, !tbaa !63
  %i.ir = icmp eq i32 %i.iq, 2
  br i1 %i.ir, label %get_prev_insn.exit.i.preheader, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.ag, %.preheader1.i
  %.pn.i.i = phi ptr [ %.0.i.i128, %.preheader1.i ], [ %.sink187, %bb.ag ]
  %.0.in.i.i = getelementptr i8, ptr %.pn.i.i, i64 16
  %.0.i.i128 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !34, !nonnull !148, !noundef !148 ; 3 uses
  %i.is = load i32, ptr %.0.i.i128, align 8, !tbaa !63
  %i.it = and i32 %i.is, -2
  %switch.i.i = icmp eq i32 %i.it, 2
  br i1 %switch.i.i, label %get_prev_insn.exit.i.preheader, label %.preheader1.i

get_prev_insn.exit.i.preheader:                   ; preds = %.preheader1.i, %bb.ag
  %.0.i130.ph = phi ptr [ %.sink187, %bb.ag ], [ %.0.i.i128, %.preheader1.i ]
  br label %get_prev_insn.exit.i

get_prev_insn.exit.i.loopexit:                    ; preds = %bb.ah, %.preheader.i131
  br label %get_prev_insn.exit.i

get_prev_insn.exit.i:                             ; preds = %get_prev_insn.exit.i.preheader, %get_prev_insn.exit.i.loopexit
  %.0.i130 = phi ptr [ %.0.i19.i, %get_prev_insn.exit.i.loopexit ], [ %.0.i130.ph, %get_prev_insn.exit.i.preheader ] ; 5 uses
  %i.iu = getelementptr i8, ptr %.0.i130, i64 24
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !64
  switch i32 %i.iv, label %.preheader.i131 [
    i32 55, label %.critedge.i
    i32 67, label %.critedge.i
    i32 56, label %.critedge.i
    i32 68, label %.critedge.i
  ]

.preheader.i131:                                  ; preds = %get_prev_insn.exit.i, %bb.ah
  %.pn.i17.i = phi ptr [ %.0.i19.i, %bb.ah ], [ %.0.i130, %get_prev_insn.exit.i ]
  %.0.in.i18.i = getelementptr i8, ptr %.pn.i17.i, i64 16
  %.0.i19.i = load ptr, ptr %.0.in.i18.i, align 8, !tbaa !34 ; 4 uses
  %.not.i20.i = icmp eq ptr %.0.i19.i, null
  br i1 %.not.i20.i, label %get_prev_insn.exit.i.loopexit, label %bb.ah, !llvm.loop !1333

bb.ah:                                            ; preds = %.preheader.i131
  %i.iw = load i32, ptr %.0.i19.i, align 8, !tbaa !63
  %i.ix = and i32 %i.iw, -2
  %switch.i21.i = icmp eq i32 %i.ix, 2
  br i1 %switch.i21.i, label %get_prev_insn.exit.i.loopexit, label %.preheader.i131, !llvm.loop !1333

.critedge.i:                                      ; preds = %get_prev_insn.exit.i, %get_prev_insn.exit.i, %get_prev_insn.exit.i, %get_prev_insn.exit.i
  %i.iy = getelementptr i8, ptr %.0.i130, i64 8   ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !35
  store ptr %i.iz, ptr %i.bo, align 8, !tbaa !35
  %i.ja = getelementptr i8, ptr %i.bm, i64 16
  store ptr %.0.i130, ptr %i.ja, align 8, !tbaa !34
  store ptr %i.bm, ptr %i.iy, align 8, !tbaa !35
  %i.jb = load ptr, ptr %i.bo, align 8, !tbaa !35 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.jb, null
  br i1 %.not.i23.i, label %ELEM_INSERT_NEXT.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i
  %i.jc = getelementptr i8, ptr %i.jb, i64 16
  store ptr %i.bm, ptr %i.jc, align 8, !tbaa !34
  br label %ELEM_INSERT_NEXT.exit.i

ELEM_INSERT_NEXT.exit.i:                          ; preds = %bb.ai, %.critedge.i
  %i.jd = icmp eq ptr %.0.i130, %.sink187
  br i1 %i.jd, label %bb.aj, label %pm_compile_retry_end_label.exit

bb.aj:                                            ; preds = %ELEM_INSERT_NEXT.exit.i
  store ptr %i.bm, ptr %i.cc, align 8, !tbaa !11
  br label %pm_compile_retry_end_label.exit

pm_compile_retry_end_label.exit:                  ; preds = %ELEM_INSERT_NEXT.exit.i, %bb.aj
  br i1 %4, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %pm_compile_retry_end_label.exit
  %i.je = load i32, ptr %2, align 4, !tbaa !553
  %i.jf = load i32, ptr %i.ch, align 4, !tbaa !556
  %i.jg = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.je, i32 noundef %i.jf, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.jh = load ptr, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jg, i64 16
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !34
  %i.jj = getelementptr i8, ptr %i.jh, i64 8
  store ptr %i.jg, ptr %i.jj, align 8, !tbaa !35
  store ptr %i.jg, ptr %i.cc, align 8, !tbaa !11
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %pm_compile_retry_end_label.exit
  %i.jk = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.jl = getelementptr i8, ptr %i.jk, i64 72
  store ptr %i.cb, ptr %i.jl, align 8, !tbaa !622
  %i.jm = ptrtoint ptr %i.ac to i64
  %i.jn = or i64 %i.jm, 1
  %i.jo = ptrtoint ptr %i.bm to i64
  %i.jp = or i64 %i.jo, 1                         ; 2 uses
  %i.jq = ptrtoint ptr %.0150 to i64
  %i.jr = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 5, i32 noundef 9, i64 noundef %i.jn, i64 noundef %i.jp, i64 noundef %i.jq, i64 noundef %i.jp) #37 ; 3 uses
  %i.js = load i32, ptr %i.ak, align 8, !tbaa !273
  %i.jt = add i32 %i.js, 1
  store i32 %i.jt, ptr %i.ak, align 8, !tbaa !273
  %i.ju = load i8, ptr %i.al, align 4
  %i.jv = or i8 %i.ju, 8
  store i8 %i.jv, ptr %i.al, align 4
  %i.jw = load i32, ptr %i.bu, align 8, !tbaa !273
  %i.jx = add i32 %i.jw, 2
  store i32 %i.jx, ptr %i.bu, align 8, !tbaa !273
  %i.jy = load i64, ptr %0, align 8, !tbaa !111
  %i.jz = and i64 %i.jy, 262144
  %.not.i136 = icmp eq i64 %i.jz, 0
  br i1 %.not.i136, label %ISEQ_COMPILE_DATA.exit138, label %ISEQ_COMPILE_DATA.exit138.thread

ISEQ_COMPILE_DATA.exit138:                        ; preds = %bb.al
  %i.ka = load i64, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !85
  %i.kb = icmp eq i64 %i.ka, 4
  br i1 %i.kb, label %ISEQ_COMPILE_DATA.exit141, label %rb_obj_write.exit

ISEQ_COMPILE_DATA.exit138.thread:                 ; preds = %bb.al
  %i.kc = load ptr, ptr %i.e, align 8, !tbaa !20  ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !85
  %i.kf = icmp eq i64 %i.ke, 4
  br i1 %i.kf, label %ISEQ_COMPILE_DATA.exit141, label %rb_obj_write.exit

ISEQ_COMPILE_DATA.exit141:                        ; preds = %ISEQ_COMPILE_DATA.exit138.thread, %ISEQ_COMPILE_DATA.exit138
  %.0.i140 = phi ptr [ null, %ISEQ_COMPILE_DATA.exit138 ], [ %i.kc, %ISEQ_COMPILE_DATA.exit138.thread ]
  %i.kg = getelementptr i8, ptr %.0.i140, i64 8
  %i.kh = call i64 @rb_ary_hidden_new(i64 noundef 3) #37 ; 4 uses
  store i64 %i.kh, ptr %i.kg, align 8, !tbaa !36
  %i.ki = icmp eq i64 %i.kh, 0
  %i.kj = and i64 %i.kh, 7
  %i.kk = icmp ne i64 %i.kj, 0
  %i.kl = or i1 %i.ki, %i.kk
  br i1 %i.kl, label %rb_obj_write.exit, label %bb.am

bb.am:                                            ; preds = %ISEQ_COMPILE_DATA.exit141
  %i.km = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.km, i64 noundef %i.kh) #37
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.am, %ISEQ_COMPILE_DATA.exit141, %ISEQ_COMPILE_DATA.exit138.thread, %ISEQ_COMPILE_DATA.exit138
  %i.kn = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.ko = getelementptr i8, ptr %i.kn, i64 8
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !85
  call void @rb_obj_freeze_inline(i64 noundef %i.jr) #37
  %i.kq = inttoptr i64 %i.jr to ptr
  %i.kr = getelementptr i8, ptr %i.kq, i64 8
  store i64 0, ptr %i.kr, align 8, !tbaa !36
end_hunk_8
