Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ripper?download=true
inline.NumInlined: 2066
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@parser_yylex:bb.a
  %i.btg = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.btc, i32 noundef 16, i32 noundef 10923) #29
  br label %parser_set_lex_state.exit1086

parser_set_lex_state.exit1086:                    ; preds = %bb.rg, %bb.rh
  %.0.i1085 = phi i32 [ %i.btg, %bb.rh ], [ 16, %bb.rg ]
  store i32 %.0.i1085, ptr %i.afu, align 8, !tbaa !68
  %i.bth = icmp eq i32 %i.btb, 64
  br i1 %i.bth, label %pushback.exit1063, label %bb.ri

bb.ri:                                            ; preds = %parser_set_lex_state.exit1086
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.btb)
  br label %pushback.exit1063

bb.rj:                                            ; preds = %bb.rf
  switch i32 %i.btb, label %bb.ro [
    i32 61, label %bb.rk
    i32 62, label %bb.rm
  ]

bb.rk:                                            ; preds = %bb.rj
  %i.bti = load ptr, ptr %0, align 8, !tbaa !47
  store i64 45, ptr %i.bti, align 8, !tbaa !20
  %i.btj = load i16, ptr %i.f, align 8
  %i.btk = and i16 %i.btj, 32
  %.not.i1087 = icmp eq i16 %i.btk, 0
  br i1 %.not.i1087, label %parser_set_lex_state.exit1089, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.btl = load i32, ptr %i.afu, align 8, !tbaa !68
  %i.btm = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.btl, i32 noundef 1, i32 noundef 10932) #29
  br label %parser_set_lex_state.exit1089

parser_set_lex_state.exit1089:                    ; preds = %bb.rk, %bb.rl
  %.0.i1088 = phi i32 [ %i.btm, %bb.rl ], [ 1, %bb.rk ]
  store i32 %.0.i1088, ptr %i.afu, align 8, !tbaa !68
  br label %pushback.exit1063

bb.rm:                                            ; preds = %bb.rj
  %i.btn = load i16, ptr %i.f, align 8
  %i.bto = and i16 %i.btn, 32
  %.not.i1090 = icmp eq i16 %i.bto, 0
  br i1 %.not.i1090, label %parser_set_lex_state.exit1092, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.btp = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.btc, i32 noundef 8, i32 noundef 10936) #29
  br label %parser_set_lex_state.exit1092

parser_set_lex_state.exit1092:                    ; preds = %bb.rm, %bb.rn
  %.0.i1091 = phi i32 [ %i.btp, %bb.rn ], [ 8, %bb.rm ]
  store i32 %.0.i1091, ptr %i.afu, align 8, !tbaa !68
  %i.btq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.btr = load i32, ptr %i.btq, align 8, !tbaa !157
  %i.bts = load ptr, ptr %0, align 8, !tbaa !47
  store i32 %i.btr, ptr %i.bts, align 8, !tbaa !20
  %i.btt = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.btu = load i32, ptr %i.btt, align 4, !tbaa !171
  store i32 %i.btu, ptr %i.btq, align 8, !tbaa !157
  br label %pushback.exit1063

bb.ro:                                            ; preds = %bb.rj
  %i.btv = and i32 %i.btc, 577
  %.not761 = icmp ne i32 %i.btv, 0
  %i.btw = and i32 %i.btc, 2064
  %i.btx = icmp eq i32 %i.btw, 2064
  %or.cond830 = or i1 %.not761, %i.btx
  br i1 %or.cond830, label %bb.rs, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.bty = and i32 %i.btc, 48
  %i.btz = icmp ne i32 %i.bty, 0
  %i.bua = icmp ne i32 %.0661, 0                  ; 2 uses
  %or.cond31 = select i1 %i.btz, i1 %i.bua, i1 false
  br i1 %or.cond31, label %bb.rq, label %bb.ru

bb.rq:                                            ; preds = %bb.rp
  switch i32 %i.btb, label %bb.rr [
    i32 32, label %bb.ru
    i32 13, label %bb.ru
    i32 12, label %bb.ru
    i32 11, label %bb.ru
    i32 10, label %bb.ru
    i32 9, label %bb.ru
  ]

bb.rr:                                            ; preds = %bb.rq
  tail call fastcc void @arg_ambiguous(ptr noundef nonnull %0, i8 noundef signext 45)
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.ro
  %i.bub = load i16, ptr %i.f, align 8
  %i.buc = and i16 %i.bub, 32
  %.not.i1094 = icmp eq i16 %i.buc, 0
  br i1 %.not.i1094, label %parser_set_lex_state.exit1096, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.bud = load i32, ptr %i.afu, align 8, !tbaa !68
  %i.bue = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bud, i32 noundef 1, i32 noundef 10942) #29
  br label %parser_set_lex_state.exit1096

parser_set_lex_state.exit1096:                    ; preds = %bb.rs, %bb.rt
  %.0.i1095 = phi i32 [ %i.bue, %bb.rt ], [ 1, %bb.rs ]
  store i32 %.0.i1095, ptr %i.afu, align 8, !tbaa !68
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.btb)
  %i.buf = add nsw i32 %i.btb, -58
  %or.cond1349 = icmp ult i32 %i.buf, -10
  %spec.select1351 = select i1 %or.cond1349, i32 133, i32 360
  br label %pushback.exit1063

bb.ru:                                            ; preds = %bb.rq, %bb.rq, %bb.rq, %bb.rq, %bb.rq, %bb.rq, %bb.rp
  %i.bug = load i16, ptr %i.f, align 8
  %i.buh = and i16 %i.bug, 32
  %.not.i1097 = icmp eq i16 %i.buh, 0
  br i1 %.not.i1097, label %parser_set_lex_state.exit1099, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.bui = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.btc, i32 noundef 1, i32 noundef 10949) #29
  br label %parser_set_lex_state.exit1099

parser_set_lex_state.exit1099:                    ; preds = %bb.ru, %bb.rv
  %.0.i1098 = phi i32 [ %i.bui, %bb.rv ], [ 1, %bb.ru ]
  store i32 %.0.i1098, ptr %i.afu, align 8, !tbaa !68
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.btb)
  %i.buj = and i32 %i.ago, 904
  %i.buk = icmp eq i32 %i.buj, 0
  %or.cond33 = select i1 %i.buk, i1 %i.bua, i1 false
  br i1 %or.cond33, label %bb.rw, label %pushback.exit1063

bb.rw:                                            ; preds = %parser_set_lex_state.exit1099
  %switch.tableidx3189 = add nsw i32 %i.btb, -9   ; 2 uses
  %i.bul = icmp ult i32 %switch.tableidx3189, 24
  %switch.shifted3193 = lshr i32 8388639, %switch.tableidx3189
  %switch.lobit3194 = trunc i32 %switch.shifted3193 to i1
  %or.cond3203 = select i1 %i.bul, i1 %switch.lobit3194, i1 false
  br i1 %or.cond3203, label %pushback.exit1063, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.bum = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !370
  %i.bun = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.596, i64 noundef 14) #29
  %.val848 = load i64, ptr %i.aga, align 8, !tbaa !55
  %i.buo = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val848, i64 noundef %i.bum, i32 noundef 2, i64 noundef 11532, i64 noundef %i.bun) #29 ; 0 uses
  br label %pushback.exit1063

bb.ry:                                            ; preds = %bb.gv
  %i.bup = load i32, ptr %i.afu, align 8, !tbaa !68 ; 3 uses
  %i.buq = load i16, ptr %i.f, align 8
  %i.bur = and i16 %i.buq, 32
  %.not.i1101 = icmp eq i16 %i.bur, 0
  br i1 %.not.i1101, label %parser_set_lex_state.exit1103, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.bus = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bup, i32 noundef 1, i32 noundef 10955) #29
  %.pre2136 = load ptr, ptr %i.afv, align 8, !tbaa !57
  br label %parser_set_lex_state.exit1103

parser_set_lex_state.exit1103:                    ; preds = %bb.ry, %bb.rz
  %i.but = phi ptr [ %.pre2136, %bb.rz ], [ %i.agx, %bb.ry ] ; 2 uses
  %.0.i1102 = phi i32 [ %i.bus, %bb.rz ], [ 1, %bb.ry ]
  store i32 %.0.i1102, ptr %i.afu, align 8, !tbaa !68
  %i.buu = load ptr, ptr %i.afw, align 8, !tbaa !304
  %.not.i1104 = icmp ult ptr %i.but, %i.buu
  br i1 %.not.i1104, label %bb.sa, label %.critedge.i1105, !prof !345

bb.sa:                                            ; preds = %parser_set_lex_state.exit1103
  %i.buv = load i16, ptr %i.f, align 8
  %i.buw = and i16 %i.buv, 8
  %.not13.i1111 = icmp eq i16 %i.buw, 0
  br i1 %.not13.i1111, label %bb.sb, label %.critedge.i1105, !prof !345

bb.sb:                                            ; preds = %bb.sa
  %i.bux = load ptr, ptr %i.afx, align 8, !tbaa !346
  %i.buy = icmp ugt ptr %i.bux, inttoptr (i64 1 to ptr)
  br i1 %i.buy, label %.critedge.i1105, label %bb.sc, !prof !190

.critedge.i1105:                                  ; preds = %bb.sb, %bb.sa, %parser_set_lex_state.exit1103
  %i.buz = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i1106 = icmp eq i32 %i.buz, 0
  br i1 %.not14.i1106, label %.critedge._crit_edge.i1108, label %pushback.exit1126

.critedge._crit_edge.i1108:                       ; preds = %.critedge.i1105
  %.pre.i1109 = load ptr, ptr %i.afv, align 8, !tbaa !57
  br label %bb.sc

bb.sc:                                            ; preds = %.critedge._crit_edge.i1108, %bb.sb
  %i.bva = phi ptr [ %.pre.i1109, %.critedge._crit_edge.i1108 ], [ %i.but, %bb.sb ] ; 3 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bva, i64 1 ; 8 uses
  store ptr %i.bvb, ptr %i.afv, align 8, !tbaa !57
  %i.bvc = load i8, ptr %i.bva, align 1, !tbaa !20 ; 3 uses
  %i.bvd = icmp eq i8 %i.bvc, 13
  br i1 %i.bvd, label %bb.sd, label %nextc0.exit1112, !prof !190

bb.sd:                                            ; preds = %bb.sc
  %i.bve = load ptr, ptr %i.afw, align 8, !tbaa !304
  %.not.i.i1110 = icmp ult ptr %i.bvb, %i.bve
  br i1 %.not.i.i1110, label %bb.se, label %.thread1275

bb.se:                                            ; preds = %bb.sd
  %i.bvf = load i8, ptr %i.bvb, align 1, !tbaa !20
  %i.bvg = icmp eq i8 %i.bvf, 10                  ; 2 uses
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bva, i64 2
  %spec.select2724 = select i1 %i.bvg, ptr %i.bvh, ptr %i.bvb
  %spec.select2725 = select i1 %i.bvg, i32 10, i32 13
  br label %.thread1275

nextc0.exit1112:                                  ; preds = %bb.sc
  %i.bvi = zext i8 %i.bvc to i32
  %i.bvj = icmp eq i8 %i.bvc, 46
  br i1 %i.bvj, label %bb.sf, label %.thread1275

bb.sf:                                            ; preds = %nextc0.exit1112
  %i.bvk = and i32 %i.bup, 577
  %.not753.le = icmp ne i32 %i.bvk, 0
  %i.bvl = and i32 %i.bup, 2064
  %i.bvm = icmp eq i32 %i.bvl, 2064
  %i.bvn = or i1 %.not753.le, %i.bvm              ; 2 uses
  %i.bvo = load ptr, ptr %i.afw, align 8, !tbaa !304
  %.not.i1113 = icmp ult ptr %i.bvb, %i.bvo
  br i1 %.not.i1113, label %bb.sg, label %.critedge.i1114, !prof !345

bb.sg:                                            ; preds = %bb.sf
  %i.bvp = load i16, ptr %i.f, align 8
  %i.bvq = and i16 %i.bvp, 8
  %.not13.i1120 = icmp eq i16 %i.bvq, 0
  br i1 %.not13.i1120, label %bb.sh, label %.critedge.i1114, !prof !345

bb.sh:                                            ; preds = %bb.sg
  %i.bvr = load ptr, ptr %i.afx, align 8, !tbaa !346
  %i.bvs = icmp ugt ptr %i.bvr, inttoptr (i64 1 to ptr)
  br i1 %i.bvs, label %.critedge.i1114, label %bb.si, !prof !190

.critedge.i1114:                                  ; preds = %bb.sh, %bb.sg, %bb.sf
  %i.bvt = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i1115 = icmp eq i32 %i.bvt, 0
  br i1 %.not14.i1115, label %.critedge._crit_edge.i1117, label %pushback.exit1125

.critedge._crit_edge.i1117:                       ; preds = %.critedge.i1114
  %.pre.i1118 = load ptr, ptr %i.afv, align 8, !tbaa !57
  br label %bb.si

bb.si:                                            ; preds = %.critedge._crit_edge.i1117, %bb.sh
  %i.bvu = phi ptr [ %.pre.i1118, %.critedge._crit_edge.i1117 ], [ %i.bvb, %bb.sh ] ; 3 uses
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvu, i64 1 ; 6 uses
  store ptr %i.bvv, ptr %i.afv, align 8, !tbaa !57
  %i.bvw = load i8, ptr %i.bvu, align 1, !tbaa !20
  switch i8 %i.bvw, label %.thread1270 [
    i8 13, label %bb.sj
    i8 46, label %bb.sl
  ], !prof !371

bb.sj:                                            ; preds = %bb.si
  %i.bvx = load ptr, ptr %i.afw, align 8, !tbaa !304
  %.not.i.i1119 = icmp ult ptr %i.bvv, %i.bvx
  br i1 %.not.i.i1119, label %bb.sk, label %.thread1270

bb.sk:                                            ; preds = %bb.sj
  %i.bvy = load i8, ptr %i.bvv, align 1, !tbaa !20
  %i.bvz = icmp eq i8 %i.bvy, 10
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvu, i64 2
  %spec.select2726 = select i1 %i.bvz, ptr %i.bwa, ptr %i.bvv
  br label %.thread1270

bb.sl:                                            ; preds = %bb.si
  %i.bwb = load i16, ptr %i.agn, align 8
  %i.bwc = and i16 %i.bwb, 4
  %.not757 = icmp eq i16 %i.bwc, 0
  br i1 %.not757, label %bb.sm, label %bb.sn

bb.sm:                                            ; preds = %bb.sl
  %i.bwd = load i32, ptr %i.afu, align 8, !tbaa !68 ; 2 uses
  %i.bwe = and i32 %i.bwd, 1032
  %i.bwf = icmp eq i32 %i.bwe, 0
  %i.bwg = icmp ne i32 %.0668, 0
  %or.cond35 = select i1 %i.bwf, i1 true, i1 %i.bwg
  %i.bwh = and i32 %i.bwd, 48
  %.not758 = icmp eq i32 %i.bwh, 0
  %or.cond831 = and i1 %.not758, %or.cond35
  br i1 %or.cond831, label %bb.sp, label %bb.sn

bb.sn:                                            ; preds = %bb.sm, %bb.sl
  %i.bwi = load i16, ptr %i.f, align 8
  %i.bwj = and i16 %i.bwi, 32
  %.not.i1122 = icmp eq i16 %i.bwj, 0
  br i1 %.not.i1122, label %parser_set_lex_state.exit1124, label %bb.so

bb.so:                                            ; preds = %bb.sn
  %i.bwk = load i32, ptr %i.afu, align 8, !tbaa !68
  %i.bwl = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bwk, i32 noundef 4, i32 noundef 10959) #29
  br label %parser_set_lex_state.exit1124

parser_set_lex_state.exit1124:                    ; preds = %bb.sn, %bb.so
  %.0.i1123 = phi i32 [ %i.bwl, %bb.so ], [ 4, %bb.sn ]
  store i32 %.0.i1123, ptr %i.afu, align 8, !tbaa !68
  br label %pushback.exit1063

bb.sp:                                            ; preds = %bb.sm
  %i.bwm = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bwn = load i32, ptr %i.bwm, align 4, !tbaa !171
  %i.bwo = icmp eq i32 %i.bwn, 0
  br i1 %i.bwo, label %bb.sq, label %bb.ss

bb.sq:                                            ; preds = %bb.sp
  %i.bwp = tail call fastcc i32 @looking_at_eol_p(ptr noundef nonnull %0)
  %.not759 = icmp eq i32 %i.bwp, 0
  br i1 %.not759, label %bb.ss, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.bwq = load i64, ptr %i.aga, align 8, !tbaa !55
  %i.bwr = load i64, ptr @id_warn, align 8, !tbaa !22
  %i.bws = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.597, i64 noundef 36) #29
  %i.bwt = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bwq, i64 noundef %i.bwr, i32 noundef 1, i64 noundef %i.bws) #29 ; 0 uses
  br label %bb.ss

bb.ss:                                            ; preds = %bb.sr, %bb.sq, %bb.sp
  %i.bwu = select i1 %i.bvn, i32 131, i32 129
  br label %pushback.exit1063

.thread1270:                                      ; preds = %bb.sk, %bb.si, %bb.sj
  %i.bwv = phi ptr [ %i.bvv, %bb.si ], [ %i.bvv, %bb.sj ], [ %spec.select2726, %bb.sk ] ; 2 uses
  %i.bww = load i16, ptr %i.f, align 8
  %i.bwx = and i16 %i.bww, -9
  store i16 %i.bwx, ptr %i.f, align 8
  %i.bwy = getelementptr inbounds i8, ptr %i.bwv, i64 -1 ; 3 uses
  store ptr %i.bwy, ptr %i.afv, align 8, !tbaa !57
  %i.bwz = load ptr, ptr %i.agd, align 8, !tbaa !53
  %i.bxa = icmp ugt ptr %i.bwy, %i.bwz
  br i1 %i.bxa, label %bb.st, label %pushback.exit1125

bb.st:                                            ; preds = %.thread1270
  %i.bxb = load i8, ptr %i.bwy, align 1, !tbaa !20
  %i.bxc = icmp eq i8 %i.bxb, 10
  br i1 %i.bxc, label %bb.su, label %pushback.exit1125

bb.su:                                            ; preds = %bb.st
  %i.bxd = getelementptr inbounds i8, ptr %i.bwv, i64 -2 ; 2 uses
  %i.bxe = load i8, ptr %i.bxd, align 1, !tbaa !20
  %i.bxf = icmp eq i8 %i.bxe, 13
  br i1 %i.bxf, label %bb.sv, label %pushback.exit1125

bb.sv:                                            ; preds = %bb.su
  store ptr %i.bxd, ptr %i.afv, align 8, !tbaa !57
  br label %pushback.exit1125

pushback.exit1125:                                ; preds = %.critedge.i1114, %.thread1270, %bb.st, %bb.su, %bb.sv
  %i.bxg = select i1 %i.bvn, i32 130, i32 128
  br label %pushback.exit1063

.thread1275:                                      ; preds = %bb.se, %bb.sd, %nextc0.exit1112
  %i.bxh = phi ptr [ %i.bvb, %nextc0.exit1112 ], [ %i.bvb, %bb.sd ], [ %spec.select2724, %bb.se ] ; 2 uses
  %.011.i110712671277 = phi i32 [ %i.bvi, %nextc0.exit1112 ], [ 13, %bb.sd ], [ %spec.select2725, %bb.se ]
  %i.bxi = load i16, ptr %i.f, align 8
  %i.bxj = and i16 %i.bxi, -9
  store i16 %i.bxj, ptr %i.f, align 8
  %i.bxk = getelementptr inbounds i8, ptr %i.bxh, i64 -1 ; 6 uses
  store ptr %i.bxk, ptr %i.afv, align 8, !tbaa !57
  %i.bxl = load ptr, ptr %i.agd, align 8, !tbaa !53 ; 2 uses
  %i.bxm = icmp ugt ptr %i.bxk, %i.bxl
  br i1 %i.bxm, label %bb.sw, label %bb.sz

bb.sw:                                            ; preds = %.thread1275
  %i.bxn = load i8, ptr %i.bxk, align 1, !tbaa !20
  %i.bxo = icmp eq i8 %i.bxn, 10
  br i1 %i.bxo, label %bb.sx, label %bb.sz

bb.sx:                                            ; preds = %bb.sw
  %i.bxp = getelementptr inbounds i8, ptr %i.bxh, i64 -2 ; 3 uses
  %i.bxq = load i8, ptr %i.bxp, align 1, !tbaa !20
  %i.bxr = icmp eq i8 %i.bxq, 13
  br i1 %i.bxr, label %bb.sy, label %bb.sz

bb.sy:                                            ; preds = %bb.sx
  store ptr %i.bxp, ptr %i.afv, align 8, !tbaa !57
  br label %bb.sz

bb.sz:                                            ; preds = %bb.sy, %.thread1275, %bb.sw, %bb.sx
  %i.bxs = phi ptr [ %i.bxp, %bb.sy ], [ %i.bxk, %.thread1275 ], [ %i.bxk, %bb.sw ], [ %i.bxk, %bb.sx ] ; 2 uses
  %i.bxt = add nsw i32 %.011.i110712671277, -58
  %i.bxu = icmp ult i32 %i.bxt, -10
  br i1 %i.bxu, label %pushback.exit1126, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  %i.bxv = getelementptr inbounds i8, ptr %i.bxs, i64 -1
  %i.bxw = icmp ugt ptr %i.bxv, %i.bxl
  br i1 %i.bxw, label %bb.tb, label %.critedge

bb.tb:                                            ; preds = %bb.ta
  %i.bxx = getelementptr inbounds i8, ptr %i.bxs, i64 -2
  %i.bxy = load i8, ptr %i.bxx, align 1, !tbaa !20
  %i.bxz = sext i8 %i.bxy to i32
  %i.bya = add nsw i32 %i.bxz, -58
  %i.byb = icmp ult i32 %i.bya, -10
  %i.byc = tail call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef 46) ; 0 uses
  br i1 %i.byb, label %bb.td, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.byd = load ptr, ptr %i.afz, align 8, !tbaa !58
  %i.bye = tail call i64 @rb_enc_str_new(ptr noundef nonnull @.str.598, i64 noundef 46, ptr noundef %i.byd) #29
  %.val.i1127 = load i64, ptr %i.aga, align 8, !tbaa !55
  %i.byf = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i1127, i64 noundef %i.age, i32 noundef 1, i64 noundef %i.bye) #29 ; 0 uses
  %i.byg = load i16, ptr %i.f, align 8
  %i.byh = or i16 %i.byg, 512                     ; 2 uses
  store i16 %i.byh, ptr %i.f, align 8
  br label %bb.te

.critedge:                                        ; preds = %bb.ta
  %i.byi = tail call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef 46) ; 0 uses
  br label %bb.td

bb.td:                                            ; preds = %.critedge, %bb.tb
  tail call fastcc void @parser_yyerror0(ptr noundef %0, ptr noundef @.str.599)
  %.pre2137 = load i16, ptr %i.f, align 8
  br label %bb.te

bb.te:                                            ; preds = %bb.td, %bb.tc
  %i.byj = phi i16 [ %.pre2137, %bb.td ], [ %i.byh, %bb.tc ]
  %i.byk = and i16 %i.byj, 32
  %.not.i1128 = icmp eq i16 %i.byk, 0
  br i1 %.not.i1128, label %bb.th, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  %i.byl = load i32, ptr %i.afu, align 8, !tbaa !68
  %i.bym = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.byl, i32 noundef 2, i32 noundef 10980) #29
  br label %bb.th

pushback.exit1126:                                ; preds = %.critedge.i1105, %bb.sz
  %i.byn = load ptr, ptr %0, align 8, !tbaa !47
  store i64 46, ptr %i.byn, align 8, !tbaa !20
  %i.byo = load i16, ptr %i.f, align 8
  %i.byp = and i16 %i.byo, 32
  %.not.i1131 = icmp eq i16 %i.byp, 0
  br i1 %.not.i1131, label %parser_set_lex_state.exit1133, label %bb.tg

bb.tg:                                            ; preds = %pushback.exit1126
  %i.byq = load i32, ptr %i.afu, align 8, !tbaa !68
  %i.byr = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.byq, i32 noundef 256, i32 noundef 10985) #29
  br label %parser_set_lex_state.exit1133

parser_set_lex_state.exit1133:                    ; preds = %pushback.exit1126, %bb.tg
  %.0.i1132 = phi i32 [ %i.byr, %bb.tg ], [ 256, %pushback.exit1126 ]
  store i32 %.0.i1132, ptr %i.afu, align 8, !tbaa !68
  br label %pushback.exit1063

bb.th:                                            ; preds = %bb.tf, %bb.te
  %.0.i1129 = phi i32 [ %i.bym, %bb.tf ], [ 2, %bb.te ]
  store i32 %.0.i1129, ptr %i.afu, align 8, !tbaa !68
  %i.bys = load ptr, ptr %i.afv, align 8, !tbaa !57
  store ptr %i.bys, ptr %i.afy, align 8, !tbaa !50
  br label %.backedge.backedge

bb.ti:                                            ; preds = %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv
  %i.byt = tail call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef %i.agz)
  br label %pushback.exit1063

bb.tj:                                            ; preds = %bb.gv
  %i.byu = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.byv = load i64, ptr %i.byu, align 8, !tbaa !105
  %i.byw = lshr i64 %i.byv, 1                     ; 2 uses
  store i64 %i.byw, ptr %i.byu, align 8, !tbaa !105
  %i.byx = load i16, ptr %i.f, align 8
  %i.byy = and i16 %i.byx, 32
  %.not751 = icmp eq i16 %i.byy, 0
  br i1 %.not751, label %.thread, label %bb.tk

.thread:                                          ; preds = %bb.tj
  %i.byz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bza = load i64, ptr %i.byz, align 8, !tbaa !116
  %i.bzb = lshr i64 %i.bza, 1
  store i64 %i.bzb, ptr %i.byz, align 8, !tbaa !116
  br label %parser_set_lex_state.exit1136

bb.tk:                                            ; preds = %bb.tj
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.byw, ptr noundef nonnull @.str.13, i32 noundef 10994) #29
  %.pre2134 = load i16, ptr %i.f, align 8
  %.pre2149 = and i16 %.pre2134, 32
  %i.bzc = icmp eq i16 %.pre2149, 0
  %i.bzd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bze = load i64, ptr %i.bzd, align 8, !tbaa !116
  %i.bzf = lshr i64 %i.bze, 1                     ; 2 uses
  store i64 %i.bzf, ptr %i.bzd, align 8, !tbaa !116
  br i1 %i.bzc, label %parser_set_lex_state.exit1136, label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bzf, ptr noundef nonnull @.str.16, i32 noundef 10995) #29
  %.pre2135 = load i16, ptr %i.f, align 8
  %.pre2150 = and i16 %.pre2135, 32
  %i.bzg = icmp eq i16 %.pre2150, 0
  br i1 %i.bzg, label %parser_set_lex_state.exit1136, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %i.bzh = load i32, ptr %i.afu, align 8, !tbaa !68
  %i.bzi = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bzh, i32 noundef 8, i32 noundef 10996) #29
  br label %parser_set_lex_state.exit1136

parser_set_lex_state.exit1136:                    ; preds = %.thread, %bb.tk, %bb.tl, %bb.tm
  %.0.i1135 = phi i32 [ %i.bzi, %bb.tm ], [ 8, %bb.tl ], [ 8, %bb.tk ], [ 8, %.thread ]
  store i32 %.0.i1135, ptr %i.afu, align 8, !tbaa !68
  %i.bzj = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.bzk = load i32, ptr %i.bzj, align 4, !tbaa !171
  %i.bzl = add nsw i32 %i.bzk, -1
  store i32 %i.bzl, ptr %i.bzj, align 4, !tbaa !171
  br label %pushback.exit1063

bb.tn:                                            ; preds = %bb.gv
  %i.bzm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bzn = load i64, ptr %i.bzm, align 8, !tbaa !105
  %i.bzo = lshr i64 %i.bzn, 1                     ; 2 uses
  store i64 %i.bzo, ptr %i.bzm, align 8, !tbaa !105
  %i.bzp = load i16, ptr %i.f, align 8
  %i.bzq = and i16 %i.bzp, 32
  %.not749 = icmp eq i16 %i.bzq, 0
  br i1 %.not749, label %.thread2345, label %bb.to

.thread2345:                                      ; preds = %bb.tn
  %i.bzr = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bzs = load i64, ptr %i.bzr, align 8, !tbaa !116
  %i.bzt = lshr i64 %i.bzs, 1
  store i64 %i.bzt, ptr %i.bzr, align 8, !tbaa !116
  br label %parser_set_lex_state.exit1139

bb.to:                                            ; preds = %bb.tn
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bzo, ptr noundef nonnull @.str.13, i32 noundef 11001) #29
  %.pre2132 = load i16, ptr %i.f, align 8
  %.pre2152 = and i16 %.pre2132, 32
  %i.bzu = icmp eq i16 %.pre2152, 0
  %i.bzv = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bzw = load i64, ptr %i.bzv, align 8, !tbaa !116
  %i.bzx = lshr i64 %i.bzw, 1                     ; 2 uses
  store i64 %i.bzx, ptr %i.bzv, align 8, !tbaa !116
  br i1 %i.bzu, label %parser_set_lex_state.exit1139, label %bb.tp

bb.tp:                                            ; preds = %bb.to
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bzx, ptr noundef nonnull @.str.16, i32 noundef 11002) #29
  %.pre2133 = load i16, ptr %i.f, align 8
  %.pre2154 = and i16 %.pre2133, 32
  %i.bzy = icmp eq i16 %.pre2154, 0
  br i1 %i.bzy, label %parser_set_lex_state.exit1139, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.bzz = load i32, ptr %i.afu, align 8, !tbaa !68
  %i.caa = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bzz, i32 noundef 2, i32 noundef 11003) #29
  br label %parser_set_lex_state.exit1139

parser_set_lex_state.exit1139:                    ; preds = %.thread2345, %bb.to, %bb.tp, %bb.tq
  %.0.i1138 = phi i32 [ %i.caa, %bb.tq ], [ 2, %bb.tp ], [ 2, %bb.to ], [ 2, %.thread2345 ]
  store i32 %.0.i1138, ptr %i.afu, align 8, !tbaa !68
  %i.cab = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.cac = load i32, ptr %i.cab, align 4, !tbaa !171
  %i.cad = add nsw i32 %i.cac, -1
  store i32 %i.cad, ptr %i.cab, align 4, !tbaa !171
  br label %pushback.exit1063
end_hunk_0
