inline.NumInlined: 6676
inline.NumDeleted: 333
begin_hunk_0_@rb_iseq_build_from_ary:bb.a
  %i.ael = call i64 @rb_to_symbol_type(i64 noundef %i.aek) #37
  %i.aem = call i64 @rb_ary_push(i64 noundef %i.adh, i64 noundef %i.ael) #37 ; 0 uses
  %i.aen = add i32 %.0148.i, 1
  %.pre324.i = load i64, ptr %i.d, align 8, !tbaa !36
  br label %bb.fx, !llvm.loop !306

bb.gb:                                            ; preds = %insn_op_type.exit.i
  %i.aeo = getelementptr [8 x i8], ptr %i.aam, i64 %indvars.iv.i162
  store i64 %i.aav, ptr %i.aeo, align 8, !tbaa !36
  %i.aep = load i64, ptr %i.d, align 8, !tbaa !36
  %i.aeq = call i64 @rb_num2uint(i64 noundef %i.aep) #37
  %i.aer = trunc i64 %i.aeq to i32
  %i.aes = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.aet = getelementptr i8, ptr %i.aes, i64 252
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !123
  %.not157.i = icmp ugt i32 %i.aeu, %i.aer
  br i1 %.not157.i, label %rb_obj_written.exit.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aev = load i64, ptr %i.d, align 8, !tbaa !36 ; 3 uses
  %i.aew = trunc i64 %i.aev to i1
  br i1 %i.aew, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.aex = call i64 @rb_fix2int(i64 noundef %i.aev) #37
  br label %rb_num2int_inline.exit188.i

bb.ge:                                            ; preds = %bb.gc
  %i.aey = call i64 @rb_num2int(i64 noundef %i.aev) #37
  br label %rb_num2int_inline.exit188.i

rb_num2int_inline.exit188.i:                      ; preds = %bb.ge, %bb.gd
  %.0.i187.i = phi i64 [ %i.aex, %bb.gd ], [ %i.aey, %bb.ge ]
  %i.aez = trunc i64 %.0.i187.i to i32
  %i.afa = add i32 %i.aez, 1
  %i.afb = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.afc = getelementptr i8, ptr %i.afb, i64 252
  store i32 %i.afa, ptr %i.afc, align 4, !tbaa !123
  br label %rb_obj_written.exit.i

bb.gf:                                            ; preds = %insn_op_type.exit.i
  %i.afd = getelementptr [8 x i8], ptr %i.aam, i64 %indvars.iv.i162
  store i64 %i.aav, ptr %i.afd, align 8, !tbaa !36
  %i.afe = load i64, ptr %i.d, align 8, !tbaa !36
  %i.aff = call i64 @rb_num2uint(i64 noundef %i.afe) #37
  %i.afg = trunc i64 %i.aff to i32
  %i.afh = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.afi = getelementptr i8, ptr %i.afh, i64 256
  %i.afj = load i32, ptr %i.afi, align 8, !tbaa !122
  %.not156.i = icmp ugt i32 %i.afj, %i.afg
  br i1 %.not156.i, label %rb_obj_written.exit.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.afk = load i64, ptr %i.d, align 8, !tbaa !36 ; 3 uses
  %i.afl = trunc i64 %i.afk to i1
  br i1 %i.afl, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.afm = call i64 @rb_fix2int(i64 noundef %i.afk) #37
  br label %rb_num2int_inline.exit190.i

bb.gi:                                            ; preds = %bb.gg
  %i.afn = call i64 @rb_num2int(i64 noundef %i.afk) #37
  br label %rb_num2int_inline.exit190.i

rb_num2int_inline.exit190.i:                      ; preds = %bb.gi, %bb.gh
  %.0.i189.i = phi i64 [ %i.afm, %bb.gh ], [ %i.afn, %bb.gi ]
  %i.afo = trunc i64 %.0.i189.i to i32
  %i.afp = add i32 %i.afo, 1
  %i.afq = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.afr = getelementptr i8, ptr %i.afq, i64 256
  store i32 %i.afp, ptr %i.afr, align 8, !tbaa !122
  br label %rb_obj_written.exit.i

bb.gj:                                            ; preds = %insn_op_type.exit.i
  %i.afs = icmp eq i64 %i.aav, 4
  br i1 %i.afs, label %.thread.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.aft = call i64 @rb_intern2(ptr noundef nonnull @.str.220, i64 noundef 3) #37
  %i.afu = call i64 @rb_id2sym(i64 noundef %i.aft) #37
  %i.afv = call i64 @rb_hash_aref(i64 noundef %i.aav, i64 noundef %i.afu) #37 ; 2 uses
  %i.afw = call i64 @rb_intern2(ptr noundef nonnull @.str.221, i64 noundef 4) #37
  %i.afx = call i64 @rb_id2sym(i64 noundef %i.afw) #37
  %i.afy = call i64 @rb_hash_aref(i64 noundef %i.aav, i64 noundef %i.afx) #37 ; 2 uses
  %i.afz = call i64 @rb_intern2(ptr noundef nonnull @.str.222, i64 noundef 9) #37
  %i.aga = call i64 @rb_id2sym(i64 noundef %i.afz) #37
  %i.agb = call i64 @rb_hash_aref(i64 noundef %i.aav, i64 noundef %i.aga) #37 ; 2 uses
  %i.agc = call i64 @rb_intern2(ptr noundef nonnull @.str.223, i64 noundef 6) #37
  %i.agd = call i64 @rb_id2sym(i64 noundef %i.agc) #37
  %i.age = call i64 @rb_hash_aref(i64 noundef %i.aav, i64 noundef %i.agd) #37 ; 2 uses
  %i.agf = icmp eq i64 %i.afv, 4
  br i1 %i.agf, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.agg = call i64 @rb_sym2id(i64 noundef %i.afv) #37
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.0.i191.i = phi i64 [ 0, %bb.gk ], [ %i.agg, %bb.gl ] ; 2 uses
  %i.agh = icmp eq i64 %i.afy, 4
  br i1 %i.agh, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.agi = call i64 @rb_num2uint(i64 noundef %i.afy) #37
  %i.agj = trunc i64 %i.agi to i32
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.037.i.i = phi i32 [ 0, %bb.gm ], [ %i.agj, %bb.gn ] ; 4 uses
  %i.agk = icmp eq i64 %i.agb, 4
  br i1 %i.agk, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.agl = call i64 @rb_fix2int(i64 noundef %i.agb) #37
  %i.agm = trunc i64 %i.agl to i32
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.035.i.i = phi i32 [ 0, %bb.go ], [ %i.agm, %bb.gp ] ; 2 uses
  %i.agn = icmp eq i64 %i.age, 4
  br i1 %i.agn, label %.thread.i.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ago = inttoptr i64 %i.age to ptr             ; 5 uses
  %i.agp = load i64, ptr %i.ago, align 8, !tbaa !75 ; 2 uses
  %i.agq = and i64 %i.agp, 8192
  %.not.i.i.i192.i = icmp eq i64 %i.agq, 0
  br i1 %.not.i.i.i192.i, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.agr = lshr i64 %i.agp, 15
  %i.ags = and i64 %i.agr, 127
  br label %rb_array_len.exit.i.i.i

bb.gt:                                            ; preds = %bb.gr
  %i.agt = getelementptr i8, ptr %i.ago, i64 16
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !20
  br label %rb_array_len.exit.i.i.i

rb_array_len.exit.i.i.i:                          ; preds = %bb.gt, %bb.gs
  %.0.i.i.i193.i = phi i64 [ %i.ags, %bb.gs ], [ %i.agu, %bb.gt ] ; 6 uses
  %i.agv = add i64 %.0.i.i.i193.i, 2147483648
  %.not.i1.i.i.i = icmp ult i64 %i.agv, 4294967296
  br i1 %.not.i1.i.i.i, label %RARRAY_LENINT.exit.i.i, label %bb.gu

bb.gu:                                            ; preds = %rb_array_len.exit.i.i.i
  call void @rb_out_of_int(i64 noundef %.0.i.i.i193.i) #38
  unreachable

RARRAY_LENINT.exit.i.i:                           ; preds = %rb_array_len.exit.i.i.i
  %i.agw = trunc nsw i64 %.0.i.i.i193.i to i32    ; 2 uses
  %i.agx = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  %i.agy = call i64 @rb_size_mul_add_or_raise(i64 noundef %.0.i.i.i193.i, i64 noundef 8, i64 noundef 8, i64 noundef %i.agx) #37
  %i.agz = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.agy) #42 ; 4 uses
  %i.aha = getelementptr i8, ptr %i.agz, i64 4
  store i32 0, ptr %i.aha, align 4, !tbaa !7
  store i32 %i.agw, ptr %i.agz, align 8, !tbaa !7
  %i.ahb = icmp sgt i64 %.0.i.i.i193.i, 0
  br i1 %i.ahb, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %RARRAY_LENINT.exit.i.i
  %i.ahc = getelementptr i8, ptr %i.ago, i64 16
  %i.ahd = getelementptr i8, ptr %i.ago, i64 32
  %i.ahe = getelementptr i8, ptr %i.agz, i64 8
  br label %bb.gv

bb.gv:                                            ; preds = %RARRAY_AREF.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i196.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i197.i, %RARRAY_AREF.exit.i.i ] ; 3 uses
  %i.ahf = load i64, ptr %i.ago, align 8, !tbaa !75
  %i.ahg = and i64 %i.ahf, 8192
  %.not.i.i42.i.i = icmp eq i64 %i.ahg, 0
  br i1 %.not.i.i42.i.i, label %bb.gw, label %RARRAY_AREF.exit.i.i

bb.gw:                                            ; preds = %bb.gv
  %i.ahh = load ptr, ptr %i.ahd, align 8, !tbaa !20
  br label %RARRAY_AREF.exit.i.i

RARRAY_AREF.exit.i.i:                             ; preds = %bb.gw, %bb.gv
  %.0.i.i43.i.i = phi ptr [ %i.ahh, %bb.gw ], [ %i.ahc, %bb.gv ]
  %i.ahi = getelementptr [8 x i8], ptr %.0.i.i43.i.i, i64 %indvars.iv.i196.i
  %i.ahj = load i64, ptr %i.ahi, align 8, !tbaa !36 ; 2 uses
  %i.ahk = call i64 @rb_sym2id(i64 noundef %i.ahj) #37 ; 0 uses
  %i.ahl = getelementptr [8 x i8], ptr %i.ahe, i64 %indvars.iv.i196.i
  store i64 %i.ahj, ptr %i.ahl, align 8, !tbaa !36
  %indvars.iv.next.i197.i = add nuw nsw i64 %indvars.iv.i196.i, 1 ; 2 uses
  %exitcond.not.i198.i = icmp eq i64 %indvars.iv.next.i197.i, %.0.i.i.i193.i
  br i1 %exitcond.not.i198.i, label %._crit_edge.i.i, label %bb.gv, !llvm.loop !307

._crit_edge.i.i:                                  ; preds = %RARRAY_AREF.exit.i.i, %RARRAY_LENINT.exit.i.i
  %i.ahm = or i32 %.037.i.i, 32
  %i.ahn = add i32 %.035.i.i, %i.agw
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i.i, %bb.gq, %bb.gj
  %.in.in.in.i.i = phi i32 [ %.037.i.i, %._crit_edge.i.i ], [ %.037.i.i, %bb.gq ], [ 0, %bb.gj ]
  %.153.i.i = phi i64 [ %.0.i191.i, %._crit_edge.i.i ], [ %.0.i191.i, %bb.gq ], [ 0, %bb.gj ] ; 3 uses
  %.14052.i.i = phi ptr [ %i.agz, %._crit_edge.i.i ], [ null, %bb.gq ], [ null, %bb.gj ] ; 2 uses
  %.015.i.i.i = phi i32 [ %i.ahm, %._crit_edge.i.i ], [ %.037.i.i, %bb.gq ], [ 0, %bb.gj ] ; 3 uses
  %.0.i.i194.i = phi i32 [ %i.ahn, %._crit_edge.i.i ], [ %.035.i.i, %bb.gq ], [ 0, %bb.gj ] ; 3 uses
  %.in.in.i.i = lshr i32 %.in.in.in.i.i, 4
  %.in.i.i = and i32 %.in.in.i.i, 1
  %7 = xor i32 %.in.i.i, 1
  %i.aho = and i32 %.015.i.i.i, 8291
  %8 = or i32 %i.aho, %7
  %or.cond.not.i.i.i = icmp eq i32 %8, 0
  %i.ahp = or i32 %.015.i.i.i, 16
  %spec.select.i.i195.i = select i1 %or.cond.not.i.i.i, i32 %i.ahp, i32 %.015.i.i.i ; 3 uses
  %i.ahq = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 260  ; 2 uses
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !110
  %i.aht = add i32 %i.ahs, 1
  store i32 %i.aht, ptr %i.ahr, align 4, !tbaa !110
  %.not.i.i44.i.i = icmp ugt i64 %.153.i.i, 4294967295
  %i.ahu = icmp ugt i32 %spec.select.i.i195.i, 65535
  %or.cond13.i.i.i.i = or i1 %.not.i.i44.i.i, %i.ahu
  br i1 %or.cond13.i.i.i.i, label %bb.gz, label %bb.gx

bb.gx:                                            ; preds = %.thread.i.i
  %i.ahv = icmp ugt i32 %.0.i.i194.i, 32767
  %i.ahw = icmp ne ptr %.14052.i.i, null
  %or.cond.i.i.i.i = or i1 %i.ahw, %i.ahv
  br i1 %or.cond.i.i.i.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ahx = shl nuw i64 %.153.i.i, 32
  %i.ahy = shl nuw i32 %spec.select.i.i195.i, 16
  %i.ahz = zext i32 %i.ahy to i64
  %i.aia = or disjoint i64 %i.ahx, %i.ahz
  %i.aib = shl nuw nsw i32 %.0.i.i194.i, 1
  %i.aic = zext nneg i32 %i.aib to i64
  %i.aid = or disjoint i64 %i.aia, %i.aic
  %i.aie = or disjoint i64 %i.aid, 1
  %i.aif = inttoptr i64 %i.aie to ptr
  br label %vm_ci_new_.exit.i.i.i

bb.gz:                                            ; preds = %bb.gx, %.thread.i.i
  %i.aig = call ptr @rb_vm_ci_lookup(i64 noundef %.153.i.i, i32 noundef %spec.select.i.i195.i, i32 noundef %.0.i.i194.i, ptr noundef %.14052.i.i) #37
  br label %vm_ci_new_.exit.i.i.i

vm_ci_new_.exit.i.i.i:                            ; preds = %bb.gz, %bb.gy
  %.0.i.i45.i.i = phi ptr [ %i.aig, %bb.gz ], [ %i.aif, %bb.gy ] ; 2 uses
  %i.aih = ptrtoint ptr %.0.i.i45.i.i to i64      ; 4 uses
  %i.aii = icmp eq ptr %.0.i.i45.i.i, null
  %i.aij = and i64 %i.aih, 7
  %i.aik = icmp ne i64 %i.aij, 0
  %i.ail = or i1 %i.aii, %i.aik
  br i1 %i.ail, label %iseq_build_callinfo_from_hash.exit.i, label %bb.ha

bb.ha:                                            ; preds = %vm_ci_new_.exit.i.i.i
  call void @rb_gc_writebarrier(i64 noundef %i.oc, i64 noundef %i.aih) #37
  call void @rb_gc_writebarrier(i64 noundef %i.oc, i64 noundef %i.aih) #37
  br label %iseq_build_callinfo_from_hash.exit.i

iseq_build_callinfo_from_hash.exit.i:             ; preds = %bb.ha, %vm_ci_new_.exit.i.i.i
  %i.aim = getelementptr [8 x i8], ptr %i.aam, i64 %indvars.iv.i162
  store i64 %i.aih, ptr %i.aim, align 8, !tbaa !36
  br label %rb_obj_written.exit.i

bb.hb:                                            ; preds = %insn_op_type.exit.i
  %i.ain = call i64 @rb_to_symbol_type(i64 noundef %i.aav) #37
  %i.aio = getelementptr [8 x i8], ptr %i.aam, i64 %indvars.iv.i162
  store i64 %i.ain, ptr %i.aio, align 8, !tbaa !36
  br label %rb_obj_written.exit.i

bb.hc:                                            ; preds = %insn_op_type.exit.i
  %i.aip = inttoptr i64 %i.aav to ptr             ; 2 uses
  %i.aiq = load i64, ptr %i.aip, align 8, !tbaa !75 ; 2 uses
  %i.air = and i64 %i.aiq, 8192
  %.not.i199.i = icmp eq i64 %i.air, 0
  br i1 %.not.i199.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ais = lshr i64 %i.aiq, 15
  %i.ait = and i64 %i.ais, 127
  br label %rb_array_len.exit201.i

bb.he:                                            ; preds = %bb.hc
  %i.aiu = getelementptr i8, ptr %i.aip, i64 16
  %i.aiv = load i64, ptr %i.aiu, align 8, !tbaa !20
  br label %rb_array_len.exit201.i

rb_array_len.exit201.i:                           ; preds = %bb.he, %bb.hd
  %.0.i200.i = phi i64 [ %i.ait, %bb.hd ], [ %i.aiv, %bb.he ]
  %i.aiw = sdiv i64 %.0.i200.i, 2
  %i.aix = call i64 @rb_hash_new_with_size(i64 noundef %i.aiw) #37 ; 7 uses
  %i.aiy = call ptr @rb_hash_tbl_raw(i64 noundef %i.aix, ptr noundef nonnull @.str, i32 noundef 12136) #37
  %i.aiz = getelementptr i8, ptr %i.aiy, i64 8
  store ptr @cdhash_type, ptr %i.aiz, align 8, !tbaa !308
  %i.aja = load i64, ptr %i.d, align 8, !tbaa !36
  %i.ajb = call i64 @rb_to_array_type(i64 noundef %i.aja) #37 ; 2 uses
  store i64 %i.ajb, ptr %i.d, align 8, !tbaa !36
  br label %bb.hf

bb.hf:                                            ; preds = %register_label.exit, %rb_array_len.exit201.i
  %i.ajc = phi i64 [ %i.ajb, %rb_array_len.exit201.i ], [ %.pre.i165, %register_label.exit ]
  %.0145.i = phi i32 [ 0, %rb_array_len.exit201.i ], [ %i.alr, %register_label.exit ] ; 2 uses
  %i.ajd = sext i32 %.0145.i to i64               ; 3 uses
  %i.aje = inttoptr i64 %i.ajc to ptr             ; 4 uses
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !75 ; 2 uses
  %i.ajg = and i64 %i.ajf, 8192
  %.not.i202.i = icmp eq i64 %i.ajg, 0
  br i1 %.not.i202.i, label %rb_array_len.exit204.i, label %rb_array_len.exit204.thread.i

rb_array_len.exit204.i:                           ; preds = %bb.hf
  %i.ajh = getelementptr i8, ptr %i.aje, i64 16
  %i.aji = load i64, ptr %i.ajh, align 8, !tbaa !20
  %i.ajj = icmp sgt i64 %i.aji, %i.ajd
  br i1 %i.ajj, label %bb.hg, label %bb.hm

rb_array_len.exit204.thread.i:                    ; preds = %bb.hf
  %i.ajk = lshr i64 %i.ajf, 15
  %i.ajl = and i64 %i.ajk, 127
  %i.ajm = icmp sgt i64 %i.ajl, %i.ajd
  br i1 %i.ajm, label %.thread222.i, label %bb.hm

.thread222.i:                                     ; preds = %rb_array_len.exit204.thread.i
  %i.ajn = getelementptr i8, ptr %i.aje, i64 16
  br label %RARRAY_AREF.exit210.i

bb.hg:                                            ; preds = %rb_array_len.exit204.i
  %i.ajo = getelementptr i8, ptr %i.aje, i64 32
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !20
  br label %RARRAY_AREF.exit210.i

RARRAY_AREF.exit210.i:                            ; preds = %bb.hg, %.thread222.i
  %.pn.i = phi ptr [ %i.ajn, %.thread222.i ], [ %i.ajp, %bb.hg ]
  %.in241.i = getelementptr [8 x i8], ptr %.pn.i, i64 %i.ajd ; 2 uses
  %i.ajq = load i64, ptr %.in241.i, align 8, !tbaa !36
  %i.ajr = getelementptr i8, ptr %.in241.i, i64 8
  %i.ajs = load i64, ptr %i.ajr, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ajt = call i64 @rb_to_symbol_type(i64 noundef %i.ajs) #37 ; 2 uses
  %i.aju = call i32 @rb_st_lookup(ptr noundef %i.uf, i64 noundef %i.ajt, ptr noundef nonnull %i.a) #37
  %i.ajv = icmp eq i32 %i.aju, 0
  br i1 %i.ajv, label %bb.hh, label %bb.hl

bb.hh:                                            ; preds = %RARRAY_AREF.exit210.i
  %i.ajw = load i64, ptr %0, align 8, !tbaa !37
  %i.ajx = and i64 %i.ajw, 262144
  %.not.i.i.i.i.i169 = icmp eq i64 %i.ajx, 0
  br i1 %.not.i.i.i.i.i169, label %ISEQ_COMPILE_DATA.exit.i.i.i.i170, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ajy = load ptr, ptr %i.od, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i.i170

ISEQ_COMPILE_DATA.exit.i.i.i.i170:                ; preds = %bb.hi, %bb.hh
  %.0.i.i.i.i.i171 = phi ptr [ %i.ajy, %bb.hi ], [ null, %bb.hh ]
  %i.ajz = getelementptr i8, ptr %.0.i.i.i.i.i171, i64 96 ; 2 uses
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !40 ; 4 uses
  %i.akb = getelementptr i8, ptr %i.aka, i64 8
  %i.akc = load i32, ptr %i.akb, align 8, !tbaa !7 ; 2 uses
  %i.akd = zext i32 %i.akc to i64
  %i.ake = add nuw nsw i64 %i.akd, 48
  %i.akf = getelementptr i8, ptr %i.aka, i64 12
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !7 ; 4 uses
  %i.akh = zext i32 %i.akg to i64                 ; 2 uses
  %i.aki = icmp samesign ugt i64 %i.ake, %i.akh
  br i1 %i.aki, label %.preheader.i.i.i.i.i174, label %new_label_body.exit.i

.preheader.i.i.i.i.i174:                          ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i.i170
  %i.akj = icmp ult i32 %i.akg, 48
  br i1 %i.akj, label %.lr.ph.i.i.i.i.i179, label %._crit_edge.i.i.i.i.i175

.lr.ph.i.i.i.i.i179:                              ; preds = %.preheader.i.i.i.i.i174, %bb.hk
  %.027.i.i.i.i.i180 = phi i32 [ %i.akl, %bb.hk ], [ %i.akg, %.preheader.i.i.i.i.i174 ] ; 3 uses
  %i.akk = icmp samesign ugt i32 %.027.i.i.i.i.i180, 1073741822
  br i1 %i.akk, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %.lr.ph.i.i.i.i.i179
  call void @rb_memerror() #38
  unreachable

bb.hk:                                            ; preds = %.lr.ph.i.i.i.i.i179
  %i.akl = shl nuw nsw i32 %.027.i.i.i.i.i180, 1  ; 3 uses
  %i.akm = icmp samesign ult i32 %.027.i.i.i.i.i180, 24
  br i1 %i.akm, label %.lr.ph.i.i.i.i.i179, label %._crit_edge.i.i.loopexit.i.i.i181, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i.i181:                ; preds = %bb.hk
  %i.akn = zext nneg i32 %i.akl to i64
  br label %._crit_edge.i.i.i.i.i175

._crit_edge.i.i.i.i.i175:                         ; preds = %._crit_edge.i.i.loopexit.i.i.i181, %.preheader.i.i.i.i.i174
  %.0.lcssa.i.i.i.i.i176 = phi i32 [ %i.akg, %.preheader.i.i.i.i.i174 ], [ %i.akl, %._crit_edge.i.i.loopexit.i.i.i181 ]
  %.lcssa.i.i.i.i.i177 = phi i64 [ %i.akh, %.preheader.i.i.i.i.i174 ], [ %i.akn, %._crit_edge.i.i.loopexit.i.i.i181 ]
  %i.ako = add nuw nsw i64 %.lcssa.i.i.i.i.i177, 16
  %i.akp = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ako, i64 noundef 1) #39 ; 6 uses
  store ptr %i.akp, ptr %i.aka, align 8, !tbaa !40
  store ptr %i.akp, ptr %i.ajz, align 8, !tbaa !40
  store ptr null, ptr %i.akp, align 8, !tbaa !40
  %i.akq = getelementptr i8, ptr %i.akp, i64 8
  store i32 0, ptr %i.akq, align 8, !tbaa !7
  %i.akr = getelementptr i8, ptr %i.akp, i64 12
  store i32 %.0.lcssa.i.i.i.i.i176, ptr %i.akr, align 4, !tbaa !7
  br label %new_label_body.exit.i

new_label_body.exit.i:                            ; preds = %._crit_edge.i.i.i.i.i175, %ISEQ_COMPILE_DATA.exit.i.i.i.i170
  %i.aks = phi i32 [ %i.akc, %ISEQ_COMPILE_DATA.exit.i.i.i.i170 ], [ 0, %._crit_edge.i.i.i.i.i175 ] ; 2 uses
  %.022.i.i.i.i.i172 = phi ptr [ %i.aka, %ISEQ_COMPILE_DATA.exit.i.i.i.i170 ], [ %i.akp, %._crit_edge.i.i.i.i.i175 ] ; 2 uses
  %i.akt = getelementptr i8, ptr %.022.i.i.i.i.i172, i64 16
  %i.aku = getelementptr i8, ptr %.022.i.i.i.i.i172, i64 8
  %i.akv = zext i32 %i.aks to i64
  %i.akw = getelementptr i8, ptr %i.akt, i64 %i.akv ; 7 uses
  %i.akx = add i32 %i.aks, 48
  store i32 %i.akx, ptr %i.aku, align 8, !tbaa !7
  store i32 1, ptr %i.akw, align 8, !tbaa !193
  %i.aky = getelementptr i8, ptr %i.akw, i64 8
end_hunk_0
begin_hunk_1_@iseq_pop_newarray:bb.a
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
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
  store i32 46, ptr %i.p, align 8, !tbaa !65
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
  %i.f = load i64, ptr %i.e, align 8, !tbaa !75
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 62) ; 3 uses
  %i.j = icmp ult i64 %i.i, 10
  %switch.maskindex = trunc i64 %i.i to i16
  %switch.shifted = lshr i16 547, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.j, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc i64 %0 to i1
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %0, 254
  %i.m = icmp eq i64 %i.l, 12
  %spec.select = select i1 %i.m, i32 20, i32 4
  br label %bb.f

switch.lookup:                                    ; preds = %bb.c
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_type, i64 %i.i
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %spec.select, %bb.e ], [ 21, %bb.d ], [ %switch.load, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #4

declare ptr @rb_vm_ci_lookup(i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @insn_set_specialized_instruction(ptr noundef %0, ptr noundef nonnull captures(none) %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %2, 84
  br i1 %i.a, label %new_callinfo.exit, label %bb.b

new_callinfo.exit:                                ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.g = getelementptr i8, ptr %i.f, i64 260      ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !110
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !110
  %i.j = tail call ptr (ptr, ptr, i32, i32, ...) @insn_replace_with_operands(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 84, i32 noundef 2, i64 noundef 601296470019, i64 noundef %i.d) ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 24
  store i32 %2, ptr %i.k, align 8, !tbaa !65
  %i.l = sext i32 %2 to i64
  %i.m = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !20
  %i.o = zext i8 %i.n to i32
  %i.p = add nsw i32 %i.o, -1
  %i.q = getelementptr i8, ptr %1, i64 28
  store i32 %i.p, ptr %i.q, align 4, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %new_callinfo.exit
  %i.r = getelementptr i8, ptr %1, i64 56         ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !81
  %i.t = or i32 %i.s, 96
  store i32 %i.t, ptr %i.r, align 8, !tbaa !81
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr i8, ptr %i.g, i64 260      ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !110
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !110
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
define internal fastcc i32 @calc_sp_depth(i32 noundef %0, i32 %.24.val, ptr readonly captures(none) %.40.val) unnamed_addr #1 {
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
  %i.gh = load ptr, ptr %i.ah, align 8, !tbaa !46
  %i.gi = getelementptr i8, ptr %i.gh, i64 176
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !275
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !46 ; 2 uses
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
  %i.ij = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.ik = getelementptr i8, ptr %i.ij, i64 176
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !275
  %i.im = getelementptr i8, ptr %i.il, i64 16
  %.val = load ptr, ptr %i.im, align 8, !tbaa !46 ; 2 uses
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
  %i.jl = load ptr, ptr %i.j, align 8, !tbaa !63  ; 2 uses
  %.not.i235 = icmp eq ptr %i.jl, null
  br i1 %.not.i235, label %APPEND_LIST.exit, label %bb.af

bb.af:                                            ; preds = %iseq_set_use_block.exit
  %i.jm = getelementptr i8, ptr %i.jg, i64 8
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !35
  %i.jn = load ptr, ptr %i.j, align 8, !tbaa !63
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
  %i.jy = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.jz = getelementptr i8, ptr %i.jy, i64 260    ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !110
  %i.kb = add i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !110
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
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !70
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
define internal fastcc range(i32 -1, 2) i32 @compile_array(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(address) %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 {
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
define internal fastcc range(i32 -1, 2) i32 @compile_hash(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #1 {
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
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !45
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
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45
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
  %i.iv = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %.not.i358 = icmp eq ptr %i.iv, null
  br i1 %.not.i358, label %nd_line.exit362, label %bb.af

bb.af:                                            ; preds = %nd_line.exit356
  %i.iw = getelementptr i8, ptr %i.ir, i64 8
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !35
  %i.ix = load ptr, ptr %i.aa, align 8, !tbaa !63
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
  %i.jm = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %.not.i363 = icmp eq ptr %i.jm, null
  br i1 %.not.i363, label %APPEND_LIST.exit364, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jn = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 8
  store ptr %i.jm, ptr %i.jo, align 8, !tbaa !35
  %i.jp = load ptr, ptr %i.aa, align 8, !tbaa !63
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
  %i.kq = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %.not.i375 = icmp eq ptr %i.kq, null
  br i1 %.not.i375, label %nd_line.exit379, label %bb.al

bb.al:                                            ; preds = %nd_line.exit373
  %i.kr = getelementptr i8, ptr %i.km, i64 8
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !35
  %i.ks = load ptr, ptr %i.aa, align 8, !tbaa !63
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
  %i.nt = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %.not.i414 = icmp eq ptr %i.nt, null
  br i1 %.not.i414, label %APPEND_LIST.exit415, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nu = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 8
  store ptr %i.nt, ptr %i.nv, align 8, !tbaa !35
  %i.nw = load ptr, ptr %i.aa, align 8, !tbaa !63
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
  %i.ox = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %.not.i426 = icmp eq ptr %i.ox, null
  br i1 %.not.i426, label %nd_line.exit430, label %bb.aw

bb.aw:                                            ; preds = %nd_line.exit424
  %i.oy = getelementptr i8, ptr %i.ot, i64 8
  store ptr %i.ox, ptr %i.oy, align 8, !tbaa !35
  %i.oz = load ptr, ptr %i.aa, align 8, !tbaa !63
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
define internal fastcc range(i32 0, 2) i32 @compile_return(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !47   ; 5 uses
  %i.d = getelementptr i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1079 ; 3 uses
  %i.f = and i32 %i.c, -2
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.b, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170  ; 3 uses
  %.not61160 = icmp eq ptr %i.i, null
  br i1 %.not61160, label %._crit_edge.loopexit, label %.lr.ph161

.lr.ph:                                           ; preds = %.lr.ph161
  %i.j = getelementptr i8, ptr %i.n, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 3 uses
  %.not61 = icmp eq ptr %i.k, null
  br i1 %.not61, label %._crit_edge.loopexit, label %.lr.ph161, !llvm.loop !1081

.lr.ph161:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.l = phi ptr [ %i.k, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 2 uses
end_hunk_4
begin_hunk_5_@compile_dstr:bb.a
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
  %i.e = load i64, ptr %0, align 8, !tbaa !37
  %i.f = and i64 %i.e, 262144
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %ISEQ_COMPILE_DATA.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i

ISEQ_COMPILE_DATA.exit.i.i:                       ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.i = getelementptr i8, ptr %.0.i.i.i, i64 96  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40   ; 4 uses
  %i.k = icmp ugt i64 %i.d, 2147483646
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.d:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i.i
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !7    ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = add nuw nsw i64 %i.d, %i.n
  %i.p = getelementptr i8, ptr %i.j, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %i.s = icmp samesign ugt i64 %i.o, %i.r
  br i1 %i.s, label %.preheader.i.i.i, label %compile_data_calloc2.exit

.preheader.i.i.i:                                 ; preds = %bb.d
  %i.t = icmp samesign ugt i64 %i.d, %i.r
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.f
  %.027.i.i.i = phi i32 [ %i.v, %bb.f ], [ %i.q, %.preheader.i.i.i ] ; 2 uses
  %i.u = icmp ugt i32 %.027.i.i.i, 1073741822
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.v = shl nuw nsw i32 %.027.i.i.i, 1           ; 3 uses
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = icmp ugt i64 %i.d, %i.w
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !41

._crit_edge.i.i.i:                                ; preds = %bb.f, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.q, %.preheader.i.i.i ], [ %i.v, %bb.f ]
  %.lcssa.i.i.i = phi i64 [ %i.r, %.preheader.i.i.i ], [ %i.w, %bb.f ]
  %i.y = add nuw nsw i64 %.lcssa.i.i.i, 16
  %i.z = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.y, i64 noundef 1) #39 ; 6 uses
  store ptr %i.z, ptr %i.j, align 8, !tbaa !40
  store ptr %i.z, ptr %i.i, align 8, !tbaa !40
  store ptr null, ptr %i.z, align 8, !tbaa !40
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !7
  %i.ab = getelementptr i8, ptr %i.z, i64 12
  store i32 %.0.lcssa.i.i.i, ptr %i.ab, align 4, !tbaa !7
  br label %compile_data_calloc2.exit

compile_data_calloc2.exit:                        ; preds = %bb.d, %._crit_edge.i.i.i
  %i.ac = phi i32 [ 0, %._crit_edge.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %.022.i.i.i = phi ptr [ %i.z, %._crit_edge.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.022.i.i.i, i64 16
  %i.ae = getelementptr i8, ptr %.022.i.i.i, i64 8
  %i.af = zext i32 %i.ac to i64
  %i.ag = getelementptr i8, ptr %i.ad, i64 %i.af  ; 4 uses
  %i.ah = trunc nuw nsw i64 %i.d to i32
  %i.ai = add i32 %i.ac, %i.ah
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ag, i8 noundef 0, i64 noundef %i.d, i1 noundef false) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.aj = tail call i64 @rb_fix2int(i64 noundef %4) #37
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = tail call i64 @rb_fix2int(i64 noundef %6) #37
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = icmp ne ptr %5, null                    ; 2 uses
  %8 = zext i1 %i.an to i32
  %.not.i = icmp eq ptr %7, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %compile_data_calloc2.exit
  %i.ao = or i32 %i.am, 32
  %i.ap = load i32, ptr %7, align 8, !tbaa !7
  %i.aq = add i32 %i.ap, %i.ak
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %compile_data_calloc2.exit
  %.015.i = phi i32 [ %i.ao, %bb.g ], [ %i.am, %compile_data_calloc2.exit ] ; 3 uses
  %.0.i = phi i32 [ %i.aq, %bb.g ], [ %i.ak, %compile_data_calloc2.exit ] ; 3 uses
  %i.ar = and i32 %.015.i, 8291
  %9 = or i32 %i.ar, %8
  %or.cond.not.i = icmp eq i32 %9, 0
  %i.as = or i32 %.015.i, 16
  %spec.select.i = select i1 %or.cond.not.i, i32 %i.as, i32 %.015.i ; 3 uses
  %i.at = getelementptr i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46
  %i.av = getelementptr i8, ptr %i.au, i64 260    ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !110
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !110
  %.not.i.i = icmp ugt i64 %3, 4294967295
  %i.ay = icmp ugt i32 %spec.select.i, 65535
  %or.cond13.i.i = or i1 %.not.i.i, %i.ay
  br i1 %or.cond13.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = icmp ugt i32 %.0.i, 32767
  %i.ba = icmp ne ptr %7, null
  %or.cond.i.i = or i1 %i.ba, %i.az
  br i1 %or.cond.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = shl nuw i64 %3, 32
  %i.bc = shl nuw i32 %spec.select.i, 16
  %i.bd = zext i32 %i.bc to i64
  %i.be = or disjoint i64 %i.bb, %i.bd
  %i.bf = shl nuw nsw i32 %.0.i, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = or disjoint i64 %i.be, %i.bg
  %i.bi = or disjoint i64 %i.bh, 1
  %i.bj = inttoptr i64 %i.bi to ptr
  br label %vm_ci_new_.exit.i

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.bk = tail call ptr @rb_vm_ci_lookup(i64 noundef %3, i32 noundef %spec.select.i, i32 noundef %.0.i, ptr noundef %7) #37
  br label %vm_ci_new_.exit.i

vm_ci_new_.exit.i:                                ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.bk, %bb.k ], [ %i.bj, %bb.j ] ; 4 uses
  %i.bl = ptrtoint ptr %.0.i.i to i64             ; 7 uses
  %i.bm = icmp eq ptr %.0.i.i, null
  %i.bn = and i64 %i.bl, 7
  %i.bo = icmp ne i64 %i.bn, 0                    ; 2 uses
  %i.bp = or i1 %i.bm, %i.bo
  br i1 %i.bp, label %new_callinfo.exit, label %bb.l

bb.l:                                             ; preds = %vm_ci_new_.exit.i
  %i.bq = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.bq, i64 noundef %i.bl) #37
  br label %new_callinfo.exit

new_callinfo.exit:                                ; preds = %vm_ci_new_.exit.i, %bb.l
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !36
  store i64 %i.bl, ptr %i.ag, align 8, !tbaa !36
  %i.br = ptrtoint ptr %5 to i64                  ; 3 uses
  %i.bs = getelementptr i8, ptr %i.ag, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !36
  %i.bt = and i64 %i.br, 7
  %.not26 = icmp eq i64 %i.bt, 0
  %or.cond = and i1 %i.an, %.not26
  br i1 %or.cond, label %bb.m, label %rb_obj_written.exit

bb.m:                                             ; preds = %new_callinfo.exit
  %i.bu = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.bu, i64 noundef %i.br) #37
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.m, %new_callinfo.exit
  %.not.i.i23 = trunc i64 %i.bl to i1
  br i1 %.not.i.i23, label %bb.n, label %bb.o

bb.n:                                             ; preds = %rb_obj_written.exit
  %i.bv = trunc i64 %i.bl to i32
  %i.bw = lshr i32 %i.bv, 16
  br label %vm_ci_flag.exit

bb.o:                                             ; preds = %rb_obj_written.exit
  %i.bx = getelementptr i8, ptr %.0.i.i, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !70
  %i.bz = trunc i64 %i.by to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.n, %bb.o
  %.0.i24 = phi i32 [ %i.bw, %bb.n ], [ %i.bz, %bb.o ]
  %i.ca = and i32 %.0.i24, 8192
  %.not = icmp eq i32 %i.ca, 0
  %. = select i1 %.not, i32 55, i32 56
  %i.cb = tail call fastcc ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %., i32 noundef 2, ptr noundef nonnull %i.ag)
  %i.cc = icmp eq ptr %.0.i.i, null
  %i.cd = or i1 %i.cc, %i.bo
  br i1 %i.cd, label %rb_obj_written.exit25, label %bb.p

bb.p:                                             ; preds = %vm_ci_flag.exit
  %i.ce = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.ce, i64 noundef %i.bl) #37
  br label %rb_obj_written.exit25

rb_obj_written.exit25:                            ; preds = %vm_ci_flag.exit, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store ptr %i.a, ptr %i.b, align 8, !tbaa !89
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #37, !srcloc !1096
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.cg = load volatile i64, ptr %i.cf, align 8, !tbaa !36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret ptr %i.cb
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
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46
  %i.ag = getelementptr i8, ptr %i.af, i64 260    ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !110
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !110
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
._crit_edge.i.i.loopexit.i.i2088:                 ; preds = %bb.dm
  %i.cqe = zext nneg i32 %i.cqc to i64
  br label %._crit_edge.i.i.i.i2081

._crit_edge.i.i.i.i2081:                          ; preds = %._crit_edge.i.i.loopexit.i.i2088, %.preheader.i.i.i.i2080
  %.0.lcssa.i.i.i.i2082 = phi i32 [ %i.cpx, %.preheader.i.i.i.i2080 ], [ %i.cqc, %._crit_edge.i.i.loopexit.i.i2088 ]
  %.lcssa.i.i.i.i2083 = phi i64 [ %i.cpy, %.preheader.i.i.i.i2080 ], [ %i.cqe, %._crit_edge.i.i.loopexit.i.i2088 ]
  %i.cqf = add nuw nsw i64 %.lcssa.i.i.i.i2083, 16
  %i.cqg = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.cqf, i64 noundef 1) #39 ; 6 uses
  store ptr %i.cqg, ptr %i.cpr, align 8, !tbaa !40
  store ptr %i.cqg, ptr %i.cpq, align 8, !tbaa !40
  store ptr null, ptr %i.cqg, align 8, !tbaa !40
  %i.cqh = getelementptr i8, ptr %i.cqg, i64 8
  store i32 0, ptr %i.cqh, align 8, !tbaa !7
  %i.cqi = getelementptr i8, ptr %i.cqg, i64 12
  store i32 %.0.lcssa.i.i.i.i2082, ptr %i.cqi, align 4, !tbaa !7
  br label %new_label_body.exit2089

new_label_body.exit2089:                          ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i2075, %._crit_edge.i.i.i.i2081
  %i.cqj = phi i32 [ %i.cpt, %ISEQ_COMPILE_DATA.exit.i.i.i2075 ], [ 0, %._crit_edge.i.i.i.i2081 ] ; 2 uses
  %.022.i.i.i.i2078 = phi ptr [ %i.cpr, %ISEQ_COMPILE_DATA.exit.i.i.i2075 ], [ %i.cqg, %._crit_edge.i.i.i.i2081 ] ; 2 uses
  %i.cqk = getelementptr i8, ptr %.022.i.i.i.i2078, i64 16
  %i.cql = getelementptr i8, ptr %.022.i.i.i.i2078, i64 8
  %i.cqm = zext i32 %i.cqj to i64
  %i.cqn = getelementptr i8, ptr %i.cqk, i64 %i.cqm ; 9 uses
  %i.cqo = add i32 %i.cqj, 48
  store i32 %i.cqo, ptr %i.cql, align 8, !tbaa !7
  store i32 1, ptr %i.cqn, align 8, !tbaa !193
  %i.cqp = getelementptr i8, ptr %i.cqn, i64 8
  store ptr null, ptr %i.cqp, align 8, !tbaa !194
  %i.cqq = getelementptr i8, ptr %0, i64 24       ; 3 uses
  %i.cqr = load ptr, ptr %i.cqq, align 8, !tbaa !20
  %i.cqs = getelementptr i8, ptr %i.cqr, i64 132  ; 2 uses
  %i.cqt = load i32, ptr %i.cqs, align 4, !tbaa !195 ; 2 uses
  %i.cqu = add i32 %i.cqt, 1
  store i32 %i.cqu, ptr %i.cqs, align 4, !tbaa !195
  %i.cqv = getelementptr i8, ptr %i.cqn, i64 24
  store i32 %i.cqt, ptr %i.cqv, align 8, !tbaa !95
  %i.cqw = getelementptr i8, ptr %i.cqn, i64 44   ; 2 uses
  %i.cqx = load i8, ptr %i.cqw, align 4
  %i.cqy = and i8 %i.cqx, -16
  store i8 %i.cqy, ptr %i.cqw, align 4
  %i.cqz = getelementptr i8, ptr %i.cqn, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.cqz, align 4, !tbaa !7
  %i.cra = load i64, ptr %0, align 8, !tbaa !37
  %i.crb = and i64 %i.cra, 262144
  %.not.i.i.i.i2090 = icmp eq i64 %i.crb, 0
  br i1 %.not.i.i.i.i2090, label %ISEQ_COMPILE_DATA.exit.i.i.i2091, label %bb.dn

bb.dn:                                            ; preds = %new_label_body.exit2089
  %i.crc = load ptr, ptr %i.cqq, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i2091

ISEQ_COMPILE_DATA.exit.i.i.i2091:                 ; preds = %bb.dn, %new_label_body.exit2089
  %.0.i.i.i.i2092 = phi ptr [ %i.crc, %bb.dn ], [ null, %new_label_body.exit2089 ]
  %i.crd = getelementptr i8, ptr %.0.i.i.i.i2092, i64 96 ; 2 uses
  %i.cre = load ptr, ptr %i.crd, align 8, !tbaa !40 ; 4 uses
  %i.crf = getelementptr i8, ptr %i.cre, i64 8
  %i.crg = load i32, ptr %i.crf, align 8, !tbaa !7 ; 2 uses
  %i.crh = zext i32 %i.crg to i64
  %i.cri = add nuw nsw i64 %i.crh, 48
  %i.crj = getelementptr i8, ptr %i.cre, i64 12
  %i.crk = load i32, ptr %i.crj, align 4, !tbaa !7 ; 4 uses
  %i.crl = zext i32 %i.crk to i64                 ; 2 uses
  %i.crm = icmp samesign ugt i64 %i.cri, %i.crl
  br i1 %i.crm, label %.preheader.i.i.i.i2096, label %nd_line.exit2108

.preheader.i.i.i.i2096:                           ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i2091
  %i.crn = icmp ult i32 %i.crk, 48
  br i1 %i.crn, label %.lr.ph.i.i.i.i2102, label %._crit_edge.i.i.i.i2097

.lr.ph.i.i.i.i2102:                               ; preds = %.preheader.i.i.i.i2096, %bb.dp
  %.027.i.i.i.i2103 = phi i32 [ %i.crp, %bb.dp ], [ %i.crk, %.preheader.i.i.i.i2096 ] ; 3 uses
  %i.cro = icmp samesign ugt i32 %.027.i.i.i.i2103, 1073741822
  br i1 %i.cro, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %.lr.ph.i.i.i.i2102
  tail call void @rb_memerror() #38
  unreachable

bb.dp:                                            ; preds = %.lr.ph.i.i.i.i2102
  %i.crp = shl nuw nsw i32 %.027.i.i.i.i2103, 1   ; 3 uses
  %i.crq = icmp samesign ult i32 %.027.i.i.i.i2103, 24
  br i1 %i.crq, label %.lr.ph.i.i.i.i2102, label %._crit_edge.i.i.loopexit.i.i2104, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i2104:                 ; preds = %bb.dp
  %i.crr = zext nneg i32 %i.crp to i64
  br label %._crit_edge.i.i.i.i2097

._crit_edge.i.i.i.i2097:                          ; preds = %._crit_edge.i.i.loopexit.i.i2104, %.preheader.i.i.i.i2096
  %.0.lcssa.i.i.i.i2098 = phi i32 [ %i.crk, %.preheader.i.i.i.i2096 ], [ %i.crp, %._crit_edge.i.i.loopexit.i.i2104 ]
  %.lcssa.i.i.i.i2099 = phi i64 [ %i.crl, %.preheader.i.i.i.i2096 ], [ %i.crr, %._crit_edge.i.i.loopexit.i.i2104 ]
  %i.crs = add nuw nsw i64 %.lcssa.i.i.i.i2099, 16
  %i.crt = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.crs, i64 noundef 1) #39 ; 6 uses
  store ptr %i.crt, ptr %i.cre, align 8, !tbaa !40
  store ptr %i.crt, ptr %i.crd, align 8, !tbaa !40
  store ptr null, ptr %i.crt, align 8, !tbaa !40
  %i.cru = getelementptr i8, ptr %i.crt, i64 8
  store i32 0, ptr %i.cru, align 8, !tbaa !7
  %i.crv = getelementptr i8, ptr %i.crt, i64 12
  store i32 %.0.lcssa.i.i.i.i2098, ptr %i.crv, align 4, !tbaa !7
  br label %nd_line.exit2108

nd_line.exit2108:                                 ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i2091, %._crit_edge.i.i.i.i2097
  %i.crw = phi i32 [ %i.crg, %ISEQ_COMPILE_DATA.exit.i.i.i2091 ], [ 0, %._crit_edge.i.i.i.i2097 ] ; 2 uses
  %.022.i.i.i.i2094 = phi ptr [ %i.cre, %ISEQ_COMPILE_DATA.exit.i.i.i2091 ], [ %i.crt, %._crit_edge.i.i.i.i2097 ] ; 2 uses
  %i.crx = getelementptr i8, ptr %.022.i.i.i.i2094, i64 16
  %i.cry = getelementptr i8, ptr %.022.i.i.i.i2094, i64 8
  %i.crz = zext i32 %i.crw to i64
  %i.csa = getelementptr i8, ptr %i.crx, i64 %i.crz ; 9 uses
  %i.csb = add i32 %i.crw, 48
  store i32 %i.csb, ptr %i.cry, align 8, !tbaa !7
  store i32 1, ptr %i.csa, align 8, !tbaa !193
  %i.csc = getelementptr i8, ptr %i.csa, i64 8
  store ptr null, ptr %i.csc, align 8, !tbaa !194
  %i.csd = load ptr, ptr %i.cqq, align 8, !tbaa !20
  %i.cse = getelementptr i8, ptr %i.csd, i64 132  ; 2 uses
  %i.csf = load i32, ptr %i.cse, align 4, !tbaa !195 ; 2 uses
  %i.csg = add i32 %i.csf, 1
  store i32 %i.csg, ptr %i.cse, align 4, !tbaa !195
  %i.csh = getelementptr i8, ptr %i.csa, i64 24
  store i32 %i.csf, ptr %i.csh, align 8, !tbaa !95
  %i.csi = getelementptr i8, ptr %i.csa, i64 44   ; 2 uses
  %i.csj = load i8, ptr %i.csi, align 4
  %i.csk = and i8 %i.csj, -16
  store i8 %i.csk, ptr %i.csi, align 4
  %i.csl = getelementptr i8, ptr %i.csa, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.csl, align 4, !tbaa !7
  %i.csm = load i64, ptr %2, align 8, !tbaa !176
  %i.csn = lshr i64 %i.csm, 15
  %i.cso = trunc i64 %i.csn to i32
  %i.csp = getelementptr i8, ptr %2, i64 24       ; 4 uses
  %i.csq = load i32, ptr %i.csp, align 8, !tbaa !278
  %i.csr = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.cso, i32 noundef %i.csq, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.css = getelementptr i8, ptr %1, i64 24       ; 10 uses
  %i.cst = load ptr, ptr %i.css, align 8, !tbaa !11 ; 2 uses
  %i.csu = getelementptr i8, ptr %i.csr, i64 16
  store ptr %i.cst, ptr %i.csu, align 8, !tbaa !34
  %i.csv = getelementptr i8, ptr %i.cst, i64 8
  store ptr %i.csr, ptr %i.csv, align 8, !tbaa !35
  store ptr %i.csr, ptr %i.css, align 8, !tbaa !11
  %i.csw = getelementptr i8, ptr %2, i64 32
  %i.csx = load ptr, ptr %i.csw, align 8, !tbaa !831
  %i.csy = add i32 %7, 1
  %i.csz = tail call fastcc i32 @iseq_compile_pattern_each(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.csx, ptr noundef nonnull %i.cqn, ptr noundef nonnull %i.csa, i1 noundef zeroext %5, i1 noundef zeroext true, i32 noundef %i.csy, i1 noundef zeroext %8)
  %.not = icmp eq i32 %i.csz, 0
  br i1 %.not, label %.critedge1252, label %nd_line.exit2119

nd_line.exit2119:                                 ; preds = %nd_line.exit2108
  %i.cta = load ptr, ptr %i.css, align 8, !tbaa !11 ; 2 uses
  %i.ctb = getelementptr i8, ptr %i.cqn, i64 16
  store ptr %i.cta, ptr %i.ctb, align 8, !tbaa !34
  %i.ctc = getelementptr i8, ptr %i.cta, i64 8
  store ptr %i.cqn, ptr %i.ctc, align 8, !tbaa !35
  store ptr %i.cqn, ptr %i.css, align 8, !tbaa !11
  %i.ctd = load i64, ptr %2, align 8, !tbaa !176
  %i.cte = lshr i64 %i.ctd, 15
  %i.ctf = trunc i64 %i.cte to i32
  %i.ctg = load i32, ptr %i.csp, align 8, !tbaa !278
  %i.cth = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.ctf, i32 noundef %i.ctg, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.cti = load ptr, ptr %i.css, align 8, !tbaa !11 ; 2 uses
  %i.ctj = getelementptr i8, ptr %i.cth, i64 16
  store ptr %i.cti, ptr %i.ctj, align 8, !tbaa !34
  %i.ctk = getelementptr i8, ptr %i.cti, i64 8
  store ptr %i.cth, ptr %i.ctk, align 8, !tbaa !35
  store ptr %i.cth, ptr %i.css, align 8, !tbaa !11
  %i.ctl = load i64, ptr %2, align 8, !tbaa !176
  %i.ctm = lshr i64 %i.ctl, 15
  %i.ctn = trunc i64 %i.ctm to i32
  %i.cto = load i32, ptr %i.csp, align 8, !tbaa !278
  %i.ctp = ptrtoint ptr %3 to i64
  %i.ctq = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.ctn, i32 noundef %i.cto, i32 noundef 72, i32 noundef 1, i64 noundef %i.ctp) ; 3 uses
  %i.ctr = load ptr, ptr %i.css, align 8, !tbaa !11 ; 2 uses
  %i.cts = getelementptr i8, ptr %i.ctq, i64 16
  store ptr %i.ctr, ptr %i.cts, align 8, !tbaa !34
  %i.ctt = getelementptr i8, ptr %i.ctr, i64 8
  store ptr %i.ctq, ptr %i.ctt, align 8, !tbaa !35
  store ptr %i.ctq, ptr %i.css, align 8, !tbaa !11
  %i.ctu = getelementptr i8, ptr %3, i64 40       ; 2 uses
  %i.ctv = load i32, ptr %i.ctu, align 8, !tbaa !273
  %i.ctw = add i32 %i.ctv, 1
  store i32 %i.ctw, ptr %i.ctu, align 8, !tbaa !273
  %i.ctx = load i64, ptr %2, align 8, !tbaa !176
  %i.cty = lshr i64 %i.ctx, 15
  %i.ctz = trunc i64 %i.cty to i32
  %i.cua = load i32, ptr %i.csp, align 8, !tbaa !278
  %i.cub = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.ctz, i32 noundef %i.cua, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.cuc = load ptr, ptr %i.css, align 8, !tbaa !11 ; 2 uses
  %i.cud = getelementptr i8, ptr %i.cub, i64 16
  store ptr %i.cuc, ptr %i.cud, align 8, !tbaa !34
  %i.cue = getelementptr i8, ptr %i.cuc, i64 8
  store ptr %i.cub, ptr %i.cue, align 8, !tbaa !35
  %i.cuf = getelementptr i8, ptr %i.csa, i64 16
  store ptr %i.cub, ptr %i.cuf, align 8, !tbaa !34
  %i.cug = getelementptr i8, ptr %i.cub, i64 8
  store ptr %i.csa, ptr %i.cug, align 8, !tbaa !35
  store ptr %i.csa, ptr %i.css, align 8, !tbaa !11
  %i.cuh = getelementptr i8, ptr %2, i64 40
  %i.cui = load ptr, ptr %i.cuh, align 8, !tbaa !833
  %i.cuj = tail call fastcc i32 @iseq_compile_pattern_each(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.cui, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext true, i32 noundef %7, i1 noundef zeroext %8)
  %.not1203.not = icmp eq i32 %i.cuj, 0
  br i1 %.not1203.not, label %.critedge1252, label %bb.dq

nd_line.exit2123:                                 ; preds = %nd_line.exit
  %i.cuk = lshr i64 %.pre, 15
  %i.cul = trunc i64 %i.cuk to i32
  %i.cum = tail call ptr @ruby_node_name(i32 noundef %i.c) #37
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.cul, ptr noundef nonnull @.str.124, ptr noundef %i.cum)
  br label %.critedge1252

.sink.split:                                      ; preds = %nd_line.exit1961, %nd_line.exit1471, %nd_line.exit1730, %nd_line.exit1947, %nd_line.exit1970, %nd_line.exit1991, %nd_line.exit2039, %nd_line.exit2073
  %.sink2512 = phi ptr [ %4, %nd_line.exit2073 ], [ %3, %nd_line.exit2039 ], [ %3, %nd_line.exit1991 ], [ %3, %nd_line.exit1970 ], [ %4, %nd_line.exit1947 ], [ %4, %nd_line.exit1730 ], [ %4, %nd_line.exit1471 ], [ %4, %nd_line.exit1961 ]
  %i.cun = getelementptr i8, ptr %.sink2512, i64 40 ; 2 uses
  %i.cuo = load i32, ptr %i.cun, align 8, !tbaa !273
  %i.cup = add i32 %i.cuo, 1
  store i32 %i.cup, ptr %i.cun, align 8, !tbaa !273
  br label %bb.dq

bb.dq:                                            ; preds = %.sink.split, %nd_line.exit2119
  br label %.critedge1252

.critedge1252:                                    ; preds = %new_label_body.exit2177, %new_label_body.exit2139, %new_label_body.exit2158, %.critedge1255, %new_label_body.exit2215, %nd_line.exit1988, %nd_line.exit1985, %nd_line.exit2108, %bb.v, %nd_line.exit1386, %nd_line.exit2058, %nd_line.exit2061, %bb.di, %iseq_compile_each.exit2000, %nd_line.exit1965, %iseq_compile_each.exit, %.loopexit, %nd_line.exit1912, %new_label_body.exit1537, %nd_line.exit1643, %nd_line.exit1625, %nd_line.exit2119, %bb.dq, %nd_line.exit2123
  %.19 = phi i32 [ 0, %nd_line.exit2123 ], [ 1, %bb.dq ], [ 0, %bb.v ], [ 0, %new_label_body.exit2158 ], [ 0, %new_label_body.exit1537 ], [ 0, %nd_line.exit2119 ], [ 0, %.loopexit ], [ 0, %nd_line.exit1965 ], [ 0, %nd_line.exit2108 ], [ 0, %iseq_compile_each.exit ], [ 0, %new_label_body.exit2215 ], [ 0, %nd_line.exit1625 ], [ 0, %nd_line.exit1643 ], [ 0, %nd_line.exit1912 ], [ 0, %.critedge1255 ], [ 0, %iseq_compile_each.exit2000 ], [ 0, %bb.di ], [ 0, %nd_line.exit2061 ], [ 0, %nd_line.exit2058 ], [ 0, %new_label_body.exit2139 ], [ 0, %nd_line.exit1988 ], [ 0, %nd_line.exit1386 ], [ 0, %nd_line.exit1985 ], [ 0, %new_label_body.exit2177 ]
  ret i32 %.19
}

declare noalias ptr @rb_xmalloc_mul_add(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @iseq_compile_pattern_constant(ptr noundef %0, ptr noundef nonnull %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %5) unnamed_addr #1 {
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
define internal fastcc void @iseq_compile_array_deconstruct(ptr noundef %0, ptr noundef nonnull captures(none) %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, i32 noundef %8, i1 noundef zeroext %9) unnamed_addr #1 {
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
  %i.km = and i16 %i.kj, 16
  %.not227 = icmp eq i16 %i.km, 0
  br i1 %.not227, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kn = getelementptr i8, ptr %i.fo, i64 240    ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !175
  %i.kp = add i32 %.4, 1
  %i.kq = load i32, ptr %2, align 4, !tbaa !553
  %i.kr = load i32, ptr %i.df, align 4, !tbaa !556
  %i.ks = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.kq, i32 noundef %i.kr, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.kt = load ptr, ptr %i.fi, align 8, !tbaa !11 ; 2 uses
  %i.ku = getelementptr i8, ptr %i.ks, i64 16
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !34
  %i.kv = getelementptr i8, ptr %i.kt, i64 8
  store ptr %i.ks, ptr %i.kv, align 8, !tbaa !35
  store ptr %i.ks, ptr %i.fi, align 8, !tbaa !11
  %i.kw = load i16, ptr %i.fx, align 8
  %i.kx = and i16 %i.kw, 32
  %.not229 = icmp eq i16 %i.kx, 0
  br i1 %.not229, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ky = load i32, ptr %i.kn, align 8, !tbaa !175
  %i.kz = getelementptr i8, ptr %i.kl, i64 12
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !225
  %i.lb = sub i32 %i.ky, %i.la
  %i.lc = load i32, ptr %2, align 4, !tbaa !553
  %i.ld = load i32, ptr %i.df, align 4, !tbaa !556
  call fastcc void @pm_iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef %7, i32 noundef %i.lc, i32 noundef %i.ld, i32 noundef %i.lb, i32 noundef %.0.lcssa.i)
  %i.le = load i32, ptr %2, align 4, !tbaa !553
  %i.lf = load i32, ptr %i.df, align 4, !tbaa !556
  %.pr.i = load i64, ptr @pm_compile_forwarding_super_node.rbimpl_id, align 8, !tbaa !36 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i278, label %rbimpl_intern_const.exit

.lr.ph.i278:                                      ; preds = %bb.ai, %.lr.ph.i278
  %i.lg = call i64 @rb_intern2(ptr noundef nonnull @.str.113, i64 noundef 3) #37 ; 3 uses
  store i64 %i.lg, ptr @pm_compile_forwarding_super_node.rbimpl_id, align 8, !tbaa !36
  %.not.i279 = icmp eq i64 %i.lg, 0
  br i1 %.not.i279, label %.lr.ph.i278, label %rbimpl_intern_const.exit, !llvm.loop !230

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i278, %bb.ai
  %.lcssa.i = phi i64 [ %.pr.i, %bb.ai ], [ %i.lg, %.lr.ph.i278 ]
  %i.lh = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.le, i32 noundef %i.lf, i64 noundef %.lcssa.i, i64 noundef 1, ptr noundef null, i64 noundef 1, ptr noundef null)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.li = load i32, ptr %2, align 4, !tbaa !553
  %i.lj = load i32, ptr %i.df, align 4, !tbaa !556
  %i.lk = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.li, i32 noundef %i.lj, i32 noundef 37, i32 noundef 1, i64 noundef 1)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %rbimpl_intern_const.exit
  %.sink393 = phi ptr [ %i.lk, %bb.aj ], [ %i.lh, %rbimpl_intern_const.exit ] ; 3 uses
  %i.ll = load ptr, ptr %i.fi, align 8, !tbaa !11 ; 2 uses
  %i.lm = getelementptr i8, ptr %.sink393, i64 16
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !34
  %i.ln = getelementptr i8, ptr %i.ll, i64 8
  store ptr %.sink393, ptr %i.ln, align 8, !tbaa !35
  store ptr %.sink393, ptr %i.fi, align 8, !tbaa !11
  %i.lo = load i32, ptr %i.kl, align 8, !tbaa !220
  %i.lp = icmp sgt i32 %i.lo, 0
  br i1 %i.lp, label %.lr.ph332, label %._crit_edge333

.lr.ph332:                                        ; preds = %bb.ak
  %i.lq = getelementptr i8, ptr %i.kl, i64 16
  %i.lr = getelementptr i8, ptr %i.fm, i64 24
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph332, %get_local_var_idx.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph332 ], [ %indvars.iv.next, %get_local_var_idx.exit ] ; 2 uses
  %i.ls = load ptr, ptr %i.lq, align 8, !tbaa !227
  %i.lt = getelementptr [8 x i8], ptr %i.ls, i64 %indvars.iv
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !36 ; 2 uses
  %i.lv = load ptr, ptr %i.fn, align 8, !tbaa !46
  %i.lw = getelementptr i8, ptr %i.lv, i64 176
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !275
  %i.ly = getelementptr i8, ptr %i.lx, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !46 ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 240
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !175 ; 2 uses
  %.not.i.i280 = icmp eq i32 %i.mb, 0
  br i1 %.not.i.i280, label %get_dyna_var_idx_at_raw.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.al
  %i.mc = getelementptr i8, ptr %i.lz, i64 144
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !188
  %wide.trip.count.i.i = zext i32 %i.mb to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.an ] ; 3 uses
  %i.me = getelementptr [8 x i8], ptr %i.md, i64 %indvars.iv.i.i
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !36
  %i.mg = icmp eq i64 %i.mf, %i.lu
  br i1 %i.mg, label %get_dyna_var_idx_at_raw.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %get_dyna_var_idx_at_raw.exit.thread.i, label %bb.am, !llvm.loop !1027

get_dyna_var_idx_at_raw.exit.i:                   ; preds = %bb.am
  %i.mh = trunc nuw i64 %indvars.iv.i.i to i32    ; 3 uses
  %i.mi = icmp slt i32 %i.mh, 0
  br i1 %i.mi, label %get_dyna_var_idx_at_raw.exit.thread.i, label %get_local_var_idx.exit

get_dyna_var_idx_at_raw.exit.thread.i:            ; preds = %bb.an, %get_dyna_var_idx_at_raw.exit.i, %bb.al
  %.07.i8.i = phi i32 [ %i.mh, %get_dyna_var_idx_at_raw.exit.i ], [ -1, %bb.al ], [ -1, %bb.an ] ; 2 uses
  %i.mj = load ptr, ptr %i.lr, align 8, !tbaa !20
  %i.mk = getelementptr i8, ptr %i.mj, i64 128
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !21
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %i.fm, i32 noundef %i.ml, ptr noundef nonnull @.str.146, i32 noundef %.07.i8.i)
  br label %get_local_var_idx.exit

get_local_var_idx.exit:                           ; preds = %get_dyna_var_idx_at_raw.exit.i, %get_dyna_var_idx_at_raw.exit.thread.i
  %.07.i9.i = phi i32 [ %.07.i8.i, %get_dyna_var_idx_at_raw.exit.thread.i ], [ %i.mh, %get_dyna_var_idx_at_raw.exit.i ]
  %i.mm = sub i32 %i.ko, %.07.i9.i
  %i.mn = call i64 @rb_id2sym(i64 noundef %i.lu) #37
  %i.mo = load i32, ptr %2, align 4, !tbaa !553
  %i.mp = load i32, ptr %i.df, align 4, !tbaa !556
  %i.mq = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.mo, i32 noundef %i.mp, i32 noundef 19, i32 noundef 1, i64 noundef %i.mn) ; 3 uses
  %i.mr = load ptr, ptr %i.fi, align 8, !tbaa !11 ; 2 uses
  %i.ms = getelementptr i8, ptr %i.mq, i64 16
  store ptr %i.mr, ptr %i.ms, align 8, !tbaa !34
  %i.mt = getelementptr i8, ptr %i.mr, i64 8
  store ptr %i.mq, ptr %i.mt, align 8, !tbaa !35
  store ptr %i.mq, ptr %i.fi, align 8, !tbaa !11
  %i.mu = load i32, ptr %2, align 4, !tbaa !553
  %i.mv = load i32, ptr %i.df, align 4, !tbaa !556
  call fastcc void @pm_iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef %7, i32 noundef %i.mu, i32 noundef %i.mv, i32 noundef %i.mm, i32 noundef %.0.lcssa.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.mw = load i32, ptr %i.kl, align 8, !tbaa !220
  %i.mx = sext i32 %i.mw to i64
  %i.my = icmp slt i64 %indvars.iv.next, %i.mx
  br i1 %i.my, label %bb.al, label %._crit_edge333.loopexit, !llvm.loop !1340

._crit_edge333.loopexit:                          ; preds = %get_local_var_idx.exit
  %i.mz = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.na = shl i32 %i.mz, 1
  %i.nb = or disjoint i32 %i.na, 1
  %i.nc = sext i32 %i.nb to i64
  %i.nd = shl nsw i64 %i.nc, 1
  %i.ne = or disjoint i64 %i.nd, 1
  br label %._crit_edge333

._crit_edge333:                                   ; preds = %._crit_edge333.loopexit, %bb.ak
  %.0213.lcssa = phi i64 [ 3, %bb.ak ], [ %i.ne, %._crit_edge333.loopexit ]
  %i.nf = load i32, ptr %2, align 4, !tbaa !553
  %i.ng = load i32, ptr %i.df, align 4, !tbaa !556
  %i.nh = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.nf, i32 noundef %i.ng, i64 noundef 167, i64 noundef %.0213.lcssa, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.ni = load ptr, ptr %i.fi, align 8, !tbaa !11 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.nh, i64 16
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !34
  %i.nk = getelementptr i8, ptr %i.ni, i64 8
  store ptr %i.nh, ptr %i.nk, align 8, !tbaa !35
  store ptr %i.nh, ptr %i.fi, align 8, !tbaa !11
  %i.nl = or disjoint i32 %.0210, 2112
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ag
  %i.nm = and i16 %i.kj, 32
  %.not228 = icmp eq i16 %i.nm, 0
  br i1 %.not228, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nn = getelementptr i8, ptr %i.fo, i64 240
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !175
  %i.np = getelementptr i8, ptr %i.kl, i64 12
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !225
  %i.nr = sub i32 %i.no, %i.nq
  %i.ns = load i32, ptr %2, align 4, !tbaa !553
  %i.nt = load i32, ptr %i.df, align 4, !tbaa !556
  call fastcc void @pm_iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef %7, i32 noundef %i.ns, i32 noundef %i.nt, i32 noundef %i.nr, i32 noundef %.0.lcssa.i)
  %i.nu = add i32 %.4, 1
  %i.nv = or disjoint i32 %.0210, 64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %._crit_edge333
  %.5 = phi i32 [ %i.kp, %._crit_edge333 ], [ %i.nu, %bb.ap ], [ %.4, %bb.ao ] ; 3 uses
  %.1 = phi i32 [ %i.nl, %._crit_edge333 ], [ %i.nv, %bb.ap ], [ %.0210, %bb.ao ] ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !63 ; 2 uses
  %.not.i281 = icmp eq ptr %i.nx, null
  br i1 %.not.i281, label %APPEND_LIST.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ny = load ptr, ptr %i.di, align 8, !tbaa !11 ; 2 uses
  %i.nz = getelementptr i8, ptr %i.ny, i64 8
  store ptr %i.nx, ptr %i.nz, align 8, !tbaa !35
  %i.oa = load ptr, ptr %i.nw, align 8, !tbaa !63
  %i.ob = getelementptr i8, ptr %i.oa, i64 16
  store ptr %i.ny, ptr %i.ob, align 8, !tbaa !34
  %i.oc = load ptr, ptr %i.fi, align 8, !tbaa !11
  store ptr %i.oc, ptr %i.di, align 8, !tbaa !11
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %bb.aq, %bb.ar
  %i.od = icmp ne ptr %.0, null
  %8 = zext i1 %i.od to i32
  %i.oe = and i32 %.1, 8291
  %9 = or i32 %i.oe, %8
  %or.cond.not.i = icmp eq i32 %9, 0
  %i.of = or i32 %.1, 16
  %spec.select.i283 = select i1 %or.cond.not.i, i32 %i.of, i32 %.1 ; 2 uses
  %i.og = load ptr, ptr %i.fj, align 8, !tbaa !46
  %i.oh = getelementptr i8, ptr %i.og, i64 260    ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !110
  %i.oj = add i32 %i.oi, 1
  store i32 %i.oj, ptr %i.oh, align 4, !tbaa !110
  %i.ok = icmp ugt i32 %.5, 32767
  br i1 %i.ok, label %bb.at, label %bb.as

bb.as:                                            ; preds = %APPEND_LIST.exit
  %i.ol = shl nuw nsw i32 %spec.select.i283, 16
  %i.om = shl nuw nsw i32 %.5, 1
  %i.on = or disjoint i32 %i.ol, %i.om
  %i.oo = or disjoint i32 %i.on, 1
  %i.op = zext nneg i32 %i.oo to i64
  %i.oq = inttoptr i64 %i.op to ptr
  br label %vm_ci_new_.exit.i

bb.at:                                            ; preds = %APPEND_LIST.exit
  %i.or = call ptr @rb_vm_ci_lookup(i64 noundef 0, i32 noundef %spec.select.i283, i32 noundef %.5, ptr noundef null) #37
  br label %vm_ci_new_.exit.i

vm_ci_new_.exit.i:                                ; preds = %bb.at, %bb.as
  %.0.i.i = phi ptr [ %i.or, %bb.at ], [ %i.oq, %bb.as ] ; 2 uses
  %i.os = ptrtoint ptr %.0.i.i to i64             ; 3 uses
  %i.ot = icmp eq ptr %.0.i.i, null
  %i.ou = and i64 %i.os, 7
  %i.ov = icmp ne i64 %i.ou, 0
  %i.ow = or i1 %i.ot, %i.ov
  br i1 %i.ow, label %new_callinfo.exit284, label %bb.au

bb.au:                                            ; preds = %vm_ci_new_.exit.i
  %i.ox = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.ox, i64 noundef %i.os) #37
  br label %new_callinfo.exit284

new_callinfo.exit284:                             ; preds = %vm_ci_new_.exit.i, %bb.au
  %i.oy = load i32, ptr %2, align 4, !tbaa !553
  %i.oz = load i32, ptr %i.df, align 4, !tbaa !556
  %i.pa = ptrtoint ptr %.0 to i64                 ; 2 uses
  %i.pb = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.oy, i32 noundef %i.oz, i32 noundef 67, i32 noundef 2, i64 noundef %i.os, i64 noundef %i.pa) ; 7 uses
  %i.pc = load ptr, ptr %i.di, align 8, !tbaa !11 ; 2 uses
  %i.pd = getelementptr i8, ptr %i.pb, i64 16
  store ptr %i.pc, ptr %i.pd, align 8, !tbaa !34
  %i.pe = getelementptr i8, ptr %i.pc, i64 8
  store ptr %i.pb, ptr %i.pe, align 8, !tbaa !35
  store ptr %i.pb, ptr %i.di, align 8, !tbaa !11
  %i.pf = load ptr, ptr %i.c, align 8, !tbaa !1334
  %.not230 = icmp eq ptr %i.pf, null
  br i1 %.not230, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %new_callinfo.exit284
  %i.pg = load i32, ptr %i.pb, align 8, !tbaa !64
  %i.ph = icmp eq i32 %i.pg, 2
  br i1 %i.ph, label %get_prev_insn.exit.i.preheader, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.av, %bb.aw
  %.pn.i.i = phi ptr [ %.0.i.i285, %bb.aw ], [ %i.pb, %bb.av ]
  %.0.in.i.i = getelementptr i8, ptr %.pn.i.i, i64 16
  %.0.i.i285 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !34 ; 4 uses
  %.not.i.i286 = icmp eq ptr %.0.i.i285, null
  br i1 %.not.i.i286, label %get_prev_insn.exit.i.preheader, label %bb.aw

bb.aw:                                            ; preds = %.preheader1.i
  %i.pi = load i32, ptr %.0.i.i285, align 8, !tbaa !64
  %i.pj = and i32 %i.pi, -2
  %switch.i.i = icmp eq i32 %i.pj, 2
  br i1 %switch.i.i, label %get_prev_insn.exit.i.preheader, label %.preheader1.i

get_prev_insn.exit.i.preheader:                   ; preds = %bb.aw, %.preheader1.i, %bb.av
  %.0.i287.ph = phi ptr [ %i.pb, %bb.av ], [ null, %.preheader1.i ], [ %.0.i.i285, %bb.aw ]
  br label %get_prev_insn.exit.i

get_prev_insn.exit.i.loopexit:                    ; preds = %bb.ax, %.preheader.i288
  br label %get_prev_insn.exit.i

get_prev_insn.exit.i:                             ; preds = %get_prev_insn.exit.i.preheader, %get_prev_insn.exit.i.loopexit
  %.0.i287 = phi ptr [ %.0.i19.i, %get_prev_insn.exit.i.loopexit ], [ %.0.i287.ph, %get_prev_insn.exit.i.preheader ] ; 5 uses
  %i.pk = getelementptr i8, ptr %.0.i287, i64 24
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !65
  switch i32 %i.pl, label %.preheader.i288 [
    i32 55, label %.critedge.i
    i32 67, label %.critedge.i
    i32 56, label %.critedge.i
    i32 68, label %.critedge.i
  ]

.preheader.i288:                                  ; preds = %get_prev_insn.exit.i, %bb.ax
  %.pn.i17.i = phi ptr [ %.0.i19.i, %bb.ax ], [ %.0.i287, %get_prev_insn.exit.i ]
  %.0.in.i18.i = getelementptr i8, ptr %.pn.i17.i, i64 16
  %.0.i19.i = load ptr, ptr %.0.in.i18.i, align 8, !tbaa !34 ; 4 uses
  %.not.i20.i = icmp eq ptr %.0.i19.i, null
  br i1 %.not.i20.i, label %get_prev_insn.exit.i.loopexit, label %bb.ax, !llvm.loop !1333

bb.ax:                                            ; preds = %.preheader.i288
  %i.pm = load i32, ptr %.0.i19.i, align 8, !tbaa !64
  %i.pn = and i32 %i.pm, -2
  %switch.i21.i = icmp eq i32 %i.pn, 2
  br i1 %switch.i21.i, label %get_prev_insn.exit.i.loopexit, label %.preheader.i288, !llvm.loop !1333

.critedge.i:                                      ; preds = %get_prev_insn.exit.i, %get_prev_insn.exit.i, %get_prev_insn.exit.i, %get_prev_insn.exit.i
  %i.po = getelementptr i8, ptr %.0.i287, i64 8   ; 2 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !35
  %i.pq = getelementptr i8, ptr %.0209, i64 8     ; 2 uses
  store ptr %i.pp, ptr %i.pq, align 8, !tbaa !35
  %i.pr = getelementptr i8, ptr %.0209, i64 16
  store ptr %.0.i287, ptr %i.pr, align 8, !tbaa !34
  store ptr %.0209, ptr %i.po, align 8, !tbaa !35
  %i.ps = load ptr, ptr %i.pq, align 8, !tbaa !35 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ps, null
  br i1 %.not.i23.i, label %ELEM_INSERT_NEXT.exit.i, label %bb.ay

bb.ay:                                            ; preds = %.critedge.i
  %i.pt = getelementptr i8, ptr %i.ps, i64 16
  store ptr %.0209, ptr %i.pt, align 8, !tbaa !34
  br label %ELEM_INSERT_NEXT.exit.i

ELEM_INSERT_NEXT.exit.i:                          ; preds = %bb.ay, %.critedge.i
  %i.pu = icmp eq ptr %.0.i287, %i.pb
  br i1 %i.pu, label %bb.az, label %pm_compile_retry_end_label.exit

bb.az:                                            ; preds = %ELEM_INSERT_NEXT.exit.i
  store ptr %.0209, ptr %i.di, align 8, !tbaa !11
  br label %pm_compile_retry_end_label.exit

pm_compile_retry_end_label.exit:                  ; preds = %ELEM_INSERT_NEXT.exit.i, %bb.az
  %i.pv = ptrtoint ptr %.0208 to i64
  %i.pw = or i64 %i.pv, 1
  %i.px = ptrtoint ptr %.0209 to i64
  %i.py = or i64 %i.px, 1                         ; 2 uses
  %i.pz = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 5, i32 noundef 9, i64 noundef %i.pw, i64 noundef %i.py, i64 noundef %i.pa, i64 noundef %i.py) #37 ; 3 uses
  %.not231 = icmp eq ptr %.0208, null
  br i1 %.not231, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %pm_compile_retry_end_label.exit
  %i.qa = getelementptr i8, ptr %.0208, i64 40    ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !273
  %i.qc = add i32 %i.qb, 1
  store i32 %i.qc, ptr %i.qa, align 8, !tbaa !273
  %i.qd = getelementptr i8, ptr %.0208, i64 44    ; 2 uses
  %i.qe = load i8, ptr %i.qd, align 4
  %i.qf = or i8 %i.qe, 8
  store i8 %i.qf, ptr %i.qd, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %pm_compile_retry_end_label.exit, %bb.ba
  %i.qg = getelementptr i8, ptr %.0209, i64 40    ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !273
  %i.qi = add i32 %i.qh, 2
  store i32 %i.qi, ptr %i.qg, align 8, !tbaa !273
  %i.qj = load i64, ptr %0, align 8, !tbaa !37
  %i.qk = and i64 %i.qj, 262144
  %.not.i289 = icmp eq i64 %i.qk, 0
  br i1 %.not.i289, label %ISEQ_COMPILE_DATA.exit291, label %ISEQ_COMPILE_DATA.exit291.thread

ISEQ_COMPILE_DATA.exit291:                        ; preds = %bb.bb
  %i.ql = load i64, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !86
  %i.qm = icmp eq i64 %i.ql, 4
  br i1 %i.qm, label %ISEQ_COMPILE_DATA.exit294, label %rb_obj_write.exit

ISEQ_COMPILE_DATA.exit291.thread:                 ; preds = %bb.bb
  %i.qn = getelementptr i8, ptr %0, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !20 ; 2 uses
  %i.qp = getelementptr i8, ptr %i.qo, i64 8
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !86
  %i.qr = icmp eq i64 %i.qq, 4
  br i1 %i.qr, label %ISEQ_COMPILE_DATA.exit294, label %rb_obj_write.exit

ISEQ_COMPILE_DATA.exit294:                        ; preds = %ISEQ_COMPILE_DATA.exit291.thread, %ISEQ_COMPILE_DATA.exit291
  %.0.i293 = phi ptr [ null, %ISEQ_COMPILE_DATA.exit291 ], [ %i.qo, %ISEQ_COMPILE_DATA.exit291.thread ]
  %i.qs = getelementptr i8, ptr %.0.i293, i64 8
  %i.qt = call i64 @rb_ary_hidden_new(i64 noundef 3) #37 ; 4 uses
  store i64 %i.qt, ptr %i.qs, align 8, !tbaa !36
  %i.qu = icmp eq i64 %i.qt, 0
  %i.qv = and i64 %i.qt, 7
  %i.qw = icmp ne i64 %i.qv, 0
  %i.qx = or i1 %i.qu, %i.qw
  br i1 %i.qx, label %rb_obj_write.exit, label %bb.bc

bb.bc:                                            ; preds = %ISEQ_COMPILE_DATA.exit294
  %i.qy = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.qy, i64 noundef %i.qt) #37
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.bc, %ISEQ_COMPILE_DATA.exit294, %ISEQ_COMPILE_DATA.exit291.thread, %ISEQ_COMPILE_DATA.exit291
  %i.qz = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !20
  %i.rb = getelementptr i8, ptr %i.ra, i64 8
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !86
  call void @rb_obj_freeze_inline(i64 noundef %i.pz) #37
  %i.rd = inttoptr i64 %i.pz to ptr
  %i.re = getelementptr i8, ptr %i.rd, i64 8
  store i64 0, ptr %i.re, align 8, !tbaa !36
  %i.rf = call i64 @rb_ary_push(i64 noundef %i.rc, i64 noundef %i.pz) #37 ; 0 uses
  %i.rg = load ptr, ptr %i.qz, align 8, !tbaa !20
  %i.rh = getelementptr i8, ptr %i.rg, i64 72
  store ptr %.0207, ptr %i.rh, align 8, !tbaa !622
  br label %bb.bd

bb.bd:                                            ; preds = %rb_obj_write.exit, %new_callinfo.exit284
  br i1 %4, label %bb.be, label %bb.bf
end_hunk_7
begin_hunk_8_@pm_compile_super_node:bb.a
bb.l:                                             ; preds = %._crit_edge.i
  %i.ec = getelementptr i8, ptr %.pre.i110.pre, i64 80
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !234
  %i.ee = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.194, i32 noundef %spec.select.i, i64 noundef %i.ed) #37
  br label %make_name_for_block.exit

make_name_for_block.exit:                         ; preds = %.thread.i, %bb.l
  %.013.i = phi i64 [ %i.eb, %.thread.i ], [ %i.ee, %bb.l ]
  %i.ef = call i64 @rb_fstring(i64 noundef %.013.i) #37
  %i.eg = load i32, ptr %2, align 4, !tbaa !553
  %i.eh = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ei = getelementptr i8, ptr %i.eh, i64 140
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !827 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ek = call i64 @rb_iseq_path(ptr noundef nonnull %0) #37
  %i.el = call i64 @rb_iseq_realpath(ptr noundef nonnull %0) #37
  %.not.i112 = icmp eq i32 %i.ej, 0
  %i.em = add i32 %i.ej, 1
  %i.en = select i1 %.not.i112, i32 0, i32 %i.em
  %i.eo = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ep = getelementptr i8, ptr %i.eo, i64 152
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !45
  %i.er = call ptr @pm_iseq_new_with_opt(ptr noundef nonnull %7, i64 noundef %i.ef, i64 noundef %i.ek, i64 noundef %i.el, i32 noundef %i.eg, ptr noundef nonnull %0, i32 noundef %i.en, i32 noundef 2, ptr noundef %i.eq, ptr noundef nonnull %i.a) #37 ; 3 uses
  %i.es = load i32, ptr %i.a, align 4, !tbaa !7
  %.not12.i = icmp eq i32 %i.es, 0
  br i1 %.not12.i, label %pm_new_child_iseq.exit, label %bb.m

bb.m:                                             ; preds = %make_name_for_block.exit
  call void @pm_scope_node_destroy(ptr noundef nonnull %7)
  %i.et = load i32, ptr %i.a, align 4, !tbaa !7
  call void @rb_jump_tag(i32 noundef %i.et) #41
  unreachable

pm_new_child_iseq.exit:                           ; preds = %make_name_for_block.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.eu = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ev = getelementptr i8, ptr %i.eu, i64 72
  store ptr %i.er, ptr %i.ev, align 8, !tbaa !622
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !536 ; 2 uses
  %.not.i116 = icmp eq ptr %i.ex, null
  br i1 %.not.i116, label %bb.o, label %bb.n

bb.n:                                             ; preds = %pm_new_child_iseq.exit
  call void @rb_st_free_table(ptr noundef nonnull %i.ex) #37
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %pm_new_child_iseq.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %.pr = load ptr, ptr %i.cw, align 8, !tbaa !1486
  %.not82 = icmp eq ptr %.pr, null
  br i1 %.not82, label %.thread, label %iseq_set_use_block.exit

.thread:                                          ; preds = %bb.i, %bb.o
  %.0155 = phi ptr [ %i.er, %bb.o ], [ null, %bb.i ] ; 3 uses
  %i.ey = getelementptr i8, ptr %0, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !46
  %i.fa = getelementptr i8, ptr %i.ez, i64 176
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !275
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  %.val = load ptr, ptr %i.fc, align 8, !tbaa !46 ; 2 uses
  %i.fd = getelementptr i8, ptr %.val, i64 16     ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 8            ; 2 uses
  %i.ff = and i16 %i.fe, 4096
  %.not.i117 = icmp eq i16 %i.ff, 0
  br i1 %.not.i117, label %bb.p, label %iseq_set_use_block.exit

bb.p:                                             ; preds = %.thread
  %i.fg = or disjoint i16 %i.fe, 4096
  store i16 %i.fg, ptr %i.fd, align 8
  %i.fh = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !232
  %i.fi = call zeroext i1 @rb_warning_category_enabled_p(i32 noundef 4) #37
  br i1 %i.fi, label %iseq_set_use_block.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fj = getelementptr i8, ptr %.val, i64 80
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !234
  %i.fl = call i64 @rb_intern_str(i64 noundef %i.fk) #37
  %i.fm = getelementptr i8, ptr %i.fh, i64 1304
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !235
  %i.fo = call i32 @rb_set_insert(ptr noundef %i.fn, i64 noundef %i.fl) #37 ; 0 uses
  br label %iseq_set_use_block.exit

iseq_set_use_block.exit:                          ; preds = %bb.j, %bb.q, %bb.p, %.thread, %bb.o
  %.0154 = phi ptr [ %.0155, %bb.q ], [ %i.er, %bb.o ], [ %.0155, %.thread ], [ %.0155, %bb.p ], [ null, %bb.j ] ; 4 uses
  %i.fp = and i32 %i.df, 2114
  %or.cond88 = icmp eq i32 %i.fp, 66
  br i1 %or.cond88, label %bb.r, label %bb.s

bb.r:                                             ; preds = %iseq_set_use_block.exit
  %i.fq = load i32, ptr %2, align 4, !tbaa !553
  %i.fr = load i32, ptr %i.co, align 4, !tbaa !556
  %i.fs = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.fq, i32 noundef %i.fr, i32 noundef 36, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ft = load ptr, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fs, i64 16
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !34
  %i.fv = getelementptr i8, ptr %i.ft, i64 8
  store ptr %i.fs, ptr %i.fv, align 8, !tbaa !35
  store ptr %i.fs, ptr %i.d, align 8, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %iseq_set_use_block.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !63 ; 2 uses
  %.not.i119 = icmp eq ptr %i.fx, null
  br i1 %.not.i119, label %APPEND_LIST.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fy = load ptr, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 8
  store ptr %i.fx, ptr %i.fz, align 8, !tbaa !35
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !63
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  store ptr %i.fy, ptr %i.gb, align 8, !tbaa !34
  %i.gc = load ptr, ptr %i.d, align 8, !tbaa !11
  store ptr %i.gc, ptr %i.cj, align 8, !tbaa !11
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %bb.s, %bb.t
  br i1 %i.de, label %bb.u, label %APPEND_LIST.exit._crit_edge

bb.u:                                             ; preds = %APPEND_LIST.exit
  %i.gd = getelementptr i8, ptr %0, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !46 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 176
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !275
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !46
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  %i.gk = load i16, ptr %i.gj, align 8
  %i.gl = and i16 %i.gk, 8192
  %.not86 = icmp eq i16 %i.gl, 0
  br i1 %.not86, label %APPEND_LIST.exit._crit_edge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gm = or i32 %i.df, 8452                      ; 2 uses
  store i32 %i.gm, ptr %i.b, align 4, !tbaa !7
  %i.gn = load ptr, ptr %i.c, align 8, !tbaa !1058 ; 4 uses
  %.not.i120 = icmp eq ptr %i.gn, null
  br i1 %.not.i120, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.go = or i32 %i.df, 8484
  %i.gp = load i32, ptr %i.gn, align 8, !tbaa !7
  %i.gq = add i32 %i.gp, %i.cy
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.015.i = phi i32 [ %i.go, %bb.w ], [ %i.gm, %bb.v ] ; 3 uses
  %.0.i121 = phi i32 [ %i.gq, %bb.w ], [ %i.cy, %bb.v ] ; 3 uses
  %i.gr = getelementptr i8, ptr %i.ge, i64 260    ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !110
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !110
  %i.gu = icmp ugt i32 %.015.i, 65535
  br i1 %i.gu, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gv = icmp ugt i32 %.0.i121, 32767
  %i.gw = icmp ne ptr %i.gn, null
  %or.cond.i.i = or i1 %i.gw, %i.gv
  br i1 %or.cond.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gx = shl nuw i32 %.015.i, 16
  %i.gy = shl nuw nsw i32 %.0.i121, 1
  %i.gz = or disjoint i32 %i.gy, %i.gx
  %i.ha = or disjoint i32 %i.gz, 1
  %i.hb = zext i32 %i.ha to i64
  %i.hc = inttoptr i64 %i.hb to ptr
  br label %vm_ci_new_.exit.i

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.hd = call ptr @rb_vm_ci_lookup(i64 noundef 0, i32 noundef %.015.i, i32 noundef %.0.i121, ptr noundef %i.gn) #37
  br label %vm_ci_new_.exit.i

vm_ci_new_.exit.i:                                ; preds = %bb.aa, %bb.z
  %.0.i.i = phi ptr [ %i.hd, %bb.aa ], [ %i.hc, %bb.z ] ; 2 uses
  %i.he = ptrtoint ptr %.0.i.i to i64             ; 3 uses
  %i.hf = icmp eq ptr %.0.i.i, null
  %i.hg = and i64 %i.he, 7
  %i.hh = icmp ne i64 %i.hg, 0
  %i.hi = or i1 %i.hf, %i.hh
  br i1 %i.hi, label %new_callinfo.exit, label %bb.ab

bb.ab:                                            ; preds = %vm_ci_new_.exit.i
  %i.hj = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.hj, i64 noundef %i.he) #37
  br label %new_callinfo.exit

new_callinfo.exit:                                ; preds = %vm_ci_new_.exit.i, %bb.ab
  %i.hk = load i32, ptr %2, align 4, !tbaa !553
  %i.hl = load i32, ptr %i.co, align 4, !tbaa !556
  %i.hm = ptrtoint ptr %.0154 to i64
  %i.hn = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.hk, i32 noundef %i.hl, i32 noundef 68, i32 noundef 2, i64 noundef %i.he, i64 noundef %i.hm)
  br label %bb.ai

APPEND_LIST.exit._crit_edge:                      ; preds = %APPEND_LIST.exit, %bb.u
  %i.ho = load ptr, ptr %i.c, align 8, !tbaa !1058 ; 4 uses
  %i.hp = icmp ne ptr %.0154, null
  %8 = zext i1 %i.hp to i32
  %.not.i123 = icmp eq ptr %i.ho, null
  br i1 %.not.i123, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %APPEND_LIST.exit._crit_edge
  %i.hq = or i32 %i.df, 292
  %i.hr = load i32, ptr %i.ho, align 8, !tbaa !7
  %i.hs = add i32 %i.hr, %i.cy
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %APPEND_LIST.exit._crit_edge
  %.015.i124 = phi i32 [ %i.hq, %bb.ac ], [ %i.dg, %APPEND_LIST.exit._crit_edge ] ; 3 uses
  %.0.i125 = phi i32 [ %i.hs, %bb.ac ], [ %i.cy, %APPEND_LIST.exit._crit_edge ] ; 3 uses
  %i.ht = and i32 %.015.i124, 8291
  %9 = or i32 %i.ht, %8
  %or.cond.not.i126 = icmp eq i32 %9, 0
  %i.hu = or i32 %.015.i124, 16
  %spec.select.i127 = select i1 %or.cond.not.i126, i32 %i.hu, i32 %.015.i124 ; 3 uses
  %i.hv = getelementptr i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !46
  %i.hx = getelementptr i8, ptr %i.hw, i64 260    ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !110
  %i.hz = add i32 %i.hy, 1
  store i32 %i.hz, ptr %i.hx, align 4, !tbaa !110
  %i.ia = icmp ugt i32 %spec.select.i127, 65535
  br i1 %i.ia, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ib = icmp ugt i32 %.0.i125, 32767
  %i.ic = icmp ne ptr %i.ho, null
  %or.cond.i.i128 = or i1 %i.ic, %i.ib
  br i1 %or.cond.i.i128, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.id = shl nuw i32 %spec.select.i127, 16
  %i.ie = shl nuw nsw i32 %.0.i125, 1
  %i.if = or disjoint i32 %i.id, %i.ie
  %i.ig = or disjoint i32 %i.if, 1
  %i.ih = zext i32 %i.ig to i64
  %i.ii = inttoptr i64 %i.ih to ptr
  br label %vm_ci_new_.exit.i129

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.ij = call ptr @rb_vm_ci_lookup(i64 noundef 0, i32 noundef %spec.select.i127, i32 noundef %.0.i125, ptr noundef %i.ho) #37
  br label %vm_ci_new_.exit.i129

vm_ci_new_.exit.i129:                             ; preds = %bb.ag, %bb.af
  %.0.i.i130 = phi ptr [ %i.ij, %bb.ag ], [ %i.ii, %bb.af ] ; 2 uses
  %i.ik = ptrtoint ptr %.0.i.i130 to i64          ; 3 uses
  %i.il = icmp eq ptr %.0.i.i130, null
  %i.im = and i64 %i.ik, 7
  %i.in = icmp ne i64 %i.im, 0
  %i.io = or i1 %i.il, %i.in
  br i1 %i.io, label %new_callinfo.exit131, label %bb.ah

bb.ah:                                            ; preds = %vm_ci_new_.exit.i129
  %i.ip = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.ip, i64 noundef %i.ik) #37
  br label %new_callinfo.exit131

new_callinfo.exit131:                             ; preds = %vm_ci_new_.exit.i129, %bb.ah
  %i.iq = load i32, ptr %2, align 4, !tbaa !553
  %i.ir = load i32, ptr %i.co, align 4, !tbaa !556
  %i.is = ptrtoint ptr %.0154 to i64
  %i.it = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.iq, i32 noundef %i.ir, i32 noundef 67, i32 noundef 2, i64 noundef %i.ik, i64 noundef %i.is)
  br label %bb.ai

bb.ai:                                            ; preds = %new_callinfo.exit131, %new_callinfo.exit
  %.sink191 = phi ptr [ %i.it, %new_callinfo.exit131 ], [ %i.hn, %new_callinfo.exit ] ; 7 uses
  %i.iu = load ptr, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.iv = getelementptr i8, ptr %.sink191, i64 16
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !34
  %i.iw = getelementptr i8, ptr %i.iu, i64 8
  store ptr %.sink191, ptr %i.iw, align 8, !tbaa !35
  store ptr %.sink191, ptr %i.cj, align 8, !tbaa !11
  %i.ix = load i32, ptr %.sink191, align 8, !tbaa !64
  %i.iy = icmp eq i32 %i.ix, 2
  br i1 %i.iy, label %get_prev_insn.exit.i.preheader, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.ai, %bb.aj
  %.pn.i.i = phi ptr [ %.0.i.i132, %bb.aj ], [ %.sink191, %bb.ai ]
  %.0.in.i.i = getelementptr i8, ptr %.pn.i.i, i64 16
  %.0.i.i132 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !34 ; 4 uses
  %.not.i.i133 = icmp eq ptr %.0.i.i132, null
  br i1 %.not.i.i133, label %get_prev_insn.exit.i.preheader, label %bb.aj

bb.aj:                                            ; preds = %.preheader1.i
  %i.iz = load i32, ptr %.0.i.i132, align 8, !tbaa !64
  %i.ja = and i32 %i.iz, -2
  %switch.i.i = icmp eq i32 %i.ja, 2
  br i1 %switch.i.i, label %get_prev_insn.exit.i.preheader, label %.preheader1.i

get_prev_insn.exit.i.preheader:                   ; preds = %bb.aj, %.preheader1.i, %bb.ai
  %.0.i134.ph = phi ptr [ %.sink191, %bb.ai ], [ %.0.i.i132, %bb.aj ], [ null, %.preheader1.i ]
  br label %get_prev_insn.exit.i

get_prev_insn.exit.i.loopexit:                    ; preds = %bb.ak, %.preheader.i135
  br label %get_prev_insn.exit.i

get_prev_insn.exit.i:                             ; preds = %get_prev_insn.exit.i.preheader, %get_prev_insn.exit.i.loopexit
  %.0.i134 = phi ptr [ %.0.i19.i, %get_prev_insn.exit.i.loopexit ], [ %.0.i134.ph, %get_prev_insn.exit.i.preheader ] ; 5 uses
  %i.jb = getelementptr i8, ptr %.0.i134, i64 24
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !65
  switch i32 %i.jc, label %.preheader.i135 [
    i32 55, label %.critedge.i
    i32 67, label %.critedge.i
    i32 56, label %.critedge.i
    i32 68, label %.critedge.i
  ]

.preheader.i135:                                  ; preds = %get_prev_insn.exit.i, %bb.ak
  %.pn.i17.i = phi ptr [ %.0.i19.i, %bb.ak ], [ %.0.i134, %get_prev_insn.exit.i ]
  %.0.in.i18.i = getelementptr i8, ptr %.pn.i17.i, i64 16
  %.0.i19.i = load ptr, ptr %.0.in.i18.i, align 8, !tbaa !34 ; 4 uses
  %.not.i20.i = icmp eq ptr %.0.i19.i, null
  br i1 %.not.i20.i, label %get_prev_insn.exit.i.loopexit, label %bb.ak, !llvm.loop !1333

bb.ak:                                            ; preds = %.preheader.i135
  %i.jd = load i32, ptr %.0.i19.i, align 8, !tbaa !64
  %i.je = and i32 %i.jd, -2
  %switch.i21.i = icmp eq i32 %i.je, 2
  br i1 %switch.i21.i, label %get_prev_insn.exit.i.loopexit, label %.preheader.i135, !llvm.loop !1333

.critedge.i:                                      ; preds = %get_prev_insn.exit.i, %get_prev_insn.exit.i, %get_prev_insn.exit.i, %get_prev_insn.exit.i
  %i.jf = getelementptr i8, ptr %.0.i134, i64 8   ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !35
  store ptr %i.jg, ptr %i.bv, align 8, !tbaa !35
  %i.jh = getelementptr i8, ptr %i.bt, i64 16
  store ptr %.0.i134, ptr %i.jh, align 8, !tbaa !34
  store ptr %i.bt, ptr %i.jf, align 8, !tbaa !35
  %i.ji = load ptr, ptr %i.bv, align 8, !tbaa !35 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ji, null
  br i1 %.not.i23.i, label %ELEM_INSERT_NEXT.exit.i, label %bb.al

bb.al:                                            ; preds = %.critedge.i
  %i.jj = getelementptr i8, ptr %i.ji, i64 16
  store ptr %i.bt, ptr %i.jj, align 8, !tbaa !34
  br label %ELEM_INSERT_NEXT.exit.i

ELEM_INSERT_NEXT.exit.i:                          ; preds = %bb.al, %.critedge.i
  %i.jk = icmp eq ptr %.0.i134, %.sink191
  br i1 %i.jk, label %bb.am, label %pm_compile_retry_end_label.exit

bb.am:                                            ; preds = %ELEM_INSERT_NEXT.exit.i
  store ptr %i.bt, ptr %i.cj, align 8, !tbaa !11
  br label %pm_compile_retry_end_label.exit

pm_compile_retry_end_label.exit:                  ; preds = %ELEM_INSERT_NEXT.exit.i, %bb.am
  br i1 %4, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %pm_compile_retry_end_label.exit
  %i.jl = load i32, ptr %2, align 4, !tbaa !553
  %i.jm = load i32, ptr %i.co, align 4, !tbaa !556
  %i.jn = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.jl, i32 noundef %i.jm, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.jo = load ptr, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jn, i64 16
  store ptr %i.jo, ptr %i.jp, align 8, !tbaa !34
  %i.jq = getelementptr i8, ptr %i.jo, i64 8
  store ptr %i.jn, ptr %i.jq, align 8, !tbaa !35
  store ptr %i.jn, ptr %i.cj, align 8, !tbaa !11
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %pm_compile_retry_end_label.exit
  %i.jr = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.js = getelementptr i8, ptr %i.jr, i64 72
  store ptr %i.ci, ptr %i.js, align 8, !tbaa !622
  %i.jt = ptrtoint ptr %i.af to i64
  %i.ju = or i64 %i.jt, 1
  %i.jv = ptrtoint ptr %i.bt to i64
  %i.jw = or i64 %i.jv, 1                         ; 2 uses
  %i.jx = ptrtoint ptr %.0154 to i64
  %i.jy = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 5, i32 noundef 9, i64 noundef %i.ju, i64 noundef %i.jw, i64 noundef %i.jx, i64 noundef %i.jw) #37 ; 3 uses
  %i.jz = load i32, ptr %i.ao, align 8, !tbaa !273
  %i.ka = add i32 %i.jz, 1
  store i32 %i.ka, ptr %i.ao, align 8, !tbaa !273
  %i.kb = load i8, ptr %i.ap, align 4
  %i.kc = or i8 %i.kb, 8
  store i8 %i.kc, ptr %i.ap, align 4
  %i.kd = load i32, ptr %i.cb, align 8, !tbaa !273
  %i.ke = add i32 %i.kd, 2
  store i32 %i.ke, ptr %i.cb, align 8, !tbaa !273
  %i.kf = load i64, ptr %0, align 8, !tbaa !37
  %i.kg = and i64 %i.kf, 262144
  %.not.i140 = icmp eq i64 %i.kg, 0
  br i1 %.not.i140, label %ISEQ_COMPILE_DATA.exit142, label %ISEQ_COMPILE_DATA.exit142.thread

ISEQ_COMPILE_DATA.exit142:                        ; preds = %bb.ao
  %i.kh = load i64, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !86
  %i.ki = icmp eq i64 %i.kh, 4
  br i1 %i.ki, label %ISEQ_COMPILE_DATA.exit145, label %rb_obj_write.exit

ISEQ_COMPILE_DATA.exit142.thread:                 ; preds = %bb.ao
  %i.kj = load ptr, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !86
  %i.km = icmp eq i64 %i.kl, 4
  br i1 %i.km, label %ISEQ_COMPILE_DATA.exit145, label %rb_obj_write.exit

ISEQ_COMPILE_DATA.exit145:                        ; preds = %ISEQ_COMPILE_DATA.exit142.thread, %ISEQ_COMPILE_DATA.exit142
  %.0.i144 = phi ptr [ null, %ISEQ_COMPILE_DATA.exit142 ], [ %i.kj, %ISEQ_COMPILE_DATA.exit142.thread ]
  %i.kn = getelementptr i8, ptr %.0.i144, i64 8
  %i.ko = call i64 @rb_ary_hidden_new(i64 noundef 3) #37 ; 4 uses
  store i64 %i.ko, ptr %i.kn, align 8, !tbaa !36
  %i.kp = icmp eq i64 %i.ko, 0
  %i.kq = and i64 %i.ko, 7
  %i.kr = icmp ne i64 %i.kq, 0
  %i.ks = or i1 %i.kp, %i.kr
  br i1 %i.ks, label %rb_obj_write.exit, label %bb.ap

bb.ap:                                            ; preds = %ISEQ_COMPILE_DATA.exit145
  %i.kt = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.kt, i64 noundef %i.ko) #37
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.ap, %ISEQ_COMPILE_DATA.exit145, %ISEQ_COMPILE_DATA.exit142.thread, %ISEQ_COMPILE_DATA.exit142
  %i.ku = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.kv = getelementptr i8, ptr %i.ku, i64 8
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !86
end_hunk_8
