inline.NumInlined: 58
inline.NumDeleted: 10
begin_hunk_0_@dissect_elf:bb.a
  br i1 %i.abx, label %value_guard.exit.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit.i.i:                             ; preds = %bb.fg
  %i.aby = trunc nuw nsw i64 %i.abw to i32
  %i.abz = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.aby, i32 noundef range(i32 -2147483648, 1) %.0900)
  %i.aca = zext i32 %i.abz to i64
  %i.acb = add i64 %.1893, %i.aca                 ; 2 uses
  %i.acc = icmp ult i64 %i.acb, 2147483648
  br i1 %i.acc, label %get_section_name_offset.exit.i, label %bb.fi

bb.fi:                                            ; preds = %value_guard.exit.i.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

get_section_name_offset.exit.i:                   ; preds = %value_guard.exit.i.i
  %i.acd = trunc nuw nsw i64 %i.acb to i32
  %i.ace = call ptr @tvb_get_stringz_enc(ptr noundef %i.abt, ptr noundef %0, i32 noundef %i.acd, ptr noundef null, i32 noundef 0) ; 3 uses
  %.not141.i = icmp eq ptr %i.ace, null
  br i1 %.not141.i, label %dissect_symbol_table.exit, label %bb.fj

bb.fj:                                            ; preds = %get_section_name_offset.exit.i
  %i.acf = load i8, ptr %i.ace, align 1
  %.not142.i = icmp eq i8 %i.acf, 0
  br i1 %.not142.i, label %dissect_symbol_table.exit, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.acg = load i16, ptr %i.a, align 2
  %i.ach = zext i16 %i.acg to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.abr, ptr noundef nonnull @.str.691, i32 noundef %i.ach, ptr noundef nonnull %i.ace)
  br label %dissect_symbol_table.exit

bb.fl:                                            ; preds = %bb.ff
  %i.aci = zext i16 %i.abs to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.abr, ptr noundef nonnull @.str.692, i32 noundef %i.aci)
  br label %dissect_symbol_table.exit

bb.fm:                                            ; preds = %bb.fe
  %i.acj = load i32, ptr @hf_elf_symbol_table_info, align 4
  %i.ack = call ptr @proto_tree_add_item(ptr noundef %i.aai, i32 noundef %i.acj, ptr noundef %0, i32 noundef %i.aav, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 2 uses
  %i.acl = load i32, ptr @ett_symbol_table_info, align 4
  %i.acm = call ptr @proto_item_add_subtree(ptr noundef %i.ack, i32 noundef %i.acl) ; 2 uses
  %i.acn = load i32, ptr @hf_elf_symbol_table_info_bind, align 4
  %i.aco = call ptr @proto_tree_add_item(ptr noundef %i.acm, i32 noundef %i.acn, ptr noundef %0, i32 noundef %i.aav, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.acp = load i32, ptr @hf_elf_symbol_table_info_type, align 4
  %i.acq = call ptr @proto_tree_add_item(ptr noundef %i.acm, i32 noundef %i.acp, ptr noundef %0, i32 noundef %i.aav, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.acr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aav)
  %i.acs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aav)
  %i.act = add i32 %.18691090, 5
  %i.acu = load i32, ptr @hf_elf_symbol_table_other, align 4
  %i.acv = call ptr @proto_tree_add_item(ptr noundef %i.aai, i32 noundef %i.acu, ptr noundef %0, i32 noundef %i.act, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.acw = add i32 %.18691090, 6
  %i.acx = load i32, ptr @hf_elf_symbol_table_shndx, align 4
  %i.acy = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.aai, i32 noundef %i.acx, ptr noundef %0, i32 noundef %i.acw, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %.0900, ptr noundef nonnull %i.a) ; 2 uses
  %i.acz = load i16, ptr %i.a, align 2            ; 3 uses
  %.not137.i = icmp ugt i16 %i.acz, %i.aal
  br i1 %.not137.i, label %bb.fs, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ada = load ptr, ptr %i.eb, align 8
  %i.adb = zext i16 %i.acz to i64
  %i.adc = mul nuw nsw i64 %i.adb, %i.kf
  %i.add = add nuw nsw i64 %i.adc, %.0897         ; 2 uses
  %i.ade = icmp ult i64 %i.add, 2147483648
  br i1 %i.ade, label %value_guard.exit.i143.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit.i143.i:                          ; preds = %bb.fn
  %i.adf = trunc nuw nsw i64 %i.add to i32
  %i.adg = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.adf, i32 noundef range(i32 -2147483648, 1) %.0900)
  %i.adh = zext i32 %i.adg to i64
  %i.adi = add i64 %.1893, %i.adh                 ; 2 uses
  %i.adj = icmp ult i64 %i.adi, 2147483648
  br i1 %i.adj, label %get_section_name_offset.exit146.i, label %bb.fp

bb.fp:                                            ; preds = %value_guard.exit.i143.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

get_section_name_offset.exit146.i:                ; preds = %value_guard.exit.i143.i
  %i.adk = trunc nuw nsw i64 %i.adi to i32
  %i.adl = call ptr @tvb_get_stringz_enc(ptr noundef %i.ada, ptr noundef %0, i32 noundef %i.adk, ptr noundef null, i32 noundef 0) ; 3 uses
  %.not138.i = icmp eq ptr %i.adl, null
  br i1 %.not138.i, label %bb.ft, label %bb.fq

bb.fq:                                            ; preds = %get_section_name_offset.exit146.i
  %i.adm = load i8, ptr %i.adl, align 1
  %.not139.i = icmp eq i8 %i.adm, 0
  br i1 %.not139.i, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.adn = load i16, ptr %i.a, align 2
  %i.ado = zext i16 %i.adn to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.acy, ptr noundef nonnull @.str.691, i32 noundef %i.ado, ptr noundef nonnull %i.adl)
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fm
  %i.adp = zext i16 %i.acz to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.acy, ptr noundef nonnull @.str.692, i32 noundef %i.adp)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %bb.fq, %get_section_name_offset.exit146.i
  %i.adq = add i32 %.18691090, 8
  %i.adr = load i32, ptr @hf_elf64_symbol_table_value, align 4
  %i.ads = call ptr @proto_tree_add_item(ptr noundef %i.aai, i32 noundef %i.adr, ptr noundef %0, i32 noundef %i.adq, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.adt = add i32 %.18691090, 16
  %i.adu = load i32, ptr @hf_elf64_symbol_table_size, align 4
  %i.adv = call ptr @proto_tree_add_item(ptr noundef %i.aai, i32 noundef %i.adu, ptr noundef %0, i32 noundef %i.adt, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  br label %dissect_symbol_table.exit

dissect_symbol_table.exit:                        ; preds = %get_section_name_offset.exit.i, %bb.fj, %bb.fk, %bb.fl, %bb.ft
  %.sink.i = phi i32 [ 24, %bb.ft ], [ 16, %get_section_name_offset.exit.i ], [ 16, %bb.fj ], [ 16, %bb.fk ], [ 16, %bb.fl ]
  %.0128.i = phi ptr [ %i.ack, %bb.ft ], [ %i.abd, %get_section_name_offset.exit.i ], [ %i.abd, %bb.fj ], [ %i.abd, %bb.fk ], [ %i.abd, %bb.fl ]
  %.0127.in.i = phi i8 [ %i.acr, %bb.ft ], [ %i.abk, %get_section_name_offset.exit.i ], [ %i.abk, %bb.fj ], [ %i.abk, %bb.fk ], [ %i.abk, %bb.fl ]
  %.0.in.i = phi i8 [ %i.acs, %bb.ft ], [ %i.abl, %get_section_name_offset.exit.i ], [ %i.abl, %bb.fj ], [ %i.abl, %bb.fk ], [ %i.abl, %bb.fl ]
  %i.adw = add i32 %.sink.i, %.18691090           ; 2 uses
  %.0.i976 = and i8 %.0.in.i, 15
  %.0127.i = lshr i8 %.0127.in.i, 4
  %i.adx = zext nneg i8 %.0127.i to i32           ; 2 uses
  %i.ady = call ptr @val_to_str_const(i32 noundef %i.adx, ptr noundef nonnull @symbol_table_info_bind_vals, ptr noundef nonnull @.str.657)
  %i.adz = zext nneg i8 %.0.i976 to i32           ; 2 uses
  %i.aea = call ptr @val_to_str_ext_const(i32 noundef %i.adz, ptr noundef nonnull @symbol_table_info_type_vals_ext, ptr noundef nonnull @.str.657)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0128.i, ptr noundef nonnull @.str.693, ptr noundef %i.ady, ptr noundef %i.aea)
  %i.aeb = call ptr @val_to_str_const(i32 noundef %i.adx, ptr noundef nonnull @symbol_table_info_bind_vals, ptr noundef nonnull @.str.657)
  %i.aec = call ptr @val_to_str_ext_const(i32 noundef %i.adz, ptr noundef nonnull @symbol_table_info_type_vals_ext, ptr noundef nonnull @.str.657)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aaj, ptr noundef nonnull @.str.693, ptr noundef %i.aeb, ptr noundef %i.aec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.aed = mul nuw nsw i64 %i.aag, %.0867
  %i.aee = add nuw i64 %i.aed, %.1891
  %i.aef = trunc i64 %i.aee to i32
  %.not934 = icmp eq i32 %i.adw, %i.aef
  br i1 %.not934, label %value_guard.exit972, label %bb.fu

bb.fu:                                            ; preds = %dissect_symbol_table.exit
  %i.aeg = load ptr, ptr %i.k, align 8
  %i.aeh = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.aeg, ptr noundef nonnull @ei_invalid_entry_size) ; 0 uses
  br label %value_guard.exit972

value_guard.exit972:                              ; preds = %dissect_symbol_table.exit, %bb.fu
  %i.aei = add i32 %.18721089, 1                  ; 2 uses
  %i.aej = zext i32 %i.aei to i64                 ; 2 uses
  %.not988 = icmp ult i64 %i.aad, %i.aej
  br i1 %.not988, label %.loopexit, label %value_guard.exit973, !llvm.loop !13

value_guard.exit977:                              ; preds = %value_guard.exit977.preheader, %value_guard.exit977
  %.21086 = phi i32 [ %i.aep, %value_guard.exit977 ], [ %i.or, %value_guard.exit977.preheader ] ; 4 uses
  %.28731085 = phi i32 [ %i.aeq, %value_guard.exit977 ], [ 1, %value_guard.exit977.preheader ] ; 2 uses
  %i.aek = call i32 @tvb_strsize(ptr noundef %0, i32 noundef %.21086) ; 3 uses
  %i.ael = load i32, ptr @hf_elf_string, align 4
  %i.aem = call ptr @proto_tree_add_item(ptr noundef %i.ov, i32 noundef %i.ael, ptr noundef %0, i32 noundef %.21086, i32 noundef %i.aek, i32 noundef 0) ; 2 uses
  store ptr %i.aem, ptr %i.m, align 8
  %i.aen = sub i32 %.21086, %i.or
  %i.aeo = add i32 %i.aek, -1
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aem, ptr noundef nonnull @.str.670, i32 noundef %.28731085, i32 noundef %i.aen, i32 noundef %i.aeo)
  %i.aep = add i32 %i.aek, %.21086                ; 2 uses
  %i.aeq = add i32 %.28731085, 1
  %i.aer = icmp slt i32 %i.aep, %i.aab
  br i1 %i.aer, label %value_guard.exit977, label %.loopexit, !llvm.loop !14

bb.fv:                                            ; preds = %bb.ez
  %i.aes = icmp ult i64 %.0867, 2
  %.not9321092 = icmp ugt i64 %.0867, %i.nn
  %or.cond1319 = or i1 %i.aes, %.not9321092
  br i1 %or.cond1319, label %.loopexit, label %value_guard.exit980.preheader

value_guard.exit980.preheader:                    ; preds = %bb.fv
  %i.aet = udiv i64 %i.nn, %.0867
  %i.aeu = trunc nuw nsw i64 %.0867 to i32        ; 2 uses
  %i.aev = trunc nuw nsw i64 %i.aet to i32
  br label %value_guard.exit980

value_guard.exit980:                              ; preds = %value_guard.exit980.preheader, %value_guard.exit980
  %.31094 = phi i32 [ %i.aey, %value_guard.exit980 ], [ %i.or, %value_guard.exit980.preheader ] ; 2 uses
  %.38741093 = phi i32 [ %i.aez, %value_guard.exit980 ], [ 1, %value_guard.exit980.preheader ] ; 3 uses
  %i.aew = load i32, ptr @hf_elf_entry_bytes, align 4
  %i.aex = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.ov, i32 noundef %i.aew, ptr noundef %0, i32 noundef %.31094, i32 noundef %i.aeu, ptr noundef null, ptr noundef nonnull @.str.671, i32 noundef %.38741093) ; 0 uses
  %i.aey = add i32 %.31094, %i.aeu
  %i.aez = add nuw nsw i32 %.38741093, 1
  %.not932.not = icmp samesign ult i32 %.38741093, %i.aev
  br i1 %.not932.not, label %value_guard.exit980, label %.loopexit, !llvm.loop !15

.loopexit.sink.split:                             ; preds = %dissect_eh_frame_hdr.exit, %dissect_eh_frame.exit
  %i.afa = load ptr, ptr %i.k, align 8
  %i.afb = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.afa, ptr noundef nonnull @ei_invalid_segment_size) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %value_guard.exit977, %value_guard.exit972, %value_guard.exit980, %value_guard.exit968, %.loopexit.sink.split, %value_guard.exit977.preheader, %value_guard.exit972.preheader, %dissect_eh_frame.exit, %bb.ej, %bb.fv, %bb.fa, %dissect_eh_frame_hdr.exit, %bb.cb
  %.3885 = phi i64 [ %i.ok, %value_guard.exit980 ], [ %i.ok, %dissect_eh_frame.exit ], [ %i.ok, %value_guard.exit972 ], [ %i.ok, %dissect_eh_frame_hdr.exit ], [ %.28841104, %bb.cb ], [ %i.ok, %bb.ej ], [ %i.ok, %value_guard.exit968 ], [ %i.ok, %bb.fa ], [ %i.ok, %.loopexit.sink.split ], [ %i.ok, %value_guard.exit972.preheader ], [ %i.ok, %bb.fv ], [ %i.ok, %value_guard.exit977.preheader ], [ %i.ok, %value_guard.exit977 ] ; 2 uses
  %.5880 = phi i32 [ %i.op, %value_guard.exit980 ], [ %i.op, %dissect_eh_frame.exit ], [ %i.op, %value_guard.exit972 ], [ %i.op, %dissect_eh_frame_hdr.exit ], [ %.48791105, %bb.cb ], [ %i.op, %bb.ej ], [ %i.op, %value_guard.exit968 ], [ %i.op, %bb.fa ], [ %i.op, %.loopexit.sink.split ], [ %i.op, %value_guard.exit972.preheader ], [ %i.op, %bb.fv ], [ %i.op, %value_guard.exit977.preheader ], [ %i.op, %value_guard.exit977 ] ; 2 uses
  %.not927.wide = icmp eq i32 %i.ki, 0
  br i1 %.not927.wide, label %._crit_edge, label %bb.bd, !llvm.loop !16

._crit_edge:                                      ; preds = %.loopexit, %value_guard.exit947, %value_guard.exit951
  %.2884.lcssa = phi i64 [ %.0882.lcssa, %value_guard.exit951 ], [ %.0882.lcssa, %value_guard.exit947 ], [ %.3885, %.loopexit ] ; 3 uses
  %.4879.lcssa = phi i32 [ %.2877.lcssa, %value_guard.exit951 ], [ %.2877.lcssa, %value_guard.exit947 ], [ %.5880, %.loopexit ] ; 6 uses
  %i.afc = load i32, ptr @ett_elf_info, align 4
  %i.afd = call ptr @proto_tree_add_subtree(ptr noundef %i.ac, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.afc, ptr noundef nonnull %i.l, ptr noundef nonnull @.str.672) ; 5 uses
  %i.afe = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not.i981 = icmp eq ptr %i.afe, null
  br i1 %.not.i981, label %proto_item_set_generated.exit, label %bb.fw

bb.fw:                                            ; preds = %._crit_edge
  %i.aff = getelementptr i8, ptr %i.afe, i64 40
  %i.afg = load ptr, ptr %i.aff, align 8          ; 2 uses
  %.not5.i = icmp eq ptr %i.afg, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.afh = getelementptr i8, ptr %i.afg, i64 28   ; 2 uses
  %i.afi = load i32, ptr %i.afh, align 4
  %i.afj = or i32 %i.afi, 2
  store i32 %i.afj, ptr %i.afh, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %._crit_edge, %bb.fw, %bb.fx
  %i.afk = load i32, ptr @ett_elf_black_holes, align 4
  %i.afl = call ptr @proto_tree_add_subtree(ptr noundef %i.afd, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.afk, ptr noundef null, ptr noundef nonnull @.str.673) ; 2 uses
  %i.afm = load i32, ptr @ett_elf_overlapping, align 4
  %i.afn = call ptr @proto_tree_add_subtree(ptr noundef %i.afd, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.afm, ptr noundef null, ptr noundef nonnull @.str.674)
  %.not1122 = icmp eq i32 %.4879.lcssa, 0
  br i1 %.not1122, label %._crit_edge1118, label %.lr.ph1114.preheader

.lr.ph1114.preheader:                             ; preds = %proto_item_set_generated.exit
  %i.afo = zext i32 %.4879.lcssa to i64           ; 2 uses
  br label %.lr.ph1114

.preheader:                                       ; preds = %._crit_edge1112
  %.not1277 = icmp eq i32 %.4879.lcssa, 1
  br i1 %.not1277, label %._crit_edge1118, label %.lr.ph1117.preheader

.lr.ph1117.preheader:                             ; preds = %.preheader
  %wide.trip.count1169 = zext i32 %.4879.lcssa to i64
  %.pre1171 = load i64, ptr %i.eh, align 8
  br label %.lr.ph1117

.lr.ph1114:                                       ; preds = %.lr.ph1114.preheader, %._crit_edge1112
  %indvars.iv1162 = phi i64 [ 0, %.lr.ph1114.preheader ], [ %indvars.iv.next1163, %._crit_edge1112 ] ; 2 uses
  %indvars.iv1157 = phi i64 [ 1, %.lr.ph1114.preheader ], [ %indvars.iv.next1158, %._crit_edge1112 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.afp = getelementptr [24 x i8], ptr %i.eh, i64 %indvars.iv1162 ; 3 uses
  %indvars.iv.next1163 = add nuw nsw i64 %indvars.iv1162, 1 ; 3 uses
  %i.afq = icmp samesign ult i64 %indvars.iv.next1163, %i.afo
  br i1 %i.afq, label %.lr.ph1111, label %._crit_edge1112

.lr.ph1111:                                       ; preds = %.lr.ph1114, %bb.fz
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %bb.fz ], [ %indvars.iv1157, %.lr.ph1114 ] ; 2 uses
  %i.afr = load i64, ptr %i.afp, align 8
  %i.afs = getelementptr [24 x i8], ptr %i.eh, i64 %indvars.iv1159 ; 3 uses
  %i.aft = load i64, ptr %i.afs, align 8
  %.not930 = icmp ugt i64 %i.afr, %i.aft
  br i1 %.not930, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %.lr.ph1111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef align 8 dereferenceable(24) %i.afp, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.afp, ptr noundef align 8 dereferenceable(24) %i.afs, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.afs, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  br label %bb.fz

bb.fz:                                            ; preds = %.lr.ph1111, %bb.fy
  %indvars.iv.next1160 = add nuw nsw i64 %indvars.iv1159, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1160 to i32
  %exitcond.not = icmp eq i32 %.4879.lcssa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge1112, label %.lr.ph1111, !llvm.loop !17

._crit_edge1112:                                  ; preds = %bb.fz, %.lr.ph1114
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next1158 = add nuw nsw i64 %indvars.iv1157, 1
  %exitcond1165.not = icmp eq i64 %indvars.iv.next1163, %i.afo
  br i1 %exitcond1165.not, label %.preheader, label %.lr.ph1114, !llvm.loop !18

.lr.ph1117:                                       ; preds = %.lr.ph1117.preheader, %bb.gf
  %i.afu = phi i64 [ %.pre1171, %.lr.ph1117.preheader ], [ %i.aga, %bb.gf ]
  %indvars.iv1166 = phi i64 [ 1, %.lr.ph1117.preheader ], [ %indvars.iv.next1167, %bb.gf ] ; 3 uses
  %.48861115 = phi i64 [ %.2884.lcssa, %.lr.ph1117.preheader ], [ %.5887, %bb.gf ] ; 3 uses
  %i.afv = getelementptr [24 x i8], ptr %i.eh, i64 %indvars.iv1166 ; 3 uses
  %i.afw = getelementptr i8, ptr %i.afv, i64 -16
  %i.afx = load i64, ptr %i.afw, align 8
  %i.afy = add i64 %i.afx, %i.afu                 ; 5 uses
  %i.afz = getelementptr [24 x i8], ptr %i.eh, i64 %indvars.iv1166 ; 3 uses
  %i.aga = load i64, ptr %i.afz, align 8          ; 6 uses
  %i.agb = icmp ult i64 %i.afy, %i.aga
  br i1 %i.agb, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %.lr.ph1117
  %i.agc = sub nuw i64 %i.aga, %i.afy             ; 2 uses
  %sext929 = shl i64 %i.agc, 32
  %i.agd = ashr exact i64 %sext929, 32
  %i.age = sub i64 %i.aga, %i.agd                 ; 2 uses
  %i.agf = icmp ult i64 %i.age, 2147483648
  br i1 %i.agf, label %value_guard.exit982, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit982:                              ; preds = %bb.ga
  %i.agg = load i32, ptr @hf_elf_blackhole_size, align 4
  %i.agh = trunc i64 %i.agc to i32                ; 3 uses
  %i.agi = trunc nuw nsw i64 %i.age to i32
  %i.agj = getelementptr i8, ptr %i.afv, i64 -8
  %i.agk = load ptr, ptr %i.agj, align 8
  %i.agl = getelementptr i8, ptr %i.afz, i64 16
  %i.agm = load ptr, ptr %i.agl, align 8
  %i.agn = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.afl, i32 noundef %i.agg, ptr noundef %0, i32 noundef %i.agi, i32 noundef 1, i32 noundef %i.agh, ptr noundef nonnull @.str.675, ptr noundef %i.agk, ptr noundef %i.agm, i32 noundef %i.agh)
  call void @proto_item_set_len(ptr noundef %i.agn, i32 noundef %i.agh)
  br label %bb.gf

bb.gc:                                            ; preds = %.lr.ph1117
  %i.ago = icmp ugt i64 %i.afy, %i.aga
  br i1 %i.ago, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %bb.gc
  %i.agp = sub nuw i64 %i.afy, %i.aga             ; 2 uses
  %sext = shl i64 %i.agp, 32
  %i.agq = ashr exact i64 %sext, 32               ; 2 uses
  %i.agr = sub i64 %i.afy, %i.agq                 ; 2 uses
  %i.ags = icmp ult i64 %i.agr, 2147483648
  br i1 %i.ags, label %value_guard.exit983, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit983:                              ; preds = %bb.gd
  %i.agt = load i32, ptr @hf_elf_overlapping_size, align 4
  %i.agu = trunc i64 %i.agp to i32                ; 3 uses
  %i.agv = trunc nuw nsw i64 %i.agr to i32
  %i.agw = getelementptr i8, ptr %i.afv, i64 -8
  %i.agx = load ptr, ptr %i.agw, align 8
  %i.agy = getelementptr i8, ptr %i.afz, i64 16
  %i.agz = load ptr, ptr %i.agy, align 8
  %i.aha = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.afn, i32 noundef %i.agt, ptr noundef %0, i32 noundef %i.agv, i32 noundef 1, i32 noundef %i.agu, ptr noundef nonnull @.str.676, ptr noundef %i.agx, ptr noundef %i.agz, i32 noundef %i.agu)
  call void @proto_item_set_len(ptr noundef %i.aha, i32 noundef %i.agu)
  %i.ahb = sub i64 %.48861115, %i.agq
  br label %bb.gf

bb.gf:                                            ; preds = %value_guard.exit982, %value_guard.exit983, %bb.gc
  %.5887 = phi i64 [ %.48861115, %value_guard.exit982 ], [ %i.ahb, %value_guard.exit983 ], [ %.48861115, %bb.gc ] ; 2 uses
  %indvars.iv.next1167 = add nuw nsw i64 %indvars.iv1166, 1 ; 2 uses
  %exitcond1170.not = icmp eq i64 %indvars.iv.next1167, %wide.trip.count1169
  br i1 %exitcond1170.not, label %._crit_edge1118, label %.lr.ph1117, !llvm.loop !19

._crit_edge1118:                                  ; preds = %bb.gf, %proto_item_set_generated.exit, %.preheader
  %.4886.lcssa = phi i64 [ %.2884.lcssa, %.preheader ], [ %.2884.lcssa, %proto_item_set_generated.exit ], [ %.5887, %bb.gf ]
  %i.ahc = add i32 %.4879.lcssa, -1
  %i.ahd = zext i32 %i.ahc to i64
  %i.ahe = getelementptr [24 x i8], ptr %i.eh, i64 %i.ahd ; 3 uses
  %i.ahf = load i64, ptr %i.ahe, align 8          ; 2 uses
  %i.ahg = getelementptr i8, ptr %i.ahe, i64 8
  %i.ahh = load i64, ptr %i.ahg, align 8          ; 2 uses
  %i.ahi = add i64 %i.ahh, %i.ahf                 ; 3 uses
  %i.ahj = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ahk = zext i32 %i.ahj to i64
  %i.ahl = icmp ult i64 %i.ahi, %i.ahk
  br i1 %i.ahl, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %._crit_edge1118
  %i.ahm = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ahn = icmp samesign ult i64 %i.ahi, 2147483648
  br i1 %i.ahn, label %value_guard.exit984, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit984:                              ; preds = %bb.gg
  %i.aho = load i32, ptr @hf_elf_blackhole_size, align 4
  %.neg = sub i64 %i.ahh, %i.ahf
  %.neg928 = trunc i64 %.neg to i32
  %i.ahp = add i32 %i.ahm, %.neg928               ; 3 uses
  %i.ahq = trunc nuw nsw i64 %i.ahi to i32
  %i.ahr = getelementptr i8, ptr %i.ahe, i64 16
  %i.ahs = load ptr, ptr %i.ahr, align 8
  %i.aht = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.afl, i32 noundef %i.aho, ptr noundef %0, i32 noundef %i.ahq, i32 noundef 1, i32 noundef %i.ahp, ptr noundef nonnull @.str.677, ptr noundef %i.ahs, i32 noundef %i.ahp)
  call void @proto_item_set_len(ptr noundef %i.aht, i32 noundef %i.ahp)
  br label %bb.gi

bb.gi:                                            ; preds = %value_guard.exit984, %._crit_edge1118
  %i.ahu = load i32, ptr @hf_elf_file_size, align 4
  %i.ahv = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ahw = call ptr @proto_tree_add_uint(ptr noundef %i.afd, i32 noundef %i.ahu, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ahv) ; 0 uses
  %i.ahx = load i32, ptr @hf_elf_header_segment_size, align 4
  %i.ahy = trunc i64 %.4886.lcssa to i32          ; 2 uses
  %i.ahz = call ptr @proto_tree_add_uint(ptr noundef %i.afd, i32 noundef %i.ahx, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ahy) ; 0 uses
  %i.aia = load i32, ptr @hf_elf_blackholes_size, align 4
  %i.aib = call i32 @tvb_captured_length(ptr noundef %0)
  %i.aic = sub i32 %i.aib, %i.ahy
  %i.aid = call ptr @proto_tree_add_uint(ptr noundef %i.afd, i32 noundef %i.aia, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.aic) ; 0 uses
  %i.aie = getelementptr i8, ptr %1, i64 8        ; 2 uses
  %i.aif = load ptr, ptr %i.aie, align 8
  call void @col_clear(ptr noundef %i.aif, i32 noundef 25)
  %i.aig = load ptr, ptr %i.aie, align 8
  call void @col_set_str(ptr noundef %i.aig, i32 noundef 25, ptr noundef nonnull @.str.678)
  %i.aih = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.b, %bb.a, %bb.gi
  %.0 = phi i32 [ %i.aih, %bb.gi ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_static_text_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_elf() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @elf_handle, align 8
  tail call void @dissector_add_string(ptr noundef nonnull @.str.310, ptr noundef nonnull @.str.311, ptr noundef %i.a)
  %i.b = load ptr, ptr @elf_handle, align 8
  tail call void @dissector_add_string(ptr noundef nonnull @.str.310, ptr noundef nonnull @.str.312, ptr noundef %i.b)
  %i.c = load ptr, ptr @elf_handle, align 8
  tail call void @dissector_add_string(ptr noundef nonnull @.str.310, ptr noundef nonnull @.str.313, ptr noundef %i.c)
  %i.d = load ptr, ptr @elf_handle, align 8
  tail call void @dissector_add_string(ptr noundef nonnull @.str.310, ptr noundef nonnull @.str.314, ptr noundef %i.d)
  %i.e = load ptr, ptr @elf_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.315, i32 noundef 1234, ptr noundef %i.e)
  %i.f = load i32, ptr @proto_elf, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.316, ptr noundef nonnull @dissect_elf_heur, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.318, i32 noundef %i.f, i32 noundef 1)
  %i.g = load i32, ptr @proto_elf, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.319, ptr noundef nonnull @dissect_elf_heur, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.321, i32 noundef %i.g, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @dissect_elf_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
end_hunk_0
