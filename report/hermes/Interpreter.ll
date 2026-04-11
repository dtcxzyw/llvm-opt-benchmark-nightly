inline.NumInlined: 2755
inline.NumDeleted: 1034
begin_hunk_0_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46
  store ptr %i.m, ptr %i.k, align 8, !tbaa !416
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 32 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !353
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  store ptr %i.o, ptr %i.p, align 8
  store i32 1, ptr %i.q, align 8, !tbaa !354
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 86 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 86 uses
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store ptr %2, ptr %i.l, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 9736
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %17 = insertelement <2 x ptr> poison, ptr %i.v, i64 0
  %18 = insertelement <2 x ptr> %17, ptr %i.n, i64 1 ; 85 uses
  br label %.backedge3764

.backedge3764:                                    ; preds = %.backedge3764.backedge, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.gx
  store i64 %i.gu, ptr %i.gy, align 8, !tbaa !69
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

end_hunk_3
begin_hunk_4_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.me
  store i64 %i.mb, ptr %i.mf, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

end_hunk_4
begin_hunk_5_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.oi, label %.loopexitthread-pre-split.loopexit4202, label %bb.ay, !prof !65

bb.ay:                                            ; preds = %bb.ax
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  br label %.backedge.backedge
end_hunk_5
begin_hunk_6_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.oo, label %.loopexitthread-pre-split.loopexit4202, label %bb.ba, !prof !65

bb.ba:                                            ; preds = %bb.az
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 7
  br label %.backedge.backedge
end_hunk_6
begin_hunk_7_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a

_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit.thread: ; preds = %bb.cd, %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit, %bb.ce, %bb.cc
  %.22596 = phi ptr [ %i.ut, %bb.ce ], [ %.sink4081.sink.in, %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit ], [ %.sink4081.sink.in, %bb.cc ], [ %.sink4081.sink.in, %bb.cd ]
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.uv = getelementptr inbounds nuw i8, ptr %.22596, i64 1
  br label %.backedge.backedge
end_hunk_7
begin_hunk_8_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.wl = zext i8 %i.wk to i64
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.wl
  store i64 %i.wi, ptr %i.wm, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

end_hunk_8
begin_hunk_9_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.yb = zext i8 %i.ya to i64
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.yb
  store i64 %i.xy, ptr %i.yc, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

end_hunk_9
begin_hunk_10_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.zr = zext i8 %i.zq to i64
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.zr
  store i64 %i.zo, ptr %i.zs, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

end_hunk_10
begin_hunk_11_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.aam = zext i8 %i.aal to i64
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.aam
  store i64 %i.aaj, ptr %i.aan, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aah, i64 5
  br label %.backedge.backedge
end_hunk_11
begin_hunk_12_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.abh = zext i8 %i.abg to i64
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.abh
  store i64 %i.abe, ptr %i.abi, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abc, i64 7
  br label %.backedge.backedge
end_hunk_12
begin_hunk_13_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.atm = zext i8 %i.atl to i64
  %i.atn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.atm
  store i64 %.sroa.21.0, ptr %i.atn, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

end_hunk_13
begin_hunk_14_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.aza, label %.loopexitthread-pre-split.loopexit4202, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %.critedge2668
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

end_hunk_14
begin_hunk_15_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %.pn3734 = phi { i32, i64 } [ %i.azo, %bb.gv ], [ %i.azs, %bb.gw ]
  %.5 = phi ptr [ %i.azq, %bb.gv ], [ %i.azu, %bb.gw ] ; 2 uses
  %.sroa.21.1 = extractvalue { i32, i64 } %.pn3734, 1
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.azw = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.azx = load i8, ptr %i.azw, align 1, !tbaa !81
end_hunk_15
begin_hunk_16_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.6 = phi ptr [ %i.bat, %bb.gz ], [ %i.bax, %bb.ha ]
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.baz = getelementptr inbounds nuw i8, ptr %.6, i64 4
  br label %.backedge.backedge
end_hunk_16
begin_hunk_17_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.bbo = zext i8 %i.bbn to i64
  %i.bbp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bbo
  %i.bbq = call i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr %i.bbl, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.o, i32 319, ptr %i.bbp, i32 0) #11 ; 0 uses
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br label %.backedge.backedge
end_hunk_17
begin_hunk_18_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.bbt, label %.loopexitthread-pre-split.loopexit4202, label %bb.hg, !prof !65

bb.hg:                                            ; preds = %bb.hf
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbs, i64 5
  br label %.backedge.backedge
end_hunk_18
begin_hunk_19_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.bes = zext i8 %i.ber to i64
  %i.bet = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bes
  store i64 %.sink4089, ptr %i.bet, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.beu = getelementptr inbounds nuw i8, ptr %.7.lcssa.sink, i64 6
end_hunk_19
begin_hunk_20_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a

bb.hu:                                            ; preds = %bb.ht
  %i.bfi = extractvalue { i32, i64 } %i.bfe, 1
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %bb.hv

end_hunk_20
begin_hunk_21_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a

bb.hy:                                            ; preds = %bb.hx
  %i.bga = extractvalue { i32, i64 } %i.bfw, 1
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %bb.hz

end_hunk_21
begin_hunk_22_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a

bb.ib:                                            ; preds = %bb.ia
  %i.bgn = extractvalue { i32, i64 } %i.bgj, 1
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgl, i64 1
  %i.bgp = load i8, ptr %i.bgo, align 1, !tbaa !81
end_hunk_22
begin_hunk_23_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a

bb.if:                                            ; preds = %bb.ie
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bhj = ptrtoint ptr %i.bhh to i64
  %i.bhk = or i64 %i.bhj, -844424930131968
end_hunk_23
begin_hunk_24_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.bky = zext i8 %i.bkx to i64
  %i.bkz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bky
  store i64 %i.bkv, ptr %i.bkz, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkt, i64 3
  br label %.backedge.backedge
end_hunk_24
begin_hunk_25_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.bly = zext i8 %i.blx to i64
  %i.blz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bly
  store i64 %i.blv, ptr %i.blz, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blt, i64 3
  br label %.backedge.backedge
end_hunk_25
begin_hunk_26_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a

bb.jm:                                            ; preds = %.critedge2673
  %i.bno = extractvalue { i32, i64 } %i.bnk, 1
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bnm, i64 1
  %i.bnq = load i8, ptr %i.bnp, align 1, !tbaa !81
end_hunk_26
begin_hunk_27_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.boz = zext i8 %i.boy to i64
  %i.bpa = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.boz
  store i64 %i.bow, ptr %i.bpa, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bou, i64 3
  br label %.backedge.backedge
end_hunk_27
begin_hunk_28_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a

bb.jv:                                            ; preds = %bb.ju
  %i.bpy = extractvalue { i32, i64 } %i.bpu, 1
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpw, i64 1
  %i.bqa = load i8, ptr %i.bpz, align 1, !tbaa !81
end_hunk_28
begin_hunk_29_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a

bb.ka:                                            ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread
  %i.bry = extractvalue { i32, i64 } %i.bru, 1
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.brz = getelementptr inbounds nuw i8, ptr %i.brw, i64 1
  %i.bsa = load i8, ptr %i.brz, align 1, !tbaa !81
end_hunk_29
begin_hunk_30_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.bsr = zext i8 %i.bsq to i64
  %i.bss = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bsr
  store i64 %.sroa.0.0.copyload.i2944, ptr %i.bss, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bso, i64 2
  br label %.backedge.backedge
end_hunk_30
begin_hunk_31_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.buj = zext i8 %i.bui to i64
  %i.buk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.buj
  store i64 %i.bug, ptr %i.buk, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bul = getelementptr inbounds nuw i8, ptr %i.bue, i64 10
  br label %.backedge.backedge
end_hunk_31
begin_hunk_32_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.bva = zext i8 %i.buz to i64
  %i.bvb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bva
  store i64 %i.bux, ptr %i.bvb, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.buv, i64 14
  br label %.backedge.backedge
end_hunk_32
begin_hunk_33_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.bvk = zext i8 %i.bvj to i64
  %i.bvl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bvk
  store i64 %.sroa.0.0.copyload.i2953, ptr %i.bvl, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvh, i64 4
  br label %.backedge.backedge
end_hunk_33
begin_hunk_34_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.bwd = zext i8 %i.bwc to i64
  %i.bwe = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bwd
  store i64 %i.bwa, ptr %i.bwe, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bvy, i64 8
end_hunk_34
begin_hunk_35_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.bwv = zext i8 %i.bwu to i64
  %i.bww = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bwv
  store i64 %i.bws, ptr %i.bww, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bwq, i64 10
end_hunk_35
begin_hunk_36_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %.not3724, label %.loopexitthread-pre-split.loopexit4202, label %bb.kt, !prof !65

bb.kt:                                            ; preds = %bb.ks
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bye = ptrtoint ptr %i.byc to i64
  %i.byf = or i64 %i.bye, -281474976710656
end_hunk_36
begin_hunk_37_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.bzi, label %.loopexitthread-pre-split.loopexit4202, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bzj = load i8, ptr %i.bzh, align 1, !tbaa !81
  %i.bzk = icmp eq i8 %i.bzj, 14
end_hunk_37
begin_hunk_38_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.ccn = zext i8 %i.ccm to i64
  %i.cco = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ccn
  store i64 %i.cck, ptr %i.cco, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.cci, i64 3
  br label %.backedge.backedge
end_hunk_38
begin_hunk_39_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.cel = zext i8 %i.cek to i64
  %i.cem = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cel
  store i64 %i.cei, ptr %i.cem, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cen = getelementptr inbounds nuw i8, ptr %i.ceg, i64 4
  br label %.backedge.backedge
end_hunk_39
begin_hunk_40_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.cfe = zext i8 %i.cfd to i64
  %i.cff = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cfe
  store i64 %i.cfb, ptr %i.cff, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cex, i64 4
  br label %.backedge.backedge
end_hunk_40
begin_hunk_41_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.cge = zext i8 %i.cgd to i64
  %i.cgf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cge
  store i64 %i.cgb, ptr %i.cgf, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cfx, i64 4
  br label %.backedge.backedge
end_hunk_41
begin_hunk_42_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.chj, label %.loopexitthread-pre-split.loopexit4202, label %bb.ls, !prof !65

bb.ls:                                            ; preds = %bb.lr
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

end_hunk_42
begin_hunk_43_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.lx
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

end_hunk_43
begin_hunk_44_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.cla = zext i8 %i.ckz to i64
  %i.clb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cla
  store i64 %i.ckx, ptr %i.clb, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.clc = getelementptr inbounds nuw i8, ptr %.sink4124, i64 4
end_hunk_44
begin_hunk_45_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.cmy = extractvalue { ptr, i64 } %i.cmw, 1
  call void @_ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEES7_N4llvh8ArrayRefIhEE(ptr nonnull %i.clo, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i2988, ptr %.0.i.i.i.i.i.i2989, ptr %i.cmx, i64 %i.cmy) #11
  %i.cmz = load ptr, ptr %i.a, align 8, !tbaa !108
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cmz, i64 14
  br label %.backedge.backedge
end_hunk_45
begin_hunk_46_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.ctu = zext i8 %i.ctt to i64
  %i.ctv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ctu
  store i64 %i.ctr, ptr %i.ctv, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.ctp, i64 4
  br label %.backedge.backedge
end_hunk_46
begin_hunk_47_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.cvn = zext i8 %i.cvm to i64
  %i.cvo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cvn
  store i64 %i.cvk, ptr %i.cvo, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvi, i64 4
  br label %.backedge.backedge
end_hunk_47
begin_hunk_48_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.cxg = zext i8 %i.cxf to i64
  %i.cxh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cxg
  store i64 %i.cxd, ptr %i.cxh, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.cxb, i64 4
  br label %.backedge.backedge
end_hunk_48
begin_hunk_49_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.czh = zext i8 %i.czg to i64
  %i.czi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.czh
  store i64 %i.cze, ptr %i.czi, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.czj = getelementptr inbounds nuw i8, ptr %i.czc, i64 4
  br label %.backedge.backedge
end_hunk_49
begin_hunk_50_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.dbi = zext i8 %i.dbh to i64
  %i.dbj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dbi
  store i64 %i.dbf, ptr %i.dbj, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dbk = getelementptr inbounds nuw i8, ptr %i.dbd, i64 4
  br label %.backedge.backedge
end_hunk_50
begin_hunk_51_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.ddj = zext i8 %i.ddi to i64
  %i.ddk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ddj
  store i64 %i.ddg, ptr %i.ddk, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ddl = getelementptr inbounds nuw i8, ptr %i.dde, i64 4
  br label %.backedge.backedge
end_hunk_51
begin_hunk_52_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.dfl = zext i8 %i.dfk to i64
  %i.dfm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dfl
  store i64 %i.dfi, ptr %i.dfm, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.dfg, i64 4
  br label %.backedge.backedge
end_hunk_52
begin_hunk_53_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.dhn = zext i8 %i.dhm to i64
  %i.dho = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dhn
  store i64 %i.dhk, ptr %i.dho, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dhi, i64 4
  br label %.backedge.backedge
end_hunk_53
begin_hunk_54_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.djp = zext i8 %i.djo to i64
  %i.djq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.djp
  store i64 %i.djm, ptr %i.djq, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.djr = getelementptr inbounds nuw i8, ptr %i.djk, i64 4
  br label %.backedge.backedge
end_hunk_54
begin_hunk_55_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.dkx, label %.loopexitthread-pre-split.loopexit4202, label %bb.ph

bb.ph:                                            ; preds = %.critedge2695
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dky = lshr i32 %i.dkv, 8
  %.lobit3756 = and i32 %i.dky, 1
end_hunk_55
begin_hunk_56_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.dml, label %.loopexitthread-pre-split.loopexit4202, label %bb.pl

bb.pl:                                            ; preds = %.critedge2697
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dmm = lshr i32 %i.dmj, 8
  %.lobit3754 = and i32 %i.dmm, 1
end_hunk_56
begin_hunk_57_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.dnz, label %.loopexitthread-pre-split.loopexit4202, label %bb.pp

bb.pp:                                            ; preds = %.critedge2699
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.doa = lshr i32 %i.dnx, 8
  %.lobit3752 = and i32 %i.doa, 1
end_hunk_57
begin_hunk_58_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.dpn, label %.loopexitthread-pre-split.loopexit4202, label %bb.pt

bb.pt:                                            ; preds = %.critedge2701
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dpo = lshr i32 %i.dpl, 8
  %.lobit3750 = and i32 %i.dpo, 1
end_hunk_58
begin_hunk_59_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.drh, label %.loopexitthread-pre-split.loopexit4202, label %bb.pz

bb.pz:                                            ; preds = %.critedge2703
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dri = and i32 %i.drf, 256
  %.not3718 = icmp eq i32 %i.dri, 0
end_hunk_59
begin_hunk_60_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.dsz, label %.loopexitthread-pre-split.loopexit4202, label %bb.qh

bb.qh:                                            ; preds = %.critedge2705
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dta = and i32 %i.dsx, 256
  %.not3716 = icmp eq i32 %i.dta, 0
end_hunk_60
begin_hunk_61_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.dur, label %.loopexitthread-pre-split.loopexit4202, label %bb.qp

bb.qp:                                            ; preds = %.critedge2707
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dus = and i32 %i.dup, 256
  %.not3714 = icmp eq i32 %i.dus, 0
end_hunk_61
begin_hunk_62_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.dwj, label %.loopexitthread-pre-split.loopexit4202, label %bb.qx

bb.qx:                                            ; preds = %.critedge2709
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dwk = and i32 %i.dwh, 256
  %.not3712 = icmp eq i32 %i.dwk, 0
end_hunk_62
begin_hunk_63_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.dyb, label %.loopexitthread-pre-split.loopexit4202, label %bb.rf

bb.rf:                                            ; preds = %.critedge2711
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dyc = and i32 %i.dxz, 256
  %.not3710 = icmp eq i32 %i.dyc, 0
end_hunk_63
begin_hunk_64_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.dzt, label %.loopexitthread-pre-split.loopexit4202, label %bb.rn

bb.rn:                                            ; preds = %.critedge2713
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dzu = and i32 %i.dzr, 256
  %.not3708 = icmp eq i32 %i.dzu, 0
end_hunk_64
begin_hunk_65_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.ebl, label %.loopexitthread-pre-split.loopexit4202, label %bb.rv

bb.rv:                                            ; preds = %.critedge2715
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ebm = and i32 %i.ebj, 256
  %.not3706 = icmp eq i32 %i.ebm, 0
end_hunk_65
begin_hunk_66_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.edd, label %.loopexitthread-pre-split.loopexit4202, label %bb.sd

bb.sd:                                            ; preds = %.critedge2717
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ede = and i32 %i.edb, 256
  %.not3704 = icmp eq i32 %i.ede, 0
end_hunk_66
begin_hunk_67_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.eev, label %.loopexitthread-pre-split.loopexit4202, label %bb.sl

bb.sl:                                            ; preds = %.critedge2719
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.eew = and i32 %i.eet, 256
  %.not3702 = icmp eq i32 %i.eew, 0
end_hunk_67
begin_hunk_68_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.egn, label %.loopexitthread-pre-split.loopexit4202, label %bb.st

bb.st:                                            ; preds = %.critedge2721
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ego = and i32 %i.egl, 256
  %.not3700 = icmp eq i32 %i.ego, 0
end_hunk_68
begin_hunk_69_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.eif, label %.loopexitthread-pre-split.loopexit4202, label %bb.tb

bb.tb:                                            ; preds = %.critedge2723
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.eig = and i32 %i.eid, 256
  %.not3698 = icmp eq i32 %i.eig, 0
end_hunk_69
begin_hunk_70_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.ejx, label %.loopexitthread-pre-split.loopexit4202, label %bb.tj

bb.tj:                                            ; preds = %.critedge2725
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ejy = and i32 %i.ejv, 256
  %.not3696 = icmp eq i32 %i.ejy, 0
end_hunk_70
begin_hunk_71_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.elp, label %.loopexitthread-pre-split.loopexit4202, label %bb.tr

bb.tr:                                            ; preds = %.critedge2727
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.elq = and i32 %i.eln, 256
  %.not3694 = icmp eq i32 %i.elq, 0
end_hunk_71
begin_hunk_72_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.enh, label %.loopexitthread-pre-split.loopexit4202, label %bb.tz

bb.tz:                                            ; preds = %.critedge2729
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.eni = and i32 %i.enf, 256
  %.not3692 = icmp eq i32 %i.eni, 0
end_hunk_72
begin_hunk_73_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.eoz, label %.loopexitthread-pre-split.loopexit4202, label %bb.uh

bb.uh:                                            ; preds = %.critedge2731
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.epa = and i32 %i.eox, 256
  %.not3690 = icmp eq i32 %i.epa, 0
end_hunk_73
begin_hunk_74_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.eqr, label %.loopexitthread-pre-split.loopexit4202, label %bb.up

bb.up:                                            ; preds = %.critedge2733
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.eqs = and i32 %i.eqp, 256
  %.not3688 = icmp eq i32 %i.eqs, 0
end_hunk_74
begin_hunk_75_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.etm, label %.loopexitthread-pre-split.loopexit4202, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.etn = and i32 %i.etk, 256
  %.not3686 = icmp eq i32 %i.etn, 0
end_hunk_75
begin_hunk_76_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.eud, label %.loopexitthread-pre-split.loopexit4202, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.eue = and i32 %i.eub, 256
  %.not3684 = icmp eq i32 %i.eue, 0
end_hunk_76
begin_hunk_77_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.euu, label %.loopexitthread-pre-split.loopexit4202, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.euv = and i32 %i.eus, 256
  %.not3682 = icmp eq i32 %i.euv, 0
end_hunk_77
begin_hunk_78_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.evl, label %.loopexitthread-pre-split.loopexit4202, label %bb.vr

bb.vr:                                            ; preds = %bb.vq
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.evm = and i32 %i.evj, 256
  %.not3680 = icmp eq i32 %i.evm, 0
end_hunk_78
begin_hunk_79_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.evu, label %.loopexitthread-pre-split.loopexit4202, label %bb.vv, !prof !65

bb.vv:                                            ; preds = %bb.vu
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.evv = getelementptr inbounds nuw i8, ptr %i.evt, i64 5
  br label %.backedge.backedge
end_hunk_79
begin_hunk_80_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.evy, label %.loopexitthread-pre-split.loopexit4202, label %bb.vx, !prof !65

bb.vx:                                            ; preds = %bb.vw
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.evz = getelementptr inbounds nuw i8, ptr %i.evx, i64 6
  br label %.backedge.backedge
end_hunk_80
begin_hunk_81_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.ewc, label %.loopexitthread-pre-split.loopexit4202, label %bb.vz, !prof !65

bb.vz:                                            ; preds = %bb.vy
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ewd = getelementptr inbounds nuw i8, ptr %i.ewb, i64 4
  br label %.backedge.backedge
end_hunk_81
begin_hunk_82_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.ewg, label %.loopexitthread-pre-split.loopexit4202, label %bb.wb, !prof !65

bb.wb:                                            ; preds = %bb.wa
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ewh = getelementptr inbounds nuw i8, ptr %i.ewf, i64 3
  br label %.backedge.backedge
end_hunk_82
begin_hunk_83_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br i1 %i.ewk, label %.loopexitthread-pre-split.loopexit4202, label %bb.wd, !prof !65

bb.wd:                                            ; preds = %bb.wc
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ewl = getelementptr inbounds nuw i8, ptr %i.ewj, i64 4
  br label %.backedge.backedge
end_hunk_83
begin_hunk_84_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %bb.wf
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %bb.wk

end_hunk_84
begin_hunk_85_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
  %i.eyh = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %.sroa.0.0.copyload.i3068 = load i64, ptr %.0.i.i.i.i.i.i3067, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i3068, ptr %i.ai, align 8, !tbaa !69
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br i1 %i.ext, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread: ; preds = %bb.wn, %.loopexit
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread: ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit
  store <2 x ptr> %18, ptr %i.s, align 8, !tbaa !68
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br i1 %i.ext, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us
end_hunk_85
