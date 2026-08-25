Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/d1_both?download=true
inline.NumInlined: 628
inline.NumDeleted: 363
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4bssl28dtls1_add_change_cipher_specEP6ssl_st:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.c = invoke fastcc noundef zeroext i1 @_ZN4bsslL12add_outgoingEP6ssl_stbNS_5ArrayIhEE(ptr noundef %0, i1 noundef zeroext true, ptr noundef align 8 %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !11
  invoke void @OPENSSL_free(ptr noundef %i.d)
          to label %_ZN4bssl5ArrayIhED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #15
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %1, align 8, !tbaa !11
  invoke void @OPENSSL_free(ptr noundef %i.h)
          to label %_ZN4bssl5ArrayIhED2Ev.exit4 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #15
  unreachable

_ZN4bssl5ArrayIhED2Ev.exit4:                      ; preds = %bb.e
  resume { ptr, i32 } %i.g

_ZN4bssl5ArrayIhED2Ev.exit:                       ; preds = %bb.c, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.c, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4bssl19dtls1_finish_flightEP6ssl_st(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.d = load i8, ptr %i.c, align 8, !tbaa !150
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr %i.b, align 8              ; 2 uses
  %i.g = and i16 %i.f, 2
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit, label %bb.e

_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.i = load i16, ptr %i.h, align 8, !tbaa !166
  %i.j = icmp ult i16 %i.i, 3
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  store i8 0, ptr %i.k, align 8, !tbaa !145
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 920
  store i8 0, ptr %i.l, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  tail call void @_ZN4bssl9DTLSTimer4StopEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, -65
  store i16 %i.p, ptr %i.n, align 8
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %.pre9 = load i16, ptr %.pre, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit
  %i.q = phi i16 [ %.pre9, %bb.c ], [ %i.f, %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit ]
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.b, %_ZN4bssl13InplaceVectorINS_19DTLSOutgoingMessageELm7EEixEm.exit ]
  %i.s = or i16 %i.q, 2
  store i16 %i.s, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.u = load i16, ptr %i.t, align 8
  %i.v = or i16 %i.u, 32
  store i16 %i.v, ptr %i.t, align 8
  tail call void @_ZN4bssl16dtls1_stop_timerEP6ssl_st(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d
  ret void
}

declare void @_ZN4bssl9DTLSTimer4StopEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4bssl18dtls1_schedule_ackEP6ssl_st(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  tail call void @_ZN4bssl9DTLSTimer4StopEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 912
  %i.f = load i8, ptr %i.e, align 8, !tbaa !145
  %i.g = icmp eq i8 %i.f, 0
  %i.h = load i16, ptr %i.d, align 8
  %i.i = select i1 %i.g, i16 0, i16 64
  %i.j = and i16 %i.h, -65
  %i.k = or disjoint i16 %i.j, %i.i
  store i16 %i.k, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -2147483648, 2) i32 @_ZN4bssl11dtls1_flushEP6ssl_st(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.bssl::DTLSRecordNumber", align 8 ; 4 uses
  %2 = alloca %struct.cbb_st, align 8             ; 15 uses
  %3 = alloca %"struct.bssl::DTLSSentRecord", align 8 ; 10 uses
  %4 = alloca %struct.cbs_st, align 8             ; 8 uses
  %5 = alloca %struct.cbs_st, align 8             ; 8 uses
  %6 = alloca %"struct.bssl::hm_header_st", align 4 ; 11 uses
  %7 = alloca %struct.cbb_st, align 8             ; 5 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %8 = alloca %"class.bssl::InplaceVector.65", align 16 ; 27 uses
  %i.b = ptrtoaddr ptr %8 to i64
  %i.c = alloca [514 x i8], align 16              ; 4 uses
  %9 = alloca %struct.cbb_st, align 8             ; 10 uses
  %10 = alloca %struct.cbb_st, align 8            ; 6 uses
  %i.d = alloca [584 x i8], align 16              ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.bssl::DTLSRecordNumber", align 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 26 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 3 uses
  %i.h = load i16, ptr %i.g, align 8              ; 2 uses
  %i.i = and i16 %i.h, 64
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 936
  %i.k = load i32, ptr %i.j, align 8, !tbaa !180
  %i.l = icmp ult i32 %i.k, 228
  br i1 %i.l, label %bb.c, label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @SSL_get_options(ptr noundef nonnull %0)
  %i.n = and i32 %i.m, 4096
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !181
  %i.q = tail call i64 @BIO_ctrl(ptr noundef %i.p, i32 noundef 40, i64 noundef 0, ptr noundef null) ; 2 uses
  %i.r = add i64 %i.q, -228
  %or.cond12.i.i = icmp ult i64 %i.r, 1073741597
  br i1 %or.cond12.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = trunc nuw nsw i64 %i.q to i32
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 936
  store i32 %i.s, ptr %i.u, align 8, !tbaa !180
  br label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i

bb.f:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 936
  store i32 1472, ptr %i.w, align 8, !tbaa !180
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !181
  %i.y = tail call i64 @BIO_ctrl(ptr noundef %i.x, i32 noundef 42, i64 noundef 1472, ptr noundef null) ; 0 uses
  br label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i

_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i:      ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !155
  %i.ac = lshr i64 %i.ab, 48
  %i.ad = trunc nuw i64 %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 936
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !180
  %i.ag = zext i32 %i.af to i64
  %i.ah = tail call noundef i64 @_ZN4bssl23dtls_seal_max_input_lenEPK6ssl_sttm(ptr noundef nonnull %0, i16 noundef zeroext %i.ad, i64 noundef %i.ag) ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 18
  br i1 %i.ai, label %.thread43, label %bb.g

.thread43:                                        ; preds = %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 169, ptr noundef nonnull @.str, i32 noundef 970)
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.g:                                             ; preds = %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i
  %i.aj = add i64 %i.ah, -2
  %i.ak = lshr i64 %i.aj, 4                       ; 2 uses
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !34  ; 4 uses
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 656 ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 912
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !145 ; 4 uses
  %i.aq = zext i8 %i.ap to i64                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 256 ; 3 uses
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.ak) ; 13 uses
  %i.at = icmp samesign ult i64 %i.as, %i.aq
  br i1 %i.at, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.g
  store i8 0, ptr %i.ar, align 16
  br label %_ZSt4sortIPN4bssl16DTLSRecordNumberEEvT_S3_.exit.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 920
  %i.av = load i8, ptr %i.au, align 8, !tbaa !147 ; 4 uses
  %i.aw = zext i8 %i.av to i64                    ; 9 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.aq) ; 9 uses
  %i.ax = zext i8 %i.ap to i64
  %i.ay = zext i8 %i.av to i64
  %i.az = add nuw nsw i64 %i.ax, %i.ay
  %i.ba = sub nsw i64 %i.az, %umin
  %i.bb = and i64 %i.ba, 31
  %i.bc = call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.bb)
  %i.bd = add nsw i64 %umin, -1
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.bd) ; 2 uses
  %i.bf = call i64 @llvm.umin.i64(i64 %i.be, i64 32)
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.be, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.ph, %vector.body.1, %vector.body.2, %vector.body.3, %vector.body.4, %vector.body.5, %vector.body.6, %vector.body.7, %vector.memcheck, %vector.scevcheck, %.lr.ph.i
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %vector.body.7 ], [ %n.vec, %vector.body.6 ], [ %n.vec, %vector.body.5 ], [ %n.vec, %vector.body.4 ], [ %n.vec, %vector.body.3 ], [ %n.vec, %vector.body.2 ], [ %n.vec, %vector.body.1 ], [ %n.vec, %vector.ph ]
  %.04059.i.ph = phi i64 [ %i.as, %vector.memcheck ], [ %i.as, %vector.scevcheck ], [ %i.as, %.lr.ph.i ], [ %i.cg, %vector.body.7 ], [ %i.cg, %vector.body.6 ], [ %i.cg, %vector.body.5 ], [ %i.cg, %vector.body.4 ], [ %i.cg, %vector.body.3 ], [ %i.cg, %vector.body.2 ], [ %i.cg, %vector.body.1 ], [ %i.cg, %vector.ph ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph.i
  %i.bh = trunc i8 %i.ap to i5
  %i.bi = trunc i8 %i.av to i5
  %i.bj = add i5 %i.bh, %i.bi
  %i.bk = trunc i64 %umin to i5
  %i.bl = sub i5 %i.bj, %i.bk                     ; 2 uses
  %i.bm = zext i5 %i.bl to i64
  %i.bn = call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.bm)
  %i.bo = add nsw i64 %umin, -1
  %umin223 = call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bo) ; 2 uses
  %umin224 = call i64 @llvm.umin.i64(i64 %umin223, i64 32)
  %i.bp = trunc i64 %umin224 to i5
  %i.bq = xor i5 %i.bl, -1
  %i.br = icmp ult i5 %i.bq, %i.bp
  %i.bs = icmp samesign ugt i64 %umin223, 31
  %i.bt = or i1 %i.br, %i.bs
  br i1 %i.bt, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bu = zext i8 %i.ap to i64
  %i.bv = zext i8 %i.av to i64
  %i.bw = add nuw nsw i64 %i.bu, %i.bv
  %i.bx = sub nsw i64 %i.bw, %umin
  %i.by = shl nsw i64 %i.bx, 3
  %i.bz = and i64 %i.by, 248
  %i.ca = add i64 %i.bz, %i.am
  %i.cb = sub i64 %i.b, %i.ca
  %i.cc = add i64 %i.cb, -657
  %diff.check = icmp ult i64 %i.cc, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cd = and i64 %i.bg, 3                        ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 4, i64 %i.cd
  %n.vec = sub nsw i64 %i.bg, %i.cf               ; 16 uses
  %i.cg = add nsw i64 %i.as, %n.vec               ; 8 uses
  %i.ch = add nuw nsw i64 %i.as, %i.aw
  %i.ci = and i64 %i.ch, 31
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load = load <2 x i64>, ptr %i.cj, align 8, !tbaa !146
  %wide.load225 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !146
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <2 x i64> %wide.load, ptr %8, align 16, !tbaa !146
  store <2 x i64> %wide.load225, ptr %i.cl, align 16, !tbaa !146
  %i.cm = icmp eq i64 %n.vec, 4
  br i1 %i.cm, label %scalar.ph.preheader, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.cn = add nuw nsw i64 %i.as, 4
  %i.co = add nuw nsw i64 %i.cn, %i.aw
  %i.cp = and i64 %i.co, 31
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !146
  %wide.load225.1 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !146
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <2 x i64> %wide.load.1, ptr %i.cs, align 16, !tbaa !146
  store <2 x i64> %wide.load225.1, ptr %i.ct, align 16, !tbaa !146
  %i.cu = icmp eq i64 %n.vec, 8
  br i1 %i.cu, label %scalar.ph.preheader, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.cv = add nuw nsw i64 %i.as, 8
  %i.cw = add nuw nsw i64 %i.cv, %i.aw
  %i.cx = and i64 %i.cw, 31
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load.2 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !146
  %wide.load225.2 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !146
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 80
  store <2 x i64> %wide.load.2, ptr %i.da, align 16, !tbaa !146
  store <2 x i64> %wide.load225.2, ptr %i.db, align 16, !tbaa !146
  %i.dc = icmp eq i64 %n.vec, 12
  br i1 %i.dc, label %scalar.ph.preheader, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.dd = add nuw nsw i64 %i.as, 12
  %i.de = add nuw nsw i64 %i.dd, %i.aw
  %i.df = and i64 %i.de, 31
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load.3 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !146
  %wide.load225.3 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !146
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 112
  store <2 x i64> %wide.load.3, ptr %i.di, align 16, !tbaa !146
  store <2 x i64> %wide.load225.3, ptr %i.dj, align 16, !tbaa !146
  %i.dk = icmp eq i64 %n.vec, 16
  br i1 %i.dk, label %scalar.ph.preheader, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.dl = xor i64 %i.as, 16
  %i.dm = add nuw nsw i64 %i.dl, %i.aw
  %i.dn = and i64 %i.dm, 31
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load.4 = load <2 x i64>, ptr %i.do, align 8, !tbaa !146
  %wide.load225.4 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !146
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 144
  store <2 x i64> %wide.load.4, ptr %i.dq, align 16, !tbaa !146
  store <2 x i64> %wide.load225.4, ptr %i.dr, align 16, !tbaa !146
  %i.ds = icmp eq i64 %n.vec, 20
  br i1 %i.ds, label %scalar.ph.preheader, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.dt = add nuw nsw i64 %i.as, 20
  %i.du = add nuw nsw i64 %i.dt, %i.aw
  %i.dv = and i64 %i.du, 31
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load.5 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !146
  %wide.load225.5 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !146
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 176
  store <2 x i64> %wide.load.5, ptr %i.dy, align 16, !tbaa !146
  store <2 x i64> %wide.load225.5, ptr %i.dz, align 16, !tbaa !146
  %i.ea = icmp eq i64 %n.vec, 24
  br i1 %i.ea, label %scalar.ph.preheader, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.eb = add nuw nsw i64 %i.as, 24
  %i.ec = add nuw nsw i64 %i.eb, %i.aw
  %i.ed = and i64 %i.ec, 31
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load.6 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !146
  %wide.load225.6 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !146
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 208
  store <2 x i64> %wide.load.6, ptr %i.eg, align 16, !tbaa !146
  store <2 x i64> %wide.load225.6, ptr %i.eh, align 16, !tbaa !146
  %i.ei = icmp eq i64 %n.vec, 28
  br i1 %i.ei, label %scalar.ph.preheader, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.ej = add nuw nsw i64 %i.as, 28
  %i.ek = add nuw nsw i64 %i.ej, %i.aw
  %i.el = and i64 %i.ek, 31
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load.7 = load <2 x i64>, ptr %i.em, align 8, !tbaa !146
  %wide.load225.7 = load <2 x i64>, ptr %i.en, align 8, !tbaa !146
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 240
  store <2 x i64> %wide.load.7, ptr %i.eo, align 16, !tbaa !146
  store <2 x i64> %wide.load225.7, ptr %i.ep, align 16, !tbaa !146
  br label %scalar.ph.preheader

._crit_edge.i.a:                                  ; preds = %bb.k
  %12 = trunc nuw nsw i64 %umin to i8
  store i8 %12, ptr %i.ar, align 16
  %.idx.i = shl nuw nsw i64 %umin, 3
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 %.idx.i ; 2 uses
  %i.er = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %umin, i1 true)
  %i.es = shl nuw nsw i64 %i.er, 1
  %i.et = xor i64 %i.es, 126
  call void @_ZSt16__introsort_loopIPN4bssl16DTLSRecordNumberElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef nonnull %8, ptr noundef nonnull %i.eq, i64 noundef %i.et)
  call void @_ZSt22__final_insertion_sortIPN4bssl16DTLSRecordNumberEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef nonnull %8, ptr noundef nonnull %i.eq)
  br label %_ZSt4sortIPN4bssl16DTLSRecordNumberEEvT_S3_.exit.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.04059.i = phi i64 [ %i.ez, %bb.k ], [ %.04059.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.eu = add nuw nsw i64 %.04059.i, %i.aw
  %i.ev = and i64 %i.eu, 31                       ; 2 uses
  %i.ew = icmp samesign ult i64 %i.ev, %i.aq
  br i1 %i.ew, label %bb.i, label %bb.h

bb.h:                                             ; preds = %scalar.ph
  tail call void @abort() #15
  unreachable

bb.i:                                             ; preds = %scalar.ph
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 32
  br i1 %exitcond.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @abort() #15
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ev
  %.sroa.0.0.copyload.i = load i64, ptr %i.ex, align 8, !tbaa !146
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.i
  store i64 %.sroa.0.0.copyload.i, ptr %i.ey, align 8, !tbaa !146
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ez = add nuw nsw i64 %.04059.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %umin
  br i1 %exitcond.not, label %._crit_edge.i.a, label %scalar.ph, !llvm.loop !182

_ZSt4sortIPN4bssl16DTLSRecordNumberEEvT_S3_.exit.i: ; preds = %._crit_edge.i.a, %._crit_edge.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.fa = call i32 @CBB_init_fixed(ptr noundef nonnull %9, ptr noundef nonnull %i.c, i64 noundef 514) ; 0 uses
  %i.fb = call i32 @CBB_add_u16_length_prefixed(ptr noundef nonnull %9, ptr noundef nonnull %10)
  %.not.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZSt4sortIPN4bssl16DTLSRecordNumberEEvT_S3_.exit.i
  call void @abort() #15
  unreachable

bb.m:                                             ; preds = %_ZSt4sortIPN4bssl16DTLSRecordNumberEEvT_S3_.exit.i
  %i.fc = load i8, ptr %i.ar, align 16, !tbaa !145 ; 2 uses
  %i.fd = zext i8 %i.fc to i64
  %.idx65.i = shl nuw nsw i64 %i.fd, 3
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 %.idx65.i
  %.not4360.i = icmp eq i8 %i.fc, 0
  br i1 %.not4360.i, label %._crit_edge64.i, label %.lr.ph63.i

bb.n:                                             ; preds = %bb.p
  %i.ff = getelementptr inbounds nuw i8, ptr %.061.i, i64 8 ; 2 uses
  %.not43.i = icmp eq ptr %i.ff, %i.fe
  br i1 %.not43.i, label %._crit_edge64.i, label %.lr.ph63.i

._crit_edge64.i:                                  ; preds = %bb.n, %bb.m
  %i.fg = call i32 @CBB_flush(ptr noundef nonnull %9)
  %.not44.i = icmp eq i32 %i.fg, 0
  br i1 %.not44.i, label %bb.r, label %bb.s

.lr.ph63.i:                                       ; preds = %bb.m, %bb.n
  %.061.i = phi ptr [ %i.ff, %bb.n ], [ %8, %bb.m ] ; 3 uses
  %i.fh = load i64, ptr %.061.i, align 8, !tbaa !155
  %i.fi = lshr i64 %i.fh, 48
  %i.fj = call i32 @CBB_add_u64(ptr noundef nonnull %10, i64 noundef %i.fi)
  %.not46.i = icmp eq i32 %i.fj, 0
  br i1 %.not46.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph63.i
  call void @abort() #15
  unreachable

bb.p:                                             ; preds = %.lr.ph63.i
  %i.fk = load i64, ptr %.061.i, align 8, !tbaa !155
  %i.fl = and i64 %i.fk, 281474976710655
  %i.fm = call i32 @CBB_add_u64(ptr noundef nonnull %10, i64 noundef %i.fl)
  %.not49.i = icmp eq i32 %i.fm, 0
  br i1 %.not49.i, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  call void @abort() #15
  unreachable

bb.r:                                             ; preds = %._crit_edge64.i
  call void @abort() #15
  unreachable

bb.s:                                             ; preds = %._crit_edge64.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i64 0, ptr %11, align 8, !tbaa !155
  %i.fn = call ptr @CBB_data(ptr noundef nonnull %9)
  %i.fo = call i64 @CBB_len(ptr noundef nonnull %9)
  %i.fp = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 144
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !155
  %i.fs = lshr i64 %i.fr, 48
  %i.ft = trunc nuw i64 %i.fs to i16
  %i.fu = call noundef zeroext i1 @_ZN4bssl16dtls_seal_recordEP6ssl_stPNS_16DTLSRecordNumberEPhPmmhPKhmt(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i64 noundef 584, i8 noundef zeroext 26, ptr noundef %i.fn, i64 noundef %i.fo, i16 noundef zeroext %i.ft)
  br i1 %i.fu, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fv = call ptr @CBB_data(ptr noundef nonnull %9)
  %i.fw = call i64 @CBB_len(ptr noundef nonnull %9)
  call void @_ZN4bssl19ssl_do_msg_callbackEPK6ssl_stiiNS_4SpanIKhEE(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 26, ptr %i.fv, i64 %i.fw)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !181
  %i.fz = load i64, ptr %i.e, align 8, !tbaa !146
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = call i32 @BIO_write(ptr noundef %i.fy, ptr noundef nonnull %i.d, i32 noundef %i.ga) ; 2 uses
  %i.gc = icmp slt i32 %i.gb, 1
  br i1 %i.gc, label %.sink.split.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gd = load ptr, ptr %i.fx, align 8, !tbaa !181
  %i.ge = call i32 @BIO_flush(ptr noundef %i.gd)
  %i.gf = icmp slt i32 %i.ge, 1
  br i1 %i.gf, label %.sink.split.i, label %.thread

.sink.split.i:                                    ; preds = %bb.u, %bb.t
  %.1.ph.i = phi i32 [ %i.gb, %bb.t ], [ -1, %bb.u ]
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !163
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 196
  store i32 3, ptr %i.gi, align 4, !tbaa !184
  br label %bb.v

.thread:                                          ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.gj = load ptr, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %i.gk = load i16, ptr %i.gj, align 8
  %i.gl = and i16 %i.gk, -65
  store i16 %i.gl, ptr %i.gj, align 8
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %.pre117 = load i16, ptr %.pre, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %.sink.split.i
  %.1.i.ph = phi i32 [ %.1.ph.i, %.sink.split.i ], [ -1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.w:                                             ; preds = %.thread, %bb.a
  %i.gm = phi i16 [ %.pre117, %.thread ], [ %i.h, %bb.a ]
  %i.gn = phi ptr [ %.pre, %.thread ], [ %i.g, %bb.a ] ; 2 uses
  %i.go = and i16 %i.gm, 32
  %.not27 = icmp eq i16 %i.go, 0
  br i1 %.not27, label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !163
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 176
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !214
  %.not.i29 = icmp eq i32 %i.gs, 0
  br i1 %.not.i29, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 194, ptr noundef nonnull @.str, i32 noundef 873)
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !181
  %.not.i.i30 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str, i32 noundef 878)
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.ab:                                            ; preds = %bb.z
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 940
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !215
  %i.gx = icmp ugt i32 %i.gw, 12
  br i1 %i.gx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 198, ptr noundef nonnull @.str, i32 noundef 883)
  br label %_ZN4bsslL11send_flightEP6ssl_st.exit.thread

bb.ad:                                            ; preds = %bb.ab
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 936
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !180
  %i.ha = icmp ult i32 %i.gz, 228
  br i1 %i.ha, label %bb.ae, label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31

bb.ae:                                            ; preds = %bb.ad
  %i.hb = call i32 @SSL_get_options(ptr noundef nonnull %0)
  %i.hc = and i32 %i.hb, 4096
  %.not.i37.i = icmp eq i32 %i.hc, 0
  br i1 %.not.i37.i, label %bb.af, label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31

bb.af:                                            ; preds = %bb.ae
  %i.hd = load ptr, ptr %i.gt, align 8, !tbaa !181
  %i.he = call i64 @BIO_ctrl(ptr noundef %i.hd, i32 noundef 40, i64 noundef 0, ptr noundef null) ; 2 uses
  %i.hf = add i64 %i.he, -228
  %or.cond12.i.i34 = icmp ult i64 %i.hf, 1073741597
  br i1 %or.cond12.i.i34, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hg = trunc nuw nsw i64 %i.he to i32
  %i.hh = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 936
  store i32 %i.hg, ptr %i.hi, align 8, !tbaa !180
  br label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31

bb.ah:                                            ; preds = %bb.af
  %i.hj = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 936
  store i32 1472, ptr %i.hk, align 8, !tbaa !180
  %i.hl = load ptr, ptr %i.gt, align 8, !tbaa !181
  %i.hm = call i64 @BIO_ctrl(ptr noundef %i.hl, i32 noundef 42, i64 noundef 1472, ptr noundef null) ; 0 uses
  br label %_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31

_ZN4bsslL16dtls1_update_mtuEP6ssl_st.exit.i31:    ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %i.hn = load ptr, ptr %i.f, align 8, !tbaa !34
end_hunk_0
