inline.NumInlined: 6676
inline.NumDeleted: 333
begin_hunk_0_@rb_ibf_load_iseq_complete:bb.a
  %i.dyw = trunc i64 %i.dyv to i1
  br i1 %i.dyw, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.dyx = icmp eq i64 %i.dyv, 0
  %i.dyy = and i64 %i.dyv, 6
  %i.dyz = icmp ne i64 %i.dyy, 0
  %i.dza = or i1 %i.dyx, %i.dyz
  br i1 %i.dza, label %rb_integer_type_p.exit.thread9.i.i105, label %rb_integer_type_p.exit.i.i104

rb_integer_type_p.exit.i.i104:                    ; preds = %bb.gc
  %i.dzb = inttoptr i64 %i.dyv to ptr
  %i.dzc = load i64, ptr %i.dzb, align 8, !tbaa !74
  %i.dzd = and i64 %i.dzc, 31
  %i.dze = icmp eq i64 %i.dzd, 10
  br i1 %i.dze, label %bb.ge, label %rb_integer_type_p.exit.thread9.i.i105

bb.gd:                                            ; preds = %bb.gb
  %i.dzf = ashr i64 %i.dyv, 1
  br label %ibf_load_id.exit.i106

bb.ge:                                            ; preds = %rb_integer_type_p.exit.i.i104
  %i.dzg = tail call i64 @rb_num2ulong(i64 noundef %i.dyv) #37
  br label %ibf_load_id.exit.i106

rb_integer_type_p.exit.thread9.i.i105:            ; preds = %rb_integer_type_p.exit.i.i104, %bb.gc
  %i.dzh = tail call i64 @rb_sym2id(i64 noundef %i.dyv) #37
  br label %ibf_load_id.exit.i106

ibf_load_id.exit.i106:                            ; preds = %rb_integer_type_p.exit.thread9.i.i105, %bb.ge, %bb.gd, %ibf_load_small_value.exit31.i
  %.1.i.i107 = phi i64 [ 0, %ibf_load_small_value.exit31.i ], [ %i.dzh, %rb_integer_type_p.exit.thread9.i.i105 ], [ %i.dzf, %bb.gd ], [ %i.dzg, %bb.ge ] ; 2 uses
  %.val.i108 = load ptr, ptr %i.w, align 8, !tbaa !358 ; 3 uses
  %i.dzi = load ptr, ptr %.val.i108, align 8, !tbaa !359 ; 6 uses
  %i.dzj = zext i32 %i.dyt to i64
  %i.dzk = getelementptr i8, ptr %i.dzi, i64 %i.dzj
  %i.dzl = load i8, ptr %i.dzk, align 1, !tbaa !20 ; 4 uses
  %i.dzm = zext i8 %i.dzl to i32                  ; 2 uses
  %i.dzn = and i32 %i.dzm, 1
  %.not.i32.i = icmp eq i32 %i.dzn, 0
  br i1 %.not.i32.i, label %bb.gf, label %.thread.i33.i

bb.gf:                                            ; preds = %ibf_load_id.exit.i106
  %i.dzo = icmp eq i8 %i.dzl, 0
  %i.dzp = tail call range(i32 0, 8) i32 @llvm.cttz.i32(i32 range(i32 1, 256) %i.dzm, i1 true)
  %i.dzq = add nuw nsw i32 %i.dzp, 1
  %i.dzr = select i1 %i.dzo, i32 9, i32 %i.dzq    ; 3 uses
  %i.dzs = add i32 %i.dzr, %i.dyt                 ; 3 uses
  %i.dzt = getelementptr i8, ptr %.val.i108, i64 8
  %i.dzu = load i32, ptr %i.dzt, align 8, !tbaa !360
  %i.dzv = icmp ugt i32 %i.dzs, %i.dzu
  br i1 %i.dzv, label %bb.gg, label %bb.gh

.thread.i33.i:                                    ; preds = %ibf_load_id.exit.i106
  %i.dzw = add i32 %i.dyt, 1                      ; 2 uses
  %i.dzx = getelementptr i8, ptr %.val.i108, i64 8
  %i.dzy = load i32, ptr %i.dzx, align 8, !tbaa !360
  %i.dzz = icmp ugt i32 %i.dzw, %i.dzy
  br i1 %i.dzz, label %bb.gg, label %.thread4.i34.i

.thread4.i34.i:                                   ; preds = %.thread.i33.i
  %i.eaa = lshr i8 %i.dzl, 1
  %i.eab = zext nneg i8 %i.eaa to i64
  br label %ibf_load_small_value.exit41.i

bb.gg:                                            ; preds = %.thread.i33.i, %bb.gf
  %i.eac = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.eac, ptr noundef nonnull @.str.236) #41
  unreachable

bb.gh:                                            ; preds = %bb.gf
  %i.ead = zext i8 %i.dzl to i64
  %i.eae = zext nneg i32 %i.dzr to i64            ; 2 uses
  %i.eaf = lshr i64 %i.ead, %i.eae                ; 2 uses
  %i.eag = add nsw i64 %i.eae, -1                 ; 2 uses
  %xtraiter2423 = and i64 %i.eag, 3               ; 3 uses
  %i.eah = add nsw i32 %i.dzr, -2
  %i.eai = icmp ult i32 %i.eah, 3
  br i1 %i.eai, label %.lr.ph.i36.i.epil.preheader, label %.new2422

.new2422:                                         ; preds = %bb.gh
  %unroll_iter2428 = and i64 %i.eag, -4
  %invariant.op2961 = add i32 1, %i.dyt
  %invariant.op2963 = add i32 2, %i.dyt
  %invariant.op2965 = add i32 3, %i.dyt
  br label %.lr.ph.i36.i

.lr.ph.i36.i:                                     ; preds = %.lr.ph.i36.i, %.new2422
  %indvars.iv.i37.i = phi i64 [ 1, %.new2422 ], [ %indvars.iv.next.i39.i.3, %.lr.ph.i36.i ] ; 5 uses
  %.0211.i38.i = phi i64 [ %i.eaf, %.new2422 ], [ %i.ebl, %.lr.ph.i36.i ]
  %niter2429 = phi i64 [ 0, %.new2422 ], [ %niter2429.next.3, %.lr.ph.i36.i ]
  %i.eaj = trunc nuw nsw i64 %indvars.iv.i37.i to i32
  %i.eak = add i32 %i.dyt, %i.eaj
  %i.eal = zext i32 %i.eak to i64
  %i.eam = getelementptr i8, ptr %i.dzi, i64 %i.eal
  %i.ean = load i8, ptr %i.eam, align 1, !tbaa !20
  %i.eao = zext i8 %i.ean to i64
  %i.eap = shl i64 %.0211.i38.i, 16
  %i.eaq = shl nuw nsw i64 %i.eao, 8
  %i.ear = or disjoint i64 %i.eap, %i.eaq
  %i.eas = trunc i64 %indvars.iv.i37.i to i32
  %.reass2962 = add i32 %i.eas, %invariant.op2961
  %i.eat = zext i32 %.reass2962 to i64
  %i.eau = getelementptr i8, ptr %i.dzi, i64 %i.eat
  %i.eav = load i8, ptr %i.eau, align 1, !tbaa !20
  %i.eaw = zext i8 %i.eav to i64
  %i.eax = or disjoint i64 %i.ear, %i.eaw
  %i.eay = trunc i64 %indvars.iv.i37.i to i32
  %.reass2964 = add i32 %i.eay, %invariant.op2963
  %i.eaz = zext i32 %.reass2964 to i64
  %i.eba = getelementptr i8, ptr %i.dzi, i64 %i.eaz
  %i.ebb = load i8, ptr %i.eba, align 1, !tbaa !20
  %i.ebc = zext i8 %i.ebb to i64
  %i.ebd = shl i64 %i.eax, 16
  %i.ebe = shl nuw nsw i64 %i.ebc, 8
  %i.ebf = or disjoint i64 %i.ebd, %i.ebe
  %i.ebg = trunc i64 %indvars.iv.i37.i to i32
  %.reass2966 = add i32 %i.ebg, %invariant.op2965
  %i.ebh = zext i32 %.reass2966 to i64
  %i.ebi = getelementptr i8, ptr %i.dzi, i64 %i.ebh
  %i.ebj = load i8, ptr %i.ebi, align 1, !tbaa !20
  %i.ebk = zext i8 %i.ebj to i64
  %i.ebl = or disjoint i64 %i.ebf, %i.ebk         ; 3 uses
  %indvars.iv.next.i39.i.3 = add nuw nsw i64 %indvars.iv.i37.i, 4 ; 2 uses
  %niter2429.next.3 = add i64 %niter2429, 4       ; 2 uses
  %niter2429.ncmp.3 = icmp eq i64 %niter2429.next.3, %unroll_iter2428
  br i1 %niter2429.ncmp.3, label %ibf_load_small_value.exit41.i.loopexit.unr-lcssa, label %.lr.ph.i36.i, !llvm.loop !361

ibf_load_small_value.exit41.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i36.i
  %lcmp.mod2425.not = icmp eq i64 %xtraiter2423, 0
  br i1 %lcmp.mod2425.not, label %ibf_load_small_value.exit41.i, label %.lr.ph.i36.i.epil.preheader

.lr.ph.i36.i.epil.preheader:                      ; preds = %ibf_load_small_value.exit41.i.loopexit.unr-lcssa, %bb.gh
  %indvars.iv.i37.i.epil.init = phi i64 [ 1, %bb.gh ], [ %indvars.iv.next.i39.i.3, %ibf_load_small_value.exit41.i.loopexit.unr-lcssa ]
  %.0211.i38.i.epil.init = phi i64 [ %i.eaf, %bb.gh ], [ %i.ebl, %ibf_load_small_value.exit41.i.loopexit.unr-lcssa ]
  %lcmp.mod2427 = icmp ne i64 %xtraiter2423, 0
  tail call void @llvm.assume(i1 %lcmp.mod2427)
  br label %.lr.ph.i36.i.epil

.lr.ph.i36.i.epil:                                ; preds = %.lr.ph.i36.i.epil, %.lr.ph.i36.i.epil.preheader
  %indvars.iv.i37.i.epil = phi i64 [ %indvars.iv.next.i39.i.epil, %.lr.ph.i36.i.epil ], [ %indvars.iv.i37.i.epil.init, %.lr.ph.i36.i.epil.preheader ] ; 2 uses
  %.0211.i38.i.epil = phi i64 [ %i.ebt, %.lr.ph.i36.i.epil ], [ %.0211.i38.i.epil.init, %.lr.ph.i36.i.epil.preheader ]
  %epil.iter2424 = phi i64 [ %epil.iter2424.next, %.lr.ph.i36.i.epil ], [ 0, %.lr.ph.i36.i.epil.preheader ]
  %i.ebm = shl i64 %.0211.i38.i.epil, 8
  %i.ebn = trunc nuw nsw i64 %indvars.iv.i37.i.epil to i32
  %i.ebo = add i32 %i.dyt, %i.ebn
  %i.ebp = zext i32 %i.ebo to i64
  %i.ebq = getelementptr i8, ptr %i.dzi, i64 %i.ebp
  %i.ebr = load i8, ptr %i.ebq, align 1, !tbaa !20
  %i.ebs = zext i8 %i.ebr to i64
  %i.ebt = or disjoint i64 %i.ebm, %i.ebs         ; 2 uses
  %indvars.iv.next.i39.i.epil = add nuw nsw i64 %indvars.iv.i37.i.epil, 1
  %epil.iter2424.next = add i64 %epil.iter2424, 1 ; 2 uses
  %epil.iter2424.cmp.not = icmp eq i64 %epil.iter2424.next, %xtraiter2423
  br i1 %epil.iter2424.cmp.not, label %ibf_load_small_value.exit41.i, label %.lr.ph.i36.i.epil, !llvm.loop !426

ibf_load_small_value.exit41.i:                    ; preds = %ibf_load_small_value.exit41.i.loopexit.unr-lcssa, %.lr.ph.i36.i.epil, %.thread4.i34.i
  %i.ebu = phi i32 [ %i.dzw, %.thread4.i34.i ], [ %i.dzs, %.lr.ph.i36.i.epil ], [ %i.dzs, %ibf_load_small_value.exit41.i.loopexit.unr-lcssa ]
  %.021.lcssa.i35.i = phi i64 [ %i.eab, %.thread4.i34.i ], [ %i.ebl, %ibf_load_small_value.exit41.i.loopexit.unr-lcssa ], [ %i.ebt, %.lr.ph.i36.i.epil ]
  %.not19.i = icmp eq i64 %.1.i.i107, 0
  br i1 %.not19.i, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %ibf_load_small_value.exit41.i
  %i.ebv = tail call i64 @rb_make_temporary_id(i64 noundef %.01648.i) #37
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %ibf_load_small_value.exit41.i
  %.015.i = phi i64 [ %.1.i.i107, %ibf_load_small_value.exit41.i ], [ %i.ebv, %bb.gi ]
  %i.ebw = tail call i32 @rb_id_table_insert(ptr noundef %i.dwg, i64 noundef %.015.i, i64 noundef %.021.lcssa.i35.i) #37 ; 0 uses
  %i.ebx = add nuw i64 %.01648.i, 1               ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %i.ebx, %.021.lcssa.i.i100
  br i1 %exitcond.not.i109, label %ibf_load_outer_variables.exit, label %.lr.ph.i103, !llvm.loop !427

ibf_load_outer_variables.exit:                    ; preds = %bb.gj, %ibf_load_small_value.exit.i99
  %.061.i = phi ptr [ null, %ibf_load_small_value.exit.i99 ], [ %i.dwg, %bb.gj ]
  %i.eby = getelementptr i8, ptr %i.u, i64 288
  store ptr %.061.i, ptr %i.eby, align 8, !tbaa !428
  %i.ebz = icmp sgt i32 %.021.lcssa.i551, 0
  br i1 %i.ebz, label %bb.gk, label %ibf_load_param_opt_table.exit

bb.gk:                                            ; preds = %ibf_load_outer_variables.exit
  %i.eca = add nuw i32 %.021.lcssa.i551, 1        ; 2 uses
  %i.ecb = sext i32 %i.eca to i64                 ; 3 uses
  %i.ecc = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ecb, i64 noundef 8) #39 ; 2 uses
  %i.ecd = icmp slt i32 %i.eca, 0
  br i1 %i.ecd, label %bb.gl, label %rbimpl_size_mul_or_raise.exit.i, !prof !200

bb.gl:                                            ; preds = %bb.gk
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.ecb) #41
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %bb.gk
  %i.ece = load ptr, ptr %i.w, align 8, !tbaa !358
  %i.ecf = load ptr, ptr %i.ece, align 8, !tbaa !359
  %i.ecg = zext i32 %i.ado to i64
  %i.ech = getelementptr i8, ptr %i.ecf, i64 %i.ecg
  %i.eci = shl nuw nsw i64 %i.ecb, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ecc, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ech, i64 noundef range(i64 1, 0) %i.eci, i1 noundef false) #37
  br label %ibf_load_param_opt_table.exit

ibf_load_param_opt_table.exit:                    ; preds = %ibf_load_outer_variables.exit, %rbimpl_size_mul_or_raise.exit.i
  %.0.i95 = phi ptr [ %i.ecc, %rbimpl_size_mul_or_raise.exit.i ], [ null, %ibf_load_outer_variables.exit ]
  %i.ecj = getelementptr i8, ptr %i.u, i64 48
  store ptr %.0.i95, ptr %i.ecj, align 8, !tbaa !162
  %i.eck = and i64 %.021.lcssa.i485, 4294967295   ; 2 uses
  %.not.i88 = icmp eq i64 %i.eck, 0
  br i1 %.not.i88, label %ibf_load_param_keyword.exit, label %bb.gm

bb.gm:                                            ; preds = %ibf_load_param_opt_table.exit
  %i.ecl = tail call noalias nonnull dereferenceable(32) ptr @ruby_xmalloc2(i64 noundef 32, i64 noundef 1) #39 ; 7 uses
  %i.ecm = load ptr, ptr %i.w, align 8, !tbaa !358
  %i.ecn = load ptr, ptr %i.ecm, align 8, !tbaa !359
  %i.eco = getelementptr i8, ptr %i.ecn, i64 %i.eck
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ecl, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.eco, i64 noundef range(i64 1, 0) 32, i1 noundef false) #37
  %i.ecp = load i32, ptr %i.ecl, align 8, !tbaa !220 ; 2 uses
  %i.ecq = getelementptr inbounds nuw i8, ptr %i.ecl, i64 4
  %i.ecr = load i32, ptr %i.ecq, align 4, !tbaa !226 ; 2 uses
  %i.ecs = sub i32 %i.ecp, %i.ecr                 ; 3 uses
  %.not24.i = icmp eq i32 %i.ecp, %i.ecr
  br i1 %.not24.i, label %._crit_edge.i90, label %ibf_load_alloc.exit.i89

ibf_load_alloc.exit.i89:                          ; preds = %bb.gm
  %i.ect = getelementptr inbounds nuw i8, ptr %i.ecl, i64 24
  %i.ecu = load ptr, ptr %i.ect, align 8, !tbaa !229
  %i.ecv = sext i32 %i.ecs to i64                 ; 2 uses
  %i.ecw = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483648) %i.ecv) #39 ; 4 uses
  %i.ecx = ptrtoint ptr %i.ecu to i64
  %i.ecy = shl nsw i64 %i.ecv, 3
  %i.ecz = load ptr, ptr %i.w, align 8, !tbaa !358
  %i.eda = load ptr, ptr %i.ecz, align 8, !tbaa !359
  %i.edb = and i64 %i.ecx, 4294967295
  %i.edc = getelementptr i8, ptr %i.eda, i64 %i.edb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ecw, ptr noundef nonnull readonly align 1 %i.edc, i64 noundef range(i64 1, 0) %i.ecy, i1 noundef false) #37
  %i.edd = icmp sgt i32 %i.ecs, 0
  br i1 %i.edd, label %.lr.ph.preheader.i, label %._crit_edge.i90

.lr.ph.preheader.i:                               ; preds = %ibf_load_alloc.exit.i89
  %wide.trip.count.i = zext nneg i32 %i.ecs to i64
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91, %.lr.ph.preheader.i
  %indvars.iv.i92 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i93, %.lr.ph.i91 ] ; 2 uses
  %i.ede = getelementptr [8 x i8], ptr %i.ecw, i64 %indvars.iv.i92 ; 2 uses
  %i.edf = load i64, ptr %i.ede, align 8, !tbaa !36
  %i.edg = tail call fastcc i64 @ibf_load_object(ptr noundef nonnull %i.i, i64 noundef %i.edf)
  store i64 %i.edg, ptr %i.ede, align 8, !tbaa !36
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i92, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, %wide.trip.count.i
  br i1 %exitcond.not.i94, label %._crit_edge.i90, label %.lr.ph.i91, !llvm.loop !429

._crit_edge.i90:                                  ; preds = %.lr.ph.i91, %ibf_load_alloc.exit.i89, %bb.gm
  %i.edh = phi ptr [ null, %bb.gm ], [ %i.ecw, %ibf_load_alloc.exit.i89 ], [ %i.ecw, %.lr.ph.i91 ]
  %i.edi = getelementptr inbounds nuw i8, ptr %i.ecl, i64 16
  store ptr null, ptr %i.edi, align 8, !tbaa !227
  %i.edj = getelementptr inbounds nuw i8, ptr %i.ecl, i64 24
  store ptr %i.edh, ptr %i.edj, align 8, !tbaa !229
  br label %ibf_load_param_keyword.exit

ibf_load_param_keyword.exit:                      ; preds = %ibf_load_param_opt_table.exit, %._crit_edge.i90
  %.021.i = phi ptr [ %i.ecl, %._crit_edge.i90 ], [ null, %ibf_load_param_opt_table.exit ]
  %i.edk = getelementptr i8, ptr %i.u, i64 56     ; 2 uses
  store ptr %.021.i, ptr %i.edk, align 8, !tbaa !211
  %i.edl = and i16 %i.deb, 16
  %i.edm = load i16, ptr %i.dea, align 8
  %i.edn = and i16 %i.edm, -17
  %i.edo = or disjoint i16 %i.edn, %i.edl
  store i16 %i.edo, ptr %i.dea, align 8
  %i.edp = and i64 %.021.lcssa.i353, 4294967295   ; 5 uses
  %i.edq = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.edp, i64 noundef 12) #39 ; 3 uses
  %.not.i72 = icmp eq i32 %i.bip, 0
  br i1 %.not.i72, label %ibf_load_insns_info_body.exit.thread, label %.lr.ph.i73

ibf_load_insns_info_body.exit.thread:             ; preds = %ibf_load_param_keyword.exit
  store ptr %i.edq, ptr %i.dep, align 8, !tbaa !149
  %i.edr = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.edp, i64 noundef 4) #39
  br label %ibf_load_insns_info_positions.exit

.lr.ph.i73:                                       ; preds = %ibf_load_param_keyword.exit
  %.val15.i = load ptr, ptr %i.w, align 8, !tbaa !358 ; 2 uses
  %i.eds = load ptr, ptr %.val15.i, align 8, !tbaa !359 ; 18 uses
  %i.edt = getelementptr i8, ptr %.val15.i, i64 8 ; 2 uses
  br label %bb.gn

bb.gn:                                            ; preds = %ibf_load_small_value.exit35.i, %.lr.ph.i73
  %indvars.iv.i74 = phi i64 [ 0, %.lr.ph.i73 ], [ %indvars.iv.next.i80, %ibf_load_small_value.exit35.i ] ; 2 uses
  %.03841.i = phi i32 [ %i.bdu, %.lr.ph.i73 ], [ %i.elf, %ibf_load_small_value.exit35.i ] ; 8 uses
  %i.edu = zext i32 %.03841.i to i64
  %i.edv = getelementptr i8, ptr %i.eds, i64 %i.edu
  %i.edw = load i8, ptr %i.edv, align 1, !tbaa !20 ; 3 uses
  %i.edx = zext i8 %i.edw to i32                  ; 3 uses
  %i.edy = and i32 %i.edx, 1
  %.not.i.i75 = icmp eq i32 %i.edy, 0
  br i1 %.not.i.i75, label %bb.go, label %.thread.i.i76

bb.go:                                            ; preds = %bb.gn
  %i.edz = icmp eq i8 %i.edw, 0
  %i.eea = tail call range(i32 0, 8) i32 @llvm.cttz.i32(i32 range(i32 1, 256) %i.edx, i1 true)
  %i.eeb = add nuw nsw i32 %i.eea, 1
  %i.eec = select i1 %i.edz, i32 9, i32 %i.eeb    ; 4 uses
  %i.eed = add i32 %i.eec, %.03841.i              ; 3 uses
  %i.eee = load i32, ptr %i.edt, align 8, !tbaa !360 ; 3 uses
  %i.eef = icmp ugt i32 %i.eed, %i.eee
  br i1 %i.eef, label %bb.gp, label %bb.gq

.thread.i.i76:                                    ; preds = %bb.gn
  %i.eeg = add i32 %.03841.i, 1                   ; 2 uses
  %i.eeh = load i32, ptr %i.edt, align 8, !tbaa !360 ; 2 uses
  %i.eei = icmp ugt i32 %i.eeg, %i.eeh
  br i1 %i.eei, label %bb.gp, label %.thread4.i.i77

.thread4.i.i77:                                   ; preds = %.thread.i.i76
  %i.eej = lshr i8 %i.edw, 1
  %i.eek = zext nneg i8 %i.eej to i32
  br label %ibf_load_small_value.exit.i78

bb.gp:                                            ; preds = %.thread.i.i76, %bb.go
  %i.eel = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.eel, ptr noundef nonnull @.str.236) #41
  unreachable

bb.gq:                                            ; preds = %bb.go
  %i.eem = zext nneg i32 %i.eec to i64
  %i.een = lshr i32 %i.edx, %i.eec
  %i.eeo = add nsw i64 %i.eem, -1                 ; 2 uses
  %xtraiter2431 = and i64 %i.eeo, 3               ; 3 uses
  %i.eep = add nsw i32 %i.eec, -2
  %i.eeq = icmp ult i32 %i.eep, 3
  br i1 %i.eeq, label %.lr.ph.i.i83.epil.preheader, label %.new2430

.new2430:                                         ; preds = %bb.gq
  %unroll_iter2436 = and i64 %i.eeo, -4
  br label %.lr.ph.i.i83

.lr.ph.i.i83:                                     ; preds = %.lr.ph.i.i83, %.new2430
  %indvars.iv.i.i84 = phi i64 [ 1, %.new2430 ], [ %indvars.iv.next.i.i86.3, %.lr.ph.i.i83 ] ; 5 uses
  %niter2437 = phi i64 [ 0, %.new2430 ], [ %niter2437.next.3, %.lr.ph.i.i83 ]
  %indvars.iv.next.i.i86.3 = add nuw nsw i64 %indvars.iv.i.i84, 4 ; 2 uses
  %niter2437.next.3 = add i64 %niter2437, 4       ; 2 uses
  %niter2437.ncmp.3 = icmp eq i64 %niter2437.next.3, %unroll_iter2436
  br i1 %niter2437.ncmp.3, label %ibf_load_small_value.exit.i78.loopexit.unr-lcssa, label %.lr.ph.i.i83, !llvm.loop !361

ibf_load_small_value.exit.i78.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i83
  %i.eer = trunc nuw nsw i64 %indvars.iv.i.i84 to i32
  %i.ees = add i32 %.03841.i, %i.eer
  %i.eet = zext i32 %i.ees to i64
  %i.eeu = getelementptr i8, ptr %i.eds, i64 %i.eet
  %i.eev = load i8, ptr %i.eeu, align 1, !tbaa !20
  %i.eew = zext i8 %i.eev to i32
  %i.eex = shl nuw nsw i32 %i.eew, 16
  %i.eey = trunc i64 %indvars.iv.i.i84 to i32
  %i.eez = add i32 %i.eey, 1
  %i.efa = add i32 %.03841.i, %i.eez
  %i.efb = zext i32 %i.efa to i64
  %i.efc = getelementptr i8, ptr %i.eds, i64 %i.efb
  %i.efd = load i8, ptr %i.efc, align 1, !tbaa !20
  %i.efe = zext i8 %i.efd to i32
  %i.eff = shl nuw nsw i32 %i.efe, 8
  %i.efg = or disjoint i32 %i.eex, %i.eff
  %i.efh = trunc i64 %indvars.iv.i.i84 to i32
  %i.efi = add i32 %i.efh, 2
  %i.efj = add i32 %.03841.i, %i.efi
  %i.efk = zext i32 %i.efj to i64
  %i.efl = getelementptr i8, ptr %i.eds, i64 %i.efk
  %i.efm = load i8, ptr %i.efl, align 1, !tbaa !20
  %i.efn = zext i8 %i.efm to i32
  %i.efo = or disjoint i32 %i.efg, %i.efn
  %i.efp = shl nuw i32 %i.efo, 8
  %i.efq = trunc i64 %indvars.iv.i.i84 to i32
  %i.efr = add i32 %i.efq, 3
  %i.efs = add i32 %.03841.i, %i.efr
  %i.eft = zext i32 %i.efs to i64
  %i.efu = getelementptr i8, ptr %i.eds, i64 %i.eft
  %i.efv = load i8, ptr %i.efu, align 1, !tbaa !20
  %i.efw = zext i8 %i.efv to i32
  %i.efx = or disjoint i32 %i.efp, %i.efw         ; 2 uses
  %lcmp.mod2433.not = icmp eq i64 %xtraiter2431, 0
  br i1 %lcmp.mod2433.not, label %ibf_load_small_value.exit.i78, label %.lr.ph.i.i83.epil.preheader

.lr.ph.i.i83.epil.preheader:                      ; preds = %ibf_load_small_value.exit.i78.loopexit.unr-lcssa, %bb.gq
  %indvars.iv.i.i84.epil.init = phi i64 [ 1, %bb.gq ], [ %indvars.iv.next.i.i86.3, %ibf_load_small_value.exit.i78.loopexit.unr-lcssa ]
  %.0211.i.i85.epil.init = phi i32 [ %i.een, %bb.gq ], [ %i.efx, %ibf_load_small_value.exit.i78.loopexit.unr-lcssa ]
  %lcmp.mod2435 = icmp ne i64 %xtraiter2431, 0
  tail call void @llvm.assume(i1 %lcmp.mod2435)
  br label %.lr.ph.i.i83.epil

.lr.ph.i.i83.epil:                                ; preds = %.lr.ph.i.i83.epil, %.lr.ph.i.i83.epil.preheader
  %indvars.iv.i.i84.epil = phi i64 [ %indvars.iv.next.i.i86.epil, %.lr.ph.i.i83.epil ], [ %indvars.iv.i.i84.epil.init, %.lr.ph.i.i83.epil.preheader ] ; 2 uses
  %.0211.i.i85.epil = phi i32 [ %i.egf, %.lr.ph.i.i83.epil ], [ %.0211.i.i85.epil.init, %.lr.ph.i.i83.epil.preheader ]
  %epil.iter2432 = phi i64 [ %epil.iter2432.next, %.lr.ph.i.i83.epil ], [ 0, %.lr.ph.i.i83.epil.preheader ]
  %i.efy = shl i32 %.0211.i.i85.epil, 8
  %i.efz = trunc nuw nsw i64 %indvars.iv.i.i84.epil to i32
  %i.ega = add i32 %.03841.i, %i.efz
  %i.egb = zext i32 %i.ega to i64
  %i.egc = getelementptr i8, ptr %i.eds, i64 %i.egb
  %i.egd = load i8, ptr %i.egc, align 1, !tbaa !20
  %i.ege = zext i8 %i.egd to i32
  %i.egf = or disjoint i32 %i.efy, %i.ege         ; 2 uses
  %indvars.iv.next.i.i86.epil = add nuw nsw i64 %indvars.iv.i.i84.epil, 1
  %epil.iter2432.next = add i64 %epil.iter2432, 1 ; 2 uses
  %epil.iter2432.cmp.not = icmp eq i64 %epil.iter2432.next, %xtraiter2431
  br i1 %epil.iter2432.cmp.not, label %ibf_load_small_value.exit.i78, label %.lr.ph.i.i83.epil, !llvm.loop !430

end_hunk_0
begin_hunk_1_@ibf_dump_object_string:bb.a
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !325
  %.val.val = load i64, ptr %.val, align 8, !tbaa !326 ; 2 uses
  %i.ac = inttoptr i64 %.val.val to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !327 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 4294967294
  br i1 %i.af, label %bb.f, label %ibf_dump_pos.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ag = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ag, ptr noundef nonnull @.str.226) #41
  unreachable

ibf_dump_pos.exit.i:                              ; preds = %bb.e
  %i.ah = icmp ugt i64 %i.f, 4294967294
  %i.ai = and i64 %i.ae, 4294967295
  %i.aj = add nuw nsw i64 %i.ai, %i.f
  %i.ak = icmp ugt i64 %i.aj, 4294967294
  %or.cond.i = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond.i, label %bb.g, label %ibf_dump_write.exit

bb.g:                                             ; preds = %ibf_dump_pos.exit.i
  %i.al = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.al, ptr noundef nonnull @.str.226) #41
  unreachable

ibf_dump_write.exit:                              ; preds = %ibf_dump_pos.exit.i
  %i.am = call i64 @rb_str_cat(i64 noundef %.val.val, ptr noundef %i.k, i64 noundef %i.f) #37 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ibf_dump_object_regexp(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = inttoptr i64 %1 to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1209 ; 2 uses
  %i.f = tail call i32 @rb_reg_options(i64 noundef %1) #37
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val = load ptr, ptr %i.h, align 8, !tbaa !325
  %i.i = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !333 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.j = call i32 @rb_st_lookup(ptr noundef %.val.val, i64 noundef %i.e, ptr noundef nonnull %i.b) #37
  %.not.i.i.i = icmp eq i32 %i.j, 0
  %i.k = load i64, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.l = and i64 %i.k, 2147483648
  %i.m = icmp ne i64 %i.l, 0
  %i.n = select i1 %.not.i.i.i, i1 true, i1 %i.m
  br i1 %i.n, label %bb.b, label %.ibf_table_find_or_insert.exit_crit_edge.i

.ibf_table_find_or_insert.exit_crit_edge.i:       ; preds = %bb.a
  %.pre.i = and i64 %i.k, 2147483647
  br label %ibf_dump_object.exit

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %.val.val, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !329
  %sext.i.i = shl i64 %i.p, 32
  %i.q = ashr exact i64 %sext.i.i, 32             ; 2 uses
  %i.r = call i32 @rb_st_insert(ptr noundef %.val.val, i64 noundef %i.e, i64 noundef %i.q) #37 ; 0 uses
  br label %ibf_dump_object.exit

ibf_dump_object.exit:                             ; preds = %.ibf_table_find_or_insert.exit_crit_edge.i, %bb.b
  %.pre-phi.i = phi i64 [ %.pre.i, %.ibf_table_find_or_insert.exit_crit_edge.i ], [ %i.q, %bb.b ]
  %.val5 = load ptr, ptr %i.h, align 8, !tbaa !325
  %.val5.val = load i64, ptr %.val5, align 8, !tbaa !326 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.g, ptr %i.a, align 1, !tbaa !20
  %i.s = inttoptr i64 %.val5.val to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !327  ; 2 uses
  %i.v = icmp sgt i64 %i.u, 4294967294
  br i1 %i.v, label %bb.c, label %ibf_dump_pos.exit.i.i

bb.c:                                             ; preds = %ibf_dump_object.exit
  %i.w = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.226) #41
  unreachable

ibf_dump_pos.exit.i.i:                            ; preds = %ibf_dump_object.exit
  %i.x = and i64 %i.u, 4294967294
  %i.y = icmp eq i64 %i.x, 4294967294
  br i1 %i.y, label %bb.d, label %ibf_dump_write_byte.exit

bb.d:                                             ; preds = %ibf_dump_pos.exit.i.i
  %i.z = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.z, ptr noundef nonnull @.str.226) #41
  unreachable

ibf_dump_write_byte.exit:                         ; preds = %ibf_dump_pos.exit.i.i
  %i.aa = call i64 @rb_str_cat(i64 noundef %.val5.val, ptr noundef nonnull %i.a, i64 noundef 1) #37 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @ibf_dump_write_small_value(ptr noundef nonnull %0, i64 noundef %.pre-phi.i)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ibf_dump_object_array(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.d = and i64 %i.c, 8192
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 15
  %i.f = and i64 %i.e, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  tail call fastcc void @ibf_dump_write_small_value(ptr noundef %0, i64 noundef %.0.i)
  %i.i = icmp sgt i64 %.0.i, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %rb_array_len.exit
  %i.j = getelementptr i8, ptr %i.b, i64 16
  %i.k = getelementptr i8, ptr %i.b, i64 32
  %i.l = getelementptr i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %ibf_dump_object.exit
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %ibf_dump_object.exit ] ; 2 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !74
  %i.n = and i64 %i.m, 8192
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.e, label %RARRAY_AREF.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !20
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.o, %bb.e ], [ %i.j, %bb.d ]
  %i.p = getelementptr [8 x i8], ptr %.0.i.i, i64 %.010
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36   ; 2 uses
  %.val = load ptr, ptr %i.l, align 8, !tbaa !325
  %i.r = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.r, align 8, !tbaa !333 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.s = call i32 @rb_st_lookup(ptr noundef %.val.val, i64 noundef %i.q, ptr noundef nonnull %i.a) #37
  %.not.i.i.i = icmp eq i32 %i.s, 0
  %i.t = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.u = and i64 %i.t, 2147483648
  %i.v = icmp ne i64 %i.u, 0
  %i.w = select i1 %.not.i.i.i, i1 true, i1 %i.v
  br i1 %i.w, label %bb.f, label %.ibf_table_find_or_insert.exit_crit_edge.i

.ibf_table_find_or_insert.exit_crit_edge.i:       ; preds = %RARRAY_AREF.exit
  %.pre.i = and i64 %i.t, 2147483647
  br label %ibf_dump_object.exit

bb.f:                                             ; preds = %RARRAY_AREF.exit
  %i.x = getelementptr i8, ptr %.val.val, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !329
  %sext.i.i = shl i64 %i.y, 32
  %i.z = ashr exact i64 %sext.i.i, 32             ; 2 uses
  %i.aa = call i32 @rb_st_insert(ptr noundef %.val.val, i64 noundef %i.q, i64 noundef %i.z) #37 ; 0 uses
  br label %ibf_dump_object.exit

ibf_dump_object.exit:                             ; preds = %.ibf_table_find_or_insert.exit_crit_edge.i, %bb.f
  %.pre-phi.i = phi i64 [ %.pre.i, %.ibf_table_find_or_insert.exit_crit_edge.i ], [ %i.z, %bb.f ]
  call fastcc void @ibf_dump_write_small_value(ptr noundef nonnull %0, i64 noundef %.pre-phi.i)
  %i.ab = add nuw nsw i64 %.010, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %.0.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !1212

._crit_edge:                                      ; preds = %ibf_dump_object.exit, %rb_array_len.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ibf_dump_object_hash(ptr noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = and i64 %i.b, 32768
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 16
  %i.e = and i64 %i.d, 15
  br label %RHASH_SIZE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %1, 24
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !329
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  tail call fastcc void @ibf_dump_write_small_value(ptr noundef %0, i64 noundef %.0.i)
  %i.j = icmp sgt i64 %.0.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RHASH_SIZE.exit
  %i.k = ptrtoint ptr %0 to i64
  tail call void @rb_hash_foreach(i64 noundef %1, ptr noundef nonnull @ibf_dump_object_hash_i, i64 noundef %i.k) #37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %RHASH_SIZE.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ibf_dump_object_struct(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.ibf_object_struct_range, align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = load i64, ptr @rb_cRange, align 8, !tbaa !36
  %i.f = tail call i64 @rb_obj_is_kind_of(i64 noundef %1, i64 noundef %i.e) #37
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 noundef 0, i64 noundef 24, i1 noundef false) #37
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 3, ptr %i.h, align 8, !tbaa !1213
  store i64 0, ptr %2, align 8, !tbaa !1215
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = call i32 @rb_range_values(i64 noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.i) #37 ; 0 uses
  %i.k = load i64, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val7 = load ptr, ptr %i.l, align 8, !tbaa !325
  %i.m = getelementptr i8, ptr %.val7, i64 8
  %.val7.val = load ptr, ptr %i.m, align 8, !tbaa !333 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.n = call i32 @rb_st_lookup(ptr noundef %.val7.val, i64 noundef %i.k, ptr noundef nonnull %i.b) #37
  %.not.i.i.i = icmp eq i32 %i.n, 0
  %i.o = load i64, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.p = and i64 %i.o, 2147483648
  %i.q = icmp ne i64 %i.p, 0
  %i.r = select i1 %.not.i.i.i, i1 true, i1 %i.q
  br i1 %i.r, label %bb.c, label %.ibf_table_find_or_insert.exit_crit_edge.i

.ibf_table_find_or_insert.exit_crit_edge.i:       ; preds = %bb.b
  %.pre.i = and i64 %i.o, 2147483647
  br label %ibf_dump_object.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %.val7.val, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !329
  %sext.i.i = shl i64 %i.t, 32
  %i.u = ashr exact i64 %sext.i.i, 32             ; 2 uses
  %i.v = call i32 @rb_st_insert(ptr noundef %.val7.val, i64 noundef %i.k, i64 noundef %i.u) #37 ; 0 uses
  br label %ibf_dump_object.exit

ibf_dump_object.exit:                             ; preds = %.ibf_table_find_or_insert.exit_crit_edge.i, %bb.c
  %.pre-phi.i = phi i64 [ %.pre.i, %.ibf_table_find_or_insert.exit_crit_edge.i ], [ %i.u, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.pre-phi.i, ptr %i.w, align 8, !tbaa !1216
  %i.x = load i64, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %.val6 = load ptr, ptr %i.l, align 8, !tbaa !325
  %i.y = getelementptr i8, ptr %.val6, i64 8
  %.val6.val = load ptr, ptr %i.y, align 8, !tbaa !333 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.z = call i32 @rb_st_lookup(ptr noundef %.val6.val, i64 noundef %i.x, ptr noundef nonnull %i.a) #37
  %.not.i.i.i8 = icmp eq i32 %i.z, 0
  %i.aa = load i64, ptr %i.a, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ab = and i64 %i.aa, 2147483648
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = select i1 %.not.i.i.i8, i1 true, i1 %i.ac
  br i1 %i.ad, label %bb.d, label %.ibf_table_find_or_insert.exit_crit_edge.i9

.ibf_table_find_or_insert.exit_crit_edge.i9:      ; preds = %ibf_dump_object.exit
  %.pre.i10 = and i64 %i.aa, 2147483647
  br label %ibf_dump_object.exit13

bb.d:                                             ; preds = %ibf_dump_object.exit
  %i.ae = getelementptr i8, ptr %.val6.val, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !329
  %sext.i.i12 = shl i64 %i.af, 32
  %i.ag = ashr exact i64 %sext.i.i12, 32          ; 2 uses
  %i.ah = call i32 @rb_st_insert(ptr noundef %.val6.val, i64 noundef %i.x, i64 noundef %i.ag) #37 ; 0 uses
  br label %ibf_dump_object.exit13

ibf_dump_object.exit13:                           ; preds = %.ibf_table_find_or_insert.exit_crit_edge.i9, %bb.d
  %.pre-phi.i11 = phi i64 [ %.pre.i10, %.ibf_table_find_or_insert.exit_crit_edge.i9 ], [ %i.ag, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.pre-phi.i11, ptr %i.ai, align 8, !tbaa !1217
  call fastcc void @ibf_dump_align(ptr noundef nonnull %0, i64 noundef 8)
  %.val = load ptr, ptr %i.l, align 8, !tbaa !325
  %.val.val = load i64, ptr %.val, align 8, !tbaa !326 ; 2 uses
  %i.aj = inttoptr i64 %.val.val to ptr
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !327 ; 2 uses
  %i.am = icmp sgt i64 %i.al, 4294967294
  br i1 %i.am, label %bb.e, label %ibf_dump_pos.exit.i

bb.e:                                             ; preds = %ibf_dump_object.exit13
  %i.an = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.an, ptr noundef nonnull @.str.226) #41
  unreachable

ibf_dump_pos.exit.i:                              ; preds = %ibf_dump_object.exit13
  %i.ao = and i64 %i.al, 4294967295
  %i.ap = icmp samesign ugt i64 %i.ao, 4294967254
  br i1 %i.ap, label %bb.f, label %ibf_dump_write.exit

bb.f:                                             ; preds = %ibf_dump_pos.exit.i
  %i.aq = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aq, ptr noundef nonnull @.str.226) #41
  unreachable

ibf_dump_write.exit:                              ; preds = %ibf_dump_pos.exit.i
  %i.ar = call i64 @rb_str_cat(i64 noundef %.val.val, ptr noundef nonnull %2, i64 noundef 40) #37 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.g:                                             ; preds = %bb.a
  %i.as = load i64, ptr @rb_eNotImpError, align 8, !tbaa !36
  %i.at = tail call fastcc i64 @rb_class_of(i64 noundef %1) #44
  %i.au = tail call i64 @rb_class_name(i64 noundef %i.at) #37
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.as, ptr noundef nonnull @.str.231, i64 noundef %i.au) #41
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ibf_dump_object_bignum(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !74   ; 3 uses
  %i.d = and i64 %i.c, 16384
  %.not.i = icmp eq i64 %i.d, 0
  %i.e = and i64 %i.c, 8192
  %.not17 = icmp eq i64 %i.e, 0                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.c, 15
  %i.g = and i64 %i.f, 511                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.h = sub nsw i64 0, %i.g
  %i.i = select i1 %.not17, i64 %i.h, i64 %i.g
  store i64 %i.i, ptr %i.a, align 8, !tbaa !36
  %i.j = getelementptr i8, ptr %i.b, i64 16
  br label %BIGNUM_DIGITS.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.m = sub i64 0, %i.l
  %i.n = select i1 %.not17, i64 %i.m, i64 %i.l
  store i64 %i.n, ptr %i.a, align 8, !tbaa !36
  %i.o = getelementptr i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.b, %bb.c
  %.0.i18 = phi i64 [ %i.g, %bb.b ], [ %i.l, %bb.c ]
  %.0.i11 = phi ptr [ %i.j, %bb.b ], [ %i.p, %bb.c ]
  tail call fastcc void @ibf_dump_align(ptr noundef %0, i64 noundef 8)
  %i.q = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val9 = load ptr, ptr %i.q, align 8, !tbaa !325
  %.val9.val = load i64, ptr %.val9, align 8, !tbaa !326 ; 2 uses
  %i.r = inttoptr i64 %.val9.val to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !327  ; 2 uses
  %i.u = icmp sgt i64 %i.t, 4294967294
  br i1 %i.u, label %bb.d, label %ibf_dump_pos.exit.i

bb.d:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !36
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.226) #41
  unreachable

ibf_dump_pos.exit.i:                              ; preds = %BIGNUM_DIGITS.exit
  %i.w = and i64 %i.t, 4294967295
  %i.x = icmp samesign ugt i64 %i.w, 4294967286
  br i1 %i.x, label %bb.e, label %ibf_dump_write.exit

bb.e:                                             ; preds = %ibf_dump_pos.exit.i
end_hunk_1
