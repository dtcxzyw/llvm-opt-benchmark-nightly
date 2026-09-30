Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/prism?download=true
inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@parser_lex:bb.a
  br i1 %.not.i2885, label %parser_lex_callback.exit2850, label %parser_lex_callback.exit2850.sink.split

parser_lex_callback.exit2850.sink.split:          ; preds = %bb.vw, %bb.vn, %bb.vj, %bb.vf, %bb.uw, %bb.un, %bb.ue, %bb.tv, %bb.tr
  %.sink5555 = phi ptr [ %i.bjq, %bb.vn ], [ %i.bjm, %bb.vj ], [ %i.bji, %bb.vf ], [ %i.bje, %bb.uw ], [ %i.bja, %bb.un ], [ %i.biw, %bb.ue ], [ %i.bis, %bb.tv ], [ %i.bio, %bb.tr ], [ %i.bju, %bb.vw ] ; 2 uses
  %i.bjv = getelementptr i8, ptr %.sink5555, i64 8
  %i.bjw = load ptr, ptr %i.bjv, align 8, !tbaa !157
  %i.bjx = load ptr, ptr %.sink5555, align 8, !tbaa !158
  call void %i.bjw(ptr noundef %i.bjx, ptr noundef nonnull %0, ptr noundef %i.c) #27
  br label %parser_lex_callback.exit2850

parser_lex_callback.exit2850:                     ; preds = %parser_lex_callback.exit2850.sink.split, %bb.vw, %bb.vn, %bb.vj, %bb.vf, %bb.uw, %bb.un, %bb.ue, %bb.tv, %bb.tr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %parser_lex_callback.exit2967

lex_state_spcarg_p.exit2826.thread:               ; preds = %peek.exit2821.thread, %lex_state_spcarg_p.exit2826, %.thread3395
  %.lcssa4184 = phi i1 [ %i.bw, %.thread3395 ], [ true, %lex_state_spcarg_p.exit2826 ], [ %i.bw, %peek.exit2821.thread ]
  %i.bjy = call fastcc zeroext i1 @ambiguous_operator_p(ptr noundef nonnull %0, i1 noundef zeroext %.lcssa4184)
  br i1 %i.bjy, label %bb.vx, label %bb.vy

bb.vx:                                            ; preds = %lex_state_spcarg_p.exit2826.thread
  %i.bjz = load ptr, ptr %i.v, align 8, !tbaa !151
  %i.bka = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.bkb = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.u, ptr noundef %i.bjz, ptr noundef %i.bka, i32 noundef 296, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #27 ; 0 uses
  br label %bb.vy

bb.vy:                                            ; preds = %bb.vx, %lex_state_spcarg_p.exit2826.thread
  %.val2167 = load i32, ptr %i.w, align 4, !tbaa !160
  %i.bkc = and i32 %.val2167, 384
  %.not3542 = icmp eq i32 %i.bkc, 0
  %i.bkd = select i1 %.not3542, i32 1, i32 16
  store i32 %i.bkd, ptr %i.w, align 4, !tbaa !160
  store i32 126, ptr %i.c, align 8, !tbaa !154
  %i.bke = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2887 = icmp eq ptr %i.bke, null
  br i1 %.not.i2887, label %parser_lex_callback.exit2967, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  %i.bkf = getelementptr i8, ptr %i.bke, i64 8
  %i.bkg = load ptr, ptr %i.bkf, align 8, !tbaa !157
  %i.bkh = load ptr, ptr %i.bke, align 8, !tbaa !158
  call void %i.bkg(ptr noundef %i.bkh, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.wa:                                            ; preds = %bb.t
  %.not.i2889 = icmp ult ptr %i.cj, %i.bu
  br i1 %.not.i2889, label %bb.wc, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.bki = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.y, ptr noundef nonnull %.ph, ptr noundef %i.cj, i32 noundef 131) #27 ; 0 uses
  br label %lex_global_variable.exit

bb.wc:                                            ; preds = %bb.wa
  %i.bkj = load i8, ptr %i.cj, align 1, !tbaa !83
  switch i8 %i.bkj, label %bb.wr [
    i8 126, label %bb.wd
    i8 42, label %bb.wd
    i8 36, label %bb.wd
    i8 63, label %bb.wd
    i8 33, label %bb.wd
    i8 64, label %bb.wd
    i8 47, label %bb.wd
    i8 92, label %bb.wd
    i8 59, label %bb.wd
    i8 44, label %bb.wd
    i8 46, label %bb.wd
    i8 61, label %bb.wd
    i8 58, label %bb.wd
    i8 60, label %bb.wd
    i8 62, label %bb.wd
    i8 34, label %bb.wd
    i8 38, label %bb.we
    i8 96, label %bb.we
    i8 39, label %bb.we
    i8 43, label %bb.we
    i8 48, label %bb.wf
    i8 49, label %bb.wp
    i8 50, label %bb.wp
    i8 51, label %bb.wp
    i8 52, label %bb.wp
    i8 53, label %bb.wp
    i8 54, label %bb.wp
    i8 55, label %bb.wp
    i8 56, label %bb.wp
    i8 57, label %bb.wp
    i8 45, label %bb.wq
  ]

bb.wd:                                            ; preds = %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc
  %i.bkk = getelementptr i8, ptr %.ph, i64 2
  store ptr %i.bkk, ptr %i.d, align 8, !tbaa !87
  br label %lex_global_variable.exit

bb.we:                                            ; preds = %bb.wc, %bb.wc, %bb.wc, %bb.wc
  %i.bkl = getelementptr i8, ptr %.ph, i64 2
  store ptr %i.bkl, ptr %i.d, align 8, !tbaa !87
  %.val71.i = load i32, ptr %i.w, align 4, !tbaa !160
  %i.bkm = and i32 %.val71.i, 128
  %.not93.i = icmp eq i32 %i.bkm, 0
  %i.bkn = select i1 %.not93.i, i32 24, i32 59
  br label %lex_global_variable.exit

bb.wf:                                            ; preds = %bb.wc
  %i.bko = getelementptr i8, ptr %.ph, i64 2      ; 3 uses
  store ptr %i.bko, ptr %i.d, align 8, !tbaa !87
  %i.bkp = ptrtoint ptr %i.bu to i64
  %i.bkq = ptrtoint ptr %i.bko to i64
  %i.bkr = sub i64 %i.bkp, %i.bkq
  %i.bks = call fastcc i64 @char_is_identifier(ptr noundef nonnull %0, ptr noundef %i.bko, i64 noundef %i.bkr) ; 2 uses
  %.not67.i = icmp eq i64 %i.bks, 0
  br i1 %.not67.i, label %lex_global_variable.exit, label %.preheader94.i

.preheader94.i:                                   ; preds = %bb.wf, %char_is_identifier.exit.i2896
  %.062.i = phi i64 [ %.1.i.i2897, %char_is_identifier.exit.i2896 ], [ %i.bks, %bb.wf ]
  %i.bkt = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.bku = getelementptr i8, ptr %i.bkt, i64 %.062.i ; 7 uses
  store ptr %i.bku, ptr %i.d, align 8, !tbaa !87
  %i.bkv = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.bkw = ptrtoint ptr %i.bkv to i64
  %i.bkx = ptrtoint ptr %i.bku to i64
  %i.bky = sub i64 %i.bkw, %i.bkx                 ; 4 uses
  %i.bkz = icmp slt i64 %i.bky, 1
  br i1 %i.bkz, label %char_is_identifier.exit.thread.i, label %bb.wg

bb.wg:                                            ; preds = %.preheader94.i
  %i.bla = load i8, ptr %i.ac, align 1, !tbaa !63, !range !64, !noundef !65
  %i.blb = trunc nuw i8 %i.bla to i1
  br i1 %i.blb, label %bb.wh, label %bb.wl

bb.wh:                                            ; preds = %bb.wg
  %i.blc = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.bld = getelementptr i8, ptr %i.blc, i64 16
  %i.ble = load ptr, ptr %i.bld, align 8, !tbaa !145
  %i.blf = call i64 %i.ble(ptr noundef %i.bku, i64 noundef %i.bky) #27, !inline_history !377 ; 2 uses
  %.not.i.i2899 = icmp eq i64 %i.blf, 0
  br i1 %.not.i.i2899, label %bb.wi, label %char_is_identifier.exit.i2896

bb.wi:                                            ; preds = %bb.wh
  %i.blg = load i8, ptr %i.bku, align 1, !tbaa !83 ; 2 uses
  %i.blh = icmp eq i8 %i.blg, 95
  br i1 %i.blh, label %char_is_identifier.exit.i2896, label %bb.wj

bb.wj:                                            ; preds = %bb.wi
  %i.bli = icmp slt i8 %i.blg, 0
  br i1 %i.bli, label %bb.wk, label %char_is_identifier.exit.thread.i

bb.wk:                                            ; preds = %bb.wj
  %i.blj = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.blk = load ptr, ptr %i.blj, align 8, !tbaa !143
  %i.bll = call i64 %i.blk(ptr noundef nonnull %i.bku, i64 noundef %i.bky) #27, !inline_history !377
  br label %char_is_identifier.exit.i2896

bb.wl:                                            ; preds = %bb.wg
  %i.blm = load i8, ptr %i.bku, align 1, !tbaa !83 ; 3 uses
  %i.bln = icmp sgt i8 %i.blm, -1
  br i1 %i.bln, label %bb.wm, label %bb.wo

bb.wm:                                            ; preds = %bb.wl
  %i.blo = icmp eq i8 %i.blm, 95
  br i1 %i.blo, label %char_is_identifier.exit.i2896, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  %i.blp = zext nneg i8 %i.blm to i64
  %i.blq = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.blp
  %i.blr = load i8, ptr %i.blq, align 1, !tbaa !83
  %i.bls = lshr i8 %i.blr, 1
  %.lobit.i.i.i2898 = and i8 %i.bls, 1
  %i.blt = zext nneg i8 %.lobit.i.i.i2898 to i64
  br label %char_is_identifier.exit.i2896

bb.wo:                                            ; preds = %bb.wl
  %i.blu = call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %i.bku, i64 noundef %i.bky) #27
  br label %char_is_identifier.exit.i2896

char_is_identifier.exit.i2896:                    ; preds = %bb.wo, %bb.wn, %bb.wm, %bb.wk, %bb.wi, %bb.wh
  %.1.i.i2897 = phi i64 [ %i.blt, %bb.wn ], [ 1, %bb.wm ], [ 1, %bb.wi ], [ %i.blf, %bb.wh ], [ %i.bll, %bb.wk ], [ %i.blu, %bb.wo ] ; 2 uses
  %.not68.i = icmp eq i64 %.1.i.i2897, 0
  br i1 %.not68.i, label %char_is_identifier.exit.thread.i, label %.preheader94.i, !llvm.loop !378

char_is_identifier.exit.thread.i:                 ; preds = %char_is_identifier.exit.i2896, %bb.wj, %.preheader94.i
  %i.blv = load i32, ptr %i.am, align 8, !tbaa !71
  %i.blw = icmp ult i32 %i.blv, 2
  %i.blx = select i1 %i.blw, i32 171, i32 170
  %i.bly = load ptr, ptr %i.v, align 8, !tbaa !151 ; 3 uses
  %i.blz = load ptr, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.bma = ptrtoint ptr %i.blz to i64
  %i.bmb = ptrtoint ptr %i.bly to i64
  %i.bmc = sub i64 %i.bma, %i.bmb
  %i.bmd = trunc i64 %i.bmc to i32
  %i.bme = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.y, ptr noundef %i.bly, ptr noundef %i.blz, i32 noundef %i.blx, i32 noundef %i.bmd, ptr noundef %i.bly) #27 ; 0 uses
  br label %lex_global_variable.exit

bb.wp:                                            ; preds = %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc, %bb.wc
  %i.bmf = ptrtoint ptr %i.bu to i64
  %i.bmg = ptrtoint ptr %i.cj to i64
  %i.bmh = sub i64 %i.bmf, %i.bmg
  %i.bmi = call i64 @pm_strspn_decimal_digit(ptr noundef nonnull %i.cj, i64 noundef %i.bmh) #27
  %i.bmj = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.bmk = getelementptr i8, ptr %i.bmj, i64 %i.bmi
  store ptr %i.bmk, ptr %i.d, align 8, !tbaa !87
  %.val.i2895 = load i32, ptr %i.w, align 4, !tbaa !160
  %8 = and i32 %.val.i2895, 128
  %.not92.i = icmp eq i32 %8, 0
  %9 = select i1 %.not92.i, i32 123, i32 59
  br label %lex_global_variable.exit

bb.wq:                                            ; preds = %bb.wc
  %i.bml = getelementptr i8, ptr %.ph, i64 2      ; 2 uses
  store ptr %i.bml, ptr %i.d, align 8, !tbaa !87
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wq, %bb.wc
  %i.bmm = phi ptr [ %i.cj, %bb.wc ], [ %i.bml, %bb.wq ] ; 6 uses
  %.060.i = phi i1 [ true, %bb.wc ], [ false, %bb.wq ]
  %i.bmn = ptrtoint ptr %i.bu to i64
  %i.bmo = ptrtoint ptr %i.bmm to i64
  %i.bmp = sub i64 %i.bmn, %i.bmo                 ; 4 uses
  %i.bmq = icmp slt i64 %i.bmp, 1
  br i1 %i.bmq, label %char_is_identifier.exit81.thread.i, label %bb.ws

bb.ws:                                            ; preds = %bb.wr
  %i.bmr = load i8, ptr %i.ac, align 1, !tbaa !63, !range !64, !noundef !65
  %i.bms = trunc nuw i8 %i.bmr to i1
  br i1 %i.bms, label %bb.wt, label %bb.wx

bb.wt:                                            ; preds = %bb.ws
  %i.bmt = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.bmu = getelementptr i8, ptr %i.bmt, i64 16
  %i.bmv = load ptr, ptr %i.bmu, align 8, !tbaa !145
  %i.bmw = call i64 %i.bmv(ptr noundef %i.bmm, i64 noundef %i.bmp) #27, !inline_history !377 ; 2 uses
  %.not.i80.i = icmp eq i64 %i.bmw, 0
  br i1 %.not.i80.i, label %bb.wu, label %.preheader.i2892

bb.wu:                                            ; preds = %bb.wt
  %i.bmx = load i8, ptr %i.bmm, align 1, !tbaa !83 ; 2 uses
  %i.bmy = icmp eq i8 %i.bmx, 95
  br i1 %i.bmy, label %.preheader.i2892, label %bb.wv

bb.wv:                                            ; preds = %bb.wu
  %i.bmz = icmp slt i8 %i.bmx, 0
  br i1 %i.bmz, label %bb.ww, label %char_is_identifier.exit81.thread.i

bb.ww:                                            ; preds = %bb.wv
  %i.bna = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.bnb = load ptr, ptr %i.bna, align 8, !tbaa !143
  %i.bnc = call i64 %i.bnb(ptr noundef nonnull %i.bmm, i64 noundef %i.bmp) #27, !inline_history !377
  br label %char_is_identifier.exit81.i

bb.wx:                                            ; preds = %bb.ws
  %i.bnd = load i8, ptr %i.bmm, align 1, !tbaa !83 ; 3 uses
  %i.bne = icmp sgt i8 %i.bnd, -1
  br i1 %i.bne, label %bb.wy, label %bb.xa

bb.wy:                                            ; preds = %bb.wx
  %i.bnf = icmp eq i8 %i.bnd, 95
  br i1 %i.bnf, label %.preheader.i2892, label %bb.wz

bb.wz:                                            ; preds = %bb.wy
  %i.bng = zext nneg i8 %i.bnd to i64
  %i.bnh = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.bng
  %i.bni = load i8, ptr %i.bnh, align 1, !tbaa !83
  %i.bnj = lshr i8 %i.bni, 1
  %.lobit.i.i79.i = and i8 %i.bnj, 1
  %i.bnk = zext nneg i8 %.lobit.i.i79.i to i64
  br label %char_is_identifier.exit81.i

bb.xa:                                            ; preds = %bb.wx
  %i.bnl = call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %i.bmm, i64 noundef %i.bmp) #27
  br label %char_is_identifier.exit81.i

char_is_identifier.exit81.i:                      ; preds = %bb.xa, %bb.wz, %bb.ww
  %.1.i78.i = phi i64 [ %i.bnk, %bb.wz ], [ %i.bnl, %bb.xa ], [ %i.bnc, %bb.ww ] ; 2 uses
  %.not69.i = icmp eq i64 %.1.i78.i, 0
  br i1 %.not69.i, label %char_is_identifier.exit81.thread.i, label %.preheader.i2892

.preheader.i2892:                                 ; preds = %char_is_identifier.exit81.i, %bb.wy, %bb.wu, %bb.wt
  %.1.i78113.i = phi i64 [ %.1.i78.i, %char_is_identifier.exit81.i ], [ %i.bmw, %bb.wt ], [ 1, %bb.wu ], [ 1, %bb.wy ] ; 2 uses
  br i1 %.060.i, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i2892, %char_is_identifier.exit85.us.i
  %.061.us.i = phi i64 [ %.1.i82.us.i, %char_is_identifier.exit85.us.i ], [ %.1.i78113.i, %.preheader.i2892 ]
  %i.bnm = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.bnn = getelementptr i8, ptr %i.bnm, i64 %.061.us.i ; 7 uses
  store ptr %i.bnn, ptr %i.d, align 8, !tbaa !87
  %i.bno = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.bnp = ptrtoint ptr %i.bno to i64
  %i.bnq = ptrtoint ptr %i.bnn to i64
  %i.bnr = sub i64 %i.bnp, %i.bnq                 ; 4 uses
  %i.bns = icmp slt i64 %i.bnr, 1
  br i1 %i.bns, label %lex_global_variable.exit, label %bb.xb

bb.xb:                                            ; preds = %.preheader.split.us.i
  %i.bnt = load i8, ptr %i.ac, align 1, !tbaa !63, !range !64, !noundef !65
  %i.bnu = trunc nuw i8 %i.bnt to i1
  br i1 %i.bnu, label %bb.xg, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %i.bnv = load i8, ptr %i.bnn, align 1, !tbaa !83 ; 3 uses
  %i.bnw = icmp sgt i8 %i.bnv, -1
  br i1 %i.bnw, label %bb.xe, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  %i.bnx = call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %i.bnn, i64 noundef %i.bnr) #27
  br label %char_is_identifier.exit85.us.i

bb.xe:                                            ; preds = %bb.xc
  %i.bny = icmp eq i8 %i.bnv, 95
  br i1 %i.bny, label %char_is_identifier.exit85.us.i, label %bb.xf

bb.xf:                                            ; preds = %bb.xe
  %i.bnz = zext nneg i8 %i.bnv to i64
  %i.boa = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.bnz
  %i.bob = load i8, ptr %i.boa, align 1, !tbaa !83
  %i.boc = lshr i8 %i.bob, 1
  %.lobit.i.i83.us.i = and i8 %i.boc, 1
  %i.bod = zext nneg i8 %.lobit.i.i83.us.i to i64
  br label %char_is_identifier.exit85.us.i

bb.xg:                                            ; preds = %bb.xb
  %i.boe = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.bof = getelementptr i8, ptr %i.boe, i64 16
  %i.bog = load ptr, ptr %i.bof, align 8, !tbaa !145
  %i.boh = call i64 %i.bog(ptr noundef %i.bnn, i64 noundef %i.bnr) #27, !inline_history !377 ; 2 uses
  %.not.i84.us.i = icmp eq i64 %i.boh, 0
  br i1 %.not.i84.us.i, label %bb.xh, label %char_is_identifier.exit85.us.i

bb.xh:                                            ; preds = %bb.xg
  %i.boi = load i8, ptr %i.bnn, align 1, !tbaa !83 ; 2 uses
  %i.boj = icmp eq i8 %i.boi, 95
  br i1 %i.boj, label %char_is_identifier.exit85.us.i, label %bb.xi

bb.xi:                                            ; preds = %bb.xh
  %i.bok = icmp slt i8 %i.boi, 0
  br i1 %i.bok, label %bb.xj, label %lex_global_variable.exit

bb.xj:                                            ; preds = %bb.xi
  %i.bol = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.bom = load ptr, ptr %i.bol, align 8, !tbaa !143
  %i.bon = call i64 %i.bom(ptr noundef nonnull %i.bnn, i64 noundef %i.bnr) #27, !inline_history !377
  br label %char_is_identifier.exit85.us.i

char_is_identifier.exit85.us.i:                   ; preds = %bb.xj, %bb.xh, %bb.xg, %bb.xf, %bb.xe, %bb.xd
  %.1.i82.us.i = phi i64 [ %i.bod, %bb.xf ], [ 1, %bb.xe ], [ 1, %bb.xh ], [ %i.boh, %bb.xg ], [ %i.bon, %bb.xj ], [ %i.bnx, %bb.xd ] ; 2 uses
  %.not70.us.i = icmp eq i64 %.1.i82.us.i, 0
  br i1 %.not70.us.i, label %lex_global_variable.exit, label %.preheader.split.us.i, !llvm.loop !379

.preheader.split.i:                               ; preds = %.preheader.i2892
  %i.boo = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.bop = getelementptr i8, ptr %i.boo, i64 %.1.i78113.i
  store ptr %i.bop, ptr %i.d, align 8, !tbaa !87
  br label %lex_global_variable.exit

char_is_identifier.exit81.thread.i:               ; preds = %char_is_identifier.exit81.i, %bb.wv, %bb.wr
  %.val72.i = load ptr, ptr %i.f, align 8, !tbaa !89
  %.val73.i = load ptr, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.boq = icmp ult ptr %.val73.i, %.val72.i
  br i1 %i.boq, label %bb.xk, label %peek.exit.i2893

bb.xk:                                            ; preds = %char_is_identifier.exit81.thread.i
  %i.bor = load i8, ptr %.val73.i, align 1, !tbaa !83
  br label %peek.exit.i2893

peek.exit.i2893:                                  ; preds = %bb.xk, %char_is_identifier.exit81.thread.i
  %.0.i.i.i2894 = phi i8 [ %i.bor, %bb.xk ], [ 0, %char_is_identifier.exit81.thread.i ]
  %i.bos = call zeroext i1 @pm_char_is_whitespace(i8 noundef zeroext %.0.i.i.i2894) #27
  br i1 %i.bos, label %bb.xl, label %bb.xm

bb.xl:                                            ; preds = %peek.exit.i2893
  %.val74.i = load ptr, ptr %i.v, align 8, !tbaa !127
  %.val75.i = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.bot = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.y, ptr noundef %.val74.i, ptr noundef %.val75.i, i32 noundef 131) #27 ; 0 uses
  br label %lex_global_variable.exit

bb.xm:                                            ; preds = %peek.exit.i2893
  %i.bou = load i32, ptr %i.am, align 8, !tbaa !71
  %i.bov = icmp ult i32 %i.bou, 2
  %i.bow = select i1 %i.bov, i32 171, i32 170
  %i.box = load ptr, ptr %i.d, align 8, !tbaa !87 ; 3 uses
  %i.boy = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.boz = load ptr, ptr %i.boy, align 8, !tbaa !143
  %i.bpa = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.bpb = ptrtoint ptr %i.bpa to i64
  %i.bpc = ptrtoint ptr %i.box to i64
  %i.bpd = sub i64 %i.bpb, %i.bpc
  %i.bpe = call i64 %i.boz(ptr noundef %i.box, i64 noundef %i.bpd) #27, !inline_history !380
  %i.bpf = getelementptr i8, ptr %i.box, i64 %i.bpe ; 2 uses
  %i.bpg = load ptr, ptr %i.v, align 8, !tbaa !151 ; 3 uses
  %i.bph = ptrtoint ptr %i.bpf to i64
  %i.bpi = ptrtoint ptr %i.bpg to i64
  %i.bpj = sub i64 %i.bph, %i.bpi
  %i.bpk = trunc i64 %i.bpj to i32
  %i.bpl = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.y, ptr noundef %i.bpg, ptr noundef %i.bpf, i32 noundef %i.bow, i32 noundef %i.bpk, ptr noundef %i.bpg) #27 ; 0 uses
  br label %lex_global_variable.exit

lex_global_variable.exit:                         ; preds = %.preheader.split.us.i, %bb.xi, %char_is_identifier.exit85.us.i, %bb.wb, %bb.wd, %bb.we, %bb.wf, %char_is_identifier.exit.thread.i, %bb.wp, %.preheader.split.i, %bb.xl, %bb.xm
  %.1.i2891 = phi i32 [ 59, %bb.wb ], [ 59, %bb.wf ], [ 59, %bb.wd ], [ %i.bkn, %bb.we ], [ %9, %bb.wp ], [ 59, %char_is_identifier.exit.thread.i ], [ 59, %bb.xm ], [ 59, %bb.xl ], [ 59, %.preheader.split.i ], [ 59, %char_is_identifier.exit85.us.i ], [ 59, %bb.xi ], [ 59, %.preheader.split.us.i ]
  %i.bpm = load ptr, ptr %i.o, align 8, !tbaa !93 ; 4 uses
  %i.bpn = load i32, ptr %i.bpm, align 8, !tbaa !99
  %i.bpo = icmp eq i32 %i.bpn, 2
  br i1 %i.bpo, label %bb.xn, label %lex_mode_pop.exit2900

bb.xn:                                            ; preds = %lex_global_variable.exit
  %i.bpp = getelementptr i8, ptr %0, i64 296      ; 2 uses
  %i.bpq = load i64, ptr %i.bpp, align 8, !tbaa !92 ; 3 uses
  %i.bpr = icmp eq i64 %i.bpq, 0
  br i1 %i.bpr, label %bb.xo, label %bb.xp

bb.xo:                                            ; preds = %bb.xn
  store i32 0, ptr %i.bpm, align 8, !tbaa !99
  br label %lex_mode_pop.exit2900

bb.xp:                                            ; preds = %bb.xn
  %i.bps = icmp ult i64 %i.bpq, 4
  %i.bpt = add i64 %i.bpq, -1                     ; 2 uses
  store i64 %i.bpt, ptr %i.bpp, align 8, !tbaa !92
  br i1 %i.bps, label %bb.xq, label %bb.xr

bb.xq:                                            ; preds = %bb.xp
  %i.bpu = getelementptr i8, ptr %0, i64 40
  %i.bpv = getelementptr [64 x i8], ptr %i.bpu, i64 %i.bpt
  store ptr %i.bpv, ptr %i.o, align 8, !tbaa !93
  br label %lex_mode_pop.exit2900

bb.xr:                                            ; preds = %bb.xp
  %i.bpw = getelementptr i8, ptr %i.bpm, i64 56
  %i.bpx = load ptr, ptr %i.bpw, align 8, !tbaa !98
  call void @free(ptr noundef nonnull %i.bpm) #27
  store ptr %i.bpx, ptr %i.o, align 8, !tbaa !93
  br label %lex_mode_pop.exit2900

lex_mode_pop.exit2900:                            ; preds = %bb.xr, %bb.xq, %bb.xo, %lex_global_variable.exit
  store i32 2, ptr %i.w, align 4, !tbaa !160
  store i32 %.1.i2891, ptr %i.c, align 8, !tbaa !154
  %i.bpy = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %.not.i2901 = icmp eq ptr %i.bpy, null
  br i1 %.not.i2901, label %parser_lex_callback.exit2967, label %bb.xs

bb.xs:                                            ; preds = %lex_mode_pop.exit2900
  %i.bpz = getelementptr i8, ptr %i.bpy, i64 8
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !157
  %i.bqb = load ptr, ptr %i.bpy, align 8, !tbaa !158
  call void %i.bqa(ptr noundef %i.bqb, ptr noundef nonnull %0, ptr noundef %i.c) #27, !inline_history !2
  br label %parser_lex_callback.exit2967

bb.xt:                                            ; preds = %bb.t
  %i.bqc = load i32, ptr %i.w, align 4, !tbaa !160
  %i.bqd = and i32 %i.bqc, 128
  %.not2008 = icmp eq i32 %i.bqd, 0
  %i.bqe = select i1 %.not2008, i32 2, i32 8
  store i32 %i.bqe, ptr %i.w, align 4, !tbaa !160
  %i.bqf = icmp ult ptr %i.cj, %i.bu
  br i1 %i.bqf, label %peek.exit.i.i2914, label %match.exit.i

peek.exit.i.i2914:                                ; preds = %bb.xt
  %i.bqg = load i8, ptr %i.cj, align 1, !tbaa !83
  %i.bqh = icmp eq i8 %i.bqg, 64
  br i1 %i.bqh, label %bb.xu, label %match.exit.i

bb.xu:                                            ; preds = %peek.exit.i.i2914
  %i.bqi = getelementptr i8, ptr %.ph, i64 2      ; 2 uses
  store ptr %i.bqi, ptr %i.d, align 8, !tbaa !87
  br label %match.exit.i

match.exit.i:                                     ; preds = %bb.xu, %peek.exit.i.i2914, %bb.xt
  %i.bqj = phi ptr [ %i.bqi, %bb.xu ], [ %i.cj, %peek.exit.i.i2914 ], [ %i.cj, %bb.xt ] ; 6 uses
  %i.bqk = phi i1 [ true, %bb.xu ], [ false, %peek.exit.i.i2914 ], [ false, %bb.xt ] ; 4 uses
  %i.bql = ptrtoint ptr %i.bu to i64              ; 4 uses
  %i.bqm = ptrtoint ptr %i.bqj to i64
  %i.bqn = sub i64 %i.bql, %i.bqm                 ; 4 uses
  %i.bqo = icmp slt i64 %i.bqn, 1
  br i1 %i.bqo, label %char_is_identifier_start.exit.thread.i, label %bb.xv

bb.xv:                                            ; preds = %match.exit.i
  %i.bqp = load i8, ptr %i.ac, align 1, !tbaa !63, !range !64, !noundef !65
  %i.bqq = trunc nuw i8 %i.bqp to i1
  br i1 %i.bqq, label %bb.xw, label %bb.ya

bb.xw:                                            ; preds = %bb.xv
  %i.bqr = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.bqs = getelementptr i8, ptr %i.bqr, i64 8
  %i.bqt = load ptr, ptr %i.bqs, align 8, !tbaa !142
  %i.bqu = call i64 %i.bqt(ptr noundef %i.bqj, i64 noundef %i.bqn) #27, !inline_history !381 ; 2 uses
  %.not20.i.i = icmp eq i64 %i.bqu, 0
  br i1 %.not20.i.i, label %bb.xx, label %char_is_identifier_start.exit.thread48.i

bb.xx:                                            ; preds = %bb.xw
  %i.bqv = load i8, ptr %i.bqj, align 1, !tbaa !83 ; 2 uses
  %i.bqw = icmp eq i8 %i.bqv, 95
  br i1 %i.bqw, label %char_is_identifier_start.exit.thread48.i, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.bqx = icmp slt i8 %i.bqv, 0
  br i1 %i.bqx, label %bb.xz, label %char_is_identifier_start.exit.thread.i

bb.xz:                                            ; preds = %bb.xy
  %i.bqy = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !143
  %i.bra = call i64 %i.bqz(ptr noundef nonnull %i.bqj, i64 noundef %i.bqn) #27, !inline_history !381
  br label %char_is_identifier_start.exit.i

bb.ya:                                            ; preds = %bb.xv
  %i.brb = load i8, ptr %i.bqj, align 1, !tbaa !83 ; 3 uses
  %i.brc = icmp sgt i8 %i.brb, -1
  br i1 %i.brc, label %bb.yb, label %bb.yc

bb.yb:                                            ; preds = %bb.ya
  %i.brd = zext nneg i8 %i.brb to i64
  %i.bre = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.brd
  %i.brf = load i8, ptr %i.bre, align 1, !tbaa !83
  %.not.i.i2913 = trunc i8 %i.brf to i1
  %i.brg = icmp eq i8 %i.brb, 95
  %narrow.i.i = or i1 %i.brg, %.not.i.i2913
  %i.brh = zext i1 %narrow.i.i to i64
  br label %char_is_identifier_start.exit.i

bb.yc:                                            ; preds = %bb.ya
  %i.bri = call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %i.bqj, i64 noundef %i.bqn) #27
  br label %char_is_identifier_start.exit.i

char_is_identifier_start.exit.i:                  ; preds = %bb.yc, %bb.yb, %bb.xz
  %.1.i.i2905 = phi i64 [ %i.bri, %bb.yc ], [ %i.bra, %bb.xz ], [ %i.brh, %bb.yb ] ; 2 uses
  %.not.i2906 = icmp eq i64 %.1.i.i2905, 0
  br i1 %.not.i2906, label %char_is_identifier_start.exit.thread.i, label %char_is_identifier_start.exit.thread48.i

char_is_identifier_start.exit.thread48.i:         ; preds = %char_is_identifier_start.exit.i, %bb.xx, %bb.xw
  %.1.i51.i = phi i64 [ %.1.i.i2905, %char_is_identifier_start.exit.i ], [ %i.bqu, %bb.xw ], [ 1, %bb.xx ]
  %i.brj = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.brk = getelementptr i8, ptr %i.brj, i64 %.1.i51.i ; 3 uses
  store ptr %i.brk, ptr %i.d, align 8, !tbaa !87
  %i.brl = ptrtoint ptr %i.brk to i64
  %i.brm = sub i64 %i.bql, %i.brl                 ; 2 uses
  %i.brn = icmp slt i64 %i.brm, 1
  br i1 %i.brn, label %char_is_identifier.exit.thread56.i, label %.lr.ph.i2907

.lr.ph.i2907:                                     ; preds = %char_is_identifier_start.exit.thread48.i, %char_is_identifier.exit.thread.i2909
  %i.bro = phi i64 [ %i.bsn, %char_is_identifier.exit.thread.i2909 ], [ %i.brm, %char_is_identifier_start.exit.thread48.i ] ; 3 uses
  %storemerge59.i = phi ptr [ %i.bsl, %char_is_identifier.exit.thread.i2909 ], [ %i.brk, %char_is_identifier_start.exit.thread48.i ] ; 5 uses
  %i.brp = load i8, ptr %i.ac, align 1, !tbaa !63, !range !64, !noundef !65
  %i.brq = trunc nuw i8 %i.brp to i1
  br i1 %i.brq, label %bb.yd, label %bb.yh

bb.yd:                                            ; preds = %.lr.ph.i2907
  %i.brr = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.brs = getelementptr i8, ptr %i.brr, i64 16
  %i.brt = load ptr, ptr %i.brs, align 8, !tbaa !145
  %i.bru = call i64 %i.brt(ptr noundef %storemerge59.i, i64 noundef %i.bro) #27, !inline_history !382 ; 2 uses
  %.not.i44.i = icmp eq i64 %i.bru, 0
  br i1 %.not.i44.i, label %bb.ye, label %char_is_identifier.exit.thread.i2909

bb.ye:                                            ; preds = %bb.yd
  %i.brv = load i8, ptr %storemerge59.i, align 1, !tbaa !83 ; 2 uses
  %i.brw = icmp eq i8 %i.brv, 95
  br i1 %i.brw, label %char_is_identifier.exit.thread.i2909, label %bb.yf

bb.yf:                                            ; preds = %bb.ye
  %i.brx = icmp slt i8 %i.brv, 0
  br i1 %i.brx, label %bb.yg, label %char_is_identifier.exit.thread56.i

bb.yg:                                            ; preds = %bb.yf
  %i.bry = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.brz = load ptr, ptr %i.bry, align 8, !tbaa !143
  %i.bsa = call i64 %i.brz(ptr noundef nonnull %storemerge59.i, i64 noundef %i.bro) #27, !inline_history !382
  br label %char_is_identifier.exit.i2908

bb.yh:                                            ; preds = %.lr.ph.i2907
  %i.bsb = load i8, ptr %storemerge59.i, align 1, !tbaa !83 ; 3 uses
  %i.bsc = icmp sgt i8 %i.bsb, -1
  br i1 %i.bsc, label %bb.yi, label %bb.yk

bb.yi:                                            ; preds = %bb.yh
  %i.bsd = icmp eq i8 %i.bsb, 95
  br i1 %i.bsd, label %char_is_identifier.exit.thread.i2909, label %bb.yj

bb.yj:                                            ; preds = %bb.yi
  %i.bse = zext nneg i8 %i.bsb to i64
  %i.bsf = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.bse
  %i.bsg = load i8, ptr %i.bsf, align 1, !tbaa !83
  %i.bsh = lshr i8 %i.bsg, 1
  %.lobit.i.i.i2910 = and i8 %i.bsh, 1
  %i.bsi = zext nneg i8 %.lobit.i.i.i2910 to i64
  br label %char_is_identifier.exit.i2908

bb.yk:                                            ; preds = %bb.yh
  %i.bsj = call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %storemerge59.i, i64 noundef %i.bro) #27
  br label %char_is_identifier.exit.i2908

char_is_identifier.exit.i2908:                    ; preds = %bb.yk, %bb.yj, %bb.yg
  %.1.i43.i = phi i64 [ %i.bsi, %bb.yj ], [ %i.bsa, %bb.yg ], [ %i.bsj, %bb.yk ] ; 2 uses
  %.not41.i = icmp eq i64 %.1.i43.i, 0
  br i1 %.not41.i, label %char_is_identifier.exit.thread56.i, label %char_is_identifier.exit.thread.i2909

char_is_identifier.exit.thread.i2909:             ; preds = %char_is_identifier.exit.i2908, %bb.yi, %bb.ye, %bb.yd
  %.1.i4354.i = phi i64 [ %.1.i43.i, %char_is_identifier.exit.i2908 ], [ 1, %bb.yi ], [ %i.bru, %bb.yd ], [ 1, %bb.ye ]
  %i.bsk = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.bsl = getelementptr i8, ptr %i.bsk, i64 %.1.i4354.i ; 3 uses
  store ptr %i.bsl, ptr %i.d, align 8, !tbaa !87
end_hunk_0
begin_hunk_1_@lex_mode_push_list_eof:bb.a
bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.k = getelementptr [64 x i8], ptr %i.j, i64 %i.f ; 5 uses
  store i32 4, ptr %i.k, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.sroa.6.0..sroa_idx, i8 0, i64 15, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) @.str.58, i64 11, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.10.0..sroa_idx, i8 0, i64 26, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !34
  %i.l = load i64, ptr %i.d, align 8, !tbaa !92
  %i.m = getelementptr [64 x i8], ptr %i.j, i64 %i.l
  store ptr %i.m, ptr %i.b, align 8, !tbaa !93
  br label %lex_mode_push_list.exit

lex_mode_push_list.exit:                          ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @lex_mode_push_string_eof(ptr noundef initializes((672, 680)) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.a, align 8, !tbaa !168
  %i.b = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 296        ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !92
  %i.f = add i64 %i.e, 1                          ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !92
  %i.g = icmp ugt i64 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 7 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !93
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %lex_mode_push_string.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 6, ptr %i.h, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.10.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx2, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %.sroa.10.0..sroa_idx12, ptr noundef nonnull align 1 dereferenceable(7) @.str.56, i64 7, i1 false)
  %.sroa.11.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.h, i64 27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.11.0..sroa_idx13, i8 0, i64 29, i1 false)
  %.sroa.5.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx18.i, align 8, !tbaa !34
  br label %lex_mode_push_string.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.k = getelementptr [64 x i8], ptr %i.j, i64 %i.f ; 5 uses
  store i32 6, ptr %i.k, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) @.str.56, i64 7, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.11.0..sroa_idx, i8 0, i64 29, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !34
  %i.l = load i64, ptr %i.d, align 8, !tbaa !92
  %i.m = getelementptr [64 x i8], ptr %i.j, i64 %i.l
  store ptr %i.m, ptr %i.b, align 8, !tbaa !93
  br label %lex_mode_push_string.exit

lex_mode_push_string.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @char_is_identifier_start(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i64 %2, 1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 699
  %i.c = load i8, ptr %i.b, align 1, !tbaa !63, !range !64, !noundef !65
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 520        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142
  %i.i = tail call i64 %i.h(ptr noundef %1, i64 noundef %2) #27 ; 2 uses
  %.not20 = icmp eq i64 %i.i, 0
  br i1 %.not20, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %1, align 1, !tbaa !83      ; 2 uses
  %i.k = icmp eq i8 %i.j, 95
  br i1 %i.k, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i8 %i.j, 0
  br i1 %i.l, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !143
  %i.o = tail call i64 %i.n(ptr noundef nonnull %1, i64 noundef %2) #27
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.p = load i8, ptr %1, align 1, !tbaa !83      ; 3 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = zext nneg i8 %i.p to i64
  %i.s = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !83
  %.not = trunc i8 %i.t to i1
  %i.u = icmp eq i8 %i.p, 95
  %narrow = or i1 %i.u, %.not
  %i.v = zext i1 %narrow to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %1, i64 noundef %2) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %bb.a, %bb.i, %bb.h
  %.1 = phi i64 [ %i.w, %bb.i ], [ 0, %bb.a ], [ %i.v, %bb.h ], [ 1, %bb.d ], [ %i.i, %bb.c ], [ %i.o, %bb.f ], [ 0, %bb.e ]
  ret i64 %.1
}

declare i64 @pm_strspn_whitespace_newlines(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @pm_strpbrk(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_token_buffer_flush(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 640
  %i.e = getelementptr i8, ptr %0, i64 352
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !151
  %i.g = getelementptr i8, ptr %0, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  tail call void @pm_string_shared_init(ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 360
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.b to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @pm_buffer_append_bytes(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef %i.m) #27
  %i.n = getelementptr i8, ptr %0, i64 640
  %i.o = tail call ptr @pm_buffer_value(ptr noundef nonnull %1) #27
  %i.p = tail call i64 @pm_buffer_length(ptr noundef nonnull %1) #27
  tail call void @pm_string_owned_init(ptr noundef %i.n, ptr noundef %i.o, i64 noundef %i.p) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_token_buffer_copy(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 640
  %i.b = tail call ptr @pm_buffer_value(ptr noundef nonnull %1) #27
  %i.c = tail call i64 @pm_buffer_length(ptr noundef nonnull %1) #27
  tail call void @pm_string_owned_init(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.c) #27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @escape_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext range(i8 0, 12) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 312        ; 11 uses
  %i.b = getelementptr i8, ptr %0, i64 360        ; 90 uses
  %.val5061049 = load ptr, ptr %i.a, align 8, !tbaa !89 ; 3 uses
  %.val5071050 = load ptr, ptr %i.b, align 8, !tbaa !87 ; 3 uses
  %i.c = icmp ult ptr %.val5071050, %.val5061049
  br i1 %i.c, label %peek.exit.lr.ph, label %.thread710

peek.exit.lr.ph:                                  ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 352        ; 28 uses
  %i.e = getelementptr i8, ptr %0, i64 472        ; 39 uses
  br label %peek.exit

peek.exit:                                        ; preds = %peek.exit.lr.ph, %tailrecurse.backedge
  %.val5061313 = phi ptr [ %.val5061049, %peek.exit.lr.ph ], [ %.val506, %tailrecurse.backedge ] ; 12 uses
  %.val5071053 = phi ptr [ %.val5071050, %peek.exit.lr.ph ], [ %.val507, %tailrecurse.backedge ] ; 25 uses
  %.tr7271051 = phi i8 [ %3, %peek.exit.lr.ph ], [ %i.qn, %tailrecurse.backedge ] ; 74 uses
  %i.f = load i8, ptr %.val5071053, align 1, !tbaa !83 ; 4 uses
  switch i8 %i.f, label %peek_offset.exit665.thread [
    i8 92, label %bb.b
    i8 39, label %bb.i
    i8 97, label %bb.p
    i8 98, label %bb.w
    i8 101, label %bb.ad
    i8 102, label %bb.ak
    i8 110, label %bb.ar
    i8 114, label %bb.ay
    i8 115, label %bb.bf
    i8 116, label %bb.bm
    i8 118, label %bb.bt
    i8 48, label %bb.ca
    i8 49, label %bb.ca
    i8 50, label %bb.ca
    i8 51, label %bb.ca
    i8 52, label %bb.ca
    i8 53, label %bb.ca
    i8 54, label %bb.ca
    i8 55, label %bb.ca
    i8 120, label %bb.cm
    i8 117, label %bb.cx
    i8 99, label %bb.eh
    i8 67, label %bb.es
    i8 77, label %bb.fe
    i8 13, label %bb.fp
  ]

bb.b:                                             ; preds = %peek.exit
  %i.g = getelementptr i8, ptr %.val5071053, i64 1
  store ptr %i.g, ptr %i.b, align 8, !tbaa !87
  %4 = and i8 %.tr7271051, 1
  %.not.i = icmp eq i8 %4, 0
  %spec.select.i = select i1 %.not.i, i8 92, i8 28
  %i.h = shl i8 %.tr7271051, 6                    ; 2 uses
  %5 = and i8 %i.h, -128
  %.1.i = or disjoint i8 %spec.select.i, %5       ; 2 uses
  %.not.i512 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not.i512, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext i8 %.1.i to i32
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %2, ptr noundef nonnull @.str.98, i32 noundef %i.i) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = icmp slt i8 %i.h, 0
  br i1 %i.j, label %bb.e, label %escape_write_byte.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 672        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !168
  %i.m = icmp eq ptr %i.l, @pm_encodings
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 520
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60   ; 2 uses
  %.not12.i.i = icmp eq ptr %i.o, @pm_encodings
  br i1 %.not12.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.r = getelementptr i8, ptr %i.o, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !190
  %i.t = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.p, ptr noundef %i.q, i32 noundef 187, ptr noundef %i.s) #27 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.u = getelementptr i8, ptr %0, i64 520
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  store ptr %i.v, ptr %i.k, align 8, !tbaa !168
  br label %escape_write_byte.exit

escape_write_byte.exit:                           ; preds = %bb.d, %bb.h
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext %.1.i) #27
  br label %.critedge480

bb.i:                                             ; preds = %peek.exit
  %i.w = getelementptr i8, ptr %.val5071053, i64 1
  store ptr %i.w, ptr %i.b, align 8, !tbaa !87
  %6 = and i8 %.tr7271051, 1
  %.not.i513 = icmp eq i8 %6, 0
  %spec.select.i514 = select i1 %.not.i513, i8 39, i8 7
  %i.x = shl i8 %.tr7271051, 6                    ; 2 uses
  %i.y = and i8 %i.x, -128
  %.1.i515.a = or disjoint i8 %spec.select.i514, %i.y ; 2 uses
  %.not.i516 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not.i516, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = zext i8 %.1.i515.a to i32
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %2, ptr noundef nonnull @.str.98, i32 noundef %i.z) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = icmp slt i8 %i.x, 0
  br i1 %i.aa, label %bb.l, label %escape_write_byte.exit518

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr i8, ptr %0, i64 672       ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !168
  %i.ad = icmp eq ptr %i.ac, @pm_encodings
  br i1 %i.ad, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr i8, ptr %0, i64 520
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60 ; 2 uses
  %.not12.i.i517 = icmp eq ptr %i.af, @pm_encodings
  br i1 %.not12.i.i517, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.ai = getelementptr i8, ptr %i.af, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !190
  %i.ak = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.ag, ptr noundef %i.ah, i32 noundef 187, ptr noundef %i.aj) #27 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.al = getelementptr i8, ptr %0, i64 520
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !60
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !168
  br label %escape_write_byte.exit518

escape_write_byte.exit518:                        ; preds = %bb.k, %bb.o
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext %.1.i515.a) #27
  br label %.critedge480

bb.p:                                             ; preds = %peek.exit
  %i.an = getelementptr i8, ptr %.val5071053, i64 1
  store ptr %i.an, ptr %i.b, align 8, !tbaa !87
  %i.ao = shl i8 %.tr7271051, 6                   ; 2 uses
  %i.ap = and i8 %i.ao, -128
  %.1.i521 = or disjoint i8 %i.ap, 7              ; 2 uses
  %.not.i522 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not.i522, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = zext i8 %.1.i521 to i32
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %2, ptr noundef nonnull @.str.98, i32 noundef %i.aq) #27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ar = icmp slt i8 %i.ao, 0
  br i1 %i.ar, label %bb.s, label %escape_write_byte.exit524

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr i8, ptr %0, i64 672       ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !168
  %i.au = icmp eq ptr %i.at, @pm_encodings
  br i1 %i.au, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr i8, ptr %0, i64 520
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !60 ; 2 uses
  %.not12.i.i523 = icmp eq ptr %i.aw, @pm_encodings
  br i1 %.not12.i.i523, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.az = getelementptr i8, ptr %i.aw, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !190
  %i.bb = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.ax, ptr noundef %i.ay, i32 noundef 187, ptr noundef %i.ba) #27 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bc = getelementptr i8, ptr %0, i64 520
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !60
  store ptr %i.bd, ptr %i.as, align 8, !tbaa !168
  br label %escape_write_byte.exit524

escape_write_byte.exit524:                        ; preds = %bb.r, %bb.v
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext %.1.i521) #27
  br label %.critedge480

bb.w:                                             ; preds = %peek.exit
  %i.be = getelementptr i8, ptr %.val5071053, i64 1
  store ptr %i.be, ptr %i.b, align 8, !tbaa !87
  %i.bf = shl i8 %.tr7271051, 6                   ; 2 uses
  %i.bg = and i8 %i.bf, -128
  %.1.i527 = or disjoint i8 %i.bg, 8              ; 2 uses
  %.not.i528 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not.i528, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = zext i8 %.1.i527 to i32
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %2, ptr noundef nonnull @.str.98, i32 noundef %i.bh) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bi = icmp slt i8 %i.bf, 0
  br i1 %i.bi, label %bb.z, label %escape_write_byte.exit530

bb.z:                                             ; preds = %bb.y
  %i.bj = getelementptr i8, ptr %0, i64 672       ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !168
  %i.bl = icmp eq ptr %i.bk, @pm_encodings
  br i1 %i.bl, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bm = getelementptr i8, ptr %0, i64 520
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !60 ; 2 uses
  %.not12.i.i529 = icmp eq ptr %i.bn, @pm_encodings
  br i1 %.not12.i.i529, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.bq = getelementptr i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !190
  %i.bs = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.bo, ptr noundef %i.bp, i32 noundef 187, ptr noundef %i.br) #27 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bt = getelementptr i8, ptr %0, i64 520
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !60
  store ptr %i.bu, ptr %i.bj, align 8, !tbaa !168
  br label %escape_write_byte.exit530

escape_write_byte.exit530:                        ; preds = %bb.y, %bb.ac
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext %.1.i527) #27
  br label %.critedge480

bb.ad:                                            ; preds = %peek.exit
  %i.bv = getelementptr i8, ptr %.val5071053, i64 1
  store ptr %i.bv, ptr %i.b, align 8, !tbaa !87
  %i.bw = shl i8 %.tr7271051, 6                   ; 2 uses
  %i.bx = and i8 %i.bw, -128
  %.1.i533 = or disjoint i8 %i.bx, 27             ; 2 uses
  %.not.i534 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not.i534, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = zext i8 %.1.i533 to i32
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %2, ptr noundef nonnull @.str.98, i32 noundef %i.by) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bz = icmp slt i8 %i.bw, 0
  br i1 %i.bz, label %bb.ag, label %escape_write_byte.exit536

bb.ag:                                            ; preds = %bb.af
  %i.ca = getelementptr i8, ptr %0, i64 672       ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !168
  %i.cc = icmp eq ptr %i.cb, @pm_encodings
  br i1 %i.cc, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cd = getelementptr i8, ptr %0, i64 520
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !60 ; 2 uses
  %.not12.i.i535 = icmp eq ptr %i.ce, @pm_encodings
  br i1 %.not12.i.i535, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.ch = getelementptr i8, ptr %i.ce, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !190
  %i.cj = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.cf, ptr noundef %i.cg, i32 noundef 187, ptr noundef %i.ci) #27 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ck = getelementptr i8, ptr %0, i64 520
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !60
  store ptr %i.cl, ptr %i.ca, align 8, !tbaa !168
  br label %escape_write_byte.exit536

escape_write_byte.exit536:                        ; preds = %bb.af, %bb.aj
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext %.1.i533) #27
  br label %.critedge480

bb.ak:                                            ; preds = %peek.exit
  %i.cm = getelementptr i8, ptr %.val5071053, i64 1
  store ptr %i.cm, ptr %i.b, align 8, !tbaa !87
  %i.cn = shl i8 %.tr7271051, 6                   ; 2 uses
  %i.co = and i8 %i.cn, -128
  %.1.i539 = or disjoint i8 %i.co, 12             ; 2 uses
  %.not.i540 = icmp samesign ult i8 %.tr7271051, 8
  br i1 %.not.i540, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cp = zext i8 %.1.i539 to i32
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %2, ptr noundef nonnull @.str.98, i32 noundef %i.cp) #27
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cq = icmp slt i8 %i.cn, 0
  br i1 %i.cq, label %bb.an, label %escape_write_byte.exit542

bb.an:                                            ; preds = %bb.am
  %i.cr = getelementptr i8, ptr %0, i64 672       ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !168
  %i.ct = icmp eq ptr %i.cs, @pm_encodings
  br i1 %i.ct, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.cu = getelementptr i8, ptr %0, i64 520
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !60 ; 2 uses
  %.not12.i.i541 = icmp eq ptr %i.cv, @pm_encodings
  br i1 %.not12.i.i541, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.cy = getelementptr i8, ptr %i.cv, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !190
  %i.da = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.e, ptr noundef %i.cw, ptr noundef %i.cx, i32 noundef 187, ptr noundef %i.cz) #27 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.db = getelementptr i8, ptr %0, i64 520
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !60
  store ptr %i.dc, ptr %i.cr, align 8, !tbaa !168
  br label %escape_write_byte.exit542

escape_write_byte.exit542:                        ; preds = %bb.am, %bb.aq
  tail call void @pm_buffer_append_byte(ptr noundef %1, i8 noundef zeroext %.1.i539) #27
  br label %.critedge480

bb.ar:                                            ; preds = %peek.exit
  %i.dd = getelementptr i8, ptr %.val5071053, i64 1
  store ptr %i.dd, ptr %i.b, align 8, !tbaa !87
  %i.de = shl i8 %.tr7271051, 6                   ; 2 uses
  %i.df = and i8 %i.de, -128
  %.1.i545 = or disjoint i8 %i.df, 10             ; 2 uses
end_hunk_1
