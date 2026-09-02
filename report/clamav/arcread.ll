Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/arcread?download=true
inline.NumInlined: 217
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7Archive12ReadHeader50Ev:bb.a

_ZN16RarCheckPassword3SetEPhS0_jS0_.exit:         ; preds = %.noexc224
  store ptr %i.bn, ptr %i.bc, align 8, !tbaa !155
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bp, ptr noundef nonnull align 4 dereferenceable(16) %i.bj, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bq, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.bl, ptr %i.br, align 8, !tbaa !156
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.bt = load i64, ptr %i.bm, align 4
  store i64 %i.bt, ptr %i.bs, align 4
  br label %bb.u

bb.s:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.t:                                             ; preds = %bb.q, %bb.u
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %_ZN16RarCheckPassword3SetEPhS0_jS0_.exit, %bb.p, %bb.o
  invoke void @_ZN7Archive18RequestArcPasswordEP16RarCheckPassword(ptr noundef nonnull align 8 dereferenceable(57108) %0, ptr poison)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8256 ; 2 uses
  %i.bx = load ptr, ptr %i.q, align 8, !tbaa !86
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 100848
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 13948
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 13944
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !204
  %i.cc = invoke noundef zeroext i1 @_ZN9CryptData12SetCryptKeysEb12CRYPT_METHODP11SecPasswordPKhS4_jPhS5_(ptr noundef nonnull align 8 dereferenceable(2516) %i.bw, i1 noundef zeroext false, i32 noundef 5, ptr noundef nonnull %i.by, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.a, i32 noundef %i.cb, ptr noundef null, ptr noundef nonnull %i.b)
          to label %bb.w unwind label %bb.ac      ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.cd = load i8, ptr %i.bd, align 4, !tbaa !203, !range !60, !noundef !61
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.x, label %bb.ah

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48864
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !72, !range !60, !noundef !61
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 13964
  %i.cj = load i64, ptr %i.b, align 1
  %i.ck = load i64, ptr %i.ci, align 1
  %i.cl = icmp ne i64 %i.cj, %i.ck
  %i.cm = zext i1 %i.cl to i32
  %.not159 = icmp eq i32 %i.cm, 0
  br i1 %.not159, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  br i1 %i.bb, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  invoke void @_Z5uiMsgIJRA2048_wS1_EEv14UIMESSAGE_CODEDpOT_(i32 noundef 6, ptr noundef nonnull align 4 dereferenceable(8192) %i.cn, ptr noundef nonnull align 4 dereferenceable(8192) %i.cn)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48865
  store i8 1, ptr %i.co, align 1, !tbaa !59
  invoke void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 11)
          to label %.critedge220.critedge unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.v
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.body

bb.ad:                                            ; preds = %bb.z
  invoke void @_Z5uiMsgIJRA2048_wS1_EEv14UIMESSAGE_CODEDpOT_(i32 noundef 132, ptr noundef nonnull align 4 dereferenceable(8192) %i.cn, ptr noundef nonnull align 4 dereferenceable(8192) %i.cn)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.q, align 8, !tbaa !86
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 100848
  invoke void @_ZN11SecPassword5CleanEv(ptr noundef nonnull align 8 dereferenceable(25) %i.cr)
          to label %bb.af unwind label %bb.ac

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 11)
          to label %bb.ag unwind label %bb.ac

bb.ag:                                            ; preds = %bb.af
  %i.cs = load ptr, ptr %i.q, align 8, !tbaa !86
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 83424
  store i32 24, ptr %i.ct, align 8, !tbaa !157
  invoke void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 11)
          to label %bb.ah unwind label %bb.ac

bb.ah:                                            ; preds = %bb.w, %bb.x, %bb.y, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.bw, ptr %i.cu, align 8, !tbaa !108
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV16RarCheckPassword, i64 16), ptr %8, align 8, !tbaa !63
  %i.cv = load ptr, ptr %i.bc, align 8, !tbaa !155 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN16RarCheckPasswordD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN9CryptDataD2Ev(ptr noundef nonnull align 8 dead_on_return(2516) dereferenceable(2516) %i.cv) #20
  call void @_ZdlPv(ptr noundef nonnull %i.cv) #23
  br label %_ZN16RarCheckPasswordD2Ev.exit

_ZN16RarCheckPasswordD2Ev.exit:                   ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.thread

.body:                                            ; preds = %bb.t, %bb.r, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.ac ], [ %i.bv, %bb.t ], [ %i.bo, %bb.r ]
  call void @_ZN16RarCheckPasswordD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.s, %.body, %bb.l
  %.pn162 = phi { ptr, i32 } [ %i.av, %bb.l ], [ %.pn, %.body ], [ %i.bu, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.fb

.thread:                                          ; preds = %bb.a, %_ZN16RarCheckPasswordD2Ev.exit, %bb.b
  %i.cx = phi i1 [ false, %bb.b ], [ true, %_ZN16RarCheckPasswordD2Ev.exit ], [ false, %bb.a ]
  %i.cy = invoke noundef i64 @_ZN7RawRead4ReadEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 7)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %.thread
  %i.cz = icmp ult i64 %i.cy, 7
  br i1 %i.cz, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.da = invoke noundef i64 @_ZN4File10FileLengthEv(ptr noundef nonnull align 8 dereferenceable(57108) %0)
          to label %.noexc227 unwind label %bb.ao ; 2 uses

.noexc227:                                        ; preds = %bb.al
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48824
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !64
  %.not.i225 = icmp eq i64 %i.dc, %i.da
  br i1 %.not.i225, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.noexc227
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48832
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !66
  %.not2.i226 = icmp eq i64 %i.de, %i.da
  br i1 %.not2.i226, label %_ZN7Archive14UnexpEndArcMsgEv.exit230, label %bb.an

bb.an:                                            ; preds = %bb.am, %.noexc227
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <4 x ptr> <ptr @.str.8, ptr @.str.8, ptr @.str.8, ptr @.str.8>, ptr %i.dg, align 8, !tbaa !67
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @.str.8, ptr %i.dh, align 8, !tbaa !67
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr @.str.8, ptr %i.di, align 8, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @.str.8, ptr %i.dj, align 8, !tbaa !67
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dk, i8 0, i64 40, i1 false)
  store i32 56, ptr %i.dl, align 8, !tbaa !70
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i32 1, ptr %i.dm, align 8, !tbaa !71
  store ptr %i.df, ptr %4, align 8, !tbaa !67
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %4)
          to label %.noexc228 unwind label %bb.ao

.noexc228:                                        ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  invoke void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 1)
          to label %_ZN7Archive14UnexpEndArcMsgEv.exit230 unwind label %bb.ao

bb.ao:                                            ; preds = %.noexc228, %bb.an, %bb.al, %bb.ap, %.thread
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.ap:                                            ; preds = %bb.ak
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 13772 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 13788 ; 2 uses
  store i8 0, ptr %i.dp, align 4, !tbaa !110
  %i.dq = invoke noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.aq unwind label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !109
  %i.dr = invoke noundef i32 @_ZN7RawRead8GetVSizeEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 4)
          to label %bb.ar unwind label %bb.au     ; 3 uses

bb.ar:                                            ; preds = %bb.aq
  %i.ds = invoke noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.as unwind label %bb.av     ; 3 uses

bb.as:                                            ; preds = %bb.ar
  %i.dt = icmp eq i64 %i.ds, 0
  %i.du = icmp eq i32 %i.dr, 0
  %or.cond = or i1 %i.du, %i.dt
  br i1 %or.cond, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <4 x ptr> <ptr @.str.8, ptr @.str.8, ptr @.str.8, ptr @.str.8>, ptr %i.dw, align 8, !tbaa !67
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @.str.8, ptr %i.dx, align 8, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @.str.8, ptr %i.dy, align 8, !tbaa !67
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr @.str.8, ptr %i.dz, align 8, !tbaa !67
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ea, i8 0, i64 40, i1 false)
  store i32 26, ptr %i.eb, align 8, !tbaa !70
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 1, ptr %i.ec, align 8, !tbaa !71
  store ptr %i.dv, ptr %3, align 8, !tbaa !67
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %3)
          to label %.noexc231 unwind label %bb.av

.noexc231:                                        ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 48864
  store i8 1, ptr %i.ed, align 8, !tbaa !72
  invoke void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 3)
          to label %_ZN7Archive14UnexpEndArcMsgEv.exit230 unwind label %bb.av

bb.au:                                            ; preds = %bb.aq
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.av:                                            ; preds = %.noexc231, %bb.at, %bb.ar
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.aw:                                            ; preds = %bb.as
  %i.eg = trunc i64 %i.ds to i32
  %10 = zext i32 %i.dr to i64
  %.neg = add nuw nsw i64 %10, 4294967293
  %11 = add i64 %.neg, %i.ds                      ; 2 uses
  %i.eh = add i32 %i.dr, 4
  %i.ei = add i32 %i.eh, %i.eg                    ; 3 uses
  %12 = and i64 %11, 2147483648
  %13 = icmp ne i64 %12, 0
  %i.ej = icmp ult i32 %i.ei, 7
  %or.cond5 = or i1 %13, %i.ej
  br i1 %or.cond5, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <4 x ptr> <ptr @.str.8, ptr @.str.8, ptr @.str.8, ptr @.str.8>, ptr %i.el, align 8, !tbaa !67
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.8, ptr %i.em, align 8, !tbaa !67
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @.str.8, ptr %i.en, align 8, !tbaa !67
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.8, ptr %i.eo, align 8, !tbaa !67
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ep, i8 0, i64 40, i1 false)
  store i32 26, ptr %i.eq, align 8, !tbaa !70
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 1, ptr %i.er, align 8, !tbaa !71
  store ptr %i.ek, ptr %2, align 8, !tbaa !67
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %2)
          to label %.noexc233 unwind label %bb.ay

.noexc233:                                        ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48864
  store i8 1, ptr %i.es, align 8, !tbaa !72
  br label %.noexc239.invoke

bb.ay:                                            ; preds = %.noexc239.invoke, %bb.bd, %bb.bb, %bb.ax, %bb.az
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.az:                                            ; preds = %bb.aw
  %14 = and i64 %11, 2147483647
  %i.eu = invoke noundef i64 @_ZN7RawRead4ReadEm(ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef %14)
          to label %bb.ba unwind label %bb.ay     ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !105
  %i.ex = zext i32 %i.ei to i64
  %i.ey = icmp ult i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.ez = invoke noundef i64 @_ZN4File10FileLengthEv(ptr noundef nonnull align 8 dereferenceable(57108) %0)
          to label %.noexc238 unwind label %bb.ay ; 2 uses

.noexc238:                                        ; preds = %bb.bb
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 48824
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !64
  %.not.i236 = icmp eq i64 %i.fb, %i.ez
  br i1 %.not.i236, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.noexc238
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48832
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !66
  %.not2.i237 = icmp eq i64 %i.fd, %i.ez
  br i1 %.not2.i237, label %_ZN7Archive14UnexpEndArcMsgEv.exit230, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.noexc238
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <4 x ptr> <ptr @.str.8, ptr @.str.8, ptr @.str.8, ptr @.str.8>, ptr %i.ff, align 8, !tbaa !67
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @.str.8, ptr %i.fg, align 8, !tbaa !67
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @.str.8, ptr %i.fh, align 8, !tbaa !67
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @.str.8, ptr %i.fi, align 8, !tbaa !67
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, i8 0, i64 40, i1 false)
  store i32 56, ptr %i.fk, align 8, !tbaa !70
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 1, ptr %i.fl, align 8, !tbaa !71
  store ptr %i.fe, ptr %1, align 8, !tbaa !67
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %1)
          to label %.noexc239 unwind label %bb.ay

.noexc239:                                        ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.noexc239.invoke

.noexc239.invoke:                                 ; preds = %.noexc233, %.noexc239
  %i.fm = phi i32 [ 1, %.noexc239 ], [ 3, %.noexc233 ]
  invoke void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef %i.fm)
          to label %_ZN7Archive14UnexpEndArcMsgEv.exit230 unwind label %bb.ay

bb.be:                                            ; preds = %bb.ba
  %i.fn = invoke noundef i32 @_ZN7RawRead8GetCRC50Ev(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.bf unwind label %bb.bn

bb.bf:                                            ; preds = %bb.be
  %i.fo = invoke noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.bg unwind label %bb.bn

bb.bg:                                            ; preds = %bb.bf
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 13776 ; 4 uses
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !114
  %i.fr = invoke noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.bh unwind label %bb.bn     ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %i.fs = trunc i64 %i.fr to i32                  ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 13780 ; 4 uses
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !111
  %i.fu = trunc i64 %i.fr to i8
  %i.fv = lshr i8 %i.fu, 2
  %i.fw = and i8 %i.fv, 1
  store i8 %i.fw, ptr %i.dp, align 4, !tbaa !112
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 13784 ; 3 uses
  store i32 %i.ei, ptr %i.fx, align 8, !tbaa !113
  %i.fy = load i32, ptr %i.fq, align 8, !tbaa !114
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 11076 ; 3 uses
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !73
  %i.ga = load i32, ptr %i.do, align 4, !tbaa !109
  %.not164 = icmp eq i32 %i.ga, %i.fn             ; 2 uses
  br i1 %.not164, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN7Archive15BrokenHeaderMsgEv(ptr noundef nonnull align 8 dereferenceable(57108) %0)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 48864
  store i8 1, ptr %i.gb, align 8, !tbaa !72
  invoke void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 3)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.cx, label %bb.bl, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bk
  %.pre = load i32, ptr %i.ft, align 4, !tbaa !111
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  invoke void @_Z5uiMsgIJRA2048_wS1_EEv14UIMESSAGE_CODEDpOT_(i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(8192) %i.gc, ptr noundef nonnull align 4 dereferenceable(8192) %i.gc)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 48865
  store i8 1, ptr %i.gd, align 1, !tbaa !59
  br label %_ZN7Archive14UnexpEndArcMsgEv.exit230

bb.bn:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.bo:                                            ; preds = %bb.bl, %bb.bj, %bb.bi
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.bp:                                            ; preds = %._crit_edge, %bb.bh
  %i.gg = phi i32 [ %.pre, %._crit_edge ], [ %i.fs, %bb.bh ] ; 2 uses
  %i.gh = and i32 %i.gg, 1
  %.not165 = icmp eq i32 %i.gh, 0
  br i1 %.not165, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gi = invoke noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.br unwind label %bb.bt     ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.gj = load i32, ptr %i.fx, align 8, !tbaa !113
  %i.gk = zext i32 %i.gj to i64
  %.not166 = icmp ult i64 %i.gi, %i.gk
  br i1 %.not166, label %._crit_edge247, label %bb.bs

._crit_edge247:                                   ; preds = %bb.br
  %.pre248 = load i32, ptr %i.ft, align 4, !tbaa !111
  br label %bb.bu

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN7Archive15BrokenHeaderMsgEv(ptr noundef nonnull align 8 dereferenceable(57108) %0)
          to label %_ZN7Archive14UnexpEndArcMsgEv.exit230 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bq
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.bu:                                            ; preds = %._crit_edge247, %bb.bp
  %i.gm = phi i32 [ %.pre248, %._crit_edge247 ], [ %i.gg, %bb.bp ]
  %.0110 = phi i64 [ %i.gi, %._crit_edge247 ], [ 0, %bb.bp ] ; 4 uses
  %i.gn = and i32 %i.gm, 2
  %.not167 = icmp eq i32 %i.gn, 0
  br i1 %.not167, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.go = invoke noundef i64 @_ZN7RawRead4GetVEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.bx unwind label %bb.bw

bb.bw:                                            ; preds = %bb.cy, %bb.bx, %bb.bv
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %.0 = phi i64 [ 0, %bb.bu ], [ %i.go, %bb.bv ]  ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 48824 ; 3 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !64
  %i.gs = load i32, ptr %i.fx, align 8, !tbaa !113
  %i.gt = zext i32 %i.gs to i64
  %i.gu = invoke noundef i32 @_ZN7Archive14FullHeaderSizeEm(ptr noundef nonnull align 8 dereferenceable(57108) %0, i64 noundef %i.gt)
          to label %bb.by unwind label %bb.bw

bb.by:                                            ; preds = %bb.bx
  %i.gv = zext i32 %i.gu to i64
  %i.gw = add nsw i64 %i.gr, %i.gv                ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 48832
  %i.gy = or i64 %i.gw, %.0
  %or.cond.i = icmp slt i64 %i.gy, 0
  %i.gz = sub nuw nsw i64 9223372036854775807, %.0
  %.not.i242 = icmp sgt i64 %i.gw, %i.gz
  %or.cond9.i = select i1 %or.cond.i, i1 true, i1 %.not.i242
  %i.ha = add nuw nsw i64 %i.gw, %.0
  %i.hb = select i1 %or.cond9.i, i64 0, i64 %i.ha
  store i64 %i.hb, ptr %i.gx, align 8, !tbaa !66
  %i.hc = load i32, ptr %i.fq, align 8, !tbaa !114 ; 2 uses
  switch i32 %i.hc, label %bb.ez [
    i32 4, label %bb.bz
    i32 1, label %bb.cy
    i32 2, label %bb.dp
    i32 3, label %bb.dp
    i32 5, label %bb.ew
  ]

bb.bz:                                            ; preds = %bb.by
end_hunk_0
